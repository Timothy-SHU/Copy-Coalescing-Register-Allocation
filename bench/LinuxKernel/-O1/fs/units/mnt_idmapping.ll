; ModuleID = 'fs/mnt_idmapping.c'
source_filename = "fs/mnt_idmapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nop_mnt_idmap: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad nop_mnt_idmap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_make_vfsuid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad make_vfsuid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_make_vfsgid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad make_vfsgid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_from_vfsuid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad from_vfsuid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_from_vfsgid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad from_vfsgid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vfsgid_in_group_p: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vfsgid_in_group_p ; .previous"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { ptr, ptr }
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
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.3, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.mnt_idmap = type { ptr, %struct.refcount_struct }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
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
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.vfsuid_t = type { i32 }
%struct.vfsgid_t = type { i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 8
@nop_mnt_idmap = hidden global %struct.mnt_idmap { ptr @init_user_ns, %struct.refcount_struct { %struct.atomic_t { i32 1 } } }, align 8, !dbg !0
@__UNIQUE_ID___addressable_nop_mnt_idmap252 = internal global ptr @nop_mnt_idmap, section ".discard.addressable", align 8, !dbg !178
@__UNIQUE_ID___addressable_make_vfsuid253 = internal global ptr @make_vfsuid, section ".discard.addressable", align 8, !dbg !180
@__UNIQUE_ID___addressable_make_vfsgid254 = internal global ptr @make_vfsgid, section ".discard.addressable", align 8, !dbg !182
@__UNIQUE_ID___addressable_from_vfsuid255 = internal global ptr @from_vfsuid, section ".discard.addressable", align 8, !dbg !184
@__UNIQUE_ID___addressable_from_vfsgid256 = internal global ptr @from_vfsgid, section ".discard.addressable", align 8, !dbg !186
@__UNIQUE_ID___addressable_vfsgid_in_group_p257 = internal global ptr @vfsgid_in_group_p, section ".discard.addressable", align 8, !dbg !188
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !190
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_nop_mnt_idmap252, ptr @__UNIQUE_ID___addressable_make_vfsuid253, ptr @__UNIQUE_ID___addressable_make_vfsgid254, ptr @__UNIQUE_ID___addressable_from_vfsuid255, ptr @__UNIQUE_ID___addressable_from_vfsgid256, ptr @__UNIQUE_ID___addressable_vfsgid_in_group_p257], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @check_fsmapping(ptr noundef %idmap, ptr noundef %sb) #0 align 16 !dbg !538 {
entry:
  %idmap.addr = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3422, metadata !DIExpression()), !dbg !3424
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3423, metadata !DIExpression()), !dbg !3425
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !3426
  %owner = getelementptr inbounds %struct.mnt_idmap, ptr %0, i32 0, i32 0, !dbg !3427
  %1 = load ptr, ptr %owner, align 8, !dbg !3427
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !3428
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 48, !dbg !3429
  %3 = load ptr, ptr %s_user_ns, align 8, !dbg !3429
  %cmp = icmp ne ptr %1, %3, !dbg !3430
  ret i1 %cmp, !dbg !3431
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @make_vfsuid(ptr noundef %idmap, ptr noundef %fs_userns, i32 %kuid.coerce) #0 align 16 !dbg !3432 {
entry:
  %retval = alloca %struct.vfsuid_t, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %fs_userns.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %mnt_userns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %agg.tmp = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3436, metadata !DIExpression()), !dbg !3441
  store ptr %fs_userns, ptr %fs_userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_userns.addr, metadata !3437, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !3438, metadata !DIExpression()), !dbg !3443
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #13, !dbg !3444
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3439, metadata !DIExpression()), !dbg !3445
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt_userns) #13, !dbg !3446
  call void @llvm.dbg.declare(metadata ptr %mnt_userns, metadata !3440, metadata !DIExpression()), !dbg !3447
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !3448
  %owner = getelementptr inbounds %struct.mnt_idmap, ptr %0, i32 0, i32 0, !dbg !3449
  %1 = load ptr, ptr %owner, align 8, !dbg !3449
  store ptr %1, ptr %mnt_userns, align 8, !dbg !3447
  %2 = load ptr, ptr %mnt_userns, align 8, !dbg !3450
  %3 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3452
  %call = call zeroext i1 @no_idmapping(ptr noundef %2, ptr noundef %3) #14, !dbg !3453
  br i1 %call, label %if.then, label %if.end, !dbg !3454

if.then:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.vfsuid_t, ptr %retval, i32 0, i32 0, !dbg !3455
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !3455
  %4 = load i32, ptr %coerce.dive1, align 4, !dbg !3455
  %call2 = call i32 @__kuid_val(i32 %4) #14, !dbg !3455
  store i32 %call2, ptr %val, align 4, !dbg !3455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3456

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3457
  %call3 = call zeroext i1 @initial_idmapping(ptr noundef %5) #14, !dbg !3459
  br i1 %call3, label %if.then4, label %if.else, !dbg !3460

if.then4:                                         ; preds = %if.end
  %coerce.dive5 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !3461
  %6 = load i32, ptr %coerce.dive5, align 4, !dbg !3461
  %call6 = call i32 @__kuid_val(i32 %6) #14, !dbg !3461
  store i32 %call6, ptr %uid, align 4, !dbg !3462
  br label %if.end9, !dbg !3463

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3464
  %coerce.dive7 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !3465
  %8 = load i32, ptr %coerce.dive7, align 4, !dbg !3465
  %call8 = call i32 @from_kuid(ptr noundef %7, i32 %8) #14, !dbg !3465
  store i32 %call8, ptr %uid, align 4, !dbg !3466
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %9 = load i32, ptr %uid, align 4, !dbg !3467
  %cmp = icmp eq i32 %9, -1, !dbg !3469
  br i1 %cmp, label %if.then10, label %if.end15, !dbg !3470

if.then10:                                        ; preds = %if.end9
  %val11 = getelementptr inbounds %struct.vfsuid_t, ptr %retval, i32 0, i32 0, !dbg !3471
  %val12 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3471
  store i32 -1, ptr %val12, align 4, !dbg !3471
  %coerce.dive13 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3471
  %10 = load i32, ptr %coerce.dive13, align 4, !dbg !3471
  %call14 = call i32 @__kuid_val(i32 %10) #14, !dbg !3471
  store i32 %call14, ptr %val11, align 4, !dbg !3471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3472

if.end15:                                         ; preds = %if.end9
  %val16 = getelementptr inbounds %struct.vfsuid_t, ptr %retval, i32 0, i32 0, !dbg !3473
  %11 = load ptr, ptr %mnt_userns, align 8, !dbg !3473
  %12 = load i32, ptr %uid, align 4, !dbg !3473
  %call17 = call i32 @make_kuid(ptr noundef %11, i32 noundef %12) #14, !dbg !3473
  %coerce.dive18 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !3473
  store i32 %call17, ptr %coerce.dive18, align 4, !dbg !3473
  %coerce.dive19 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !3473
  %13 = load i32, ptr %coerce.dive19, align 4, !dbg !3473
  %call20 = call i32 @__kuid_val(i32 %13) #14, !dbg !3473
  store i32 %call20, ptr %val16, align 4, !dbg !3473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3474

cleanup:                                          ; preds = %if.end15, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt_userns) #13, !dbg !3475
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #13, !dbg !3475
  %coerce.dive22 = getelementptr inbounds %struct.vfsuid_t, ptr %retval, i32 0, i32 0, !dbg !3475
  %14 = load i32, ptr %coerce.dive22, align 4, !dbg !3475
  ret i32 %14, !dbg !3475
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @no_idmapping(ptr noundef %mnt_userns, ptr noundef %fs_userns) #3 align 16 !dbg !3476 {
entry:
  %mnt_userns.addr = alloca ptr, align 8
  %fs_userns.addr = alloca ptr, align 8
  store ptr %mnt_userns, ptr %mnt_userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt_userns.addr, metadata !3482, metadata !DIExpression()), !dbg !3484
  store ptr %fs_userns, ptr %fs_userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_userns.addr, metadata !3483, metadata !DIExpression()), !dbg !3485
  %0 = load ptr, ptr %mnt_userns.addr, align 8, !dbg !3486
  %call = call zeroext i1 @initial_idmapping(ptr noundef %0) #14, !dbg !3487
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !3488

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %mnt_userns.addr, align 8, !dbg !3489
  %2 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3490
  %cmp = icmp eq ptr %1, %2, !dbg !3491
  br label %lor.end, !dbg !3488

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %3, !dbg !3492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #3 align 16 !dbg !3493 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3497, metadata !DIExpression()), !dbg !3498
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !3499
  %0 = load i32, ptr %val, align 4, !dbg !3499
  ret i32 %0, !dbg !3500
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @initial_idmapping(ptr noundef %ns) #3 align 16 !dbg !3501 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3505, metadata !DIExpression()), !dbg !3506
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !3507
  %cmp = icmp eq ptr %0, @init_user_ns, !dbg !3508
  ret i1 %cmp, !dbg !3509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #3 align 16 !dbg !3510 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !3514, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !3515, metadata !DIExpression()), !dbg !3517
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !3518
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !3518
  %call = call i32 @__kuid_val(i32 %0) #14, !dbg !3518
  ret i32 %call, !dbg !3519
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #3 align 16 !dbg !3520 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !3524, metadata !DIExpression()), !dbg !3526
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !3525, metadata !DIExpression()), !dbg !3527
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !3528
  %0 = load i32, ptr %uid.addr, align 4, !dbg !3528
  store i32 %0, ptr %val, align 4, !dbg !3528
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !3529
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !3529
  ret i32 %1, !dbg !3529
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @make_vfsgid(ptr noundef %idmap, ptr noundef %fs_userns, i32 %kgid.coerce) #0 align 16 !dbg !3530 {
entry:
  %retval = alloca %struct.vfsgid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %fs_userns.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %mnt_userns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.kgid_t, align 4
  %agg.tmp = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3534, metadata !DIExpression()), !dbg !3539
  store ptr %fs_userns, ptr %fs_userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_userns.addr, metadata !3535, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !3536, metadata !DIExpression()), !dbg !3541
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #13, !dbg !3542
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt_userns) #13, !dbg !3544
  call void @llvm.dbg.declare(metadata ptr %mnt_userns, metadata !3538, metadata !DIExpression()), !dbg !3545
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !3546
  %owner = getelementptr inbounds %struct.mnt_idmap, ptr %0, i32 0, i32 0, !dbg !3547
  %1 = load ptr, ptr %owner, align 8, !dbg !3547
  store ptr %1, ptr %mnt_userns, align 8, !dbg !3545
  %2 = load ptr, ptr %mnt_userns, align 8, !dbg !3548
  %3 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3550
  %call = call zeroext i1 @no_idmapping(ptr noundef %2, ptr noundef %3) #14, !dbg !3551
  br i1 %call, label %if.then, label %if.end, !dbg !3552

if.then:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.vfsgid_t, ptr %retval, i32 0, i32 0, !dbg !3553
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !3553
  %4 = load i32, ptr %coerce.dive1, align 4, !dbg !3553
  %call2 = call i32 @__kgid_val(i32 %4) #14, !dbg !3553
  store i32 %call2, ptr %val, align 4, !dbg !3553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3554

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3555
  %call3 = call zeroext i1 @initial_idmapping(ptr noundef %5) #14, !dbg !3557
  br i1 %call3, label %if.then4, label %if.else, !dbg !3558

if.then4:                                         ; preds = %if.end
  %coerce.dive5 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !3559
  %6 = load i32, ptr %coerce.dive5, align 4, !dbg !3559
  %call6 = call i32 @__kgid_val(i32 %6) #14, !dbg !3559
  store i32 %call6, ptr %gid, align 4, !dbg !3560
  br label %if.end9, !dbg !3561

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3562
  %coerce.dive7 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !3563
  %8 = load i32, ptr %coerce.dive7, align 4, !dbg !3563
  %call8 = call i32 @from_kgid(ptr noundef %7, i32 %8) #14, !dbg !3563
  store i32 %call8, ptr %gid, align 4, !dbg !3564
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %9 = load i32, ptr %gid, align 4, !dbg !3565
  %cmp = icmp eq i32 %9, -1, !dbg !3567
  br i1 %cmp, label %if.then10, label %if.end15, !dbg !3568

if.then10:                                        ; preds = %if.end9
  %val11 = getelementptr inbounds %struct.vfsgid_t, ptr %retval, i32 0, i32 0, !dbg !3569
  %val12 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3569
  store i32 -1, ptr %val12, align 4, !dbg !3569
  %coerce.dive13 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3569
  %10 = load i32, ptr %coerce.dive13, align 4, !dbg !3569
  %call14 = call i32 @__kgid_val(i32 %10) #14, !dbg !3569
  store i32 %call14, ptr %val11, align 4, !dbg !3569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3570

if.end15:                                         ; preds = %if.end9
  %val16 = getelementptr inbounds %struct.vfsgid_t, ptr %retval, i32 0, i32 0, !dbg !3571
  %11 = load ptr, ptr %mnt_userns, align 8, !dbg !3571
  %12 = load i32, ptr %gid, align 4, !dbg !3571
  %call17 = call i32 @make_kgid(ptr noundef %11, i32 noundef %12) #14, !dbg !3571
  %coerce.dive18 = getelementptr inbounds %struct.kgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !3571
  store i32 %call17, ptr %coerce.dive18, align 4, !dbg !3571
  %coerce.dive19 = getelementptr inbounds %struct.kgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !3571
  %13 = load i32, ptr %coerce.dive19, align 4, !dbg !3571
  %call20 = call i32 @__kgid_val(i32 %13) #14, !dbg !3571
  store i32 %call20, ptr %val16, align 4, !dbg !3571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3572

cleanup:                                          ; preds = %if.end15, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt_userns) #13, !dbg !3573
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #13, !dbg !3573
  %coerce.dive22 = getelementptr inbounds %struct.vfsgid_t, ptr %retval, i32 0, i32 0, !dbg !3573
  %14 = load i32, ptr %coerce.dive22, align 4, !dbg !3573
  ret i32 %14, !dbg !3573
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #3 align 16 !dbg !3574 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !3578, metadata !DIExpression()), !dbg !3579
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !3580
  %0 = load i32, ptr %val, align 4, !dbg !3580
  ret i32 %0, !dbg !3581
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #3 align 16 !dbg !3582 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !3586, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !3587, metadata !DIExpression()), !dbg !3589
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !3590
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !3590
  %call = call i32 @__kgid_val(i32 %0) #14, !dbg !3590
  ret i32 %call, !dbg !3591
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #3 align 16 !dbg !3592 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !3596, metadata !DIExpression()), !dbg !3598
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !3597, metadata !DIExpression()), !dbg !3599
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !3600
  %0 = load i32, ptr %gid.addr, align 4, !dbg !3600
  store i32 %0, ptr %val, align 4, !dbg !3600
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !3601
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !3601
  ret i32 %1, !dbg !3601
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @from_vfsuid(ptr noundef %idmap, ptr noundef %fs_userns, i32 %vfsuid.coerce) #0 align 16 !dbg !3602 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %vfsuid = alloca %struct.vfsuid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %fs_userns.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %mnt_userns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0
  store i32 %vfsuid.coerce, ptr %coerce.dive, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3606, metadata !DIExpression()), !dbg !3611
  store ptr %fs_userns, ptr %fs_userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_userns.addr, metadata !3607, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %vfsuid, metadata !3608, metadata !DIExpression()), !dbg !3613
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #13, !dbg !3614
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3609, metadata !DIExpression()), !dbg !3615
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt_userns) #13, !dbg !3616
  call void @llvm.dbg.declare(metadata ptr %mnt_userns, metadata !3610, metadata !DIExpression()), !dbg !3617
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !3618
  %owner = getelementptr inbounds %struct.mnt_idmap, ptr %0, i32 0, i32 0, !dbg !3619
  %1 = load ptr, ptr %owner, align 8, !dbg !3619
  store ptr %1, ptr %mnt_userns, align 8, !dbg !3617
  %2 = load ptr, ptr %mnt_userns, align 8, !dbg !3620
  %3 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3622
  %call = call zeroext i1 @no_idmapping(ptr noundef %2, ptr noundef %3) #14, !dbg !3623
  br i1 %call, label %if.then, label %if.end, !dbg !3624

if.then:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !3625
  %coerce.dive1 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !3625
  %4 = load i32, ptr %coerce.dive1, align 4, !dbg !3625
  %call2 = call i32 @__vfsuid_val(i32 %4) #14, !dbg !3625
  store i32 %call2, ptr %val, align 4, !dbg !3625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3626

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %mnt_userns, align 8, !dbg !3627
  %val3 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3628
  %coerce.dive4 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !3628
  %6 = load i32, ptr %coerce.dive4, align 4, !dbg !3628
  %call5 = call i32 @__vfsuid_val(i32 %6) #14, !dbg !3628
  store i32 %call5, ptr %val3, align 4, !dbg !3628
  %coerce.dive6 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3629
  %7 = load i32, ptr %coerce.dive6, align 4, !dbg !3629
  %call7 = call i32 @from_kuid(ptr noundef %5, i32 %7) #14, !dbg !3629
  store i32 %call7, ptr %uid, align 4, !dbg !3630
  %8 = load i32, ptr %uid, align 4, !dbg !3631
  %cmp = icmp eq i32 %8, -1, !dbg !3633
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !3634

if.then8:                                         ; preds = %if.end
  %val9 = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !3635
  store i32 -1, ptr %val9, align 4, !dbg !3635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3636

if.end10:                                         ; preds = %if.end
  %9 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3637
  %call11 = call zeroext i1 @initial_idmapping(ptr noundef %9) #14, !dbg !3639
  br i1 %call11, label %if.then12, label %if.end14, !dbg !3640

if.then12:                                        ; preds = %if.end10
  %val13 = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !3641
  %10 = load i32, ptr %uid, align 4, !dbg !3641
  store i32 %10, ptr %val13, align 4, !dbg !3641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3642

if.end14:                                         ; preds = %if.end10
  %11 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3643
  %12 = load i32, ptr %uid, align 4, !dbg !3644
  %call15 = call i32 @make_kuid(ptr noundef %11, i32 noundef %12) #14, !dbg !3645
  %coerce.dive16 = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !3645
  store i32 %call15, ptr %coerce.dive16, align 4, !dbg !3645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3646

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt_userns) #13, !dbg !3647
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #13, !dbg !3647
  %coerce.dive18 = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !3647
  %13 = load i32, ptr %coerce.dive18, align 4, !dbg !3647
  ret i32 %13, !dbg !3647
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__vfsuid_val(i32 %uid.coerce) #3 align 16 !dbg !3648 {
entry:
  %uid = alloca %struct.vfsuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3652, metadata !DIExpression()), !dbg !3653
  %val = getelementptr inbounds %struct.vfsuid_t, ptr %uid, i32 0, i32 0, !dbg !3654
  %0 = load i32, ptr %val, align 4, !dbg !3654
  ret i32 %0, !dbg !3655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @from_vfsgid(ptr noundef %idmap, ptr noundef %fs_userns, i32 %vfsgid.coerce) #0 align 16 !dbg !3656 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %vfsgid = alloca %struct.vfsgid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %fs_userns.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %mnt_userns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0
  store i32 %vfsgid.coerce, ptr %coerce.dive, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3660, metadata !DIExpression()), !dbg !3665
  store ptr %fs_userns, ptr %fs_userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_userns.addr, metadata !3661, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.declare(metadata ptr %vfsgid, metadata !3662, metadata !DIExpression()), !dbg !3667
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #13, !dbg !3668
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !3663, metadata !DIExpression()), !dbg !3669
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt_userns) #13, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %mnt_userns, metadata !3664, metadata !DIExpression()), !dbg !3671
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !3672
  %owner = getelementptr inbounds %struct.mnt_idmap, ptr %0, i32 0, i32 0, !dbg !3673
  %1 = load ptr, ptr %owner, align 8, !dbg !3673
  store ptr %1, ptr %mnt_userns, align 8, !dbg !3671
  %2 = load ptr, ptr %mnt_userns, align 8, !dbg !3674
  %3 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3676
  %call = call zeroext i1 @no_idmapping(ptr noundef %2, ptr noundef %3) #14, !dbg !3677
  br i1 %call, label %if.then, label %if.end, !dbg !3678

if.then:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !3679
  %coerce.dive1 = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0, !dbg !3679
  %4 = load i32, ptr %coerce.dive1, align 4, !dbg !3679
  %call2 = call i32 @__vfsgid_val(i32 %4) #14, !dbg !3679
  store i32 %call2, ptr %val, align 4, !dbg !3679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3680

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %mnt_userns, align 8, !dbg !3681
  %val3 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3682
  %coerce.dive4 = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0, !dbg !3682
  %6 = load i32, ptr %coerce.dive4, align 4, !dbg !3682
  %call5 = call i32 @__vfsgid_val(i32 %6) #14, !dbg !3682
  store i32 %call5, ptr %val3, align 4, !dbg !3682
  %coerce.dive6 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3683
  %7 = load i32, ptr %coerce.dive6, align 4, !dbg !3683
  %call7 = call i32 @from_kgid(ptr noundef %5, i32 %7) #14, !dbg !3683
  store i32 %call7, ptr %gid, align 4, !dbg !3684
  %8 = load i32, ptr %gid, align 4, !dbg !3685
  %cmp = icmp eq i32 %8, -1, !dbg !3687
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !3688

if.then8:                                         ; preds = %if.end
  %val9 = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !3689
  store i32 -1, ptr %val9, align 4, !dbg !3689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3690

if.end10:                                         ; preds = %if.end
  %9 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3691
  %call11 = call zeroext i1 @initial_idmapping(ptr noundef %9) #14, !dbg !3693
  br i1 %call11, label %if.then12, label %if.end14, !dbg !3694

if.then12:                                        ; preds = %if.end10
  %val13 = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !3695
  %10 = load i32, ptr %gid, align 4, !dbg !3695
  store i32 %10, ptr %val13, align 4, !dbg !3695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3696

if.end14:                                         ; preds = %if.end10
  %11 = load ptr, ptr %fs_userns.addr, align 8, !dbg !3697
  %12 = load i32, ptr %gid, align 4, !dbg !3698
  %call15 = call i32 @make_kgid(ptr noundef %11, i32 noundef %12) #14, !dbg !3699
  %coerce.dive16 = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !3699
  store i32 %call15, ptr %coerce.dive16, align 4, !dbg !3699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3700

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt_userns) #13, !dbg !3701
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #13, !dbg !3701
  %coerce.dive18 = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !3701
  %13 = load i32, ptr %coerce.dive18, align 4, !dbg !3701
  ret i32 %13, !dbg !3701
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__vfsgid_val(i32 %gid.coerce) #3 align 16 !dbg !3702 {
entry:
  %gid = alloca %struct.vfsgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !3706, metadata !DIExpression()), !dbg !3707
  %val = getelementptr inbounds %struct.vfsgid_t, ptr %gid, i32 0, i32 0, !dbg !3708
  %0 = load i32, ptr %val, align 4, !dbg !3708
  ret i32 %0, !dbg !3709
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vfsgid_in_group_p(i32 %vfsgid.coerce) #0 align 16 !dbg !3710 {
entry:
  %vfsgid = alloca %struct.vfsgid_t, align 4
  %.compoundliteral = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0
  store i32 %vfsgid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %vfsgid, metadata !3714, metadata !DIExpression()), !dbg !3715
  %val = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3716
  %coerce.dive1 = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0, !dbg !3716
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !3716
  %call = call i32 @__vfsgid_val(i32 %0) #14, !dbg !3716
  store i32 %call, ptr %val, align 4, !dbg !3716
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3717
  %1 = load i32, ptr %coerce.dive2, align 4, !dbg !3717
  %call3 = call i32 @in_group_p(i32 %1) #14, !dbg !3717
  ret i32 %call3, !dbg !3718
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3719 dso_local i32 @in_group_p(i32) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_mnt_idmap(ptr noundef %mnt_userns) #0 align 16 !dbg !3722 {
entry:
  %retval = alloca ptr, align 8
  %mnt_userns.addr = alloca ptr, align 8
  %idmap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mnt_userns, ptr %mnt_userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt_userns.addr, metadata !3726, metadata !DIExpression()), !dbg !3728
  call void @llvm.lifetime.start.p0(i64 8, ptr %idmap) #13, !dbg !3729
  call void @llvm.dbg.declare(metadata ptr %idmap, metadata !3727, metadata !DIExpression()), !dbg !3730
  %call = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 4197568) #15, !dbg !3731
  store ptr %call, ptr %idmap, align 8, !dbg !3732
  %0 = load ptr, ptr %idmap, align 8, !dbg !3733
  %tobool = icmp ne ptr %0, null, !dbg !3733
  br i1 %tobool, label %if.end, label %if.then, !dbg !3735

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !3736
  store ptr %call1, ptr %retval, align 8, !dbg !3737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3737

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mnt_userns.addr, align 8, !dbg !3738
  %call2 = call ptr @get_user_ns(ptr noundef %1) #14, !dbg !3739
  %2 = load ptr, ptr %idmap, align 8, !dbg !3740
  %owner = getelementptr inbounds %struct.mnt_idmap, ptr %2, i32 0, i32 0, !dbg !3741
  store ptr %call2, ptr %owner, align 8, !dbg !3742
  %3 = load ptr, ptr %idmap, align 8, !dbg !3743
  %count = getelementptr inbounds %struct.mnt_idmap, ptr %3, i32 0, i32 1, !dbg !3744
  call void @refcount_set(ptr noundef %count, i32 noundef 1) #14, !dbg !3745
  %4 = load ptr, ptr %idmap, align 8, !dbg !3746
  store ptr %4, ptr %retval, align 8, !dbg !3747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3747

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %idmap) #13, !dbg !3748
  %5 = load ptr, ptr %retval, align 8, !dbg !3748
  ret ptr %5, !dbg !3748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !3749 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3753, metadata !DIExpression()), !dbg !3755
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3754, metadata !DIExpression()), !dbg !3756
  %0 = load i64, ptr %size.addr, align 8, !dbg !3757
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3758
  %or = or i32 %1, 256, !dbg !3759
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !3760
  ret ptr %call, !dbg !3761
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !3762 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !3767, metadata !DIExpression()), !dbg !3768
  %0 = load i64, ptr %error.addr, align 8, !dbg !3769
  %1 = inttoptr i64 %0 to ptr, !dbg !3770
  ret ptr %1, !dbg !3771
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_user_ns(ptr noundef %ns) #3 align 16 !dbg !3772 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3776, metadata !DIExpression()), !dbg !3777
  ret ptr @init_user_ns, !dbg !3778
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #3 align 16 !dbg !3779 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3784, metadata !DIExpression()), !dbg !3786
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3785, metadata !DIExpression()), !dbg !3787
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3788
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !3789
  %1 = load i32, ptr %n.addr, align 4, !dbg !3790
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #14, !dbg !3791
  ret void, !dbg !3792
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mnt_idmap_get(ptr noundef %idmap) #0 align 16 !dbg !3793 {
entry:
  %idmap.addr = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3797, metadata !DIExpression()), !dbg !3798
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !3799
  %cmp = icmp ne ptr %0, @nop_mnt_idmap, !dbg !3801
  br i1 %cmp, label %if.then, label %if.end, !dbg !3802

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %idmap.addr, align 8, !dbg !3803
  %count = getelementptr inbounds %struct.mnt_idmap, ptr %1, i32 0, i32 1, !dbg !3804
  call void @refcount_inc(ptr noundef %count) #14, !dbg !3805
  br label %if.end, !dbg !3805

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %idmap.addr, align 8, !dbg !3806
  ret ptr %2, !dbg !3807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !3808 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3812, metadata !DIExpression()), !dbg !3813
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3814
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #14, !dbg !3815
  ret void, !dbg !3816
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mnt_idmap_put(ptr noundef %idmap) #0 align 16 !dbg !3817 {
entry:
  %idmap.addr = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !3821, metadata !DIExpression()), !dbg !3822
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !3823
  %cmp = icmp ne ptr %0, @nop_mnt_idmap, !dbg !3825
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3826

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %idmap.addr, align 8, !dbg !3827
  %count = getelementptr inbounds %struct.mnt_idmap, ptr %1, i32 0, i32 1, !dbg !3828
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #14, !dbg !3829
  br i1 %call, label %if.then, label %if.end, !dbg !3830

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %idmap.addr, align 8, !dbg !3831
  %owner = getelementptr inbounds %struct.mnt_idmap, ptr %2, i32 0, i32 0, !dbg !3833
  %3 = load ptr, ptr %owner, align 8, !dbg !3833
  call void @put_user_ns(ptr noundef %3) #14, !dbg !3834
  %4 = load ptr, ptr %idmap.addr, align 8, !dbg !3835
  call void @kfree(ptr noundef %4) #14, !dbg !3836
  br label %if.end, !dbg !3837

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !3838
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !3839 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3843, metadata !DIExpression()), !dbg !3844
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3845
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !3846
  ret i1 %call, !dbg !3847
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_user_ns(ptr noundef %ns) #3 align 16 !dbg !3848 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3852, metadata !DIExpression()), !dbg !3853
  ret void, !dbg !3854
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3855 dso_local void @kfree(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !3860 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3862, metadata !DIExpression()), !dbg !3867
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3863, metadata !DIExpression()), !dbg !3868
  %0 = load i64, ptr %size.addr, align 8, !dbg !3869
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3870
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3871

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3872
  %tobool = icmp ne i64 %2, 0, !dbg !3872
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3873

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !3874
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3864, metadata !DIExpression()), !dbg !3875
  %3 = load i64, ptr %size.addr, align 8, !dbg !3876
  %cmp = icmp ugt i64 %3, 8192, !dbg !3878
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3879

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3880
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3881
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !3882
  store ptr %call, ptr %retval, align 8, !dbg !3883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3883

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3884
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !3884
  store i32 %call2, ptr %index, align 4, !dbg !3885
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3886
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3887
  %9 = ptrtoint ptr %8 to i64, !dbg !3887
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !3888
  %idxprom = zext i32 %call3 to i64, !dbg !3889
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3889
  %10 = load i32, ptr %index, align 4, !dbg !3890
  %idxprom4 = zext i32 %10 to i64, !dbg !3889
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3889
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3889
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3891
  %13 = load i64, ptr %size.addr, align 8, !dbg !3892
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !3893
  store ptr %call6, ptr %retval, align 8, !dbg !3894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3894

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !3895
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3896
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3897
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !3898
  store ptr %call8, ptr %retval, align 8, !dbg !3899
  br label %return, !dbg !3899

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3900
  ret ptr %16, !dbg !3900
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3901 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !3902 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3906, metadata !DIExpression()), !dbg !3908
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3907, metadata !DIExpression()), !dbg !3909
  %0 = load i64, ptr %size.addr, align 8, !dbg !3910
  %tobool = icmp ne i64 %0, 0, !dbg !3910
  br i1 %tobool, label %if.end, label %if.then, !dbg !3912

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3913
  br label %return, !dbg !3913

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3914
  %cmp = icmp ule i64 %1, 8, !dbg !3916
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3917

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3918
  br label %return, !dbg !3918

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3919
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3921
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3922

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3923
  %cmp4 = icmp ule i64 %3, 96, !dbg !3924
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3925

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3926
  br label %return, !dbg !3926

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3927
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3929
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3930

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3931
  %cmp9 = icmp ule i64 %5, 192, !dbg !3932
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3933

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3934
  br label %return, !dbg !3934

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3935
  %cmp12 = icmp ule i64 %6, 8, !dbg !3937
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3938

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3939
  br label %return, !dbg !3939

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3940
  %cmp15 = icmp ule i64 %7, 16, !dbg !3942
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3943

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3944
  br label %return, !dbg !3944

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3945
  %cmp18 = icmp ule i64 %8, 32, !dbg !3947
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3948

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3949
  br label %return, !dbg !3949

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3950
  %cmp21 = icmp ule i64 %9, 64, !dbg !3952
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3953

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3954
  br label %return, !dbg !3954

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3955
  %cmp24 = icmp ule i64 %10, 128, !dbg !3957
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3958

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3959
  br label %return, !dbg !3959

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3960
  %cmp27 = icmp ule i64 %11, 256, !dbg !3962
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3963

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3964
  br label %return, !dbg !3964

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3965
  %cmp30 = icmp ule i64 %12, 512, !dbg !3967
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3968

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3969
  br label %return, !dbg !3969

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3970
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3972
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3973

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3974
  br label %return, !dbg !3974

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3975
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3977
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3978

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3979
  br label %return, !dbg !3979

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3980
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3982
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3983

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3984
  br label %return, !dbg !3984

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3985
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3987
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3988

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3989
  br label %return, !dbg !3989

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3990
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3992
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3993

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3994
  br label %return, !dbg !3994

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3995
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3997
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3998

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3999
  br label %return, !dbg !3999

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4000
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4002
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4003

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4004
  br label %return, !dbg !4004

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4005
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4007
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4008

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4009
  br label %return, !dbg !4009

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4010
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4012
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4013

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4014
  br label %return, !dbg !4014

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4015
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4017
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4018

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4019
  br label %return, !dbg !4019

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4020
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4022
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4023

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4024
  br label %return, !dbg !4024

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4025
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4027
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4028

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4029
  br label %return, !dbg !4029

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4030, !range !4032, !noundef !1038
  %tobool69 = trunc i8 %25 to i1, !dbg !4030
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4033

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4034

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #17, !dbg !4035, !srcloc !4038
  unreachable, !dbg !4035

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4039

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4040

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4041

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4043

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4041

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !4045, !srcloc !4047
  br label %do.end75, !dbg !4045

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4041

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4048
  br label %return, !dbg !4048

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4049
  ret i32 %26, !dbg !4049
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4050 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !4056 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4060, metadata !DIExpression()), !dbg !4062
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4061, metadata !DIExpression()), !dbg !4063
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4064
  %and = and i32 %0, 17, !dbg !4064
  %cmp = icmp eq i32 %and, 0, !dbg !4064
  %lnot = xor i1 %cmp, true, !dbg !4064
  %lnot1 = xor i1 %lnot, true, !dbg !4064
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4064
  %conv = sext i32 %lnot.ext to i64, !dbg !4064
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4064
  %tobool = icmp ne i64 %expval, 0, !dbg !4064
  br i1 %tobool, label %if.then, label %if.end, !dbg !4066

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4067
  br label %return, !dbg !4067

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4068
  %and2 = and i32 %1, 1, !dbg !4070
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4070
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4071

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4072
  br label %return, !dbg !4072

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4073
  br label %return, !dbg !4073

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4075
  ret i32 %2, !dbg !4075
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4076 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4077 dso_local void @__compiletime_assert_245() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #9 align 16 !dbg !4078 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4084, metadata !DIExpression()), !dbg !4086
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4085, metadata !DIExpression()), !dbg !4087
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4088
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4089
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4090
  %2 = load i32, ptr %i.addr, align 4, !dbg !4091
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #14, !dbg !4092
  ret void, !dbg !4093
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !4094 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4102, metadata !DIExpression()), !dbg !4104
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4103, metadata !DIExpression()), !dbg !4105
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4106
  %1 = load i64, ptr %size.addr, align 8, !dbg !4107
  %conv = trunc i64 %1 to i32, !dbg !4107
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4108
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4109
  %3 = load i64, ptr %size.addr, align 8, !dbg !4109
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !4109
  ret void, !dbg !4110
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #9 align 16 !dbg !4111 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4114, metadata !DIExpression()), !dbg !4116
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4115, metadata !DIExpression()), !dbg !4117
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4118
  %1 = load i32, ptr %i.addr, align 4, !dbg !4119
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #14, !dbg !4120
  ret void, !dbg !4121
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4122 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4127, metadata !DIExpression()), !dbg !4129
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4128, metadata !DIExpression()), !dbg !4130
  ret i1 true, !dbg !4131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4132 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4137, metadata !DIExpression()), !dbg !4140
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4138, metadata !DIExpression()), !dbg !4141
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4139, metadata !DIExpression()), !dbg !4142
  ret void, !dbg !4143
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #9 align 16 !dbg !4144 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4147, metadata !DIExpression()), !dbg !4149
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4148, metadata !DIExpression()), !dbg !4150
  br label %do.body, !dbg !4151

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !4152
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4152
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !4152
  store volatile i32 %0, ptr %counter, align 4, !dbg !4152
  br label %do.end, !dbg !4152

do.end:                                           ; preds = %do.body
  ret void, !dbg !4154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4155 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4159, metadata !DIExpression()), !dbg !4161
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4160, metadata !DIExpression()), !dbg !4162
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4163
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4164
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !4165
  ret void, !dbg !4166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4167 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4171, metadata !DIExpression()), !dbg !4175
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4172, metadata !DIExpression()), !dbg !4176
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4173, metadata !DIExpression()), !dbg !4177
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !4178
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4174, metadata !DIExpression()), !dbg !4179
  %0 = load i32, ptr %i.addr, align 4, !dbg !4180
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4181
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4182
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #14, !dbg !4183
  store i32 %call, ptr %old, align 4, !dbg !4179
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4184
  %tobool = icmp ne ptr %2, null, !dbg !4184
  br i1 %tobool, label %if.then, label %if.end, !dbg !4186

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4187
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4188
  store i32 %3, ptr %4, align 4, !dbg !4189
  br label %if.end, !dbg !4190

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4191
  %tobool1 = icmp ne i32 %5, 0, !dbg !4191
  %lnot = xor i1 %tobool1, true, !dbg !4191
  %lnot2 = xor i1 %lnot, true, !dbg !4191
  %lnot3 = xor i1 %lnot2, true, !dbg !4191
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4191
  %conv = sext i32 %lnot.ext to i64, !dbg !4191
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4191
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4191
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4193

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !4194
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #14, !dbg !4195
  br label %if.end18, !dbg !4195

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4196
  %cmp = icmp slt i32 %7, 0, !dbg !4196
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4196

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !4196
  %9 = load i32, ptr %i.addr, align 4, !dbg !4196
  %add = add i32 %8, %9, !dbg !4196
  %cmp7 = icmp slt i32 %add, 0, !dbg !4196
  br label %lor.end, !dbg !4196

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !4196
  %lnot11 = xor i1 %lnot9, true, !dbg !4196
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4196
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4196
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4196
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4196
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4198

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4199
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #14, !dbg !4200
  br label %if.end17, !dbg !4200

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !4201
  ret void, !dbg !4201
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !4202 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4206, metadata !DIExpression()), !dbg !4208
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4207, metadata !DIExpression()), !dbg !4209
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4210
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4211
  %1 = load i32, ptr %i.addr, align 4, !dbg !4212
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4213
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #14, !dbg !4214
  ret i32 %call, !dbg !4215
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4216 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !4219 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4221, metadata !DIExpression()), !dbg !4223
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4222, metadata !DIExpression()), !dbg !4224
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4225
  %1 = load i64, ptr %size.addr, align 8, !dbg !4226
  %conv = trunc i64 %1 to i32, !dbg !4226
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4227
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4228
  %3 = load i64, ptr %size.addr, align 8, !dbg !4228
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !4228
  ret void, !dbg !4229
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !4230 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4232, metadata !DIExpression()), !dbg !4234
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4233, metadata !DIExpression()), !dbg !4235
  %0 = load i32, ptr %i.addr, align 4, !dbg !4236
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4237
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #14, !dbg !4238
  ret i32 %call, !dbg !4239
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !4240 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4242, metadata !DIExpression()), !dbg !4246
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4243, metadata !DIExpression()), !dbg !4247
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4244, metadata !DIExpression()), !dbg !4248
  %0 = load i32, ptr %i.addr, align 4, !dbg !4248
  store i32 %0, ptr %__ret, align 4, !dbg !4248
  %1 = load i32, ptr %__ret, align 4, !dbg !4248
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4248
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4248
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !4248, !srcloc !4249
  store i32 %3, ptr %__ret, align 4, !dbg !4248
  %4 = load i32, ptr %__ret, align 4, !dbg !4248
  store i32 %4, ptr %tmp, align 4, !dbg !4248
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !4250
  %5 = load i32, ptr %tmp, align 4, !dbg !4248
  ret i32 %5, !dbg !4251
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4252 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4256, metadata !DIExpression()), !dbg !4258
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4257, metadata !DIExpression()), !dbg !4259
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4260
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4261
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !4262
  ret i1 %call, !dbg !4263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4264 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4268, metadata !DIExpression()), !dbg !4272
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4269, metadata !DIExpression()), !dbg !4273
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4270, metadata !DIExpression()), !dbg !4274
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !4275
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4271, metadata !DIExpression()), !dbg !4276
  %0 = load i32, ptr %i.addr, align 4, !dbg !4277
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4278
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4279
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !4280
  store i32 %call, ptr %old, align 4, !dbg !4276
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4281
  %tobool = icmp ne ptr %2, null, !dbg !4281
  br i1 %tobool, label %if.then, label %if.end, !dbg !4283

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4284
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4285
  store i32 %3, ptr %4, align 4, !dbg !4286
  br label %if.end, !dbg !4287

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4288
  %6 = load i32, ptr %i.addr, align 4, !dbg !4290
  %cmp = icmp eq i32 %5, %6, !dbg !4291
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !4292

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !4293

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !4295

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !4297

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4297

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4295

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4299

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !4301

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4301

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !4299, !srcloc !4303
  br label %do.cond7, !dbg !4299

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !4299

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !4295

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4295

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !4304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4304

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4305
  %cmp12 = icmp slt i32 %7, 0, !dbg !4305
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !4305

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !4305
  %9 = load i32, ptr %i.addr, align 4, !dbg !4305
  %sub = sub i32 %8, %9, !dbg !4305
  %cmp13 = icmp slt i32 %sub, 0, !dbg !4305
  br label %lor.end, !dbg !4305

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !4305
  %lnot14 = xor i1 %lnot, true, !dbg !4305
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4305
  %conv = sext i32 %lnot.ext to i64, !dbg !4305
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4305
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4305
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4307

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4308
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !4309
  br label %if.end17, !dbg !4309

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !4310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4310

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !4311
  %12 = load i1, ptr %retval, align 1, !dbg !4311
  ret i1 %12, !dbg !4311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !4312 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4314, metadata !DIExpression()), !dbg !4316
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4315, metadata !DIExpression()), !dbg !4317
  br label %do.body, !dbg !4318

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4319

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4321
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4322
  %1 = load i32, ptr %i.addr, align 4, !dbg !4323
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4324
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !4325
  ret i32 %call, !dbg !4326
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !4327 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4329, metadata !DIExpression()), !dbg !4331
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4330, metadata !DIExpression()), !dbg !4332
  %0 = load i32, ptr %i.addr, align 4, !dbg !4333
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4334
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !4335
  ret i32 %call, !dbg !4336
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !4337 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4339, metadata !DIExpression()), !dbg !4343
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4340, metadata !DIExpression()), !dbg !4344
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !4345
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4341, metadata !DIExpression()), !dbg !4345
  %0 = load i32, ptr %i.addr, align 4, !dbg !4345
  %sub = sub i32 0, %0, !dbg !4345
  store i32 %sub, ptr %__ret, align 4, !dbg !4345
  %1 = load i32, ptr %__ret, align 4, !dbg !4345
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4345
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4345
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !4345, !srcloc !4346
  store i32 %3, ptr %__ret, align 4, !dbg !4345
  %4 = load i32, ptr %__ret, align 4, !dbg !4345
  store i32 %4, ptr %tmp, align 4, !dbg !4345
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !4347
  %5 = load i32, ptr %tmp, align 4, !dbg !4345
  ret i32 %5, !dbg !4348
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!529, !530, !531, !532, !533, !534, !535, !536}
!llvm.ident = !{!537}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nop_mnt_idmap", scope: !2, file: !3, line: 22, type: !195, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.mnt_idmapping.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/mnt_idmapping\22 -D KBUILD_BASENAME=\22mnt_idmapping\22 -D KBUILD_MODNAME=\22mnt_idmapping\22 -D __KBUILD_MODNAME=kmod_mnt_idmapping -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/mnt_idmapping.ll fs/mnt_idmapping.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !169, globals: !177, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/mnt_idmapping.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb232ded91bb6db0f47a92b44f9ffd69")
!4 = !{!5, !102, !110, !117, !122, !128, !133, !139, !146, !151, !161}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 147, baseType: !98, size: 32, elements: !99)
!6 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !6, line: 135, size: 512, elements: !8)
!8 = !{!9, !13, !15, !17, !21, !22, !38, !96, !97}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !7, file: !6, line: 136, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 137, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !7, file: !6, line: 138, baseType: !16, size: 32, offset: 128)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !7, file: !6, line: 139, baseType: !18, size: 16, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !6, line: 150, baseType: !5, size: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !7, file: !6, line: 151, baseType: !23, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !6, line: 64, baseType: !25)
!25 = !DISubroutineType(types: !26)
!26 = !{!16, !27, !16, !14, !28, !34}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !31, line: 72, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !31, line: 16, baseType: !33)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !19, line: 52, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !31, line: 88, baseType: !37)
!37 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !7, file: !6, line: 152, baseType: !39, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !6, line: 117, size: 256, elements: !41)
!41 = !{!42, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !40, file: !6, line: 118, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !19, line: 174, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 172, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !44, file: !19, line: 173, baseType: !16, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !40, file: !6, line: 119, baseType: !48, size: 192, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !49, line: 41, baseType: !50)
!49 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !49, line: 37, size: 192, elements: !51)
!51 = !{!52, !90}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !50, file: !49, line: 38, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !54, line: 29, baseType: !55)
!54 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !54, line: 17, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !54, line: 18, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !54, line: 18, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !58, file: !54, line: 19, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !62, line: 14, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !61, file: !62, line: 15, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !66, line: 44, baseType: !67)
!66 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !66, line: 14, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 15, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 15, size: 32, elements: !71)
!71 = !{!72, !73, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !66, line: 16, baseType: !43, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 24, baseType: !74, size: 16)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 24, size: 16, elements: !75)
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !74, file: !66, line: 25, baseType: !77, size: 8)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !78, line: 17, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !74, file: !66, line: 26, baseType: !77, size: 8, offset: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 28, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 28, size: 32, elements: !85)
!85 = !{!86, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !84, file: !66, line: 29, baseType: !87, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !20)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !84, file: !66, line: 30, baseType: !87, size: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !50, file: !49, line: 39, baseType: !91, size: 128, offset: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 190, size: 128, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !19, line: 191, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !19, line: 191, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !7, file: !6, line: 153, baseType: !14, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !7, file: !6, line: 154, baseType: !14, size: 64, offset: 448)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!101 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !103, line: 9, baseType: !98, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!104 = !{!105, !106, !107, !108, !109}
!105 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!106 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!107 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!108 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!109 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !111, line: 15, baseType: !98, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!114 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!115 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!116 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !118, line: 2052, baseType: !98, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!121 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !123, line: 54, baseType: !98, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "USRQUOTA", value: 0)
!126 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!127 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !129, line: 65, baseType: !98, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!132 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !134, line: 16, baseType: !98, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!135 = !{!136, !137, !138}
!136 = !DIEnumerator(name: "TT_NONE", value: 0)
!137 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!138 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !140, line: 51, baseType: !98, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!143 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!144 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!145 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 10, baseType: !98, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "false", value: 0)
!150 = !DIEnumerator(name: "true", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !152, line: 364, baseType: !98, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!153 = !{!154, !155, !156, !157, !158, !159, !160}
!154 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!155 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!159 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!160 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !162, line: 119, baseType: !98, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!163 = !{!164, !165, !166, !167, !168}
!164 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!165 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!166 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!167 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!168 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!169 = !{!14, !170, !172, !174, !33, !175}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !19, line: 37, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !31, line: 49, baseType: !98)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !19, line: 38, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !31, line: 50, baseType: !98)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !19, line: 154, baseType: !98)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!177 = !{!0, !178, !180, !182, !184, !186, !188, !190}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nop_mnt_idmap252", scope: !2, file: !3, line: 26, type: !14, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_make_vfsuid253", scope: !2, file: !3, line: 113, type: !14, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_make_vfsgid254", scope: !2, file: !3, line: 151, type: !14, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_from_vfsuid255", scope: !2, file: !3, line: 179, type: !14, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_from_vfsgid256", scope: !2, file: !3, line: 207, type: !14, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vfsgid_in_group_p257", scope: !2, file: !3, line: 229, type: !14, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !152, line: 480, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 168, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 21)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !3, line: 12, size: 128, elements: !196)
!196 = !{!197, !528}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !195, file: !3, line: 13, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !200, line: 68, size: 4800, elements: !201)
!200 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!201 = !{!202, !226, !227, !228, !229, !230, !236, !241, !264, !265, !268, !269, !413, !414, !426, !508, !509, !523, !526}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !199, file: !200, line: 69, baseType: !203, size: 576)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !200, line: 23, size: 576, elements: !204)
!204 = !{!205, !208}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !203, file: !200, line: 24, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !98)
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !200, line: 25, baseType: !209, size: 512, offset: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !200, line: 25, size: 512, elements: !210)
!210 = !{!211, !220}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !209, file: !200, line: 26, baseType: !212, size: 480)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 480, elements: !218)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !200, line: 17, size: 96, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !213, file: !200, line: 18, baseType: !206, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !213, file: !200, line: 19, baseType: !206, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !213, file: !200, line: 20, baseType: !206, size: 32, offset: 64)
!218 = !{!219}
!219 = !DISubrange(count: 5)
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !200, line: 27, baseType: !221, size: 128)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !200, line: 27, size: 128, elements: !222)
!222 = !{!223, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !221, file: !200, line: 28, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !221, file: !200, line: 29, baseType: !224, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !199, file: !200, line: 70, baseType: !203, size: 576, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !199, file: !200, line: 71, baseType: !203, size: 576, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !200, line: 72, baseType: !198, size: 64, offset: 1728)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !199, file: !200, line: 73, baseType: !16, size: 32, offset: 1792)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !199, file: !200, line: 74, baseType: !231, size: 32, offset: 1824)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !232, line: 23, baseType: !233)
!232 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 21, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !233, file: !232, line: 22, baseType: !170, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !199, file: !200, line: 75, baseType: !237, size: 32, offset: 1856)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !232, line: 28, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 26, size: 32, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !238, file: !232, line: 27, baseType: !172, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !199, file: !200, line: 76, baseType: !242, size: 192, offset: 1920)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !243, line: 9, size: 192, elements: !244)
!243 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!244 = !{!245, !254, !258, !259}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !242, file: !243, line: 10, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !247, line: 13, baseType: !248)
!247 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 181, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 179, size: 64, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !249, file: !19, line: 180, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !78, line: 22, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !80, line: 30, baseType: !37)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !242, file: !243, line: 11, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !243, line: 7, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !242, file: !243, line: 12, baseType: !98, size: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !242, file: !243, line: 13, baseType: !260, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !162, line: 113, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !162, line: 111, size: 32, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !261, file: !162, line: 112, baseType: !43, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !200, line: 77, baseType: !33, size: 64, offset: 2112)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !199, file: !200, line: 80, baseType: !266, size: 8, offset: 2176)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !267)
!267 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !199, file: !200, line: 88, baseType: !91, size: 128, offset: 2240)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !199, file: !200, line: 89, baseType: !270, size: 64, offset: 2368)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !272, line: 195, size: 1728, elements: !273)
!272 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!273 = !{!274, !275, !280, !292, !306, !309, !310, !317, !318, !319, !320, !323, !324, !325, !327, !328, !375, !398}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !271, file: !272, line: 196, baseType: !260, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !271, file: !272, line: 197, baseType: !276, size: 32, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !272, line: 28, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !19, line: 104, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !78, line: 20, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !80, line: 26, baseType: !16)
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !272, line: 198, baseType: !281, size: 192, offset: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !272, line: 198, size: 192, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !281, file: !272, line: 199, baseType: !91, size: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !281, file: !272, line: 200, baseType: !285, size: 192, align: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !286, line: 5, size: 192, align: 64, elements: !287)
!286 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!287 = !{!288, !289, !291}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !285, file: !286, line: 6, baseType: !33, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !285, file: !286, line: 7, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !285, file: !286, line: 8, baseType: !290, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !271, file: !272, line: 205, baseType: !293, size: 320, offset: 256)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !294, line: 48, size: 320, elements: !295)
!294 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!295 = !{!296, !297, !298, !303, !305}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !293, file: !294, line: 49, baseType: !246, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !293, file: !294, line: 55, baseType: !246, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !293, file: !294, line: 57, baseType: !299, size: 32, offset: 128)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !300, line: 15, size: 32, elements: !301)
!300 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !299, file: !300, line: 20, baseType: !43, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !293, file: !294, line: 59, baseType: !304, size: 32, offset: 160)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !62, line: 23, baseType: !61)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !293, file: !294, line: 60, baseType: !91, size: 128, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !271, file: !272, line: 206, baseType: !307, size: 64, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !272, line: 206, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !271, file: !272, line: 207, baseType: !14, size: 64, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !272, line: 208, baseType: !311, size: 64, offset: 704)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !272, line: 208, size: 64, elements: !312)
!312 = !{!313, !316}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !311, file: !272, line: 209, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !315, line: 8, baseType: !253)
!315 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !311, file: !272, line: 210, baseType: !314, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !271, file: !272, line: 212, baseType: !314, size: 64, offset: 768)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !271, file: !272, line: 213, baseType: !231, size: 32, offset: 832)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !271, file: !272, line: 214, baseType: !237, size: 32, offset: 864)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !271, file: !272, line: 215, baseType: !321, size: 32, offset: 896)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !272, line: 31, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 110, baseType: !206)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !271, file: !272, line: 216, baseType: !20, size: 16, offset: 928)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !271, file: !272, line: 217, baseType: !20, size: 16, offset: 944)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !271, file: !272, line: 221, baseType: !326, size: 16, offset: 960)
!326 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !272, line: 228, baseType: !33, size: 64, offset: 1024)
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !272, line: 245, baseType: !329, size: 320, offset: 1088)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !272, line: 245, size: 320, elements: !330)
!330 = !{!331, !366}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !329, file: !272, line: 246, baseType: !332, size: 320)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !272, line: 114, size: 320, elements: !333)
!333 = !{!334, !335, !347, !350, !365}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !332, file: !272, line: 116, baseType: !33, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !272, line: 117, baseType: !336, size: 64, offset: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !272, line: 117, size: 64, elements: !337)
!337 = !{!338, !346}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !272, line: 118, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !272, line: 118, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !339, file: !272, line: 120, baseType: !87, size: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !339, file: !272, line: 121, baseType: !343, size: 48, offset: 16)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 48, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 6)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !336, file: !272, line: 127, baseType: !33, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !332, file: !272, line: 129, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !272, line: 102, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !332, file: !272, line: 130, baseType: !351, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !272, line: 108, size: 192, elements: !353)
!353 = !{!354, !363, !364}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !352, file: !272, line: 109, baseType: !355, size: 128, align: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !19, line: 232, size: 128, align: 64, elements: !356)
!356 = !{!357, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !19, line: 233, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !355, file: !19, line: 234, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !358}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !352, file: !272, line: 110, baseType: !260, size: 32, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !352, file: !272, line: 111, baseType: !266, size: 8, offset: 160)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !332, file: !272, line: 131, baseType: !10, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !272, line: 247, baseType: !367, size: 320)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !272, line: 247, size: 320, elements: !368)
!368 = !{!369, !370, !371, !372, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !367, file: !272, line: 248, baseType: !33, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !367, file: !272, line: 249, baseType: !33, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !367, file: !272, line: 250, baseType: !348, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !367, file: !272, line: 251, baseType: !351, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !367, file: !272, line: 252, baseType: !374, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !272, line: 260, baseType: !376, size: 256, offset: 1408)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !272, line: 260, size: 256, elements: !377)
!377 = !{!378, !386}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !376, file: !272, line: 261, baseType: !379, size: 256)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !272, line: 134, size: 256, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !379, file: !272, line: 135, baseType: !14, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !379, file: !272, line: 136, baseType: !383, size: 256)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 4)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !272, line: 262, baseType: !387, size: 256)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !272, line: 262, size: 256, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !387, file: !272, line: 264, baseType: !91, size: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !387, file: !272, line: 265, baseType: !391, size: 128, offset: 128)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !392, line: 22, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!393 = !{!394, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !391, file: !392, line: 23, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !392, line: 23, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !391, file: !392, line: 24, baseType: !33, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !271, file: !272, line: 280, baseType: !399, size: 64, offset: 1664)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !272, line: 176, size: 192, elements: !401)
!401 = !{!402, !411, !412}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !400, file: !272, line: 177, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !272, line: 171, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!16, !270, !407, !409, !270}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !400, file: !272, line: 178, baseType: !270, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !400, file: !272, line: 179, baseType: !348, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !199, file: !200, line: 90, baseType: !293, size: 320, offset: 2432)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !199, file: !200, line: 97, baseType: !415, size: 256, offset: 2752)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !416, line: 98, size: 256, elements: !417)
!416 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!417 = !{!418, !419, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !415, file: !416, line: 99, baseType: !246, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !415, file: !416, line: 100, baseType: !91, size: 128, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !415, file: !416, line: 101, baseType: !421, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !416, line: 21, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !199, file: !200, line: 99, baseType: !427, size: 768, offset: 3008)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !6, line: 199, size: 768, elements: !428)
!428 = !{!429, !434}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !427, file: !6, line: 200, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!16, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !427, file: !6, line: 201, baseType: !435, size: 704, offset: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !6, line: 193, size: 704, elements: !436)
!436 = !{!437, !504}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !435, file: !6, line: 195, baseType: !438, size: 640)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !6, line: 173, size: 640, elements: !439)
!439 = !{!440, !452, !464, !465, !485, !486, !488, !494}
!440 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !6, line: 174, baseType: !441, size: 192)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !6, line: 174, size: 192, elements: !442)
!442 = !{!443, !451}
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !6, line: 175, baseType: !444, size: 192)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !441, file: !6, line: 175, size: 192, elements: !445)
!445 = !{!446, !447, !448, !449, !450}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !444, file: !6, line: 176, baseType: !27, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !444, file: !6, line: 177, baseType: !16, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !444, file: !6, line: 178, baseType: !16, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !444, file: !6, line: 179, baseType: !16, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !444, file: !6, line: 180, baseType: !16, size: 32, offset: 160)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !441, file: !6, line: 182, baseType: !355, size: 128, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !438, file: !6, line: 184, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !455, line: 26, size: 256, elements: !456)
!455 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !454, file: !455, line: 27, baseType: !98, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !454, file: !455, line: 28, baseType: !459, size: 192, offset: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !460, line: 43, size: 192, elements: !461)
!460 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !459, file: !460, line: 44, baseType: !304, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !459, file: !460, line: 45, baseType: !91, size: 128, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !438, file: !6, line: 185, baseType: !27, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !438, file: !6, line: 186, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !6, line: 204, size: 960, elements: !468)
!468 = !{!469, !470, !474, !481}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !467, file: !6, line: 205, baseType: !427, size: 768)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !467, file: !6, line: 206, baseType: !471, size: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!433, !466}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !467, file: !6, line: 207, baseType: !475, size: 64, offset: 832)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478, !479, !480}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !467, file: !6, line: 209, baseType: !482, size: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!16, !478, !27}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !438, file: !6, line: 187, baseType: !433, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !438, file: !6, line: 188, baseType: !487, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !438, file: !6, line: 189, baseType: !489, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !6, line: 157, size: 256, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !6, line: 158, baseType: !285, size: 192, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !490, file: !6, line: 159, baseType: !478, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !438, file: !6, line: 190, baseType: !495, size: 64, offset: 576)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !19, line: 194, size: 64, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !495, file: !19, line: 195, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !19, line: 198, size: 128, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !19, line: 199, baseType: !498, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !499, file: !19, line: 199, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !435, file: !6, line: 196, baseType: !505, size: 64, offset: 640)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !286, line: 12, size: 64, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !505, file: !286, line: 13, baseType: !290, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !199, file: !200, line: 100, baseType: !478, size: 64, offset: 3776)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !199, file: !200, line: 102, baseType: !510, size: 64, offset: 3840)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !200, line: 107, size: 1152, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !521}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !511, file: !200, line: 108, baseType: !499, size: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !511, file: !200, line: 109, baseType: !198, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !511, file: !200, line: 110, baseType: !231, size: 32, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !511, file: !200, line: 111, baseType: !43, size: 32, offset: 224)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !511, file: !200, line: 112, baseType: !518, size: 640, offset: 256)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 640, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 10)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !511, file: !200, line: 113, baseType: !522, size: 256, offset: 896)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !199, file: !200, line: 103, baseType: !524, size: 640, offset: 3904)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 640, elements: !519)
!525 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !199, file: !200, line: 104, baseType: !527, size: 256, offset: 4544)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 256, elements: !384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !195, file: !3, line: 14, baseType: !260, size: 32, offset: 64)
!529 = !{i32 7, !"Dwarf Version", i32 5}
!530 = !{i32 2, !"Debug Info Version", i32 3}
!531 = !{i32 1, !"wchar_size", i32 2}
!532 = !{i32 8, !"cf-protection-branch", i32 1}
!533 = !{i32 4, !"function_return_thunk_extern", i32 1}
!534 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!535 = !{i32 1, !"Code Model", i32 2}
!536 = !{i32 1, !"override-stack-alignment", i32 8}
!537 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!538 = distinct !DISubprogram(name: "check_fsmapping", scope: !3, file: !3, line: 35, type: !539, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3421)
!539 = !DISubroutineType(types: !540)
!540 = !{!266, !541, !543}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !118, line: 1190, size: 10752, elements: !546)
!546 = !{!547, !548, !551, !552, !553, !554, !1785, !1915, !1955, !2037, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2054, !2058, !2059, !2062, !2065, !2068, !2071, !2072, !2073, !2114, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3362, !3369, !3370, !3371, !3372, !3373, !3388, !3389, !3390, !3391, !3392, !3395, !3396, !3397, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !545, file: !118, line: 1191, baseType: !91, size: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !545, file: !118, line: 1192, baseType: !549, size: 32, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !19, line: 21, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !19, line: 18, baseType: !206)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !545, file: !118, line: 1193, baseType: !81, size: 8, offset: 160)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !545, file: !118, line: 1194, baseType: !33, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !545, file: !118, line: 1195, baseType: !35, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !545, file: !118, line: 1196, baseType: !555, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !118, line: 2366, size: 576, elements: !557)
!557 = !{!558, !559, !560, !567, !571, !1767, !1771, !1772, !1773, !1774, !1777, !1778, !1779, !1781, !1782, !1783, !1784}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !556, file: !118, line: 2367, baseType: !10, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !556, file: !118, line: 2368, baseType: !16, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !556, file: !118, line: 2376, baseType: !561, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!16, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !566, line: 21, flags: DIFlagFwdDecl)
!566 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!567 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !556, file: !118, line: 2377, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !118, line: 75, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !556, file: !118, line: 2378, baseType: !572, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!575, !555, !16, !10, !14}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !577, line: 82, size: 1536, elements: !578)
!577 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!578 = !{!579, !580, !590, !598, !599, !617, !1674, !1678, !1691, !1750, !1751, !1752, !1753, !1759, !1760, !1761}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !576, file: !577, line: 84, baseType: !98, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !576, file: !577, line: 85, baseType: !581, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !582, line: 275, baseType: !583)
!582 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !582, line: 275, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !583, file: !582, line: 275, baseType: !586, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !582, line: 69, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !582, line: 64, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !587, file: !582, line: 65, baseType: !98, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !576, file: !577, line: 86, baseType: !591, size: 128, offset: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !592, line: 38, size: 128, elements: !593)
!592 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!593 = !{!594, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !592, line: 39, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !591, file: !592, line: 39, baseType: !597, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !576, file: !577, line: 87, baseType: !575, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !576, file: !577, line: 88, baseType: !600, size: 128, offset: 256)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !577, line: 49, size: 128, elements: !601)
!601 = !{!602, !614}
!602 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !577, line: 50, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !577, line: 50, size: 64, elements: !604)
!604 = !{!605, !610}
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !577, line: 51, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !577, line: 51, size: 64, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !606, file: !577, line: 52, baseType: !206, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !606, file: !577, line: 52, baseType: !206, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !603, file: !577, line: 54, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !613)
!613 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !600, file: !577, line: 56, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !576, file: !577, line: 89, baseType: !618, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !118, line: 641, size: 4800, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !630, !631, !1606, !1607, !1608, !1609, !1610, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1654, !1657, !1658, !1659, !1668, !1669, !1670, !1673}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !619, file: !118, line: 642, baseType: !18, size: 16)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !619, file: !118, line: 643, baseType: !20, size: 16, offset: 16)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !619, file: !118, line: 644, baseType: !231, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !619, file: !118, line: 645, baseType: !91, size: 128, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !619, file: !118, line: 646, baseType: !237, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !619, file: !118, line: 647, baseType: !98, size: 32, offset: 224)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !619, file: !118, line: 650, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !118, line: 607, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !619, file: !118, line: 651, baseType: !628, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !619, file: !118, line: 654, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !118, line: 1966, size: 2048, align: 512, elements: !635)
!635 = !{!636, !640, !653, !658, !662, !666, !670, !674, !678, !682, !686, !687, !691, !695, !1526, !1557, !1561, !1567, !1571, !1575, !1579, !1583, !1587, !1593, !1597}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !634, file: !118, line: 1967, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!575, !618, !575, !98}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !634, file: !118, line: 1968, baseType: !641, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!10, !575, !618, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !646, line: 10, size: 128, elements: !647)
!646 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!647 = !{!648, !652}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !645, file: !646, line: 11, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !14}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !645, file: !646, line: 12, baseType: !14, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !634, file: !118, line: 1969, baseType: !654, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!16, !657, !618, !16}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !634, file: !118, line: 1970, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!628, !618, !16, !266}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !634, file: !118, line: 1972, baseType: !663, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!16, !575, !374, !16}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !634, file: !118, line: 1974, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!16, !657, !618, !575, !18, !266}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !634, file: !118, line: 1976, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!16, !575, !618, !575}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !634, file: !118, line: 1977, baseType: !675, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!16, !618, !575}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !634, file: !118, line: 1978, baseType: !679, size: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!16, !657, !618, !575, !10}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !634, file: !118, line: 1980, baseType: !683, size: 64, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!16, !657, !618, !575, !18}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !634, file: !118, line: 1982, baseType: !675, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !634, file: !118, line: 1983, baseType: !688, size: 64, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!16, !657, !618, !575, !18, !549}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !634, file: !118, line: 1985, baseType: !692, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!16, !657, !618, !575, !618, !575, !98}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !634, file: !118, line: 1987, baseType: !696, size: 64, offset: 832)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!16, !657, !575, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !118, line: 226, size: 640, elements: !701)
!701 = !{!702, !703, !704, !714, !723, !724, !729, !730, !731}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !700, file: !118, line: 227, baseType: !98, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !700, file: !118, line: 228, baseType: !18, size: 16, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !118, line: 241, baseType: !705, size: 32, offset: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !118, line: 241, size: 32, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !705, file: !118, line: 242, baseType: !231, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !705, file: !118, line: 243, baseType: !709, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !710, line: 16, baseType: !711)
!710 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 14, size: 32, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !711, file: !710, line: 15, baseType: !170, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !118, line: 245, baseType: !715, size: 32, offset: 96)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !118, line: 245, size: 32, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !715, file: !118, line: 246, baseType: !237, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !715, file: !118, line: 247, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !710, line: 20, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 18, size: 32, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !720, file: !710, line: 19, baseType: !172, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !700, file: !118, line: 249, baseType: !35, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !700, file: !118, line: 250, baseType: !725, size: 128, offset: 192)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !315, line: 13, size: 128, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !725, file: !315, line: 14, baseType: !314, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !725, file: !315, line: 15, baseType: !525, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !700, file: !118, line: 251, baseType: !725, size: 128, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !700, file: !118, line: 252, baseType: !725, size: 128, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !700, file: !118, line: 259, baseType: !732, size: 64, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !118, line: 994, size: 1856, align: 64, elements: !734)
!734 = !{!735, !746, !747, !749, !750, !758, !759, !760, !812, !890, !899, !913, !914, !1274, !1275, !1276, !1277, !1279, !1524, !1525}
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !118, line: 995, baseType: !736, size: 128)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !118, line: 995, size: 128, elements: !737)
!737 = !{!738, !744, !745}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !736, file: !118, line: 996, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !740, line: 60, size: 64, elements: !741)
!740 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !739, file: !740, line: 61, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !736, file: !118, line: 997, baseType: !355, size: 128, align: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !736, file: !118, line: 998, baseType: !98, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !733, file: !118, line: 1005, baseType: !53, size: 32, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !733, file: !118, line: 1006, baseType: !748, size: 32, offset: 160)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !19, line: 156, baseType: !98)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !733, file: !118, line: 1007, baseType: !246, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !733, file: !118, line: 1008, baseType: !751, size: 256, offset: 256)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !752, line: 66, size: 256, elements: !753)
!752 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!753 = !{!754, !755, !756, !757}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !751, file: !752, line: 67, baseType: !246, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !751, file: !752, line: 68, baseType: !304, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !751, file: !752, line: 70, baseType: !299, size: 32, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !751, file: !752, line: 72, baseType: !91, size: 128, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !733, file: !118, line: 1009, baseType: !35, size: 64, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !733, file: !118, line: 1010, baseType: !98, size: 32, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !733, file: !118, line: 1011, baseType: !761, size: 256, offset: 640)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !118, line: 948, size: 256, elements: !762)
!762 = !{!763, !786, !808, !809, !810, !811}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !761, file: !118, line: 949, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !765, line: 34, baseType: !766)
!765 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !765, line: 25, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !766, file: !765, line: 26, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !770, line: 27, baseType: !771)
!770 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !770, line: 13, size: 64, elements: !772)
!772 = !{!773, !785}
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !770, line: 14, baseType: !774, size: 32)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !771, file: !770, line: 14, size: 32, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !774, file: !770, line: 15, baseType: !43, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !770, line: 16, baseType: !778, size: 32)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !770, line: 16, size: 32, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !778, file: !770, line: 18, baseType: !77, size: 8)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !778, file: !770, line: 19, baseType: !782, size: 24, offset: 8)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 24, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 3)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !771, file: !770, line: 26, baseType: !65, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !761, file: !118, line: 950, baseType: !787, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !103, line: 59, size: 768, elements: !789)
!789 = !{!790, !791, !792, !793, !795, !796, !797, !798}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !788, file: !103, line: 61, baseType: !260, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !788, file: !103, line: 62, baseType: !98, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !788, file: !103, line: 63, baseType: !53, size: 32, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !788, file: !103, line: 65, baseType: !794, size: 256, offset: 128)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 256, elements: !384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !788, file: !103, line: 66, baseType: !495, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !788, file: !103, line: 68, baseType: !48, size: 192, offset: 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !788, file: !103, line: 69, baseType: !355, size: 128, align: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !788, file: !103, line: 70, baseType: !799, offset: 768)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, elements: !806)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !103, line: 54, size: 128, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !800, file: !103, line: 55, baseType: !16, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !800, file: !103, line: 56, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !103, line: 56, flags: DIFlagFwdDecl)
!806 = !{!807}
!807 = !DISubrange(count: -1)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !761, file: !118, line: 951, baseType: !102, size: 32, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !761, file: !118, line: 952, baseType: !231, size: 32, offset: 160)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !761, file: !118, line: 952, baseType: !231, size: 32, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !761, file: !118, line: 953, baseType: !16, size: 32, offset: 224)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !733, file: !118, line: 1012, baseType: !813, size: 64, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !816, line: 110, size: 1472, elements: !817)
!816 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !875, !876, !877, !885}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !815, file: !816, line: 111, baseType: !246, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !815, file: !816, line: 112, baseType: !231, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !815, file: !816, line: 113, baseType: !237, size: 32, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !815, file: !816, line: 114, baseType: !231, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !815, file: !816, line: 115, baseType: !237, size: 32, offset: 160)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !815, file: !816, line: 116, baseType: !231, size: 32, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !815, file: !816, line: 117, baseType: !237, size: 32, offset: 224)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !815, file: !816, line: 118, baseType: !231, size: 32, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !815, file: !816, line: 119, baseType: !237, size: 32, offset: 288)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !815, file: !816, line: 120, baseType: !98, size: 32, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !815, file: !816, line: 121, baseType: !829, size: 64, offset: 384)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !830, line: 24, baseType: !831)
!830 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !830, line: 24, size: 64, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !831, file: !830, line: 24, baseType: !611, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !815, file: !816, line: 122, baseType: !829, size: 64, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !815, file: !816, line: 123, baseType: !829, size: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !815, file: !816, line: 124, baseType: !829, size: 64, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !815, file: !816, line: 125, baseType: !829, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !815, file: !816, line: 127, baseType: !81, size: 8, offset: 704)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !815, file: !816, line: 129, baseType: !270, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !815, file: !816, line: 130, baseType: !270, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !815, file: !816, line: 131, baseType: !270, size: 64, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !815, file: !816, line: 132, baseType: !270, size: 64, offset: 960)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !815, file: !816, line: 135, baseType: !14, size: 64, offset: 1024)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !815, file: !816, line: 137, baseType: !845, size: 64, offset: 1088)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !847, line: 14, size: 1088, elements: !848)
!847 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!848 = !{!849, !850, !859, !860, !861, !862, !863, !864}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !846, file: !847, line: 15, baseType: !260, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !846, file: !847, line: 17, baseType: !851, size: 320, offset: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !852, line: 22, size: 320, elements: !853)
!852 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!853 = !{!854, !855, !856, !857}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !851, file: !852, line: 23, baseType: !304, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !851, file: !852, line: 24, baseType: !252, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !851, file: !852, line: 26, baseType: !91, size: 128, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !851, file: !852, line: 28, baseType: !858, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !846, file: !847, line: 19, baseType: !33, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !846, file: !847, line: 20, baseType: !246, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !846, file: !847, line: 23, baseType: !499, size: 128, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !846, file: !847, line: 24, baseType: !231, size: 32, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !846, file: !847, line: 29, baseType: !246, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !846, file: !847, line: 36, baseType: !865, size: 320, offset: 768)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !866, line: 15, size: 320, elements: !867)
!866 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!867 = !{!868, !869, !870, !871, !872, !873, !874}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !865, file: !866, line: 16, baseType: !304, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !865, file: !866, line: 18, baseType: !16, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !865, file: !866, line: 19, baseType: !16, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !865, file: !866, line: 20, baseType: !16, size: 32, offset: 96)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !865, file: !866, line: 21, baseType: !16, size: 32, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !865, file: !866, line: 22, baseType: !33, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !865, file: !866, line: 23, baseType: !33, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !815, file: !816, line: 138, baseType: !198, size: 64, offset: 1152)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !815, file: !816, line: 139, baseType: !510, size: 64, offset: 1216)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !815, file: !816, line: 140, baseType: !878, size: 64, offset: 1280)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !816, line: 25, size: 64, elements: !880)
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !879, file: !816, line: 26, baseType: !43, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !879, file: !816, line: 27, baseType: !16, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !879, file: !816, line: 28, baseType: !884, offset: 64)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, elements: !806)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 142, baseType: !886, size: 128, offset: 1344)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 142, size: 128, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !886, file: !816, line: 143, baseType: !16, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !886, file: !816, line: 144, baseType: !355, size: 128, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !733, file: !118, line: 1013, baseType: !891, size: 256, offset: 960)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !118, line: 970, size: 256, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !898}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !891, file: !118, line: 971, baseType: !33, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !891, file: !118, line: 972, baseType: !98, size: 32, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !891, file: !118, line: 973, baseType: !98, size: 32, offset: 96)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !891, file: !118, line: 974, baseType: !98, size: 32, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !891, file: !118, line: 975, baseType: !98, size: 32, offset: 160)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !891, file: !118, line: 976, baseType: !35, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !733, file: !118, line: 1014, baseType: !900, size: 128, offset: 1216)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !901, line: 8, size: 128, elements: !902)
!901 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!902 = !{!903, !912}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !900, file: !901, line: 9, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !566, line: 70, size: 256, elements: !906)
!906 = !{!907, !908, !910, !911}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !905, file: !566, line: 71, baseType: !575, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !905, file: !566, line: 72, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !905, file: !566, line: 73, baseType: !16, size: 32, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !905, file: !566, line: 74, baseType: !657, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !900, file: !901, line: 10, baseType: !575, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !733, file: !118, line: 1015, baseType: !618, size: 64, offset: 1344)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !733, file: !118, line: 1016, baseType: !915, size: 64, offset: 1408)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !118, line: 1914, size: 2112, elements: !918)
!918 = !{!919, !923, !927, !934, !938, !966, !967, !973, !986, !994, !998, !999, !1194, !1195, !1199, !1204, !1205, !1209, !1213, !1219, !1220, !1224, !1225, !1231, !1235, !1239, !1245, !1249, !1255, !1259, !1263, !1264, !1270}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !917, file: !118, line: 1915, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !922, line: 103, flags: DIFlagFwdDecl)
!922 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!923 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !917, file: !118, line: 1916, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!35, !732, !35, !16}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !917, file: !118, line: 1917, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!931, !732, !374, !29, !34}
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 66, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !31, line: 73, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !31, line: 15, baseType: !525)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !917, file: !118, line: 1918, baseType: !935, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!931, !732, !10, !29, !34}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !917, file: !118, line: 1919, baseType: !939, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!931, !942, !964}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !118, line: 373, size: 384, elements: !944)
!944 = !{!945, !946, !947, !951, !952, !953, !954}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !943, file: !118, line: 374, baseType: !732, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !943, file: !118, line: 375, baseType: !35, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !943, file: !118, line: 376, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !942, !525}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !943, file: !118, line: 377, baseType: !14, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !943, file: !118, line: 378, baseType: !16, size: 32, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !943, file: !118, line: 379, baseType: !87, size: 16, offset: 288)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !118, line: 380, baseType: !955, size: 64, offset: 320)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !943, file: !118, line: 380, size: 64, elements: !956)
!956 = !{!957, !960}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !955, file: !118, line: 386, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !118, line: 386, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !955, file: !118, line: 395, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!931, !14}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !118, line: 69, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !917, file: !118, line: 1920, baseType: !939, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !917, file: !118, line: 1921, baseType: !968, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!16, !942, !971, !98}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !118, line: 53, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !917, file: !118, line: 1923, baseType: !974, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!16, !732, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !118, line: 1858, size: 128, elements: !979)
!979 = !{!980, !985}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !978, file: !118, line: 1859, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !118, line: 1855, baseType: !982)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!266, !977, !10, !16, !35, !611, !98}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !978, file: !118, line: 1860, baseType: !35, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !917, file: !118, line: 1924, baseType: !987, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!990, !732, !992}
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !991, line: 59, baseType: !98)
!991 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !118, line: 61, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !917, file: !118, line: 1925, baseType: !995, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!525, !732, !98, !33}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !917, file: !118, line: 1926, baseType: !995, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !917, file: !118, line: 1927, baseType: !1000, size: 64, offset: 704)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!16, !732, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1005, line: 625, size: 1344, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1006 = !{!1007, !1016, !1151, !1157, !1164, !1165, !1170, !1171, !1176, !1177, !1180, !1184, !1185, !1186, !1187, !1188, !1192}
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !1005, line: 628, baseType: !1008, size: 128)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1005, line: 628, size: 128, elements: !1009)
!1009 = !{!1010, !1015}
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !1005, line: 629, baseType: !1011, size: 128)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !1005, line: 629, size: 128, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1011, file: !1005, line: 631, baseType: !33, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1011, file: !1005, line: 632, baseType: !33, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1008, file: !1005, line: 635, baseType: !355, size: 128, align: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1004, file: !1005, line: 639, baseType: !1017, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1005, line: 733, size: 10240, elements: !1019)
!1019 = !{!1020, !1149}
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !1005, line: 734, baseType: !1021, size: 10240)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !1005, line: 734, size: 10240, elements: !1022)
!1022 = !{!1023, !1027, !1041, !1045, !1046, !1047, !1048, !1049, !1050, !1059, !1060, !1061, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1100, !1102, !1105, !1129, !1130, !1131, !1134, !1135, !1136, !1139, !1140, !1141, !1147, !1148}
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !1005, line: 739, baseType: !1024, size: 512, align: 512)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1021, file: !1005, line: 739, size: 512, align: 512, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1024, file: !1005, line: 747, baseType: !43, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1021, file: !1005, line: 750, baseType: !1028, size: 128, offset: 512)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1029, line: 218, size: 128, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1030 = !{!1031, !1039, !1040}
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1028, file: !1029, line: 219, baseType: !1032, size: 32)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1028, file: !1029, line: 219, size: 32, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1032, file: !1029, line: 220, baseType: !53, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1032, file: !1029, line: 221, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1029, line: 197, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1029, line: 197, elements: !1038)
!1038 = !{}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1028, file: !1029, line: 223, baseType: !98, size: 32, offset: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1028, file: !1029, line: 224, baseType: !14, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1021, file: !1005, line: 752, baseType: !1042, size: 64, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!33, !732, !33, !33, !33, !33}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1021, file: !1005, line: 756, baseType: !33, size: 64, offset: 704)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1021, file: !1005, line: 757, baseType: !33, size: 64, offset: 768)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1021, file: !1005, line: 760, baseType: !33, size: 64, offset: 832)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1021, file: !1005, line: 761, baseType: !33, size: 64, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1021, file: !1005, line: 763, baseType: !33, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1021, file: !1005, line: 764, baseType: !1051, size: 64, offset: 1024)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1053, line: 299, baseType: !1054)
!1053 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1053, line: 299, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1054, file: !1053, line: 299, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1058, line: 18, baseType: !33)
!1058 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1021, file: !1005, line: 773, baseType: !43, size: 32, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1021, file: !1005, line: 785, baseType: !43, size: 32, offset: 1120)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1021, file: !1005, line: 795, baseType: !1062, size: 64, offset: 1152)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1005, line: 726, size: 128, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1063, file: !1005, line: 727, baseType: !611, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1063, file: !1005, line: 728, baseType: !16, size: 32, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1021, file: !1005, line: 801, baseType: !33, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1021, file: !1005, line: 804, baseType: !246, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1021, file: !1005, line: 806, baseType: !16, size: 32, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1021, file: !1005, line: 808, baseType: !53, size: 32, offset: 1376)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1021, file: !1005, line: 823, baseType: !293, size: 320, offset: 1408)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1021, file: !1005, line: 825, baseType: !91, size: 128, offset: 1728)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1021, file: !1005, line: 845, baseType: !16, size: 32, offset: 1856)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1021, file: !1005, line: 849, baseType: !33, size: 64, offset: 1920)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1021, file: !1005, line: 850, baseType: !33, size: 64, offset: 1984)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1021, file: !1005, line: 852, baseType: !33, size: 64, offset: 2048)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1021, file: !1005, line: 853, baseType: !33, size: 64, offset: 2112)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1021, file: !1005, line: 854, baseType: !248, size: 64, offset: 2176)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1021, file: !1005, line: 855, baseType: !33, size: 64, offset: 2240)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1021, file: !1005, line: 856, baseType: !33, size: 64, offset: 2304)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1021, file: !1005, line: 857, baseType: !33, size: 64, offset: 2368)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1021, file: !1005, line: 858, baseType: !33, size: 64, offset: 2432)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1021, file: !1005, line: 865, baseType: !586, size: 32, offset: 2496)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1021, file: !1005, line: 867, baseType: !53, size: 32, offset: 2528)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1021, file: !1005, line: 869, baseType: !33, size: 64, offset: 2560)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1021, file: !1005, line: 869, baseType: !33, size: 64, offset: 2624)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1021, file: !1005, line: 869, baseType: !33, size: 64, offset: 2688)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1021, file: !1005, line: 869, baseType: !33, size: 64, offset: 2752)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1021, file: !1005, line: 870, baseType: !33, size: 64, offset: 2816)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1021, file: !1005, line: 870, baseType: !33, size: 64, offset: 2880)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1021, file: !1005, line: 870, baseType: !33, size: 64, offset: 2944)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1021, file: !1005, line: 871, baseType: !33, size: 64, offset: 3008)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1021, file: !1005, line: 871, baseType: !33, size: 64, offset: 3072)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1021, file: !1005, line: 871, baseType: !33, size: 64, offset: 3136)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1021, file: !1005, line: 871, baseType: !33, size: 64, offset: 3200)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1021, file: !1005, line: 873, baseType: !1097, size: 3328, offset: 3264)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 3328, elements: !1098)
!1098 = !{!1099}
!1099 = !DISubrange(count: 52)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1021, file: !1005, line: 875, baseType: !1101, size: 1280, offset: 6592)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 1280, elements: !384)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1021, file: !1005, line: 877, baseType: !1103, size: 64, offset: 7872)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1005, line: 877, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1021, file: !1005, line: 880, baseType: !1106, size: 1088, offset: 7936)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1107, line: 72, baseType: !1108)
!1107 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1107, line: 23, size: 1088, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1117, !1118, !1119, !1120, !1124, !1125, !1126}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1108, file: !1107, line: 28, baseType: !611, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1108, file: !1107, line: 38, baseType: !248, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1108, file: !1107, line: 40, baseType: !33, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1108, file: !1107, line: 43, baseType: !293, size: 320, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1108, file: !1107, line: 44, baseType: !1115, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1107, line: 44, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !1107, line: 48, baseType: !33, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1108, file: !1107, line: 59, baseType: !751, size: 256, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1108, file: !1107, line: 60, baseType: !14, size: 64, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1108, file: !1107, line: 61, baseType: !1121, size: 64, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1107, line: 61, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1108, file: !1107, line: 63, baseType: !43, size: 32, offset: 1024)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1108, file: !1107, line: 69, baseType: !87, size: 16, offset: 1056)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1108, file: !1107, line: 70, baseType: !1127, size: 16, offset: 1072)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !78, line: 18, baseType: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !80, line: 23, baseType: !326)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1021, file: !1005, line: 882, baseType: !33, size: 64, offset: 9024)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1021, file: !1005, line: 885, baseType: !53, size: 32, offset: 9088)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1021, file: !1005, line: 886, baseType: !1132, size: 64, offset: 9152)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1005, line: 732, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1021, file: !1005, line: 901, baseType: !198, size: 64, offset: 9216)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1021, file: !1005, line: 904, baseType: !732, size: 64, offset: 9280)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1021, file: !1005, line: 906, baseType: !1137, size: 64, offset: 9344)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1005, line: 906, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1021, file: !1005, line: 930, baseType: !43, size: 32, offset: 9408)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1021, file: !1005, line: 933, baseType: !43, size: 32, offset: 9440)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1021, file: !1005, line: 935, baseType: !1142, size: 64, offset: 9472)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !140, line: 103, size: 64, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1142, file: !140, line: 104, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !140, line: 101, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1021, file: !1005, line: 940, baseType: !246, size: 64, offset: 9536)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1021, file: !1005, line: 942, baseType: !415, size: 256, offset: 9600)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1018, file: !1005, line: 986, baseType: !1150, offset: 10240)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !806)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1004, file: !1005, line: 640, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1053, line: 297, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1053, line: 297, size: 64, elements: !1154)
!1154 = !{!1155}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1153, file: !1053, line: 297, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1058, line: 19, baseType: !33)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !1005, line: 646, baseType: !1158, size: 64, offset: 256)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1005, line: 646, size: 64, elements: !1159)
!1159 = !{!1160, !1163}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1158, file: !1005, line: 647, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1005, line: 542, baseType: !33)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1158, file: !1005, line: 648, baseType: !1162, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1004, file: !1005, line: 666, baseType: !16, size: 32, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1004, file: !1005, line: 667, baseType: !1166, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1005, line: 579, size: 320, elements: !1168)
!1168 = !{!1169}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1167, file: !1005, line: 580, baseType: !293, size: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1004, file: !1005, line: 670, baseType: !266, size: 8, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1004, file: !1005, line: 681, baseType: !1172, size: 256, offset: 512)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !1005, line: 678, size: 256, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1172, file: !1005, line: 679, baseType: !285, size: 192, align: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1172, file: !1005, line: 680, baseType: !33, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1004, file: !1005, line: 689, baseType: !91, size: 128, offset: 768)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1004, file: !1005, line: 691, baseType: !1178, size: 64, offset: 896)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1005, line: 691, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1004, file: !1005, line: 694, baseType: !1181, size: 64, offset: 960)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1183)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1005, line: 694, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1004, file: !1005, line: 697, baseType: !33, size: 64, offset: 1024)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1004, file: !1005, line: 699, baseType: !732, size: 64, offset: 1088)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1004, file: !1005, line: 700, baseType: !14, size: 64, offset: 1152)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1004, file: !1005, line: 711, baseType: !246, size: 64, offset: 1216)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1004, file: !1005, line: 717, baseType: !1189, size: 64, offset: 1280)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1191, line: 54, flags: DIFlagFwdDecl)
!1191 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1004, file: !1005, line: 722, baseType: !1193, offset: 1344)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1005, line: 570, elements: !1038)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !917, file: !118, line: 1928, baseType: !33, size: 64, offset: 768)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !917, file: !118, line: 1929, baseType: !1196, size: 64, offset: 832)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!16, !618, !732}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !917, file: !118, line: 1930, baseType: !1200, size: 64, offset: 896)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!16, !732, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !118, line: 1061, baseType: !14)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !917, file: !118, line: 1931, baseType: !1196, size: 64, offset: 960)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !917, file: !118, line: 1932, baseType: !1206, size: 64, offset: 1024)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!16, !732, !35, !35, !16}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !917, file: !118, line: 1933, baseType: !1210, size: 64, offset: 1088)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!16, !16, !732, !16}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !917, file: !118, line: 1934, baseType: !1214, size: 64, offset: 1152)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!16, !732, !16, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !118, line: 1063, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !917, file: !118, line: 1935, baseType: !1042, size: 64, offset: 1216)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !917, file: !118, line: 1936, baseType: !1221, size: 64, offset: 1280)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!16, !16}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !917, file: !118, line: 1937, baseType: !1214, size: 64, offset: 1344)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !917, file: !118, line: 1938, baseType: !1226, size: 64, offset: 1408)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!931, !1229, !732, !34, !29, !98}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1191, line: 59, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !917, file: !118, line: 1939, baseType: !1232, size: 64, offset: 1472)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!931, !732, !34, !1229, !29, !98}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !917, file: !118, line: 1940, baseType: !1236, size: 64, offset: 1536)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !732}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !917, file: !118, line: 1941, baseType: !1240, size: 64, offset: 1600)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!16, !732, !16, !1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !917, file: !118, line: 1942, baseType: !1246, size: 64, offset: 1664)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!525, !732, !16, !35, !35}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !917, file: !118, line: 1944, baseType: !1250, size: 64, offset: 1728)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !1253, !732}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !272, line: 97, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !917, file: !118, line: 1948, baseType: !1256, size: 64, offset: 1792)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!931, !732, !35, !732, !35, !29, !98}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !917, file: !118, line: 1950, baseType: !1260, size: 64, offset: 1856)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!35, !732, !35, !732, !35, !35, !98}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !917, file: !118, line: 1953, baseType: !1206, size: 64, offset: 1920)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !917, file: !118, line: 1954, baseType: !1265, size: 64, offset: 1984)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!16, !1268, !98}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !118, line: 1911, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !917, file: !118, line: 1955, baseType: !1271, size: 64, offset: 2048)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!16, !1268, !971, !98}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !733, file: !118, line: 1018, baseType: !611, size: 64, offset: 1472)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !733, file: !118, line: 1020, baseType: !14, size: 64, offset: 1536)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !733, file: !118, line: 1023, baseType: !14, size: 64, offset: 1600)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !733, file: !118, line: 1027, baseType: !1278, size: 64, offset: 1664)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !733, file: !118, line: 1029, baseType: !1280, size: 64, offset: 1728)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !118, line: 472, size: 1536, align: 64, elements: !1282)
!1282 = !{!1283, !1284, !1291, !1292, !1293, !1294, !1299, !1300, !1301, !1516, !1517, !1518, !1521, !1522, !1523}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1281, file: !118, line: 473, baseType: !618, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1281, file: !118, line: 474, baseType: !1285, size: 128, offset: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1286, line: 296, size: 128, elements: !1287)
!1286 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1285, file: !1286, line: 297, baseType: !53, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1285, file: !1286, line: 299, baseType: !174, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1285, file: !1286, line: 300, baseType: !14, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1281, file: !118, line: 475, baseType: !293, size: 320, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1281, file: !118, line: 476, baseType: !174, size: 32, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1281, file: !118, line: 477, baseType: !43, size: 32, offset: 544)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1281, file: !118, line: 482, baseType: !1295, size: 128, offset: 576)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !286, line: 26, size: 128, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1295, file: !286, line: 27, baseType: !505, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1295, file: !286, line: 28, baseType: !290, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1281, file: !118, line: 483, baseType: !33, size: 64, offset: 704)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1281, file: !118, line: 484, baseType: !33, size: 64, offset: 768)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1281, file: !118, line: 485, baseType: !1302, size: 64, offset: 832)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !118, line: 404, size: 1280, elements: !1305)
!1305 = !{!1306, !1372, !1442, !1446, !1450, !1456, !1461, !1465, !1470, !1474, !1478, !1482, !1483, !1487, !1491, !1495, !1500, !1504, !1511, !1512}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1304, file: !118, line: 405, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!16, !1310, !1370}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1005, line: 74, size: 512, align: 128, elements: !1312)
!1312 = !{!1313, !1314, !1364, !1369}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1311, file: !1005, line: 75, baseType: !33, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1311, file: !1005, line: 83, baseType: !1315, size: 320, offset: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !1005, line: 83, size: 320, elements: !1316)
!1316 = !{!1317, !1338, !1352, !1356, !1363}
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !1005, line: 84, baseType: !1318, size: 320)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1315, file: !1005, line: 84, size: 320, elements: !1319)
!1319 = !{!1320, !1331, !1332, !1337}
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !1005, line: 90, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !1005, line: 90, size: 128, elements: !1322)
!1322 = !{!1323, !1324, !1329, !1330}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1321, file: !1005, line: 91, baseType: !91, size: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !1005, line: 94, baseType: !1325, size: 128)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !1005, line: 94, size: 128, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1325, file: !1005, line: 96, baseType: !14, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1325, file: !1005, line: 98, baseType: !98, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1321, file: !1005, line: 102, baseType: !91, size: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1321, file: !1005, line: 103, baseType: !91, size: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1318, file: !1005, line: 106, baseType: !1280, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !1005, line: 107, baseType: !1333, size: 64, offset: 192)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !1005, line: 107, size: 64, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1333, file: !1005, line: 108, baseType: !33, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1333, file: !1005, line: 109, baseType: !33, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1318, file: !1005, line: 117, baseType: !33, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !1005, line: 119, baseType: !1339, size: 320)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1315, file: !1005, line: 119, size: 320, elements: !1340)
!1340 = !{!1341, !1342, !1345, !1346, !1347}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1339, file: !1005, line: 124, baseType: !33, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1339, file: !1005, line: 125, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1005, line: 125, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1339, file: !1005, line: 126, baseType: !33, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1339, file: !1005, line: 127, baseType: !33, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !1005, line: 128, baseType: !1348, size: 64, offset: 256)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !1005, line: 128, size: 64, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1348, file: !1005, line: 133, baseType: !33, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1348, file: !1005, line: 138, baseType: !246, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !1005, line: 141, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1315, file: !1005, line: 141, size: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1353, file: !1005, line: 142, baseType: !33, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !1005, line: 144, baseType: !1357, size: 128)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1315, file: !1005, line: 144, size: 128, elements: !1358)
!1358 = !{!1359, !1362}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1357, file: !1005, line: 146, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1005, line: 146, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1357, file: !1005, line: 147, baseType: !14, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1315, file: !1005, line: 161, baseType: !355, size: 128, align: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1311, file: !1005, line: 164, baseType: !1365, size: 32, offset: 384)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !1005, line: 164, size: 32, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1365, file: !1005, line: 169, baseType: !43, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1365, file: !1005, line: 177, baseType: !98, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1311, file: !1005, line: 181, baseType: !43, size: 32, offset: 416)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !118, line: 309, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1304, file: !118, line: 406, baseType: !1373, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!16, !732, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1005, line: 293, size: 1536, elements: !1378)
!1378 = !{!1379, !1409, !1423}
!1379 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !1005, line: 295, baseType: !1380, size: 512)
!1380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !1005, line: 295, size: 512, elements: !1381)
!1381 = !{!1382, !1408}
!1382 = !DIDerivedType(tag: DW_TAG_member, scope: !1380, file: !1005, line: 296, baseType: !1383, size: 448)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1380, file: !1005, line: 296, size: 448, elements: !1384)
!1384 = !{!1385, !1386, !1395, !1396, !1397, !1406, !1407}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1383, file: !1005, line: 298, baseType: !33, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1005, line: 299, baseType: !1387, size: 128, offset: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1005, line: 299, size: 128, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1387, file: !1005, line: 300, baseType: !91, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1387, file: !1005, line: 302, baseType: !1391, size: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !1005, line: 302, size: 128, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1391, file: !1005, line: 303, baseType: !14, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1391, file: !1005, line: 305, baseType: !98, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1383, file: !1005, line: 310, baseType: !1280, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1383, file: !1005, line: 311, baseType: !33, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1005, line: 312, baseType: !1398, size: 64, offset: 320)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1005, line: 312, size: 64, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1398, file: !1005, line: 313, baseType: !14, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1398, file: !1005, line: 314, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1005, line: 257, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1005, line: 255, size: 64, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1403, file: !1005, line: 256, baseType: !33, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1383, file: !1005, line: 316, baseType: !43, size: 32, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1383, file: !1005, line: 317, baseType: !43, size: 32, offset: 416)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1380, file: !1005, line: 323, baseType: !1311, size: 512, align: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !1005, line: 325, baseType: !1410, size: 512, offset: 512)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !1005, line: 325, size: 512, elements: !1411)
!1411 = !{!1412, !1422}
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1005, line: 326, baseType: !1413, size: 320)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1410, file: !1005, line: 326, size: 320, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1413, file: !1005, line: 327, baseType: !33, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1413, file: !1005, line: 328, baseType: !33, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1413, file: !1005, line: 329, baseType: !33, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1413, file: !1005, line: 331, baseType: !43, size: 32, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1413, file: !1005, line: 332, baseType: !43, size: 32, offset: 224)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1413, file: !1005, line: 333, baseType: !43, size: 32, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1413, file: !1005, line: 335, baseType: !98, size: 32, offset: 288)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1410, file: !1005, line: 339, baseType: !1311, size: 512, align: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !1005, line: 341, baseType: !1424, size: 512, offset: 1024)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !1005, line: 341, size: 512, elements: !1425)
!1425 = !{!1426, !1435, !1441}
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !1005, line: 342, baseType: !1427, size: 384)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1005, line: 342, size: 384, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1427, file: !1005, line: 343, baseType: !33, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1427, file: !1005, line: 344, baseType: !33, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1427, file: !1005, line: 346, baseType: !14, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1427, file: !1005, line: 347, baseType: !14, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1427, file: !1005, line: 348, baseType: !14, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1427, file: !1005, line: 349, baseType: !14, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !1005, line: 352, baseType: !1436, size: 256)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1005, line: 352, size: 256, elements: !1437)
!1437 = !{!1438, !1439, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1436, file: !1005, line: 353, baseType: !33, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1436, file: !1005, line: 354, baseType: !33, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1436, file: !1005, line: 356, baseType: !91, size: 128, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1424, file: !1005, line: 359, baseType: !1311, size: 512, align: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1304, file: !118, line: 409, baseType: !1443, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!16, !1280, !1370}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1304, file: !118, line: 412, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!266, !1280, !1376}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1304, file: !118, line: 414, baseType: !1451, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !118, line: 310, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1304, file: !118, line: 416, baseType: !1457, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!16, !732, !1280, !35, !98, !1460, !1244}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1304, file: !118, line: 419, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!16, !732, !1280, !35, !98, !98, !1310, !14}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1304, file: !118, line: 424, baseType: !1466, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!1469, !1280, !1469}
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !19, line: 131, baseType: !611)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1304, file: !118, line: 425, baseType: !1471, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !1376, !29, !29}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1304, file: !118, line: 426, baseType: !1475, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!266, !1376, !174}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1304, file: !118, line: 427, baseType: !1479, size: 64, offset: 640)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1376}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1304, file: !118, line: 428, baseType: !939, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1304, file: !118, line: 433, baseType: !1484, size: 64, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!16, !1280, !1376, !1376, !110}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1304, file: !118, line: 435, baseType: !1488, size: 64, offset: 832)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!16, !1376}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1304, file: !118, line: 436, baseType: !1492, size: 64, offset: 896)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!266, !1376, !29, !29}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1304, file: !118, line: 438, baseType: !1496, size: 64, offset: 960)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1376, !1499, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1304, file: !118, line: 439, baseType: !1501, size: 64, offset: 1024)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!16, !1280, !1310}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1304, file: !118, line: 442, baseType: !1505, size: 64, offset: 1088)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!16, !1508, !732, !1510}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !118, line: 66, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1304, file: !118, line: 444, baseType: !1236, size: 64, offset: 1152)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1304, file: !118, line: 445, baseType: !1513, size: 64, offset: 1216)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!16, !942, !964}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1281, file: !118, line: 486, baseType: !33, size: 64, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1281, file: !118, line: 487, baseType: !293, size: 320, offset: 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1281, file: !118, line: 488, baseType: !1519, size: 32, offset: 1280)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1520, line: 8, baseType: !206)
!1520 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1281, file: !118, line: 489, baseType: !53, size: 32, offset: 1312)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1281, file: !118, line: 490, baseType: !91, size: 128, offset: 1344)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1281, file: !118, line: 491, baseType: !14, size: 64, offset: 1472)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !733, file: !118, line: 1030, baseType: !1519, size: 32, offset: 1792)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !733, file: !118, line: 1031, baseType: !1519, size: 32, offset: 1824)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !634, file: !118, line: 1988, baseType: !1527, size: 64, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!16, !657, !1530, !1532, !206, !98}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1534, line: 22, size: 1280, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1533, file: !1534, line: 23, baseType: !206, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1533, file: !1534, line: 24, baseType: !18, size: 16, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1533, file: !1534, line: 25, baseType: !98, size: 32, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1533, file: !1534, line: 26, baseType: !322, size: 32, offset: 96)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1533, file: !1534, line: 27, baseType: !611, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1533, file: !1534, line: 28, baseType: !611, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1533, file: !1534, line: 41, baseType: !611, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1533, file: !1534, line: 42, baseType: !549, size: 32, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1533, file: !1534, line: 43, baseType: !549, size: 32, offset: 352)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1533, file: !1534, line: 44, baseType: !231, size: 32, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1533, file: !1534, line: 45, baseType: !237, size: 32, offset: 416)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1533, file: !1534, line: 46, baseType: !35, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1533, file: !1534, line: 47, baseType: !725, size: 128, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1533, file: !1534, line: 48, baseType: !725, size: 128, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1533, file: !1534, line: 49, baseType: !725, size: 128, offset: 768)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1533, file: !1534, line: 50, baseType: !725, size: 128, offset: 896)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1533, file: !1534, line: 51, baseType: !611, size: 64, offset: 1024)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1533, file: !1534, line: 52, baseType: !611, size: 64, offset: 1088)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1533, file: !1534, line: 53, baseType: !206, size: 32, offset: 1152)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1533, file: !1534, line: 54, baseType: !206, size: 32, offset: 1184)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1533, file: !1534, line: 55, baseType: !611, size: 64, offset: 1216)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !634, file: !118, line: 1990, baseType: !1558, size: 64, offset: 960)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!931, !575, !374, !29}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !634, file: !118, line: 1991, baseType: !1562, size: 64, offset: 1024)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!16, !618, !1565, !611, !611}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !118, line: 55, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !634, file: !118, line: 1993, baseType: !1568, size: 64, offset: 1088)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!16, !618, !16}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !634, file: !118, line: 1994, baseType: !1572, size: 64, offset: 1152)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!16, !618, !575, !732, !98, !18}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !634, file: !118, line: 1997, baseType: !1576, size: 64, offset: 1216)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!16, !657, !618, !732, !18}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !634, file: !118, line: 1999, baseType: !1580, size: 64, offset: 1280)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!628, !657, !575, !16}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !634, file: !118, line: 2001, baseType: !1584, size: 64, offset: 1344)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!16, !657, !575, !628, !16}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !634, file: !118, line: 2003, baseType: !1588, size: 64, offset: 1408)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!16, !657, !575, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !118, line: 76, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !634, file: !118, line: 2005, baseType: !1594, size: 64, offset: 1472)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!16, !575, !1591}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !634, file: !118, line: 2006, baseType: !1598, size: 64, offset: 1536)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!1601, !618}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !118, line: 3192, size: 192, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1602, file: !118, line: 3193, baseType: !1285, size: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1602, file: !118, line: 3194, baseType: !206, size: 32, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !619, file: !118, line: 655, baseType: !909, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !619, file: !118, line: 656, baseType: !1280, size: 64, offset: 512)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !619, file: !118, line: 659, baseType: !14, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !619, file: !118, line: 663, baseType: !33, size: 64, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !118, line: 671, baseType: !1611, size: 32, offset: 704)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !118, line: 671, size: 32, elements: !1612)
!1612 = !{!1613, !1615}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1611, file: !118, line: 672, baseType: !1614, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1611, file: !118, line: 673, baseType: !98, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !619, file: !118, line: 675, baseType: !549, size: 32, offset: 736)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !619, file: !118, line: 676, baseType: !35, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !619, file: !118, line: 677, baseType: !725, size: 128, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !619, file: !118, line: 678, baseType: !725, size: 128, offset: 960)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !619, file: !118, line: 679, baseType: !725, size: 128, offset: 1088)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !619, file: !118, line: 680, baseType: !53, size: 32, offset: 1216)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !619, file: !118, line: 681, baseType: !20, size: 16, offset: 1248)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !619, file: !118, line: 682, baseType: !77, size: 8, offset: 1264)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !619, file: !118, line: 683, baseType: !77, size: 8, offset: 1272)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !619, file: !118, line: 684, baseType: !1626, size: 64, offset: 1280)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !19, line: 132, baseType: !611)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !619, file: !118, line: 691, baseType: !33, size: 64, offset: 1344)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !619, file: !118, line: 692, baseType: !293, size: 320, offset: 1408)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !619, file: !118, line: 694, baseType: !33, size: 64, offset: 1728)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !619, file: !118, line: 695, baseType: !33, size: 64, offset: 1792)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !619, file: !118, line: 697, baseType: !499, size: 128, offset: 1856)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !619, file: !118, line: 698, baseType: !91, size: 128, offset: 1984)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !619, file: !118, line: 707, baseType: !91, size: 128, offset: 2112)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !619, file: !118, line: 708, baseType: !91, size: 128, offset: 2240)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !118, line: 709, baseType: !1636, size: 128, offset: 2368)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !118, line: 709, size: 128, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1636, file: !118, line: 710, baseType: !495, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1636, file: !118, line: 711, baseType: !355, size: 128, align: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !619, file: !118, line: 713, baseType: !248, size: 64, offset: 2496)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !619, file: !118, line: 714, baseType: !248, size: 64, offset: 2560)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !619, file: !118, line: 715, baseType: !43, size: 32, offset: 2624)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !619, file: !118, line: 716, baseType: !43, size: 32, offset: 2656)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !619, file: !118, line: 717, baseType: !43, size: 32, offset: 2688)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !619, file: !118, line: 719, baseType: !43, size: 32, offset: 2720)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !118, line: 721, baseType: !1647, size: 64, offset: 2752)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !118, line: 721, size: 64, elements: !1648)
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1647, file: !118, line: 722, baseType: !915, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1647, file: !118, line: 723, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !618}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !619, file: !118, line: 725, baseType: !1655, size: 64, offset: 2816)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !118, line: 725, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !619, file: !118, line: 726, baseType: !1281, size: 1536, align: 64, offset: 2880)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !619, file: !118, line: 727, baseType: !91, size: 128, offset: 4416)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !118, line: 728, baseType: !1660, size: 64, offset: 4544)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !118, line: 728, size: 64, elements: !1661)
!1661 = !{!1662, !1663, !1666, !1667}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1660, file: !118, line: 729, baseType: !1229, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1660, file: !118, line: 730, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !118, line: 730, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1660, file: !118, line: 731, baseType: !374, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1660, file: !118, line: 732, baseType: !98, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !619, file: !118, line: 735, baseType: !207, size: 32, offset: 4608)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !619, file: !118, line: 738, baseType: !207, size: 32, offset: 4640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !619, file: !118, line: 739, baseType: !1671, size: 64, offset: 4672)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !118, line: 634, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !619, file: !118, line: 750, baseType: !14, size: 64, offset: 4736)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !576, file: !577, line: 91, baseType: !1675, size: 256, offset: 448)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !1676)
!1676 = !{!1677}
!1677 = !DISubrange(count: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !576, file: !577, line: 94, baseType: !1679, size: 64, offset: 704)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1680, line: 25, size: 64, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !1680, line: 26, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !1680, line: 26, size: 64, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1683, file: !1680, line: 28, baseType: !612, size: 64, align: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1680, line: 30, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !1680, line: 30, size: 64, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1687, file: !1680, line: 31, baseType: !53, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1687, file: !1680, line: 32, baseType: !16, size: 32, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !576, file: !577, line: 95, baseType: !1692, size: 64, offset: 768)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !577, line: 128, size: 1024, align: 512, elements: !1695)
!1695 = !{!1696, !1700, !1701, !1708, !1714, !1718, !1722, !1726, !1727, !1731, !1735, !1740, !1744}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1694, file: !577, line: 129, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!16, !575, !98}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1694, file: !577, line: 130, baseType: !1697, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1694, file: !577, line: 131, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!16, !1705, !1707}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1694, file: !577, line: 132, baseType: !1709, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!16, !1705, !98, !10, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1694, file: !577, line: 134, baseType: !1715, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!16, !1705}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1694, file: !577, line: 135, baseType: !1719, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!16, !575}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1694, file: !577, line: 136, baseType: !1723, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !575}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1694, file: !577, line: 137, baseType: !1723, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1694, file: !577, line: 138, baseType: !1728, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !575, !618}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1694, file: !577, line: 139, baseType: !1732, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!374, !575, !374, !16}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1694, file: !577, line: 140, baseType: !1736, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!904, !1739}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1694, file: !577, line: 141, baseType: !1741, size: 64, offset: 704)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!16, !1530, !266}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1694, file: !577, line: 142, baseType: !1745, size: 64, offset: 768)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!575, !575, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !576, file: !577, line: 96, baseType: !909, size: 64, offset: 832)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !576, file: !577, line: 97, baseType: !33, size: 64, offset: 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !576, file: !577, line: 98, baseType: !14, size: 64, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !577, line: 100, baseType: !1754, size: 128, offset: 1024)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !577, line: 100, size: 128, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1754, file: !577, line: 101, baseType: !91, size: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1754, file: !577, line: 102, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !576, file: !577, line: 104, baseType: !91, size: 128, offset: 1152)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !576, file: !577, line: 105, baseType: !91, size: 128, offset: 1280)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !576, file: !577, line: 113, baseType: !1762, size: 128, offset: 1408)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !577, line: 109, size: 128, elements: !1763)
!1763 = !{!1764, !1765, !1766}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1762, file: !577, line: 110, baseType: !499, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1762, file: !577, line: 111, baseType: !591, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1762, file: !577, line: 112, baseType: !355, size: 128, align: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !556, file: !118, line: 2380, baseType: !1768, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !909}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !556, file: !118, line: 2381, baseType: !920, size: 64, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !118, line: 2382, baseType: !555, size: 64, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !556, file: !118, line: 2383, baseType: !495, size: 64, offset: 512)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !556, file: !118, line: 2385, baseType: !1775, offset: 576)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1776, line: 206, elements: !1038)
!1776 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !556, file: !118, line: 2386, baseType: !1775, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !556, file: !118, line: 2387, baseType: !1775, offset: 576)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !556, file: !118, line: 2388, baseType: !1780, offset: 576)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1775, elements: !783)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !556, file: !118, line: 2390, baseType: !1775, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !556, file: !118, line: 2391, baseType: !1775, offset: 576)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !556, file: !118, line: 2392, baseType: !1775, offset: 576)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !556, file: !118, line: 2393, baseType: !1775, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !545, file: !118, line: 1197, baseType: !1786, size: 64, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !118, line: 2057, size: 1664, elements: !1789)
!1789 = !{!1790, !1794, !1795, !1796, !1800, !1804, !1808, !1809, !1810, !1814, !1818, !1822, !1823, !1824, !1830, !1835, !1836, !1840, !1841, !1842, !1843, !1847, !1851, !1898, !1913, !1914}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1788, file: !118, line: 2058, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!618, !909}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1788, file: !118, line: 2059, baseType: !1651, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1788, file: !118, line: 2060, baseType: !1651, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1788, file: !118, line: 2062, baseType: !1797, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !618, !16}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1788, file: !118, line: 2063, baseType: !1801, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!16, !618, !1370}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1788, file: !118, line: 2064, baseType: !1805, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!16, !618}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1788, file: !118, line: 2065, baseType: !1651, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1788, file: !118, line: 2066, baseType: !1768, size: 64, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1788, file: !118, line: 2067, baseType: !1811, size: 64, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!16, !909, !16}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1788, file: !118, line: 2068, baseType: !1815, size: 64, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!16, !909, !117}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1788, file: !118, line: 2069, baseType: !1819, size: 64, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!16, !909}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1788, file: !118, line: 2070, baseType: !1815, size: 64, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1788, file: !118, line: 2071, baseType: !1819, size: 64, offset: 768)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1788, file: !118, line: 2072, baseType: !1825, size: 64, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!16, !575, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !118, line: 62, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1788, file: !118, line: 2073, baseType: !1831, size: 64, offset: 896)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!16, !909, !1834, !374}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1788, file: !118, line: 2074, baseType: !1768, size: 64, offset: 960)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1788, file: !118, line: 2076, baseType: !1837, size: 64, offset: 1024)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!16, !1253, !575}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1788, file: !118, line: 2077, baseType: !1837, size: 64, offset: 1088)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1788, file: !118, line: 2078, baseType: !1837, size: 64, offset: 1152)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1788, file: !118, line: 2079, baseType: !1837, size: 64, offset: 1216)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1788, file: !118, line: 2081, baseType: !1844, size: 64, offset: 1280)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!931, !909, !16, !374, !29, !35}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1788, file: !118, line: 2082, baseType: !1848, size: 64, offset: 1344)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!931, !909, !16, !10, !29, !35}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1788, file: !118, line: 2083, baseType: !1852, size: 64, offset: 1408)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1855, !618}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !123, line: 296, size: 1664, elements: !1858)
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1883, !1884, !1885}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1857, file: !123, line: 297, baseType: !499, size: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1857, file: !123, line: 298, baseType: !91, size: 128, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1857, file: !123, line: 299, baseType: !91, size: 128, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1857, file: !123, line: 300, baseType: !91, size: 128, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1857, file: !123, line: 301, baseType: !751, size: 256, offset: 512)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1857, file: !123, line: 302, baseType: !53, size: 32, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1857, file: !123, line: 303, baseType: !43, size: 32, offset: 800)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1857, file: !123, line: 304, baseType: !909, size: 64, offset: 832)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1857, file: !123, line: 305, baseType: !1868, size: 64, offset: 896)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !123, line: 68, size: 64, elements: !1869)
!1869 = !{!1870, !1882}
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !123, line: 69, baseType: !1871, size: 32)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !123, line: 69, size: 32, elements: !1872)
!1872 = !{!1873, !1874, !1875}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1871, file: !123, line: 70, baseType: !231, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1871, file: !123, line: 71, baseType: !237, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1871, file: !123, line: 72, baseType: !1876, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1877, line: 24, baseType: !1878)
!1877 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1877, line: 22, size: 32, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1878, file: !1877, line: 23, baseType: !1881, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1877, line: 20, baseType: !171)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1868, file: !123, line: 74, baseType: !122, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1857, file: !123, line: 306, baseType: !35, size: 64, offset: 960)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1857, file: !123, line: 307, baseType: !33, size: 64, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1857, file: !123, line: 308, baseType: !1886, size: 576, offset: 1088)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !123, line: 205, size: 576, elements: !1887)
!1887 = !{!1888, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1886, file: !123, line: 206, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !123, line: 66, baseType: !37)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1886, file: !123, line: 207, baseType: !1889, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1886, file: !123, line: 208, baseType: !1889, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1886, file: !123, line: 209, baseType: !1889, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1886, file: !123, line: 210, baseType: !1889, size: 64, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1886, file: !123, line: 211, baseType: !1889, size: 64, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1886, file: !123, line: 212, baseType: !1889, size: 64, offset: 384)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1886, file: !123, line: 213, baseType: !314, size: 64, offset: 448)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1886, file: !123, line: 214, baseType: !314, size: 64, offset: 512)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1788, file: !118, line: 2085, baseType: !1899, size: 64, offset: 1472)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!525, !909, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1904, line: 15, size: 256, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1905 = !{!1906, !1907, !1908, !1909, !1910}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1903, file: !1904, line: 16, baseType: !174, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1903, file: !1904, line: 19, baseType: !16, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1903, file: !1904, line: 26, baseType: !33, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1903, file: !1904, line: 33, baseType: !33, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1903, file: !1904, line: 36, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1904, line: 36, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1788, file: !118, line: 2087, baseType: !1899, size: 64, offset: 1536)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1788, file: !118, line: 2089, baseType: !1768, size: 64, offset: 1600)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !545, file: !118, line: 1198, baseType: !1916, size: 64, offset: 448)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !123, line: 324, size: 704, elements: !1919)
!1919 = !{!1920, !1924, !1928, !1932, !1933, !1934, !1935, !1936, !1941, !1946, !1950}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1918, file: !123, line: 325, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!16, !1856}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1918, file: !123, line: 326, baseType: !1925, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1856, !909, !16}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1918, file: !123, line: 327, baseType: !1929, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1856}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1918, file: !123, line: 328, baseType: !1921, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1918, file: !123, line: 329, baseType: !1921, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1918, file: !123, line: 330, baseType: !1921, size: 64, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1918, file: !123, line: 331, baseType: !1811, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1918, file: !123, line: 334, baseType: !1937, size: 64, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1940, !618}
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1918, file: !123, line: 335, baseType: !1942, size: 64, offset: 512)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!16, !618, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1918, file: !123, line: 337, baseType: !1947, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!16, !618, !1940}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1918, file: !123, line: 339, baseType: !1951, size: 64, offset: 640)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!16, !909, !1954}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !545, file: !118, line: 1199, baseType: !1956, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !123, line: 430, size: 704, elements: !1959)
!1959 = !{!1960, !1964, !1965, !1969, !1970, !1971, !1986, !2009, !2013, !2014, !2036}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1958, file: !123, line: 431, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!16, !909, !16, !16, !1530}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1958, file: !123, line: 432, baseType: !1811, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1958, file: !123, line: 433, baseType: !1966, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!16, !909, !98}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1958, file: !123, line: 434, baseType: !1966, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1958, file: !123, line: 435, baseType: !1811, size: 64, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1958, file: !123, line: 436, baseType: !1972, size: 64, offset: 320)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!16, !909, !16, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !123, line: 417, size: 256, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1976, file: !123, line: 418, baseType: !16, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1976, file: !123, line: 419, baseType: !98, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1976, file: !123, line: 420, baseType: !98, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1976, file: !123, line: 422, baseType: !98, size: 32, offset: 96)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1976, file: !123, line: 423, baseType: !98, size: 32, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1976, file: !123, line: 424, baseType: !98, size: 32, offset: 160)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1976, file: !123, line: 425, baseType: !98, size: 32, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1976, file: !123, line: 426, baseType: !98, size: 32, offset: 224)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1958, file: !123, line: 437, baseType: !1987, size: 64, offset: 384)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!16, !909, !1868, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !123, line: 345, size: 960, elements: !1992)
!1992 = !{!1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1991, file: !123, line: 346, baseType: !16, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1991, file: !123, line: 347, baseType: !611, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1991, file: !123, line: 348, baseType: !611, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1991, file: !123, line: 349, baseType: !611, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1991, file: !123, line: 350, baseType: !611, size: 64, offset: 256)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1991, file: !123, line: 351, baseType: !611, size: 64, offset: 320)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1991, file: !123, line: 352, baseType: !611, size: 64, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1991, file: !123, line: 353, baseType: !252, size: 64, offset: 448)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1991, file: !123, line: 355, baseType: !252, size: 64, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1991, file: !123, line: 356, baseType: !16, size: 32, offset: 576)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1991, file: !123, line: 357, baseType: !16, size: 32, offset: 608)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1991, file: !123, line: 358, baseType: !611, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1991, file: !123, line: 359, baseType: !611, size: 64, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1991, file: !123, line: 360, baseType: !611, size: 64, offset: 768)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1991, file: !123, line: 361, baseType: !252, size: 64, offset: 832)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1991, file: !123, line: 362, baseType: !16, size: 32, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1958, file: !123, line: 438, baseType: !2010, size: 64, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!16, !909, !1954, !1990}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1958, file: !123, line: 440, baseType: !1987, size: 64, offset: 512)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1958, file: !123, line: 441, baseType: !2015, size: 64, offset: 576)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!16, !909, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !123, line: 411, size: 1408, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2019, file: !123, line: 412, baseType: !98, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2019, file: !123, line: 413, baseType: !2023, size: 1344, offset: 64)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 1344, elements: !783)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !123, line: 397, size: 448, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2024, file: !123, line: 398, baseType: !98, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2024, file: !123, line: 399, baseType: !98, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2024, file: !123, line: 401, baseType: !98, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2024, file: !123, line: 402, baseType: !98, size: 32, offset: 96)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2024, file: !123, line: 403, baseType: !98, size: 32, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2024, file: !123, line: 404, baseType: !98, size: 32, offset: 160)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2024, file: !123, line: 405, baseType: !98, size: 32, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2024, file: !123, line: 406, baseType: !613, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2024, file: !123, line: 407, baseType: !1626, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2024, file: !123, line: 408, baseType: !1626, size: 64, offset: 384)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1958, file: !123, line: 442, baseType: !1966, size: 64, offset: 640)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !545, file: !118, line: 1200, baseType: !2038, size: 64, offset: 576)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2040)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !118, line: 54, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !545, file: !118, line: 1201, baseType: !33, size: 64, offset: 640)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !545, file: !118, line: 1202, baseType: !33, size: 64, offset: 704)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !545, file: !118, line: 1203, baseType: !33, size: 64, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !545, file: !118, line: 1204, baseType: !575, size: 64, offset: 832)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !545, file: !118, line: 1205, baseType: !293, size: 320, offset: 896)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !545, file: !118, line: 1206, baseType: !16, size: 32, offset: 1216)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !545, file: !118, line: 1207, baseType: !43, size: 32, offset: 1248)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !545, file: !118, line: 1209, baseType: !14, size: 64, offset: 1280)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !545, file: !118, line: 1211, baseType: !2050, size: 64, offset: 1344)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2053)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !118, line: 1211, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !545, file: !118, line: 1223, baseType: !2055, size: 64, offset: 1408)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !592, line: 34, size: 64, elements: !2056)
!2056 = !{!2057}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2055, file: !592, line: 35, baseType: !595, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !545, file: !118, line: 1224, baseType: !91, size: 128, offset: 1472)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !545, file: !118, line: 1225, baseType: !2060, size: 64, offset: 1600)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !118, line: 1225, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !545, file: !118, line: 1226, baseType: !2063, size: 64, offset: 1664)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !118, line: 1226, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !545, file: !118, line: 1227, baseType: !2066, size: 64, offset: 1728)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !118, line: 50, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !545, file: !118, line: 1228, baseType: !2069, size: 64, offset: 1792)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !118, line: 1228, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !545, file: !118, line: 1229, baseType: !499, size: 128, offset: 1856)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !545, file: !118, line: 1230, baseType: !98, size: 32, offset: 1984)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !545, file: !118, line: 1231, baseType: !2074, size: 2496, offset: 2048)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !123, line: 521, size: 2496, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2080, !2112}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2074, file: !123, line: 522, baseType: !98, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2074, file: !123, line: 523, baseType: !293, size: 320, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2074, file: !123, line: 524, baseType: !2079, size: 192, offset: 384)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 192, elements: !783)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2074, file: !123, line: 525, baseType: !2081, size: 1728, offset: 576)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2082, size: 1728, elements: !783)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !123, line: 222, size: 576, elements: !2083)
!2083 = !{!2084, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2082, file: !123, line: 223, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !123, line: 445, size: 256, elements: !2087)
!2087 = !{!2088, !2089, !2102, !2103}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2086, file: !123, line: 446, baseType: !16, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2086, file: !123, line: 447, baseType: !2090, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !123, line: 312, size: 512, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2092, file: !123, line: 313, baseType: !1811, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2092, file: !123, line: 314, baseType: !1811, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2092, file: !123, line: 315, baseType: !1811, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2092, file: !123, line: 316, baseType: !1811, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2092, file: !123, line: 317, baseType: !1921, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2092, file: !123, line: 318, baseType: !1921, size: 64, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2092, file: !123, line: 319, baseType: !1921, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2092, file: !123, line: 320, baseType: !1951, size: 64, offset: 448)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2086, file: !123, line: 448, baseType: !920, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2086, file: !123, line: 449, baseType: !2085, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2082, file: !123, line: 224, baseType: !16, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2082, file: !123, line: 226, baseType: !91, size: 128, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2082, file: !123, line: 227, baseType: !33, size: 64, offset: 256)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2082, file: !123, line: 228, baseType: !98, size: 32, offset: 320)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2082, file: !123, line: 229, baseType: !98, size: 32, offset: 352)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2082, file: !123, line: 230, baseType: !1889, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2082, file: !123, line: 231, baseType: !1889, size: 64, offset: 448)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2082, file: !123, line: 232, baseType: !14, size: 64, offset: 512)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2074, file: !123, line: 526, baseType: !2113, size: 192, offset: 2304)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2090, size: 192, elements: !783)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !545, file: !118, line: 1233, baseType: !2115, size: 2368, offset: 4544)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !118, line: 1184, size: 2368, elements: !2116)
!2116 = !{!2117, !2118, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2115, file: !118, line: 1185, baseType: !20, size: 16)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2115, file: !118, line: 1186, baseType: !20, size: 16, offset: 16)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2115, file: !118, line: 1187, baseType: !2120, size: 2304, offset: 64)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2121, size: 2304, elements: !783)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2122, line: 12, size: 768, elements: !2123)
!2122 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2123 = !{!2124, !2132, !2134, !3352, !3353}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2121, file: !2122, line: 13, baseType: !2125, size: 384)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2126, line: 17, size: 384, elements: !2127)
!2126 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2127 = !{!2128, !2129, !2130, !2131}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2125, file: !2126, line: 18, baseType: !16, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2125, file: !2126, line: 19, baseType: !16, size: 32, offset: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2125, file: !2126, line: 20, baseType: !48, size: 192, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2125, file: !2126, line: 22, baseType: !355, size: 128, align: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2121, file: !2122, line: 14, baseType: !2133, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2121, file: !2122, line: 15, baseType: !2135, size: 64, offset: 448)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2136, line: 16, size: 64, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2135, file: !2136, line: 17, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1191, line: 746, size: 58368, elements: !2141)
!2141 = !{!2142, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2222, !2233, !2321, !2325, !2328, !2359, !2360, !2361, !2362, !2373, !2375, !2376, !2377, !2378, !2379, !2380, !2391, !2392, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2409, !2410, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2498, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2546, !2552, !2553, !2554, !2555, !2556, !2560, !2563, !2570, !2575, !2578, !2581, !2584, !2610, !2751, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2793, !2794, !2795, !2804, !2812, !2813, !2814, !2815, !2816, !2821, !2822, !2823, !2826, !2827, !2830, !2833, !2836, !2844, !2847, !2848, !2934, !2935, !2936, !2937, !2938, !2944, !2945, !2946, !2947, !2950, !2951, !2954, !2957, !2958, !2961, !2962, !2963, !2966, !2967, !2968, !2969, !2970, !2971, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !3003, !3004, !3010, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3022, !3094, !3096, !3097, !3098, !3099, !3100, !3112, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3129, !3130, !3131}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2140, file: !1191, line: 752, baseType: !2143, size: 192)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2144, line: 56, size: 192, elements: !2145)
!2144 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !2144, line: 57, baseType: !33, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2143, file: !2144, line: 58, baseType: !33, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2143, file: !2144, line: 59, baseType: !206, size: 32, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2143, file: !2144, line: 61, baseType: !206, size: 32, offset: 160)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2140, file: !1191, line: 754, baseType: !98, size: 32, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2140, file: !1191, line: 767, baseType: !14, size: 64, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2140, file: !1191, line: 768, baseType: !260, size: 32, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2140, file: !1191, line: 770, baseType: !98, size: 32, offset: 352)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2140, file: !1191, line: 771, baseType: !98, size: 32, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2140, file: !1191, line: 774, baseType: !16, size: 32, offset: 416)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2140, file: !1191, line: 775, baseType: !2157, size: 128, offset: 448)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2158, line: 58, size: 128, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2159 = !{!2160, !2161, !2166, !2167}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2157, file: !2158, line: 59, baseType: !739, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2157, file: !2158, line: 60, baseType: !2162, size: 32, offset: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2157, file: !2158, line: 60, size: 32, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2162, file: !2158, line: 61, baseType: !98, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2162, file: !2158, line: 62, baseType: !43, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2157, file: !2158, line: 65, baseType: !87, size: 16, offset: 96)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2157, file: !2158, line: 65, baseType: !87, size: 16, offset: 112)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2140, file: !1191, line: 776, baseType: !98, size: 32, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2140, file: !1191, line: 777, baseType: !33, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2140, file: !1191, line: 778, baseType: !2139, size: 64, offset: 704)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2140, file: !1191, line: 787, baseType: !16, size: 32, offset: 768)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2140, file: !1191, line: 788, baseType: !16, size: 32, offset: 800)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2140, file: !1191, line: 790, baseType: !16, size: 32, offset: 832)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2140, file: !1191, line: 792, baseType: !16, size: 32, offset: 864)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2140, file: !1191, line: 793, baseType: !16, size: 32, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2140, file: !1191, line: 794, baseType: !16, size: 32, offset: 928)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2140, file: !1191, line: 795, baseType: !98, size: 32, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2140, file: !1191, line: 797, baseType: !2179, size: 2048, offset: 1024)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1191, line: 551, size: 2048, elements: !2180)
!2180 = !{!2181, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2201, !2204, !2205, !2206}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2179, file: !1191, line: 553, baseType: !2182, size: 128)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1191, line: 411, size: 128, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2182, file: !1191, line: 412, baseType: !33, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2182, file: !1191, line: 413, baseType: !206, size: 32, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2179, file: !1191, line: 554, baseType: !285, size: 192, align: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2179, file: !1191, line: 555, baseType: !611, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2179, file: !1191, line: 556, baseType: !611, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2179, file: !1191, line: 558, baseType: !91, size: 128, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2179, file: !1191, line: 559, baseType: !98, size: 32, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2179, file: !1191, line: 561, baseType: !611, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2179, file: !1191, line: 562, baseType: !611, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2179, file: !1191, line: 563, baseType: !611, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2179, file: !1191, line: 564, baseType: !611, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2179, file: !1191, line: 565, baseType: !252, size: 64, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2179, file: !1191, line: 566, baseType: !611, size: 64, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2179, file: !1191, line: 568, baseType: !611, size: 64, offset: 1024)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2179, file: !1191, line: 571, baseType: !16, size: 32, offset: 1088)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2179, file: !1191, line: 572, baseType: !2200, size: 64, offset: 1152)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2179, file: !1191, line: 574, baseType: !2202, size: 64, offset: 1216)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1191, line: 49, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2179, file: !1191, line: 576, baseType: !2202, size: 64, offset: 1280)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2179, file: !1191, line: 578, baseType: !33, size: 64, offset: 1344)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2179, file: !1191, line: 588, baseType: !2207, size: 512, align: 512, offset: 1536)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1191, line: 497, size: 512, align: 512, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2207, file: !1191, line: 498, baseType: !611, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2207, file: !1191, line: 499, baseType: !611, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2207, file: !1191, line: 500, baseType: !611, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2207, file: !1191, line: 501, baseType: !206, size: 32, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2207, file: !1191, line: 502, baseType: !206, size: 32, offset: 224)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2207, file: !1191, line: 503, baseType: !33, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2207, file: !1191, line: 504, baseType: !33, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2207, file: !1191, line: 505, baseType: !33, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2207, file: !1191, line: 506, baseType: !2218, size: 64, align: 64, offset: 448)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1191, line: 445, size: 64, align: 64, elements: !2219)
!2219 = !{!2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2218, file: !1191, line: 446, baseType: !98, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2218, file: !1191, line: 447, baseType: !98, size: 32, offset: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2140, file: !1191, line: 798, baseType: !2223, size: 384, offset: 3072)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1191, line: 592, size: 384, elements: !2224)
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2223, file: !1191, line: 593, baseType: !91, size: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2223, file: !1191, line: 594, baseType: !33, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2223, file: !1191, line: 595, baseType: !33, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2223, file: !1191, line: 596, baseType: !98, size: 32, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2223, file: !1191, line: 597, baseType: !20, size: 16, offset: 288)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2223, file: !1191, line: 598, baseType: !20, size: 16, offset: 304)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2223, file: !1191, line: 600, baseType: !2232, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2140, file: !1191, line: 799, baseType: !2234, size: 1792, offset: 3456)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1191, line: 610, size: 1792, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2318, !2319}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2234, file: !1191, line: 611, baseType: !285, size: 192, align: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2234, file: !1191, line: 618, baseType: !611, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2234, file: !1191, line: 619, baseType: !611, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2234, file: !1191, line: 620, baseType: !611, size: 64, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2234, file: !1191, line: 621, baseType: !611, size: 64, offset: 384)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2234, file: !1191, line: 622, baseType: !611, size: 64, offset: 448)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2234, file: !1191, line: 629, baseType: !252, size: 64, offset: 512)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2234, file: !1191, line: 630, baseType: !611, size: 64, offset: 576)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2234, file: !1191, line: 631, baseType: !98, size: 32, offset: 640)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2234, file: !1191, line: 653, baseType: !98, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2234, file: !1191, line: 654, baseType: !98, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2234, file: !1191, line: 655, baseType: !98, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2234, file: !1191, line: 656, baseType: !98, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2234, file: !1191, line: 662, baseType: !2250, size: 512, offset: 704)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !129, line: 118, size: 512, elements: !2251)
!2251 = !{!2252, !2260, !2261, !2266, !2314, !2315, !2316, !2317}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2250, file: !129, line: 119, baseType: !2253, size: 256)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2254, line: 9, size: 256, elements: !2255)
!2254 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2255 = !{!2256, !2257}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2253, file: !2254, line: 10, baseType: !285, size: 192, align: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2253, file: !2254, line: 11, baseType: !2258, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2259, line: 29, baseType: !252)
!2259 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2250, file: !129, line: 120, baseType: !2258, size: 64, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2250, file: !129, line: 121, baseType: !2262, size: 64, offset: 320)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!128, !2265}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2250, file: !129, line: 122, baseType: !2267, size: 64, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !129, line: 159, size: 512, align: 512, elements: !2269)
!2269 = !{!2270, !2295, !2296, !2299, !2304, !2305, !2309, !2313}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2268, file: !129, line: 160, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !129, line: 215, size: 4608, align: 512, elements: !2273)
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2272, file: !129, line: 216, baseType: !304, size: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2272, file: !129, line: 217, baseType: !98, size: 32, offset: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2272, file: !129, line: 218, baseType: !98, size: 32, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2272, file: !129, line: 219, baseType: !98, size: 32, offset: 96)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2272, file: !129, line: 220, baseType: !98, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2272, file: !129, line: 221, baseType: !98, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2272, file: !129, line: 222, baseType: !98, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2272, file: !129, line: 223, baseType: !98, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2272, file: !129, line: 224, baseType: !98, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2272, file: !129, line: 226, baseType: !98, size: 32, offset: 160)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2272, file: !129, line: 227, baseType: !20, size: 16, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2272, file: !129, line: 228, baseType: !20, size: 16, offset: 208)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2272, file: !129, line: 229, baseType: !98, size: 32, offset: 224)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2272, file: !129, line: 235, baseType: !2258, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2272, file: !129, line: 236, baseType: !2265, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2272, file: !129, line: 237, baseType: !2258, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2272, file: !129, line: 238, baseType: !2265, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2272, file: !129, line: 239, baseType: !2292, size: 4096, align: 512, offset: 512)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2268, size: 4096, align: 512, elements: !2293)
!2293 = !{!2294}
!2294 = !DISubrange(count: 8)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2268, file: !129, line: 161, baseType: !98, size: 32, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2268, file: !129, line: 162, baseType: !2297, size: 32, offset: 96)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !19, line: 32, baseType: !2298)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !31, line: 96, baseType: !16)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2268, file: !129, line: 163, baseType: !2300, size: 32, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !582, line: 274, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !582, line: 274, size: 32, elements: !2302)
!2302 = !{!2303}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2301, file: !582, line: 274, baseType: !586, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2268, file: !129, line: 164, baseType: !2265, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2268, file: !129, line: 165, baseType: !2306, size: 128, offset: 256)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2254, line: 14, size: 128, elements: !2307)
!2307 = !{!2308}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2306, file: !2254, line: 15, baseType: !1295, size: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2268, file: !129, line: 166, baseType: !2310, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!2258}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2268, file: !129, line: 167, baseType: !2258, size: 64, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2250, file: !129, line: 123, baseType: !77, size: 8, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2250, file: !129, line: 124, baseType: !77, size: 8, offset: 456)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2250, file: !129, line: 125, baseType: !77, size: 8, offset: 464)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2250, file: !129, line: 126, baseType: !77, size: 8, offset: 472)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2234, file: !1191, line: 671, baseType: !2250, size: 512, offset: 1216)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2234, file: !1191, line: 679, baseType: !2320, size: 64, offset: 1728)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2140, file: !1191, line: 800, baseType: !2322, size: 64, offset: 5248)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2324)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1191, line: 800, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2140, file: !1191, line: 809, baseType: !2326, size: 64, offset: 5312)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1191, line: 70, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2140, file: !1191, line: 825, baseType: !2329, size: 2048, align: 512, offset: 5632)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1191, line: 509, size: 2048, align: 512, elements: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2329, file: !1191, line: 511, baseType: !611, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2329, file: !1191, line: 512, baseType: !611, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2329, file: !1191, line: 513, baseType: !611, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2329, file: !1191, line: 514, baseType: !611, size: 64, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2329, file: !1191, line: 515, baseType: !611, size: 64, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2329, file: !1191, line: 516, baseType: !611, size: 64, offset: 320)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2329, file: !1191, line: 518, baseType: !611, size: 64, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2329, file: !1191, line: 519, baseType: !611, size: 64, offset: 448)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2329, file: !1191, line: 520, baseType: !252, size: 64, offset: 512)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2329, file: !1191, line: 522, baseType: !611, size: 64, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2329, file: !1191, line: 523, baseType: !611, size: 64, offset: 640)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2329, file: !1191, line: 524, baseType: !252, size: 64, offset: 704)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2329, file: !1191, line: 526, baseType: !252, size: 64, offset: 768)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2329, file: !1191, line: 527, baseType: !611, size: 64, offset: 832)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2329, file: !1191, line: 529, baseType: !611, size: 64, offset: 896)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2329, file: !1191, line: 530, baseType: !611, size: 64, offset: 960)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2329, file: !1191, line: 531, baseType: !611, size: 64, offset: 1024)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2329, file: !1191, line: 532, baseType: !611, size: 64, offset: 1088)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2329, file: !1191, line: 533, baseType: !611, size: 64, offset: 1152)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2329, file: !1191, line: 535, baseType: !611, size: 64, offset: 1216)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2329, file: !1191, line: 536, baseType: !611, size: 64, offset: 1280)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2329, file: !1191, line: 537, baseType: !611, size: 64, offset: 1344)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2329, file: !1191, line: 538, baseType: !611, size: 64, offset: 1408)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2329, file: !1191, line: 539, baseType: !611, size: 64, offset: 1472)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2329, file: !1191, line: 540, baseType: !611, size: 64, offset: 1536)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2329, file: !1191, line: 541, baseType: !611, size: 64, offset: 1600)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2329, file: !1191, line: 542, baseType: !611, size: 64, offset: 1664)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2329, file: !1191, line: 543, baseType: !611, size: 64, offset: 1728)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2140, file: !1191, line: 833, baseType: !98, size: 32, offset: 7680)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2140, file: !1191, line: 836, baseType: !98, size: 32, offset: 7712)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2140, file: !1191, line: 837, baseType: !16, size: 32, offset: 7744)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2140, file: !1191, line: 838, baseType: !2363, size: 64, offset: 7808)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2366, line: 19, baseType: !2367)
!2366 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2366, line: 19, size: 64, elements: !2368)
!2368 = !{!2369}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2367, file: !2366, line: 19, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !2371)
!2371 = !{!2372}
!2372 = !DISubrange(count: 1)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2140, file: !1191, line: 839, baseType: !2374, size: 64, offset: 7872)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2140, file: !1191, line: 840, baseType: !2365, size: 64, offset: 7936)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2140, file: !1191, line: 841, baseType: !14, size: 64, offset: 8000)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2140, file: !1191, line: 843, baseType: !20, size: 16, offset: 8064)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2140, file: !1191, line: 845, baseType: !20, size: 16, offset: 8080)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2140, file: !1191, line: 848, baseType: !16, size: 32, offset: 8096)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2140, file: !1191, line: 849, baseType: !2381, size: 32, offset: 8128)
!2381 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1191, line: 718, size: 32, elements: !2382)
!2382 = !{!2383, !2390}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2381, file: !1191, line: 724, baseType: !2384, size: 32)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2381, file: !1191, line: 719, size: 32, elements: !2385)
!2385 = !{!2386, !2387, !2388, !2389}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2384, file: !1191, line: 720, baseType: !77, size: 8)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2384, file: !1191, line: 721, baseType: !77, size: 8, offset: 8)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2384, file: !1191, line: 722, baseType: !77, size: 8, offset: 16)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2384, file: !1191, line: 723, baseType: !77, size: 8, offset: 24)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2381, file: !1191, line: 725, baseType: !206, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2140, file: !1191, line: 850, baseType: !91, size: 128, offset: 8192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2140, file: !1191, line: 851, baseType: !2393, size: 64, offset: 8320)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1191, line: 60, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2140, file: !1191, line: 855, baseType: !33, size: 64, offset: 8384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2140, file: !1191, line: 856, baseType: !77, size: 8, offset: 8448)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2140, file: !1191, line: 857, baseType: !77, size: 8, offset: 8456)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2140, file: !1191, line: 858, baseType: !16, size: 32, offset: 8480)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2140, file: !1191, line: 859, baseType: !91, size: 128, offset: 8512)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2140, file: !1191, line: 860, baseType: !16, size: 32, offset: 8640)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2140, file: !1191, line: 861, baseType: !91, size: 128, offset: 8704)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2140, file: !1191, line: 873, baseType: !2403, size: 256, offset: 8832)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1191, line: 376, size: 256, elements: !2404)
!2404 = !{!2405, !2406, !2407, !2408}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2403, file: !1191, line: 381, baseType: !33, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2403, file: !1191, line: 384, baseType: !613, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2403, file: !1191, line: 389, baseType: !613, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2403, file: !1191, line: 392, baseType: !613, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2140, file: !1191, line: 875, baseType: !91, size: 128, offset: 9088)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2140, file: !1191, line: 877, baseType: !2411, size: 320, offset: 9216)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2412, line: 86, size: 320, elements: !2413)
!2412 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2413 = !{!2414, !2415, !2416}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2411, file: !2412, line: 87, baseType: !16, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2411, file: !2412, line: 88, baseType: !91, size: 128, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2411, file: !2412, line: 89, baseType: !91, size: 128, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2140, file: !1191, line: 878, baseType: !285, size: 192, align: 64, offset: 9536)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2140, file: !1191, line: 881, baseType: !1017, size: 64, offset: 9728)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2140, file: !1191, line: 882, baseType: !1017, size: 64, offset: 9792)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2140, file: !1191, line: 884, baseType: !16, size: 32, offset: 9856)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2140, file: !1191, line: 885, baseType: !16, size: 32, offset: 9888)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2140, file: !1191, line: 886, baseType: !16, size: 32, offset: 9920)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2140, file: !1191, line: 888, baseType: !16, size: 32, offset: 9952)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2140, file: !1191, line: 890, baseType: !33, size: 64, offset: 9984)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2140, file: !1191, line: 893, baseType: !98, size: 32, offset: 10048)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2140, file: !1191, line: 896, baseType: !98, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2140, file: !1191, line: 897, baseType: !98, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2140, file: !1191, line: 898, baseType: !98, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2140, file: !1191, line: 899, baseType: !98, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2140, file: !1191, line: 919, baseType: !98, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2140, file: !1191, line: 922, baseType: !98, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2140, file: !1191, line: 923, baseType: !98, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2140, file: !1191, line: 925, baseType: !98, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2140, file: !1191, line: 939, baseType: !98, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2140, file: !1191, line: 941, baseType: !98, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2140, file: !1191, line: 944, baseType: !98, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2140, file: !1191, line: 956, baseType: !98, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2140, file: !1191, line: 962, baseType: !98, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2140, file: !1191, line: 966, baseType: !98, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2140, file: !1191, line: 969, baseType: !33, size: 64, offset: 10176)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2140, file: !1191, line: 971, baseType: !2442, size: 448, offset: 10240)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !134, line: 25, size: 448, elements: !2443)
!2443 = !{!2444, !2445, !2450}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2442, file: !134, line: 26, baseType: !33, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2442, file: !134, line: 27, baseType: !2446, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!525, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !134, line: 28, baseType: !2451, size: 320, offset: 128)
!2451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2442, file: !134, line: 28, size: 320, elements: !2452)
!2452 = !{!2453, !2463, !2488}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2451, file: !134, line: 37, baseType: !2454, size: 320)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !134, line: 30, size: 320, elements: !2455)
!2455 = !{!2456, !2458, !2459, !2460, !2461, !2462}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2454, file: !134, line: 31, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2454, file: !134, line: 32, baseType: !206, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2454, file: !134, line: 33, baseType: !206, size: 32, offset: 96)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2454, file: !134, line: 34, baseType: !206, size: 32, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2454, file: !134, line: 35, baseType: !611, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2454, file: !134, line: 36, baseType: !2457, size: 64, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2451, file: !134, line: 47, baseType: !2464, size: 192)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !134, line: 39, size: 192, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2487}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2464, file: !134, line: 40, baseType: !2297, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2464, file: !134, line: 41, baseType: !133, size: 32, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, scope: !2464, file: !134, line: 42, baseType: !2469, size: 64, offset: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2464, file: !134, line: 42, size: 64, elements: !2470)
!2470 = !{!2471, !2479}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2469, file: !134, line: 43, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2474, line: 7, size: 128, elements: !2475)
!2474 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2475 = !{!2476, !2478}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2473, file: !2474, line: 8, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !31, line: 93, baseType: !37)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2473, file: !2474, line: 9, baseType: !37, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2469, file: !134, line: 44, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2482, line: 7, size: 64, elements: !2483)
!2482 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2483 = !{!2484, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2481, file: !2482, line: 8, baseType: !2485, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2482, line: 5, baseType: !278)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2481, file: !2482, line: 9, baseType: !278, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2464, file: !134, line: 46, baseType: !611, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2451, file: !134, line: 55, baseType: !2489, size: 256)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !134, line: 49, size: 256, elements: !2490)
!2490 = !{!2491, !2494, !2495, !2496, !2497}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2489, file: !134, line: 50, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !134, line: 14, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2489, file: !134, line: 51, baseType: !16, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2489, file: !134, line: 52, baseType: !16, size: 32, offset: 96)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2489, file: !134, line: 53, baseType: !33, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2489, file: !134, line: 54, baseType: !33, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2140, file: !1191, line: 973, baseType: !2499, size: 32, offset: 10688)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !19, line: 27, baseType: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !31, line: 28, baseType: !16)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2140, file: !1191, line: 974, baseType: !2499, size: 32, offset: 10720)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2140, file: !1191, line: 978, baseType: !33, size: 64, offset: 10752)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2140, file: !1191, line: 987, baseType: !2139, size: 64, offset: 10816)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2140, file: !1191, line: 990, baseType: !2139, size: 64, offset: 10880)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2140, file: !1191, line: 995, baseType: !91, size: 128, offset: 10944)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2140, file: !1191, line: 996, baseType: !91, size: 128, offset: 11072)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2140, file: !1191, line: 997, baseType: !2139, size: 64, offset: 11200)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2140, file: !1191, line: 1005, baseType: !91, size: 128, offset: 11264)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2140, file: !1191, line: 1006, baseType: !91, size: 128, offset: 11392)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2140, file: !1191, line: 1009, baseType: !787, size: 64, offset: 11520)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2140, file: !1191, line: 1010, baseType: !2512, size: 512, offset: 11584)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 512, elements: !384)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2140, file: !1191, line: 1011, baseType: !91, size: 128, offset: 12096)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2140, file: !1191, line: 1012, baseType: !91, size: 128, offset: 12224)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2140, file: !1191, line: 1014, baseType: !453, size: 64, offset: 12352)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2140, file: !1191, line: 1017, baseType: !1834, size: 64, offset: 12416)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2140, file: !1191, line: 1020, baseType: !1834, size: 64, offset: 12480)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2140, file: !1191, line: 1023, baseType: !14, size: 64, offset: 12544)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2140, file: !1191, line: 1025, baseType: !611, size: 64, offset: 12608)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2140, file: !1191, line: 1026, baseType: !611, size: 64, offset: 12672)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2140, file: !1191, line: 1031, baseType: !611, size: 64, offset: 12736)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2140, file: !1191, line: 1032, baseType: !2523, size: 192, offset: 12800)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1191, line: 324, size: 192, elements: !2524)
!2524 = !{!2525, !2526, !2527}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2523, file: !1191, line: 326, baseType: !611, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2523, file: !1191, line: 327, baseType: !611, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2523, file: !1191, line: 328, baseType: !304, size: 32, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2140, file: !1191, line: 1041, baseType: !33, size: 64, offset: 12992)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2140, file: !1191, line: 1042, baseType: !33, size: 64, offset: 13056)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2140, file: !1191, line: 1045, baseType: !611, size: 64, offset: 13120)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2140, file: !1191, line: 1048, baseType: !611, size: 64, offset: 13184)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2140, file: !1191, line: 1051, baseType: !33, size: 64, offset: 13248)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2140, file: !1191, line: 1052, baseType: !33, size: 64, offset: 13312)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2140, file: !1191, line: 1055, baseType: !2535, size: 640, offset: 13376)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2536, line: 132, size: 640, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2537 = !{!2538, !2544, !2545}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2535, file: !2536, line: 133, baseType: !2539, size: 576)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2540, size: 576, elements: !783)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2536, line: 117, size: 192, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2540, file: !2536, line: 118, baseType: !611, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2540, file: !2536, line: 119, baseType: !2306, size: 128, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2535, file: !2536, line: 134, baseType: !98, size: 32, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2535, file: !2536, line: 135, baseType: !98, size: 32, offset: 608)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2140, file: !1191, line: 1058, baseType: !2547, size: 448, offset: 14016)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2536, line: 144, size: 448, elements: !2548)
!2548 = !{!2549, !2550, !2551}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2547, file: !2536, line: 145, baseType: !355, size: 128, align: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2547, file: !2536, line: 146, baseType: !751, size: 256, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2547, file: !2536, line: 147, baseType: !98, size: 32, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2140, file: !1191, line: 1064, baseType: !813, size: 64, offset: 14464)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2140, file: !1191, line: 1067, baseType: !813, size: 64, offset: 14528)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2140, file: !1191, line: 1070, baseType: !813, size: 64, offset: 14592)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2140, file: !1191, line: 1074, baseType: !270, size: 64, offset: 14656)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2140, file: !1191, line: 1084, baseType: !2557, size: 128, offset: 14720)
!2557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !2558)
!2558 = !{!2559}
!2559 = !DISubrange(count: 16)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2140, file: !1191, line: 1086, baseType: !2561, size: 64, offset: 14848)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1191, line: 55, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2140, file: !1191, line: 1089, baseType: !2564, size: 64, offset: 14912)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2565, line: 12, size: 64, elements: !2566)
!2565 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2566 = !{!2567}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2564, file: !2565, line: 13, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2565, line: 8, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2140, file: !1191, line: 1090, baseType: !2571, size: 128, offset: 14976)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2572, line: 13, size: 128, elements: !2573)
!2572 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2573 = !{!2574}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2571, file: !2572, line: 14, baseType: !91, size: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2140, file: !1191, line: 1097, baseType: !2576, size: 64, offset: 15104)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1191, line: 50, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2140, file: !1191, line: 1100, baseType: !2579, size: 64, offset: 15168)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1191, line: 1100, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2140, file: !1191, line: 1103, baseType: !2582, size: 64, offset: 15232)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1191, line: 53, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2140, file: !1191, line: 1107, baseType: !2585, size: 64, offset: 15296)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2587, line: 31, size: 576, elements: !2588)
!2587 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2588 = !{!2589, !2590, !2593, !2596, !2599, !2600, !2603, !2606, !2607}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2586, file: !2587, line: 32, baseType: !260, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2586, file: !2587, line: 33, baseType: !2591, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2587, line: 9, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2586, file: !2587, line: 34, baseType: !2594, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2587, line: 10, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2586, file: !2587, line: 35, baseType: !2597, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2587, line: 8, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2586, file: !2587, line: 36, baseType: !804, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2586, file: !2587, line: 37, baseType: !2601, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !272, line: 34, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2586, file: !2587, line: 38, baseType: !2604, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2587, line: 38, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2586, file: !2587, line: 39, baseType: !2604, size: 64, offset: 448)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2586, file: !2587, line: 40, baseType: !2608, size: 64, offset: 512)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2587, line: 12, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2140, file: !1191, line: 1110, baseType: !2611, size: 64, offset: 15360)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2613, line: 93, size: 8768, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2665, !2674, !2675, !2677, !2678, !2679, !2682, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2720, !2721, !2728, !2738, !2741, !2742, !2745, !2746, !2747, !2748, !2749, !2750}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2612, file: !2613, line: 94, baseType: !260, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2612, file: !2613, line: 95, baseType: !43, size: 32, offset: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2612, file: !2613, line: 96, baseType: !16, size: 32, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2612, file: !2613, line: 97, baseType: !16, size: 32, offset: 96)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2612, file: !2613, line: 98, baseType: !91, size: 128, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2612, file: !2613, line: 100, baseType: !48, size: 192, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2612, file: !2613, line: 103, baseType: !2139, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2612, file: !2613, line: 106, baseType: !2623, size: 192, offset: 512)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2624, line: 32, size: 192, elements: !2625)
!2624 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2625 = !{!2626, !2627}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2623, file: !2624, line: 33, baseType: !91, size: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2623, file: !2624, line: 34, baseType: !2628, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2629, line: 25, baseType: !2630)
!2629 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2629, line: 23, size: 64, elements: !2631)
!2631 = !{!2632}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2630, file: !2629, line: 24, baseType: !2370, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2612, file: !2613, line: 109, baseType: !495, size: 64, offset: 704)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2612, file: !2613, line: 112, baseType: !16, size: 32, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2612, file: !2613, line: 114, baseType: !16, size: 32, offset: 800)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2612, file: !2613, line: 115, baseType: !2139, size: 64, offset: 832)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2612, file: !2613, line: 118, baseType: !16, size: 32, offset: 896)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2612, file: !2613, line: 119, baseType: !98, size: 32, offset: 928)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2612, file: !2613, line: 121, baseType: !2640, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2613, line: 80, size: 448, elements: !2642)
!2642 = !{!2643, !2644, !2650}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2641, file: !2613, line: 81, baseType: !43, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2641, file: !2613, line: 82, baseType: !2645, size: 128, offset: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2613, line: 75, size: 128, elements: !2646)
!2646 = !{!2647, !2648}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2645, file: !2613, line: 76, baseType: !2139, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2645, file: !2613, line: 77, baseType: !2649, size: 64, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2641, file: !2613, line: 83, baseType: !454, size: 256, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2612, file: !2613, line: 132, baseType: !98, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2612, file: !2613, line: 133, baseType: !98, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2612, file: !2613, line: 138, baseType: !98, size: 32, offset: 1056)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2612, file: !2613, line: 139, baseType: !91, size: 128, offset: 1088)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2612, file: !2613, line: 142, baseType: !2250, size: 512, offset: 1216)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2612, file: !2613, line: 143, baseType: !2258, size: 64, offset: 1728)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2612, file: !2613, line: 150, baseType: !2658, size: 256, offset: 1792)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2659, size: 256, elements: !2663)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2613, line: 38, size: 128, elements: !2660)
!2660 = !{!2661, !2662}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2659, file: !2613, line: 39, baseType: !611, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2659, file: !2613, line: 40, baseType: !611, size: 64, offset: 64)
!2663 = !{!2664}
!2664 = !DISubrange(count: 2)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2612, file: !2613, line: 156, baseType: !2666, size: 192, offset: 2048)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2613, line: 66, size: 192, elements: !2667)
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2666, file: !2613, line: 67, baseType: !2669, size: 192)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2613, line: 47, size: 192, elements: !2670)
!2670 = !{!2671, !2672, !2673}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2669, file: !2613, line: 48, baseType: !248, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2669, file: !2613, line: 49, baseType: !248, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2669, file: !2613, line: 50, baseType: !248, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2612, file: !2613, line: 160, baseType: !2535, size: 640, offset: 2240)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2612, file: !2613, line: 163, baseType: !2676, size: 256, offset: 2880)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 256, elements: !384)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2612, file: !2613, line: 169, baseType: !787, size: 64, offset: 3136)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2612, file: !2613, line: 172, baseType: !16, size: 32, offset: 3200)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2612, file: !2613, line: 174, baseType: !2680, size: 64, offset: 3264)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2613, line: 174, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2612, file: !2613, line: 185, baseType: !2683, size: 64, offset: 3328)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !582, line: 860, baseType: !2684)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 853, size: 64, elements: !2685)
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2684, file: !582, line: 858, baseType: !581, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2684, file: !582, line: 859, baseType: !53, size: 32, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2612, file: !2613, line: 186, baseType: !611, size: 64, offset: 3392)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2612, file: !2613, line: 186, baseType: !611, size: 64, offset: 3456)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2612, file: !2613, line: 186, baseType: !611, size: 64, offset: 3520)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2612, file: !2613, line: 186, baseType: !611, size: 64, offset: 3584)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2612, file: !2613, line: 187, baseType: !611, size: 64, offset: 3648)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2612, file: !2613, line: 188, baseType: !611, size: 64, offset: 3712)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2612, file: !2613, line: 189, baseType: !2523, size: 192, offset: 3776)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2612, file: !2613, line: 190, baseType: !33, size: 64, offset: 3968)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2612, file: !2613, line: 190, baseType: !33, size: 64, offset: 4032)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2612, file: !2613, line: 190, baseType: !33, size: 64, offset: 4096)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2612, file: !2613, line: 190, baseType: !33, size: 64, offset: 4160)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2612, file: !2613, line: 191, baseType: !33, size: 64, offset: 4224)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2612, file: !2613, line: 191, baseType: !33, size: 64, offset: 4288)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2612, file: !2613, line: 191, baseType: !33, size: 64, offset: 4352)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2612, file: !2613, line: 191, baseType: !33, size: 64, offset: 4416)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2612, file: !2613, line: 192, baseType: !33, size: 64, offset: 4480)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2612, file: !2613, line: 192, baseType: !33, size: 64, offset: 4544)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2612, file: !2613, line: 192, baseType: !33, size: 64, offset: 4608)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2612, file: !2613, line: 192, baseType: !33, size: 64, offset: 4672)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2612, file: !2613, line: 193, baseType: !33, size: 64, offset: 4736)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2612, file: !2613, line: 193, baseType: !33, size: 64, offset: 4800)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2612, file: !2613, line: 194, baseType: !2710, size: 448, offset: 4864)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2711, line: 12, size: 448, elements: !2712)
!2711 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2710, file: !2711, line: 15, baseType: !611, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2710, file: !2711, line: 17, baseType: !611, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2710, file: !2711, line: 19, baseType: !611, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2710, file: !2711, line: 21, baseType: !611, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2710, file: !2711, line: 29, baseType: !611, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2710, file: !2711, line: 35, baseType: !611, size: 64, offset: 320)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2710, file: !2711, line: 44, baseType: !611, size: 64, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2612, file: !2613, line: 202, baseType: !613, size: 64, offset: 5312)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2612, file: !2613, line: 213, baseType: !2722, size: 2048, offset: 5376)
!2722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2723, size: 2048, elements: !2558)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2724, line: 43, size: 128, elements: !2725)
!2724 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2725 = !{!2726, !2727}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2723, file: !2724, line: 44, baseType: !32, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2723, file: !2724, line: 45, baseType: !32, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2612, file: !2613, line: 216, baseType: !2729, size: 448, offset: 7424)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2613, line: 30, size: 448, elements: !2730)
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2736, !2737}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2729, file: !2613, line: 31, baseType: !16, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2729, file: !2613, line: 32, baseType: !525, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2729, file: !2613, line: 33, baseType: !33, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2729, file: !2613, line: 34, baseType: !611, size: 64, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2729, file: !2613, line: 34, baseType: !611, size: 64, offset: 256)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2729, file: !2613, line: 35, baseType: !33, size: 64, offset: 320)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2729, file: !2613, line: 35, baseType: !33, size: 64, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2612, file: !2613, line: 219, baseType: !2739, size: 64, offset: 7872)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2613, line: 219, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2612, file: !2613, line: 222, baseType: !98, size: 32, offset: 7936)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2612, file: !2613, line: 223, baseType: !2743, size: 64, offset: 8000)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2613, line: 223, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2612, file: !2613, line: 230, baseType: !266, size: 8, offset: 8064)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2612, file: !2613, line: 231, baseType: !326, size: 16, offset: 8080)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2612, file: !2613, line: 232, baseType: !326, size: 16, offset: 8096)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2612, file: !2613, line: 234, baseType: !1017, size: 64, offset: 8128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2612, file: !2613, line: 237, baseType: !751, size: 256, offset: 8192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2612, file: !2613, line: 243, baseType: !293, size: 320, offset: 8448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2140, file: !1191, line: 1111, baseType: !2752, size: 64, offset: 15424)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2613, line: 20, size: 16640, elements: !2754)
!2754 = !{!2755, !2756, !2757, !2758}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2753, file: !2613, line: 21, baseType: !53, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2753, file: !2613, line: 22, baseType: !260, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2753, file: !2613, line: 23, baseType: !48, size: 192, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2753, file: !2613, line: 24, baseType: !2759, size: 16384, offset: 256)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2760, size: 16384, elements: !2780)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2624, line: 51, size: 256, elements: !2761)
!2761 = !{!2762}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2760, file: !2624, line: 52, baseType: !2763, size: 256)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2624, line: 37, size: 256, elements: !2764)
!2764 = !{!2765, !2772, !2773, !2779}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2763, file: !2624, line: 39, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2767, line: 83, baseType: !2768)
!2767 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2767, line: 82, baseType: !2770)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{null, !16}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2763, file: !2624, line: 40, baseType: !33, size: 64, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2763, file: !2624, line: 46, baseType: !2774, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2767, line: 86, baseType: !2775)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2767, line: 85, baseType: !2777)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2763, file: !2624, line: 48, baseType: !2628, size: 64, offset: 192)
!2780 = !{!2781}
!2781 = !DISubrange(count: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2140, file: !1191, line: 1112, baseType: !2628, size: 64, offset: 15488)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2140, file: !1191, line: 1113, baseType: !2628, size: 64, offset: 15552)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2140, file: !1191, line: 1115, baseType: !2628, size: 64, offset: 15616)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2140, file: !1191, line: 1116, baseType: !2623, size: 192, offset: 15680)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2140, file: !1191, line: 1117, baseType: !33, size: 64, offset: 15872)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2140, file: !1191, line: 1118, baseType: !29, size: 64, offset: 15936)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2140, file: !1191, line: 1119, baseType: !98, size: 32, offset: 16000)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2140, file: !1191, line: 1121, baseType: !358, size: 64, offset: 16064)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2140, file: !1191, line: 1125, baseType: !2791, size: 64, offset: 16128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1191, line: 43, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2140, file: !1191, line: 1127, baseType: !231, size: 32, offset: 16192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2140, file: !1191, line: 1128, baseType: !98, size: 32, offset: 16224)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2140, file: !1191, line: 1130, baseType: !2796, size: 128, offset: 16256)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2797, line: 37, size: 128, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2798 = !{!2799, !2800, !2801}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2796, file: !2797, line: 38, baseType: !16, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2796, file: !2797, line: 39, baseType: !43, size: 32, offset: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2796, file: !2797, line: 40, baseType: !2802, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2797, line: 24, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2140, file: !1191, line: 1131, baseType: !2805, size: 256, offset: 16384)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2806, line: 12, size: 256, elements: !2807)
!2806 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2807 = !{!2808, !2809, !2810, !2811}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2805, file: !2806, line: 13, baseType: !374, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2805, file: !2806, line: 14, baseType: !33, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2805, file: !2806, line: 15, baseType: !33, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2805, file: !2806, line: 16, baseType: !266, size: 8, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2140, file: !1191, line: 1134, baseType: !611, size: 64, offset: 16640)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2140, file: !1191, line: 1135, baseType: !611, size: 64, offset: 16704)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2140, file: !1191, line: 1138, baseType: !53, size: 32, offset: 16768)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2140, file: !1191, line: 1141, baseType: !304, size: 32, offset: 16800)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2140, file: !1191, line: 1143, baseType: !2817, size: 64, offset: 16832)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1191, line: 735, size: 64, elements: !2818)
!2818 = !{!2819}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2817, file: !1191, line: 736, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2140, file: !1191, line: 1147, baseType: !1295, size: 128, offset: 16896)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2140, file: !1191, line: 1149, baseType: !2139, size: 64, offset: 17024)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2140, file: !1191, line: 1151, baseType: !2824, size: 64, offset: 17088)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1191, line: 1151, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2140, file: !1191, line: 1188, baseType: !14, size: 64, offset: 17152)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2140, file: !1191, line: 1191, baseType: !2828, size: 64, offset: 17216)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1191, line: 44, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2140, file: !1191, line: 1194, baseType: !2831, size: 64, offset: 17280)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1191, line: 45, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2140, file: !1191, line: 1197, baseType: !2834, size: 64, offset: 17344)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1191, line: 61, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2140, file: !1191, line: 1199, baseType: !2837, size: 64, offset: 17408)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2839, line: 99, size: 128, elements: !2840)
!2839 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2840 = !{!2841, !2842, !2843}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2838, file: !2839, line: 100, baseType: !246, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2838, file: !2839, line: 101, baseType: !43, size: 32, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2838, file: !2839, line: 103, baseType: !20, size: 16, offset: 96)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2140, file: !1191, line: 1202, baseType: !2845, size: 64, offset: 17472)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1191, line: 48, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2140, file: !1191, line: 1205, baseType: !33, size: 64, offset: 17536)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2140, file: !1191, line: 1206, baseType: !2849, size: 64, offset: 17600)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2624, line: 14, baseType: !2851)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2624, line: 12, size: 384, elements: !2852)
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, scope: !2851, file: !2624, line: 13, baseType: !2854, size: 384)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2851, file: !2624, line: 13, size: 384, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2854, file: !2624, line: 13, baseType: !16, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2854, file: !2624, line: 13, baseType: !16, size: 32, offset: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2854, file: !2624, line: 13, baseType: !16, size: 32, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2854, file: !2624, line: 13, baseType: !2860, size: 256, offset: 128)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2861, line: 37, size: 256, elements: !2862)
!2861 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2862 = !{!2863, !2868, !2881, !2887, !2896, !2923, !2928}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2860, file: !2861, line: 42, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 39, size: 64, elements: !2865)
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2864, file: !2861, line: 40, baseType: !2500, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2864, file: !2861, line: 41, baseType: !171, size: 32, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2860, file: !2861, line: 50, baseType: !2869, size: 192)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 45, size: 192, elements: !2870)
!2870 = !{!2871, !2873, !2874, !2880}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2869, file: !2861, line: 46, baseType: !2872, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !31, line: 95, baseType: !16)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2869, file: !2861, line: 47, baseType: !16, size: 32, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2869, file: !2861, line: 48, baseType: !2875, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2861, line: 11, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2861, line: 8, size: 64, elements: !2877)
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2876, file: !2861, line: 9, baseType: !16, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2876, file: !2861, line: 10, baseType: !14, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2869, file: !2861, line: 49, baseType: !16, size: 32, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2860, file: !2861, line: 57, baseType: !2882, size: 128)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 53, size: 128, elements: !2883)
!2883 = !{!2884, !2885, !2886}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2882, file: !2861, line: 54, baseType: !2500, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2882, file: !2861, line: 55, baseType: !171, size: 32, offset: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2882, file: !2861, line: 56, baseType: !2875, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2860, file: !2861, line: 66, baseType: !2888, size: 256)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 60, size: 256, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2893, !2895}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2888, file: !2861, line: 61, baseType: !2500, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2888, file: !2861, line: 62, baseType: !171, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2888, file: !2861, line: 63, baseType: !16, size: 32, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2888, file: !2861, line: 64, baseType: !2894, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !31, line: 94, baseType: !933)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2888, file: !2861, line: 65, baseType: !2894, size: 64, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2860, file: !2861, line: 105, baseType: !2897, size: 256)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 69, size: 256, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2897, file: !2861, line: 70, baseType: !14, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, scope: !2897, file: !2861, line: 79, baseType: !2901, size: 192, offset: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2897, file: !2861, line: 79, size: 192, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2912, !2917}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2901, file: !2861, line: 81, baseType: !16, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2901, file: !2861, line: 86, baseType: !326, size: 16)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2901, file: !2861, line: 92, baseType: !2906, size: 192)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2861, line: 88, size: 192, elements: !2907)
!2907 = !{!2908, !2910, !2911}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2906, file: !2861, line: 89, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !2293)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2906, file: !2861, line: 90, baseType: !14, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2906, file: !2861, line: 91, baseType: !14, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2901, file: !2861, line: 97, baseType: !2913, size: 96)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2861, line: 94, size: 96, elements: !2914)
!2914 = !{!2915, !2916}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2913, file: !2861, line: 95, baseType: !2909, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2913, file: !2861, line: 96, baseType: !207, size: 32, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2901, file: !2861, line: 103, baseType: !2918, size: 128)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2861, line: 99, size: 128, elements: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2918, file: !2861, line: 100, baseType: !33, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2918, file: !2861, line: 101, baseType: !207, size: 32, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2918, file: !2861, line: 102, baseType: !207, size: 32, offset: 96)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2860, file: !2861, line: 111, baseType: !2924, size: 128)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 108, size: 128, elements: !2925)
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2924, file: !2861, line: 109, baseType: !525, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2924, file: !2861, line: 110, baseType: !16, size: 32, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2860, file: !2861, line: 118, baseType: !2929, size: 128)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 114, size: 128, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2929, file: !2861, line: 115, baseType: !14, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2929, file: !2861, line: 116, baseType: !16, size: 32, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2929, file: !2861, line: 117, baseType: !98, size: 32, offset: 96)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2140, file: !1191, line: 1208, baseType: !2710, size: 448, offset: 17664)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2140, file: !1191, line: 1215, baseType: !611, size: 64, offset: 18112)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2140, file: !1191, line: 1217, baseType: !611, size: 64, offset: 18176)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2140, file: !1191, line: 1219, baseType: !611, size: 64, offset: 18240)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2140, file: !1191, line: 1223, baseType: !2939, size: 64, offset: 18304)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2940, line: 99, baseType: !2941)
!2940 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2940, line: 99, size: 64, elements: !2942)
!2942 = !{!2943}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2941, file: !2940, line: 99, baseType: !2370, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2140, file: !1191, line: 1225, baseType: !581, size: 32, offset: 18368)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2140, file: !1191, line: 1226, baseType: !16, size: 32, offset: 18400)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2140, file: !1191, line: 1227, baseType: !16, size: 32, offset: 18432)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2140, file: !1191, line: 1231, baseType: !2948, size: 64, offset: 18496)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1191, line: 1231, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2140, file: !1191, line: 1233, baseType: !91, size: 128, offset: 18560)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2140, file: !1191, line: 1240, baseType: !2952, size: 64, offset: 18688)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1191, line: 62, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2140, file: !1191, line: 1242, baseType: !2955, size: 64, offset: 18752)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1191, line: 1242, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2140, file: !1191, line: 1244, baseType: !91, size: 128, offset: 18816)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2140, file: !1191, line: 1245, baseType: !2959, size: 64, offset: 18944)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1191, line: 51, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2140, file: !1191, line: 1246, baseType: !751, size: 256, offset: 19008)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2140, file: !1191, line: 1247, baseType: !98, size: 32, offset: 19264)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2140, file: !1191, line: 1250, baseType: !2964, size: 64, offset: 19328)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1191, line: 57, flags: DIFlagFwdDecl)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2140, file: !1191, line: 1251, baseType: !751, size: 256, offset: 19392)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2140, file: !1191, line: 1252, baseType: !91, size: 128, offset: 19648)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2140, file: !1191, line: 1259, baseType: !1189, size: 64, offset: 19776)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2140, file: !1191, line: 1260, baseType: !326, size: 16, offset: 19840)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2140, file: !1191, line: 1261, baseType: !326, size: 16, offset: 19856)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2140, file: !1191, line: 1314, baseType: !2972, size: 64, offset: 19904)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2974, line: 62, size: 256, align: 256, elements: !2975)
!2974 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2975 = !{!2976, !2977, !2978, !2979, !2980, !2981, !2982}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2973, file: !2974, line: 75, baseType: !207, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2973, file: !2974, line: 90, baseType: !207, size: 32, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2973, file: !2974, line: 112, baseType: !612, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2973, file: !2974, line: 132, baseType: !207, size: 32, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2973, file: !2974, line: 140, baseType: !207, size: 32, offset: 160)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2973, file: !2974, line: 149, baseType: !207, size: 32, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2973, file: !2974, line: 154, baseType: !2983, offset: 224)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, elements: !806)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2140, file: !1191, line: 1315, baseType: !206, size: 32, offset: 19968)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2140, file: !1191, line: 1316, baseType: !206, size: 32, offset: 20000)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2140, file: !1191, line: 1321, baseType: !33, size: 64, offset: 20032)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2140, file: !1191, line: 1325, baseType: !16, size: 32, offset: 20096)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2140, file: !1191, line: 1326, baseType: !16, size: 32, offset: 20128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2140, file: !1191, line: 1327, baseType: !16, size: 32, offset: 20160)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2140, file: !1191, line: 1328, baseType: !16, size: 32, offset: 20192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2140, file: !1191, line: 1329, baseType: !355, size: 128, align: 64, offset: 20224)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2140, file: !1191, line: 1332, baseType: !2993, size: 128, offset: 20352)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2994, line: 51, size: 128, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2995 = !{!2996, !3001, !3002}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2993, file: !2994, line: 60, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2998, line: 7, size: 64, elements: !2999)
!2998 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2999 = !{!3000}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2997, file: !2998, line: 12, baseType: !2367, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2993, file: !2994, line: 63, baseType: !266, size: 8, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2993, file: !2994, line: 70, baseType: !266, size: 8, offset: 72)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2140, file: !1191, line: 1335, baseType: !1229, size: 64, offset: 20480)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2140, file: !1191, line: 1337, baseType: !3005, size: 128, offset: 20544)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2994, line: 39, size: 128, elements: !3006)
!3006 = !{!3007, !3008, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3005, file: !2994, line: 40, baseType: !1310, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3005, file: !2994, line: 42, baseType: !207, size: 32, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3005, file: !2994, line: 43, baseType: !207, size: 32, offset: 96)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2140, file: !1191, line: 1340, baseType: !3011, size: 64, offset: 20672)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1191, line: 69, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2140, file: !1191, line: 1351, baseType: !16, size: 32, offset: 20736)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2140, file: !1191, line: 1352, baseType: !16, size: 32, offset: 20768)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2140, file: !1191, line: 1354, baseType: !33, size: 64, offset: 20800)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2140, file: !1191, line: 1364, baseType: !611, size: 64, offset: 20864)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2140, file: !1191, line: 1365, baseType: !611, size: 64, offset: 20928)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2140, file: !1191, line: 1412, baseType: !33, size: 64, offset: 20992)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2140, file: !1191, line: 1453, baseType: !3020, size: 64, offset: 21056)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1191, line: 1453, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2140, file: !1191, line: 1457, baseType: !3023, size: 64, offset: 21120)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !140, line: 61, size: 576, elements: !3025)
!3025 = !{!3026, !3027, !3046, !3049, !3050, !3083, !3093}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3024, file: !140, line: 62, baseType: !139, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, scope: !3024, file: !140, line: 64, baseType: !3028, size: 192, offset: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3024, file: !140, line: 64, size: 192, elements: !3029)
!3029 = !{!3030, !3041}
!3030 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !140, line: 65, baseType: !3031, size: 192)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3028, file: !140, line: 65, size: 192, elements: !3032)
!3032 = !{!3033, !3040}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3031, file: !140, line: 66, baseType: !3034, size: 128)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3035, line: 50, size: 128, elements: !3036)
!3035 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3034, file: !3035, line: 52, baseType: !33, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3034, file: !3035, line: 54, baseType: !98, size: 32, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3034, file: !3035, line: 55, baseType: !98, size: 32, offset: 96)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3031, file: !140, line: 67, baseType: !33, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !140, line: 70, baseType: !3042, size: 192)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3028, file: !140, line: 70, size: 192, elements: !3043)
!3043 = !{!3044, !3045}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3042, file: !140, line: 71, baseType: !355, size: 128, align: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3042, file: !140, line: 72, baseType: !33, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3024, file: !140, line: 76, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !140, line: 76, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3024, file: !140, line: 77, baseType: !33, size: 64, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3024, file: !140, line: 79, baseType: !3051, size: 64, offset: 384)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3035, line: 25, size: 256, elements: !3053)
!3053 = !{!3054, !3060, !3064}
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !3052, file: !3035, line: 26, baseType: !3055, size: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3052, file: !3035, line: 26, size: 128, elements: !3056)
!3056 = !{!3057, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3055, file: !3035, line: 27, baseType: !3058, size: 128)
!3058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !2558)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3055, file: !3035, line: 28, baseType: !3058, size: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3052, file: !3035, line: 31, baseType: !3061, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3063)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3035, line: 23, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !3052, file: !3035, line: 33, baseType: !3065, size: 64, offset: 192)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3052, file: !3035, line: 33, size: 64, elements: !3066)
!3066 = !{!3067, !3073, !3078}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3065, file: !3035, line: 38, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3035, line: 34, size: 64, elements: !3069)
!3069 = !{!3070, !3071, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3068, file: !3035, line: 35, baseType: !278, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3068, file: !3035, line: 36, baseType: !77, size: 8, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3068, file: !3035, line: 37, baseType: !77, size: 8, offset: 40)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3065, file: !3035, line: 42, baseType: !3074, size: 16)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3035, line: 39, size: 16, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3074, file: !3035, line: 40, baseType: !77, size: 8)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3074, file: !3035, line: 41, baseType: !77, size: 8, offset: 8)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3065, file: !3035, line: 46, baseType: !3079, size: 16)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3035, line: 43, size: 16, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3079, file: !3035, line: 44, baseType: !77, size: 8)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3079, file: !3035, line: 45, baseType: !77, size: 8, offset: 8)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3024, file: !140, line: 81, baseType: !3084, size: 64, offset: 448)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !140, line: 85, size: 384, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3090, !3091, !3092}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3085, file: !140, line: 86, baseType: !3047, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3085, file: !140, line: 87, baseType: !33, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3085, file: !140, line: 88, baseType: !33, size: 64, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3085, file: !140, line: 89, baseType: !33, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3085, file: !140, line: 90, baseType: !266, size: 8, offset: 256)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3085, file: !140, line: 92, baseType: !3084, size: 64, offset: 320)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3024, file: !140, line: 82, baseType: !98, size: 32, offset: 512)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2140, file: !1191, line: 1463, baseType: !3095, offset: 21184)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1191, line: 739, elements: !1038)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2140, file: !1191, line: 1470, baseType: !355, size: 128, align: 64, offset: 21184)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2140, file: !1191, line: 1471, baseType: !260, size: 32, offset: 21312)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2140, file: !1191, line: 1472, baseType: !16, size: 32, offset: 21344)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2140, file: !1191, line: 1474, baseType: !2139, size: 64, offset: 21376)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2140, file: !1191, line: 1475, baseType: !3101, size: 320, offset: 21440)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3102, line: 11, size: 320, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3103 = !{!3104, !3105, !3106, !3111}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3101, file: !3102, line: 16, baseType: !499, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3101, file: !3102, line: 17, baseType: !33, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3101, file: !3102, line: 18, baseType: !3107, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !3110}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3101, file: !3102, line: 19, baseType: !206, size: 32, offset: 256)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2140, file: !1191, line: 1478, baseType: !3113, size: 64, offset: 21760)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1191, line: 1478, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2140, file: !1191, line: 1482, baseType: !260, size: 32, offset: 21824)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2140, file: !1191, line: 1489, baseType: !14, size: 64, offset: 21888)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2140, file: !1191, line: 1504, baseType: !14, size: 64, offset: 21952)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2140, file: !1191, line: 1505, baseType: !612, size: 64, offset: 22016)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2140, file: !1191, line: 1506, baseType: !611, size: 64, offset: 22080)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2140, file: !1191, line: 1507, baseType: !612, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2140, file: !1191, line: 1508, baseType: !612, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2140, file: !1191, line: 1509, baseType: !612, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2140, file: !1191, line: 1510, baseType: !355, size: 128, align: 64, offset: 22208)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2140, file: !1191, line: 1511, baseType: !16, size: 32, offset: 22336)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2140, file: !1191, line: 1515, baseType: !3126, size: 64, offset: 22400)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !740, line: 56, size: 64, elements: !3127)
!3127 = !{!3128}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3126, file: !740, line: 57, baseType: !743, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2140, file: !1191, line: 1518, baseType: !3126, size: 64, offset: 22464)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2140, file: !1191, line: 1528, baseType: !355, size: 128, align: 64, offset: 22528)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2140, file: !1191, line: 1552, baseType: !3132, size: 35328, offset: 23040)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3133, line: 430, size: 35328, elements: !3134)
!3133 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3134 = !{!3135, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3164, !3165, !3166, !3167, !3168, !3169, !3172, !3173, !3174, !3175}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3132, file: !3133, line: 432, baseType: !3136, size: 192)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3137, size: 192, elements: !783)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3138, line: 16, size: 64, elements: !3139)
!3138 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3137, file: !3138, line: 17, baseType: !87, size: 16)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3137, file: !3138, line: 18, baseType: !87, size: 16, offset: 16)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3137, file: !3138, line: 19, baseType: !87, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3137, file: !3138, line: 19, baseType: !87, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3137, file: !3138, line: 19, baseType: !87, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3137, file: !3138, line: 19, baseType: !87, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3137, file: !3138, line: 19, baseType: !87, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3137, file: !3138, line: 20, baseType: !87, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3137, file: !3138, line: 20, baseType: !87, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3137, file: !3138, line: 20, baseType: !87, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3137, file: !3138, line: 20, baseType: !87, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3137, file: !3138, line: 20, baseType: !87, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3137, file: !3138, line: 20, baseType: !87, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3132, file: !3133, line: 436, baseType: !33, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3132, file: !3133, line: 440, baseType: !20, size: 16, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3132, file: !3133, line: 441, baseType: !20, size: 16, offset: 272)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3132, file: !3133, line: 442, baseType: !20, size: 16, offset: 288)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3132, file: !3133, line: 443, baseType: !20, size: 16, offset: 304)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3132, file: !3133, line: 447, baseType: !33, size: 64, offset: 320)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3132, file: !3133, line: 448, baseType: !33, size: 64, offset: 384)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3132, file: !3133, line: 459, baseType: !3161, size: 256, offset: 448)
!3161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3162, size: 256, elements: !384)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3133, line: 428, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3132, file: !3133, line: 461, baseType: !33, size: 64, offset: 704)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3132, file: !3133, line: 463, baseType: !33, size: 64, offset: 768)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3132, file: !3133, line: 465, baseType: !33, size: 64, offset: 832)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3132, file: !3133, line: 466, baseType: !33, size: 64, offset: 896)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3132, file: !3133, line: 467, baseType: !33, size: 64, offset: 960)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3132, file: !3133, line: 473, baseType: !3170, size: 64, offset: 1024)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3133, line: 10, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3132, file: !3133, line: 480, baseType: !33, size: 64, offset: 1088)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3132, file: !3133, line: 482, baseType: !98, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3132, file: !3133, line: 491, baseType: !206, size: 32, offset: 1184)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3132, file: !3133, line: 501, baseType: !3176, size: 33792, offset: 1536)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3177, line: 448, size: 33792, elements: !3178)
!3177 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3178 = !{!3179, !3180, !3181, !3343, !3344, !3350, !3351}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3176, file: !3177, line: 461, baseType: !98, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3176, file: !3177, line: 468, baseType: !33, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3176, file: !3177, line: 476, baseType: !3182, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3177, line: 356, size: 33280, align: 512, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3183, file: !3177, line: 358, baseType: !98, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3183, file: !3177, line: 361, baseType: !98, size: 32, offset: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3183, file: !3177, line: 364, baseType: !611, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3183, file: !3177, line: 367, baseType: !611, size: 64, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3183, file: !3177, line: 370, baseType: !611, size: 64, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3183, file: !3177, line: 373, baseType: !98, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3183, file: !3177, line: 376, baseType: !98, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3183, file: !3177, line: 391, baseType: !98, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3183, file: !3177, line: 394, baseType: !98, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3183, file: !3177, line: 397, baseType: !3195, size: 32768, offset: 512)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3177, line: 348, size: 32768, elements: !3196)
!3196 = !{!3197, !3212, !3249, !3326, !3339}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3195, file: !3177, line: 349, baseType: !3198, size: 896)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3177, line: 12, size: 896, elements: !3199)
!3199 = !{!3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3211}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3198, file: !3177, line: 13, baseType: !206, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3198, file: !3177, line: 14, baseType: !206, size: 32, offset: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3198, file: !3177, line: 15, baseType: !206, size: 32, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3198, file: !3177, line: 16, baseType: !206, size: 32, offset: 96)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3198, file: !3177, line: 17, baseType: !206, size: 32, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3198, file: !3177, line: 18, baseType: !206, size: 32, offset: 160)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3198, file: !3177, line: 19, baseType: !206, size: 32, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3198, file: !3177, line: 22, baseType: !3208, size: 640, offset: 224)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 640, elements: !3209)
!3209 = !{!3210}
!3210 = !DISubrange(count: 20)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3198, file: !3177, line: 25, baseType: !206, size: 32, offset: 864)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3195, file: !3177, line: 350, baseType: !3213, size: 4096, align: 128)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3177, line: 34, size: 4096, align: 128, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3234, !3235, !3236, !3238, !3240, !3244}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3213, file: !3177, line: 35, baseType: !87, size: 16)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3213, file: !3177, line: 36, baseType: !87, size: 16, offset: 16)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3213, file: !3177, line: 37, baseType: !87, size: 16, offset: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3213, file: !3177, line: 38, baseType: !87, size: 16, offset: 48)
!3219 = !DIDerivedType(tag: DW_TAG_member, scope: !3213, file: !3177, line: 39, baseType: !3220, size: 128, offset: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3213, file: !3177, line: 39, size: 128, elements: !3221)
!3221 = !{!3222, !3227}
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !3220, file: !3177, line: 40, baseType: !3223, size: 128)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3220, file: !3177, line: 40, size: 128, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3223, file: !3177, line: 41, baseType: !611, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3223, file: !3177, line: 42, baseType: !611, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, scope: !3220, file: !3177, line: 44, baseType: !3228, size: 128)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3220, file: !3177, line: 44, size: 128, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3228, file: !3177, line: 45, baseType: !206, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3228, file: !3177, line: 46, baseType: !206, size: 32, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3228, file: !3177, line: 47, baseType: !206, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3228, file: !3177, line: 48, baseType: !206, size: 32, offset: 96)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3213, file: !3177, line: 51, baseType: !206, size: 32, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3213, file: !3177, line: 52, baseType: !206, size: 32, offset: 224)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3213, file: !3177, line: 55, baseType: !3237, size: 1024, offset: 256)
!3237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 1024, elements: !1676)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3213, file: !3177, line: 58, baseType: !3239, size: 2048, offset: 1280)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 2048, elements: !2780)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3213, file: !3177, line: 60, baseType: !3241, size: 384, offset: 3328)
!3241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 384, elements: !3242)
!3242 = !{!3243}
!3243 = !DISubrange(count: 12)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3213, file: !3177, line: 62, baseType: !3245, size: 384, offset: 3712)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3213, file: !3177, line: 62, size: 384, elements: !3246)
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3245, file: !3177, line: 63, baseType: !3241, size: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3245, file: !3177, line: 64, baseType: !3241, size: 384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3195, file: !3177, line: 351, baseType: !3250, size: 1088)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3177, line: 79, size: 1088, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3325}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3250, file: !3177, line: 80, baseType: !206, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3250, file: !3177, line: 81, baseType: !206, size: 32, offset: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3250, file: !3177, line: 82, baseType: !206, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3250, file: !3177, line: 83, baseType: !206, size: 32, offset: 96)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3250, file: !3177, line: 84, baseType: !206, size: 32, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3250, file: !3177, line: 85, baseType: !206, size: 32, offset: 160)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3250, file: !3177, line: 86, baseType: !206, size: 32, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3250, file: !3177, line: 88, baseType: !3208, size: 640, offset: 224)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3250, file: !3177, line: 89, baseType: !77, size: 8, offset: 864)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3250, file: !3177, line: 90, baseType: !77, size: 8, offset: 872)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3250, file: !3177, line: 91, baseType: !77, size: 8, offset: 880)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3250, file: !3177, line: 92, baseType: !77, size: 8, offset: 888)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3250, file: !3177, line: 93, baseType: !77, size: 8, offset: 896)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3250, file: !3177, line: 94, baseType: !77, size: 8, offset: 904)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3250, file: !3177, line: 95, baseType: !3267, size: 64, offset: 960)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3269, line: 11, size: 128, elements: !3270)
!3269 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3268, file: !3269, line: 12, baseType: !525, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3268, file: !3269, line: 13, baseType: !3273, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3275, line: 103, size: 1344, elements: !3276)
!3275 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3305, !3306, !3307}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3274, file: !3275, line: 109, baseType: !33, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3274, file: !3275, line: 110, baseType: !33, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3274, file: !3275, line: 111, baseType: !33, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3274, file: !3275, line: 112, baseType: !33, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3274, file: !3275, line: 113, baseType: !33, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3274, file: !3275, line: 114, baseType: !33, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3274, file: !3275, line: 117, baseType: !33, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3274, file: !3275, line: 118, baseType: !33, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3274, file: !3275, line: 119, baseType: !33, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3274, file: !3275, line: 120, baseType: !33, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3274, file: !3275, line: 121, baseType: !33, size: 64, offset: 640)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3274, file: !3275, line: 122, baseType: !33, size: 64, offset: 704)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3274, file: !3275, line: 123, baseType: !33, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3274, file: !3275, line: 124, baseType: !33, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3274, file: !3275, line: 125, baseType: !33, size: 64, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3274, file: !3275, line: 139, baseType: !33, size: 64, offset: 960)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3274, file: !3275, line: 142, baseType: !33, size: 64, offset: 1024)
!3294 = !DIDerivedType(tag: DW_TAG_member, scope: !3274, file: !3275, line: 144, baseType: !3295, size: 64, offset: 1088)
!3295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3274, file: !3275, line: 144, size: 64, elements: !3296)
!3296 = !{!3297, !3298, !3299}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3295, file: !3275, line: 146, baseType: !87, size: 16)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3295, file: !3275, line: 148, baseType: !611, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3295, file: !3275, line: 150, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3275, line: 59, size: 64, elements: !3301)
!3301 = !{!3302, !3303, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3300, file: !3275, line: 61, baseType: !611, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3300, file: !3275, line: 63, baseType: !611, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3300, file: !3275, line: 65, baseType: !611, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3274, file: !3275, line: 153, baseType: !33, size: 64, offset: 1152)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3274, file: !3275, line: 154, baseType: !33, size: 64, offset: 1216)
!3307 = !DIDerivedType(tag: DW_TAG_member, scope: !3274, file: !3275, line: 156, baseType: !3308, size: 64, offset: 1280)
!3308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3274, file: !3275, line: 156, size: 64, elements: !3309)
!3309 = !{!3310, !3311, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3308, file: !3275, line: 158, baseType: !87, size: 16)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3308, file: !3275, line: 160, baseType: !611, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3308, file: !3275, line: 162, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3275, line: 69, size: 64, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3313, file: !3275, line: 71, baseType: !611, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3313, file: !3275, line: 73, baseType: !611, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3313, file: !3275, line: 75, baseType: !611, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3313, file: !3275, line: 77, baseType: !611, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3313, file: !3275, line: 80, baseType: !611, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3313, file: !3275, line: 83, baseType: !611, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3313, file: !3275, line: 86, baseType: !611, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3313, file: !3275, line: 88, baseType: !611, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3313, file: !3275, line: 93, baseType: !611, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3313, file: !3275, line: 100, baseType: !611, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3250, file: !3177, line: 96, baseType: !206, size: 32, offset: 1024)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3195, file: !3177, line: 352, baseType: !3327, size: 4608, align: 512)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3177, line: 333, size: 4608, align: 512, elements: !3328)
!3328 = !{!3329, !3330, !3337}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3327, file: !3177, line: 334, baseType: !3213, size: 4096, align: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3327, file: !3177, line: 335, baseType: !3331, size: 512, offset: 4096)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3177, line: 312, size: 512, elements: !3332)
!3332 = !{!3333, !3334, !3335}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3331, file: !3177, line: 313, baseType: !611, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3331, file: !3177, line: 314, baseType: !611, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3331, file: !3177, line: 315, baseType: !3336, size: 384, offset: 128)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 384, elements: !344)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3327, file: !3177, line: 336, baseType: !3338, offset: 4608)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, elements: !806)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3195, file: !3177, line: 353, baseType: !3340, size: 32768)
!3340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32768, elements: !3341)
!3341 = !{!3342}
!3342 = !DISubrange(count: 4096)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3176, file: !3177, line: 484, baseType: !3182, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3176, file: !3177, line: 491, baseType: !3345, size: 128, offset: 256)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3177, line: 404, size: 128, elements: !3346)
!3346 = !{!3347, !3348, !3349}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3345, file: !3177, line: 424, baseType: !611, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3345, file: !3177, line: 432, baseType: !98, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3345, file: !3177, line: 440, baseType: !98, size: 32, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3176, file: !3177, line: 498, baseType: !3345, size: 128, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3176, file: !3177, line: 508, baseType: !3183, size: 33280, align: 512, offset: 512)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2121, file: !2122, line: 16, baseType: !48, size: 192, offset: 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2121, file: !2122, line: 17, baseType: !43, size: 32, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !545, file: !118, line: 1240, baseType: !14, size: 64, offset: 6912)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !545, file: !118, line: 1243, baseType: !206, size: 32, offset: 6976)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !545, file: !118, line: 1245, baseType: !314, size: 64, offset: 7040)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !545, file: !118, line: 1246, baseType: !314, size: 64, offset: 7104)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !545, file: !118, line: 1248, baseType: !207, size: 32, offset: 7168)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !545, file: !118, line: 1249, baseType: !1671, size: 64, offset: 7232)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !545, file: !118, line: 1252, baseType: !3361, size: 256, offset: 7296)
!3361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !1676)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !545, file: !118, line: 1253, baseType: !3363, size: 128, offset: 7552)
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3364, line: 21, baseType: !3365)
!3364 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3364, line: 19, size: 128, elements: !3366)
!3366 = !{!3367}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3365, file: !3364, line: 20, baseType: !3368, size: 128)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !2558)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !545, file: !118, line: 1255, baseType: !98, size: 32, offset: 7680)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !545, file: !118, line: 1261, baseType: !751, size: 256, offset: 7744)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !545, file: !118, line: 1267, baseType: !10, size: 64, offset: 8000)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !545, file: !118, line: 1269, baseType: !1692, size: 64, offset: 8064)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !545, file: !118, line: 1271, baseType: !3374, size: 448, offset: 8128)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1904, line: 63, size: 448, elements: !3375)
!3375 = !{!3376, !3381, !3382, !3383, !3384, !3385, !3386}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3374, file: !1904, line: 64, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!33, !3380, !1902}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3374, file: !1904, line: 66, baseType: !3377, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3374, file: !1904, line: 69, baseType: !525, size: 64, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3374, file: !1904, line: 70, baseType: !16, size: 32, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3374, file: !1904, line: 71, baseType: !98, size: 32, offset: 224)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3374, file: !1904, line: 74, baseType: !91, size: 128, offset: 256)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3374, file: !1904, line: 85, baseType: !3387, size: 64, offset: 384)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !545, file: !118, line: 1274, baseType: !246, size: 64, offset: 8576)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !545, file: !118, line: 1280, baseType: !246, size: 64, offset: 8640)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !545, file: !118, line: 1283, baseType: !16, size: 32, offset: 8704)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !545, file: !118, line: 1286, baseType: !1519, size: 32, offset: 8736)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !545, file: !118, line: 1289, baseType: !3393, size: 64, offset: 8768)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !416, line: 18, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !545, file: !118, line: 1290, baseType: !495, size: 64, offset: 8832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !545, file: !118, line: 1297, baseType: !198, size: 64, offset: 8896)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !545, file: !118, line: 1304, baseType: !3398, size: 64, offset: 8960)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3399, line: 49, size: 64, elements: !3400)
!3399 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3400 = !{!3401}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3398, file: !3399, line: 50, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3399, line: 41, size: 512, align: 512, elements: !3404)
!3404 = !{!3405, !3406, !3411}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3403, file: !3399, line: 43, baseType: !53, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3403, file: !3399, line: 45, baseType: !3407, size: 192, offset: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3399, line: 29, size: 192, elements: !3408)
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3407, file: !3399, line: 30, baseType: !91, size: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3407, file: !3399, line: 32, baseType: !525, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3403, file: !3399, line: 46, baseType: !525, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !545, file: !118, line: 1305, baseType: !3398, size: 64, offset: 9024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !545, file: !118, line: 1306, baseType: !355, size: 128, align: 64, offset: 9088)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !545, file: !118, line: 1307, baseType: !415, size: 256, offset: 9216)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !545, file: !118, line: 1309, baseType: !751, size: 256, offset: 9472)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !545, file: !118, line: 1314, baseType: !16, size: 32, offset: 9728)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !545, file: !118, line: 1317, baseType: !53, size: 32, align: 512, offset: 10240)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !545, file: !118, line: 1318, baseType: !91, size: 128, offset: 10304)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !545, file: !118, line: 1320, baseType: !53, size: 32, offset: 10432)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !545, file: !118, line: 1321, baseType: !91, size: 128, offset: 10496)
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "idmap", arg: 1, scope: !538, file: !3, line: 35, type: !541)
!3423 = !DILocalVariable(name: "sb", arg: 2, scope: !538, file: !3, line: 36, type: !543)
!3424 = !DILocation(line: 35, column: 46, scope: !538)
!3425 = !DILocation(line: 36, column: 34, scope: !538)
!3426 = !DILocation(line: 38, column: 9, scope: !538)
!3427 = !DILocation(line: 38, column: 16, scope: !538)
!3428 = !DILocation(line: 38, column: 25, scope: !538)
!3429 = !DILocation(line: 38, column: 29, scope: !538)
!3430 = !DILocation(line: 38, column: 22, scope: !538)
!3431 = !DILocation(line: 38, column: 2, scope: !538)
!3432 = distinct !DISubprogram(name: "make_vfsuid", scope: !3, file: !3, line: 96, type: !3433, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!709, !657, !198, !231}
!3435 = !{!3436, !3437, !3438, !3439, !3440}
!3436 = !DILocalVariable(name: "idmap", arg: 1, scope: !3432, file: !3, line: 96, type: !657)
!3437 = !DILocalVariable(name: "fs_userns", arg: 2, scope: !3432, file: !3, line: 97, type: !198)
!3438 = !DILocalVariable(name: "kuid", arg: 3, scope: !3432, file: !3, line: 98, type: !231)
!3439 = !DILocalVariable(name: "uid", scope: !3432, file: !3, line: 100, type: !170)
!3440 = !DILocalVariable(name: "mnt_userns", scope: !3432, file: !3, line: 101, type: !198)
!3441 = !DILocation(line: 96, column: 40, scope: !3432)
!3442 = !DILocation(line: 97, column: 31, scope: !3432)
!3443 = !DILocation(line: 98, column: 15, scope: !3432)
!3444 = !DILocation(line: 100, column: 2, scope: !3432)
!3445 = !DILocation(line: 100, column: 8, scope: !3432)
!3446 = !DILocation(line: 101, column: 2, scope: !3432)
!3447 = !DILocation(line: 101, column: 25, scope: !3432)
!3448 = !DILocation(line: 101, column: 38, scope: !3432)
!3449 = !DILocation(line: 101, column: 45, scope: !3432)
!3450 = !DILocation(line: 103, column: 19, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 103, column: 6)
!3452 = !DILocation(line: 103, column: 31, scope: !3451)
!3453 = !DILocation(line: 103, column: 6, scope: !3451)
!3454 = !DILocation(line: 103, column: 6, scope: !3432)
!3455 = !DILocation(line: 104, column: 10, scope: !3451)
!3456 = !DILocation(line: 104, column: 3, scope: !3451)
!3457 = !DILocation(line: 105, column: 24, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 105, column: 6)
!3459 = !DILocation(line: 105, column: 6, scope: !3458)
!3460 = !DILocation(line: 105, column: 6, scope: !3432)
!3461 = !DILocation(line: 106, column: 9, scope: !3458)
!3462 = !DILocation(line: 106, column: 7, scope: !3458)
!3463 = !DILocation(line: 106, column: 3, scope: !3458)
!3464 = !DILocation(line: 108, column: 19, scope: !3458)
!3465 = !DILocation(line: 108, column: 9, scope: !3458)
!3466 = !DILocation(line: 108, column: 7, scope: !3458)
!3467 = !DILocation(line: 109, column: 6, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 109, column: 6)
!3469 = !DILocation(line: 109, column: 10, scope: !3468)
!3470 = !DILocation(line: 109, column: 6, scope: !3432)
!3471 = !DILocation(line: 110, column: 10, scope: !3468)
!3472 = !DILocation(line: 110, column: 3, scope: !3468)
!3473 = !DILocation(line: 111, column: 9, scope: !3432)
!3474 = !DILocation(line: 111, column: 2, scope: !3432)
!3475 = !DILocation(line: 112, column: 1, scope: !3432)
!3476 = distinct !DISubprogram(name: "no_idmapping", scope: !3, file: !3, line: 69, type: !3477, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3481)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!266, !3479, !3479}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!3481 = !{!3482, !3483}
!3482 = !DILocalVariable(name: "mnt_userns", arg: 1, scope: !3476, file: !3, line: 69, type: !3479)
!3483 = !DILocalVariable(name: "fs_userns", arg: 2, scope: !3476, file: !3, line: 70, type: !3479)
!3484 = !DILocation(line: 69, column: 62, scope: !3476)
!3485 = !DILocation(line: 70, column: 34, scope: !3476)
!3486 = !DILocation(line: 72, column: 27, scope: !3476)
!3487 = !DILocation(line: 72, column: 9, scope: !3476)
!3488 = !DILocation(line: 72, column: 39, scope: !3476)
!3489 = !DILocation(line: 72, column: 42, scope: !3476)
!3490 = !DILocation(line: 72, column: 56, scope: !3476)
!3491 = !DILocation(line: 72, column: 53, scope: !3476)
!3492 = !DILocation(line: 72, column: 2, scope: !3476)
!3493 = distinct !DISubprogram(name: "__kuid_val", scope: !232, file: !232, line: 34, type: !3494, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!170, !231}
!3496 = !{!3497}
!3497 = !DILocalVariable(name: "uid", arg: 1, scope: !3493, file: !232, line: 34, type: !231)
!3498 = !DILocation(line: 34, column: 39, scope: !3493)
!3499 = !DILocation(line: 36, column: 13, scope: !3493)
!3500 = !DILocation(line: 36, column: 2, scope: !3493)
!3501 = distinct !DISubprogram(name: "initial_idmapping", scope: !3, file: !3, line: 50, type: !3502, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!266, !3479}
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "ns", arg: 1, scope: !3501, file: !3, line: 50, type: !3479)
!3506 = !DILocation(line: 50, column: 67, scope: !3501)
!3507 = !DILocation(line: 52, column: 9, scope: !3501)
!3508 = !DILocation(line: 52, column: 12, scope: !3501)
!3509 = !DILocation(line: 52, column: 2, scope: !3501)
!3510 = distinct !DISubprogram(name: "from_kuid", scope: !232, file: !232, line: 153, type: !3511, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!170, !198, !231}
!3513 = !{!3514, !3515}
!3514 = !DILocalVariable(name: "to", arg: 1, scope: !3510, file: !232, line: 153, type: !198)
!3515 = !DILocalVariable(name: "kuid", arg: 2, scope: !3510, file: !232, line: 153, type: !231)
!3516 = !DILocation(line: 153, column: 54, scope: !3510)
!3517 = !DILocation(line: 153, column: 65, scope: !3510)
!3518 = !DILocation(line: 155, column: 9, scope: !3510)
!3519 = !DILocation(line: 155, column: 2, scope: !3510)
!3520 = distinct !DISubprogram(name: "make_kuid", scope: !232, file: !232, line: 143, type: !3521, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3523)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!231, !198, !170}
!3523 = !{!3524, !3525}
!3524 = !DILocalVariable(name: "from", arg: 1, scope: !3520, file: !232, line: 143, type: !198)
!3525 = !DILocalVariable(name: "uid", arg: 2, scope: !3520, file: !232, line: 143, type: !170)
!3526 = !DILocation(line: 143, column: 55, scope: !3520)
!3527 = !DILocation(line: 143, column: 67, scope: !3520)
!3528 = !DILocation(line: 145, column: 9, scope: !3520)
!3529 = !DILocation(line: 145, column: 2, scope: !3520)
!3530 = distinct !DISubprogram(name: "make_vfsgid", scope: !3, file: !3, line: 135, type: !3531, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!719, !657, !198, !237}
!3533 = !{!3534, !3535, !3536, !3537, !3538}
!3534 = !DILocalVariable(name: "idmap", arg: 1, scope: !3530, file: !3, line: 135, type: !657)
!3535 = !DILocalVariable(name: "fs_userns", arg: 2, scope: !3530, file: !3, line: 136, type: !198)
!3536 = !DILocalVariable(name: "kgid", arg: 3, scope: !3530, file: !3, line: 136, type: !237)
!3537 = !DILocalVariable(name: "gid", scope: !3530, file: !3, line: 138, type: !172)
!3538 = !DILocalVariable(name: "mnt_userns", scope: !3530, file: !3, line: 139, type: !198)
!3539 = !DILocation(line: 135, column: 40, scope: !3530)
!3540 = !DILocation(line: 136, column: 31, scope: !3530)
!3541 = !DILocation(line: 136, column: 49, scope: !3530)
!3542 = !DILocation(line: 138, column: 2, scope: !3530)
!3543 = !DILocation(line: 138, column: 8, scope: !3530)
!3544 = !DILocation(line: 139, column: 2, scope: !3530)
!3545 = !DILocation(line: 139, column: 25, scope: !3530)
!3546 = !DILocation(line: 139, column: 38, scope: !3530)
!3547 = !DILocation(line: 139, column: 45, scope: !3530)
!3548 = !DILocation(line: 141, column: 19, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 141, column: 6)
!3550 = !DILocation(line: 141, column: 31, scope: !3549)
!3551 = !DILocation(line: 141, column: 6, scope: !3549)
!3552 = !DILocation(line: 141, column: 6, scope: !3530)
!3553 = !DILocation(line: 142, column: 10, scope: !3549)
!3554 = !DILocation(line: 142, column: 3, scope: !3549)
!3555 = !DILocation(line: 143, column: 24, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 143, column: 6)
!3557 = !DILocation(line: 143, column: 6, scope: !3556)
!3558 = !DILocation(line: 143, column: 6, scope: !3530)
!3559 = !DILocation(line: 144, column: 9, scope: !3556)
!3560 = !DILocation(line: 144, column: 7, scope: !3556)
!3561 = !DILocation(line: 144, column: 3, scope: !3556)
!3562 = !DILocation(line: 146, column: 19, scope: !3556)
!3563 = !DILocation(line: 146, column: 9, scope: !3556)
!3564 = !DILocation(line: 146, column: 7, scope: !3556)
!3565 = !DILocation(line: 147, column: 6, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 147, column: 6)
!3567 = !DILocation(line: 147, column: 10, scope: !3566)
!3568 = !DILocation(line: 147, column: 6, scope: !3530)
!3569 = !DILocation(line: 148, column: 10, scope: !3566)
!3570 = !DILocation(line: 148, column: 3, scope: !3566)
!3571 = !DILocation(line: 149, column: 9, scope: !3530)
!3572 = !DILocation(line: 149, column: 2, scope: !3530)
!3573 = !DILocation(line: 150, column: 1, scope: !3530)
!3574 = distinct !DISubprogram(name: "__kgid_val", scope: !232, file: !232, line: 39, type: !3575, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!172, !237}
!3577 = !{!3578}
!3578 = !DILocalVariable(name: "gid", arg: 1, scope: !3574, file: !232, line: 39, type: !237)
!3579 = !DILocation(line: 39, column: 39, scope: !3574)
!3580 = !DILocation(line: 41, column: 13, scope: !3574)
!3581 = !DILocation(line: 41, column: 2, scope: !3574)
!3582 = distinct !DISubprogram(name: "from_kgid", scope: !232, file: !232, line: 158, type: !3583, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!172, !198, !237}
!3585 = !{!3586, !3587}
!3586 = !DILocalVariable(name: "to", arg: 1, scope: !3582, file: !232, line: 158, type: !198)
!3587 = !DILocalVariable(name: "kgid", arg: 2, scope: !3582, file: !232, line: 158, type: !237)
!3588 = !DILocation(line: 158, column: 54, scope: !3582)
!3589 = !DILocation(line: 158, column: 65, scope: !3582)
!3590 = !DILocation(line: 160, column: 9, scope: !3582)
!3591 = !DILocation(line: 160, column: 2, scope: !3582)
!3592 = distinct !DISubprogram(name: "make_kgid", scope: !232, file: !232, line: 148, type: !3593, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!237, !198, !172}
!3595 = !{!3596, !3597}
!3596 = !DILocalVariable(name: "from", arg: 1, scope: !3592, file: !232, line: 148, type: !198)
!3597 = !DILocalVariable(name: "gid", arg: 2, scope: !3592, file: !232, line: 148, type: !172)
!3598 = !DILocation(line: 148, column: 55, scope: !3592)
!3599 = !DILocation(line: 148, column: 67, scope: !3592)
!3600 = !DILocation(line: 150, column: 9, scope: !3592)
!3601 = !DILocation(line: 150, column: 2, scope: !3592)
!3602 = distinct !DISubprogram(name: "from_vfsuid", scope: !3, file: !3, line: 164, type: !3603, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!231, !657, !198, !709}
!3605 = !{!3606, !3607, !3608, !3609, !3610}
!3606 = !DILocalVariable(name: "idmap", arg: 1, scope: !3602, file: !3, line: 164, type: !657)
!3607 = !DILocalVariable(name: "fs_userns", arg: 2, scope: !3602, file: !3, line: 165, type: !198)
!3608 = !DILocalVariable(name: "vfsuid", arg: 3, scope: !3602, file: !3, line: 165, type: !709)
!3609 = !DILocalVariable(name: "uid", scope: !3602, file: !3, line: 167, type: !170)
!3610 = !DILocalVariable(name: "mnt_userns", scope: !3602, file: !3, line: 168, type: !198)
!3611 = !DILocation(line: 164, column: 38, scope: !3602)
!3612 = !DILocation(line: 165, column: 29, scope: !3602)
!3613 = !DILocation(line: 165, column: 49, scope: !3602)
!3614 = !DILocation(line: 167, column: 2, scope: !3602)
!3615 = !DILocation(line: 167, column: 8, scope: !3602)
!3616 = !DILocation(line: 168, column: 2, scope: !3602)
!3617 = !DILocation(line: 168, column: 25, scope: !3602)
!3618 = !DILocation(line: 168, column: 38, scope: !3602)
!3619 = !DILocation(line: 168, column: 45, scope: !3602)
!3620 = !DILocation(line: 170, column: 19, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 170, column: 6)
!3622 = !DILocation(line: 170, column: 31, scope: !3621)
!3623 = !DILocation(line: 170, column: 6, scope: !3621)
!3624 = !DILocation(line: 170, column: 6, scope: !3602)
!3625 = !DILocation(line: 171, column: 10, scope: !3621)
!3626 = !DILocation(line: 171, column: 3, scope: !3621)
!3627 = !DILocation(line: 172, column: 18, scope: !3602)
!3628 = !DILocation(line: 172, column: 30, scope: !3602)
!3629 = !DILocation(line: 172, column: 8, scope: !3602)
!3630 = !DILocation(line: 172, column: 6, scope: !3602)
!3631 = !DILocation(line: 173, column: 6, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 173, column: 6)
!3633 = !DILocation(line: 173, column: 10, scope: !3632)
!3634 = !DILocation(line: 173, column: 6, scope: !3602)
!3635 = !DILocation(line: 174, column: 10, scope: !3632)
!3636 = !DILocation(line: 174, column: 3, scope: !3632)
!3637 = !DILocation(line: 175, column: 24, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 175, column: 6)
!3639 = !DILocation(line: 175, column: 6, scope: !3638)
!3640 = !DILocation(line: 175, column: 6, scope: !3602)
!3641 = !DILocation(line: 176, column: 10, scope: !3638)
!3642 = !DILocation(line: 176, column: 3, scope: !3638)
!3643 = !DILocation(line: 177, column: 19, scope: !3602)
!3644 = !DILocation(line: 177, column: 30, scope: !3602)
!3645 = !DILocation(line: 177, column: 9, scope: !3602)
!3646 = !DILocation(line: 177, column: 2, scope: !3602)
!3647 = !DILocation(line: 178, column: 1, scope: !3602)
!3648 = distinct !DISubprogram(name: "__vfsuid_val", scope: !710, file: !710, line: 28, type: !3649, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3651)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!170, !709}
!3651 = !{!3652}
!3652 = !DILocalVariable(name: "uid", arg: 1, scope: !3648, file: !710, line: 28, type: !709)
!3653 = !DILocation(line: 28, column: 43, scope: !3648)
!3654 = !DILocation(line: 30, column: 13, scope: !3648)
!3655 = !DILocation(line: 30, column: 2, scope: !3648)
!3656 = distinct !DISubprogram(name: "from_vfsgid", scope: !3, file: !3, line: 192, type: !3657, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!237, !657, !198, !719}
!3659 = !{!3660, !3661, !3662, !3663, !3664}
!3660 = !DILocalVariable(name: "idmap", arg: 1, scope: !3656, file: !3, line: 192, type: !657)
!3661 = !DILocalVariable(name: "fs_userns", arg: 2, scope: !3656, file: !3, line: 193, type: !198)
!3662 = !DILocalVariable(name: "vfsgid", arg: 3, scope: !3656, file: !3, line: 193, type: !719)
!3663 = !DILocalVariable(name: "gid", scope: !3656, file: !3, line: 195, type: !172)
!3664 = !DILocalVariable(name: "mnt_userns", scope: !3656, file: !3, line: 196, type: !198)
!3665 = !DILocation(line: 192, column: 38, scope: !3656)
!3666 = !DILocation(line: 193, column: 29, scope: !3656)
!3667 = !DILocation(line: 193, column: 49, scope: !3656)
!3668 = !DILocation(line: 195, column: 2, scope: !3656)
!3669 = !DILocation(line: 195, column: 8, scope: !3656)
!3670 = !DILocation(line: 196, column: 2, scope: !3656)
!3671 = !DILocation(line: 196, column: 25, scope: !3656)
!3672 = !DILocation(line: 196, column: 38, scope: !3656)
!3673 = !DILocation(line: 196, column: 45, scope: !3656)
!3674 = !DILocation(line: 198, column: 19, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 198, column: 6)
!3676 = !DILocation(line: 198, column: 31, scope: !3675)
!3677 = !DILocation(line: 198, column: 6, scope: !3675)
!3678 = !DILocation(line: 198, column: 6, scope: !3656)
!3679 = !DILocation(line: 199, column: 10, scope: !3675)
!3680 = !DILocation(line: 199, column: 3, scope: !3675)
!3681 = !DILocation(line: 200, column: 18, scope: !3656)
!3682 = !DILocation(line: 200, column: 30, scope: !3656)
!3683 = !DILocation(line: 200, column: 8, scope: !3656)
!3684 = !DILocation(line: 200, column: 6, scope: !3656)
!3685 = !DILocation(line: 201, column: 6, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 201, column: 6)
!3687 = !DILocation(line: 201, column: 10, scope: !3686)
!3688 = !DILocation(line: 201, column: 6, scope: !3656)
!3689 = !DILocation(line: 202, column: 10, scope: !3686)
!3690 = !DILocation(line: 202, column: 3, scope: !3686)
!3691 = !DILocation(line: 203, column: 24, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 203, column: 6)
!3693 = !DILocation(line: 203, column: 6, scope: !3692)
!3694 = !DILocation(line: 203, column: 6, scope: !3656)
!3695 = !DILocation(line: 204, column: 10, scope: !3692)
!3696 = !DILocation(line: 204, column: 3, scope: !3692)
!3697 = !DILocation(line: 205, column: 19, scope: !3656)
!3698 = !DILocation(line: 205, column: 30, scope: !3656)
!3699 = !DILocation(line: 205, column: 9, scope: !3656)
!3700 = !DILocation(line: 205, column: 2, scope: !3656)
!3701 = !DILocation(line: 206, column: 1, scope: !3656)
!3702 = distinct !DISubprogram(name: "__vfsgid_val", scope: !710, file: !710, line: 33, type: !3703, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!172, !719}
!3705 = !{!3706}
!3706 = !DILocalVariable(name: "gid", arg: 1, scope: !3702, file: !710, line: 33, type: !719)
!3707 = !DILocation(line: 33, column: 43, scope: !3702)
!3708 = !DILocation(line: 35, column: 13, scope: !3702)
!3709 = !DILocation(line: 35, column: 2, scope: !3702)
!3710 = distinct !DISubprogram(name: "vfsgid_in_group_p", scope: !3, file: !3, line: 219, type: !3711, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!16, !719}
!3713 = !{!3714}
!3714 = !DILocalVariable(name: "vfsgid", arg: 1, scope: !3710, file: !3, line: 219, type: !719)
!3715 = !DILocation(line: 219, column: 32, scope: !3710)
!3716 = !DILocation(line: 221, column: 20, scope: !3710)
!3717 = !DILocation(line: 221, column: 9, scope: !3710)
!3718 = !DILocation(line: 221, column: 2, scope: !3710)
!3719 = !DISubprogram(name: "in_group_p", scope: !816, file: !816, line: 60, type: !3720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!16, !237}
!3722 = distinct !DISubprogram(name: "alloc_mnt_idmap", scope: !3, file: !3, line: 231, type: !3723, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!657, !198}
!3725 = !{!3726, !3727}
!3726 = !DILocalVariable(name: "mnt_userns", arg: 1, scope: !3722, file: !3, line: 231, type: !198)
!3727 = !DILocalVariable(name: "idmap", scope: !3722, file: !3, line: 233, type: !657)
!3728 = !DILocation(line: 231, column: 58, scope: !3722)
!3729 = !DILocation(line: 233, column: 2, scope: !3722)
!3730 = !DILocation(line: 233, column: 20, scope: !3722)
!3731 = !DILocation(line: 235, column: 10, scope: !3722)
!3732 = !DILocation(line: 235, column: 8, scope: !3722)
!3733 = !DILocation(line: 236, column: 7, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3722, file: !3, line: 236, column: 6)
!3735 = !DILocation(line: 236, column: 6, scope: !3722)
!3736 = !DILocation(line: 237, column: 10, scope: !3734)
!3737 = !DILocation(line: 237, column: 3, scope: !3734)
!3738 = !DILocation(line: 239, column: 29, scope: !3722)
!3739 = !DILocation(line: 239, column: 17, scope: !3722)
!3740 = !DILocation(line: 239, column: 2, scope: !3722)
!3741 = !DILocation(line: 239, column: 9, scope: !3722)
!3742 = !DILocation(line: 239, column: 15, scope: !3722)
!3743 = !DILocation(line: 240, column: 16, scope: !3722)
!3744 = !DILocation(line: 240, column: 23, scope: !3722)
!3745 = !DILocation(line: 240, column: 2, scope: !3722)
!3746 = !DILocation(line: 241, column: 9, scope: !3722)
!3747 = !DILocation(line: 241, column: 2, scope: !3722)
!3748 = !DILocation(line: 242, column: 1, scope: !3722)
!3749 = distinct !DISubprogram(name: "kzalloc", scope: !152, file: !152, line: 719, type: !3750, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!14, !29, !174}
!3752 = !{!3753, !3754}
!3753 = !DILocalVariable(name: "size", arg: 1, scope: !3749, file: !152, line: 719, type: !29)
!3754 = !DILocalVariable(name: "flags", arg: 2, scope: !3749, file: !152, line: 719, type: !174)
!3755 = !DILocation(line: 719, column: 52, scope: !3749)
!3756 = !DILocation(line: 719, column: 64, scope: !3749)
!3757 = !DILocation(line: 721, column: 17, scope: !3749)
!3758 = !DILocation(line: 721, column: 23, scope: !3749)
!3759 = !DILocation(line: 721, column: 29, scope: !3749)
!3760 = !DILocation(line: 721, column: 9, scope: !3749)
!3761 = !DILocation(line: 721, column: 2, scope: !3749)
!3762 = distinct !DISubprogram(name: "ERR_PTR", scope: !3763, file: !3763, line: 39, type: !3764, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3766)
!3763 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!14, !525}
!3766 = !{!3767}
!3767 = !DILocalVariable(name: "error", arg: 1, scope: !3762, file: !3763, line: 39, type: !525)
!3768 = !DILocation(line: 39, column: 48, scope: !3762)
!3769 = !DILocation(line: 41, column: 18, scope: !3762)
!3770 = !DILocation(line: 41, column: 9, scope: !3762)
!3771 = !DILocation(line: 41, column: 2, scope: !3762)
!3772 = distinct !DISubprogram(name: "get_user_ns", scope: !200, file: !200, line: 185, type: !3773, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!198, !198}
!3775 = !{!3776}
!3776 = !DILocalVariable(name: "ns", arg: 1, scope: !3772, file: !200, line: 185, type: !198)
!3777 = !DILocation(line: 185, column: 73, scope: !3772)
!3778 = !DILocation(line: 187, column: 2, scope: !3772)
!3779 = distinct !DISubprogram(name: "refcount_set", scope: !162, file: !162, line: 134, type: !3780, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3783)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{null, !3782, !16}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!3783 = !{!3784, !3785}
!3784 = !DILocalVariable(name: "r", arg: 1, scope: !3779, file: !162, line: 134, type: !3782)
!3785 = !DILocalVariable(name: "n", arg: 2, scope: !3779, file: !162, line: 134, type: !16)
!3786 = !DILocation(line: 134, column: 45, scope: !3779)
!3787 = !DILocation(line: 134, column: 52, scope: !3779)
!3788 = !DILocation(line: 136, column: 14, scope: !3779)
!3789 = !DILocation(line: 136, column: 17, scope: !3779)
!3790 = !DILocation(line: 136, column: 23, scope: !3779)
!3791 = !DILocation(line: 136, column: 2, scope: !3779)
!3792 = !DILocation(line: 137, column: 1, scope: !3779)
!3793 = distinct !DISubprogram(name: "mnt_idmap_get", scope: !3, file: !3, line: 252, type: !3794, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!657, !657}
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "idmap", arg: 1, scope: !3793, file: !3, line: 252, type: !657)
!3798 = !DILocation(line: 252, column: 51, scope: !3793)
!3799 = !DILocation(line: 254, column: 6, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 254, column: 6)
!3801 = !DILocation(line: 254, column: 12, scope: !3800)
!3802 = !DILocation(line: 254, column: 6, scope: !3793)
!3803 = !DILocation(line: 255, column: 17, scope: !3800)
!3804 = !DILocation(line: 255, column: 24, scope: !3800)
!3805 = !DILocation(line: 255, column: 3, scope: !3800)
!3806 = !DILocation(line: 257, column: 9, scope: !3793)
!3807 = !DILocation(line: 257, column: 2, scope: !3793)
!3808 = distinct !DISubprogram(name: "refcount_inc", scope: !162, file: !162, line: 265, type: !3809, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3782}
!3811 = !{!3812}
!3812 = !DILocalVariable(name: "r", arg: 1, scope: !3808, file: !162, line: 265, type: !3782)
!3813 = !DILocation(line: 265, column: 45, scope: !3808)
!3814 = !DILocation(line: 267, column: 17, scope: !3808)
!3815 = !DILocation(line: 267, column: 2, scope: !3808)
!3816 = !DILocation(line: 268, column: 1, scope: !3808)
!3817 = distinct !DISubprogram(name: "mnt_idmap_put", scope: !3, file: !3, line: 267, type: !3818, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !657}
!3820 = !{!3821}
!3821 = !DILocalVariable(name: "idmap", arg: 1, scope: !3817, file: !3, line: 267, type: !657)
!3822 = !DILocation(line: 267, column: 38, scope: !3817)
!3823 = !DILocation(line: 269, column: 6, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 269, column: 6)
!3825 = !DILocation(line: 269, column: 12, scope: !3824)
!3826 = !DILocation(line: 269, column: 30, scope: !3824)
!3827 = !DILocation(line: 269, column: 56, scope: !3824)
!3828 = !DILocation(line: 269, column: 63, scope: !3824)
!3829 = !DILocation(line: 269, column: 33, scope: !3824)
!3830 = !DILocation(line: 269, column: 6, scope: !3817)
!3831 = !DILocation(line: 270, column: 15, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 269, column: 71)
!3833 = !DILocation(line: 270, column: 22, scope: !3832)
!3834 = !DILocation(line: 270, column: 3, scope: !3832)
!3835 = !DILocation(line: 271, column: 9, scope: !3832)
!3836 = !DILocation(line: 271, column: 3, scope: !3832)
!3837 = !DILocation(line: 272, column: 2, scope: !3832)
!3838 = !DILocation(line: 273, column: 1, scope: !3817)
!3839 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !162, file: !162, line: 331, type: !3840, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!266, !3782}
!3842 = !{!3843}
!3843 = !DILocalVariable(name: "r", arg: 1, scope: !3839, file: !162, line: 331, type: !3782)
!3844 = !DILocation(line: 331, column: 67, scope: !3839)
!3845 = !DILocation(line: 333, column: 33, scope: !3839)
!3846 = !DILocation(line: 333, column: 9, scope: !3839)
!3847 = !DILocation(line: 333, column: 2, scope: !3839)
!3848 = distinct !DISubprogram(name: "put_user_ns", scope: !200, file: !200, line: 203, type: !3849, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !198}
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "ns", arg: 1, scope: !3848, file: !200, line: 203, type: !198)
!3853 = !DILocation(line: 203, column: 55, scope: !3848)
!3854 = !DILocation(line: 205, column: 1, scope: !3848)
!3855 = !DISubprogram(name: "kfree", scope: !152, file: !152, line: 227, type: !3856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3860 = distinct !DISubprogram(name: "kmalloc", scope: !152, file: !152, line: 591, type: !3750, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3861)
!3861 = !{!3862, !3863, !3864}
!3862 = !DILocalVariable(name: "size", arg: 1, scope: !3860, file: !152, line: 591, type: !29)
!3863 = !DILocalVariable(name: "flags", arg: 2, scope: !3860, file: !152, line: 591, type: !174)
!3864 = !DILocalVariable(name: "index", scope: !3865, file: !152, line: 594, type: !98)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !152, line: 593, column: 42)
!3866 = distinct !DILexicalBlock(scope: !3860, file: !152, line: 593, column: 6)
!3867 = !DILocation(line: 591, column: 61, scope: !3860)
!3868 = !DILocation(line: 591, column: 73, scope: !3860)
!3869 = !DILocation(line: 593, column: 27, scope: !3866)
!3870 = !DILocation(line: 593, column: 6, scope: !3866)
!3871 = !DILocation(line: 593, column: 33, scope: !3866)
!3872 = !DILocation(line: 593, column: 36, scope: !3866)
!3873 = !DILocation(line: 593, column: 6, scope: !3860)
!3874 = !DILocation(line: 594, column: 3, scope: !3865)
!3875 = !DILocation(line: 594, column: 16, scope: !3865)
!3876 = !DILocation(line: 596, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3865, file: !152, line: 596, column: 7)
!3878 = !DILocation(line: 596, column: 12, scope: !3877)
!3879 = !DILocation(line: 596, column: 7, scope: !3865)
!3880 = !DILocation(line: 597, column: 25, scope: !3877)
!3881 = !DILocation(line: 597, column: 31, scope: !3877)
!3882 = !DILocation(line: 597, column: 11, scope: !3877)
!3883 = !DILocation(line: 597, column: 4, scope: !3877)
!3884 = !DILocation(line: 599, column: 11, scope: !3865)
!3885 = !DILocation(line: 599, column: 9, scope: !3865)
!3886 = !DILocation(line: 601, column: 33, scope: !3865)
!3887 = !DILocation(line: 601, column: 40, scope: !3865)
!3888 = !DILocation(line: 601, column: 20, scope: !3865)
!3889 = !DILocation(line: 601, column: 5, scope: !3865)
!3890 = !DILocation(line: 601, column: 51, scope: !3865)
!3891 = !DILocation(line: 602, column: 5, scope: !3865)
!3892 = !DILocation(line: 602, column: 12, scope: !3865)
!3893 = !DILocation(line: 600, column: 10, scope: !3865)
!3894 = !DILocation(line: 600, column: 3, scope: !3865)
!3895 = !DILocation(line: 603, column: 2, scope: !3866)
!3896 = !DILocation(line: 604, column: 19, scope: !3860)
!3897 = !DILocation(line: 604, column: 25, scope: !3860)
!3898 = !DILocation(line: 604, column: 9, scope: !3860)
!3899 = !DILocation(line: 604, column: 2, scope: !3860)
!3900 = !DILocation(line: 605, column: 1, scope: !3860)
!3901 = !DISubprogram(name: "kmalloc_large", scope: !152, file: !152, line: 531, type: !3750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3902 = distinct !DISubprogram(name: "__kmalloc_index", scope: !152, file: !152, line: 444, type: !3903, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!98, !29, !266}
!3905 = !{!3906, !3907}
!3906 = !DILocalVariable(name: "size", arg: 1, scope: !3902, file: !152, line: 444, type: !29)
!3907 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3902, file: !152, line: 445, type: !266)
!3908 = !DILocation(line: 444, column: 60, scope: !3902)
!3909 = !DILocation(line: 445, column: 16, scope: !3902)
!3910 = !DILocation(line: 447, column: 7, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 447, column: 6)
!3912 = !DILocation(line: 447, column: 6, scope: !3902)
!3913 = !DILocation(line: 448, column: 3, scope: !3911)
!3914 = !DILocation(line: 450, column: 6, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 450, column: 6)
!3916 = !DILocation(line: 450, column: 11, scope: !3915)
!3917 = !DILocation(line: 450, column: 6, scope: !3902)
!3918 = !DILocation(line: 451, column: 3, scope: !3915)
!3919 = !DILocation(line: 453, column: 32, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 453, column: 6)
!3921 = !DILocation(line: 453, column: 37, scope: !3920)
!3922 = !DILocation(line: 453, column: 42, scope: !3920)
!3923 = !DILocation(line: 453, column: 45, scope: !3920)
!3924 = !DILocation(line: 453, column: 50, scope: !3920)
!3925 = !DILocation(line: 453, column: 6, scope: !3902)
!3926 = !DILocation(line: 454, column: 3, scope: !3920)
!3927 = !DILocation(line: 455, column: 32, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 455, column: 6)
!3929 = !DILocation(line: 455, column: 37, scope: !3928)
!3930 = !DILocation(line: 455, column: 43, scope: !3928)
!3931 = !DILocation(line: 455, column: 46, scope: !3928)
!3932 = !DILocation(line: 455, column: 51, scope: !3928)
!3933 = !DILocation(line: 455, column: 6, scope: !3902)
!3934 = !DILocation(line: 456, column: 3, scope: !3928)
!3935 = !DILocation(line: 457, column: 6, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 457, column: 6)
!3937 = !DILocation(line: 457, column: 11, scope: !3936)
!3938 = !DILocation(line: 457, column: 6, scope: !3902)
!3939 = !DILocation(line: 457, column: 26, scope: !3936)
!3940 = !DILocation(line: 458, column: 6, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 458, column: 6)
!3942 = !DILocation(line: 458, column: 11, scope: !3941)
!3943 = !DILocation(line: 458, column: 6, scope: !3902)
!3944 = !DILocation(line: 458, column: 26, scope: !3941)
!3945 = !DILocation(line: 459, column: 6, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 459, column: 6)
!3947 = !DILocation(line: 459, column: 11, scope: !3946)
!3948 = !DILocation(line: 459, column: 6, scope: !3902)
!3949 = !DILocation(line: 459, column: 26, scope: !3946)
!3950 = !DILocation(line: 460, column: 6, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 460, column: 6)
!3952 = !DILocation(line: 460, column: 11, scope: !3951)
!3953 = !DILocation(line: 460, column: 6, scope: !3902)
!3954 = !DILocation(line: 460, column: 26, scope: !3951)
!3955 = !DILocation(line: 461, column: 6, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 461, column: 6)
!3957 = !DILocation(line: 461, column: 11, scope: !3956)
!3958 = !DILocation(line: 461, column: 6, scope: !3902)
!3959 = !DILocation(line: 461, column: 26, scope: !3956)
!3960 = !DILocation(line: 462, column: 6, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 462, column: 6)
!3962 = !DILocation(line: 462, column: 11, scope: !3961)
!3963 = !DILocation(line: 462, column: 6, scope: !3902)
!3964 = !DILocation(line: 462, column: 26, scope: !3961)
!3965 = !DILocation(line: 463, column: 6, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 463, column: 6)
!3967 = !DILocation(line: 463, column: 11, scope: !3966)
!3968 = !DILocation(line: 463, column: 6, scope: !3902)
!3969 = !DILocation(line: 463, column: 26, scope: !3966)
!3970 = !DILocation(line: 464, column: 6, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 464, column: 6)
!3972 = !DILocation(line: 464, column: 11, scope: !3971)
!3973 = !DILocation(line: 464, column: 6, scope: !3902)
!3974 = !DILocation(line: 464, column: 26, scope: !3971)
!3975 = !DILocation(line: 465, column: 6, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 465, column: 6)
!3977 = !DILocation(line: 465, column: 11, scope: !3976)
!3978 = !DILocation(line: 465, column: 6, scope: !3902)
!3979 = !DILocation(line: 465, column: 26, scope: !3976)
!3980 = !DILocation(line: 466, column: 6, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 466, column: 6)
!3982 = !DILocation(line: 466, column: 11, scope: !3981)
!3983 = !DILocation(line: 466, column: 6, scope: !3902)
!3984 = !DILocation(line: 466, column: 26, scope: !3981)
!3985 = !DILocation(line: 467, column: 6, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 467, column: 6)
!3987 = !DILocation(line: 467, column: 11, scope: !3986)
!3988 = !DILocation(line: 467, column: 6, scope: !3902)
!3989 = !DILocation(line: 467, column: 26, scope: !3986)
!3990 = !DILocation(line: 468, column: 6, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 468, column: 6)
!3992 = !DILocation(line: 468, column: 11, scope: !3991)
!3993 = !DILocation(line: 468, column: 6, scope: !3902)
!3994 = !DILocation(line: 468, column: 26, scope: !3991)
!3995 = !DILocation(line: 469, column: 6, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 469, column: 6)
!3997 = !DILocation(line: 469, column: 11, scope: !3996)
!3998 = !DILocation(line: 469, column: 6, scope: !3902)
!3999 = !DILocation(line: 469, column: 26, scope: !3996)
!4000 = !DILocation(line: 470, column: 6, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 470, column: 6)
!4002 = !DILocation(line: 470, column: 11, scope: !4001)
!4003 = !DILocation(line: 470, column: 6, scope: !3902)
!4004 = !DILocation(line: 470, column: 26, scope: !4001)
!4005 = !DILocation(line: 471, column: 6, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 471, column: 6)
!4007 = !DILocation(line: 471, column: 11, scope: !4006)
!4008 = !DILocation(line: 471, column: 6, scope: !3902)
!4009 = !DILocation(line: 471, column: 26, scope: !4006)
!4010 = !DILocation(line: 472, column: 6, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 472, column: 6)
!4012 = !DILocation(line: 472, column: 11, scope: !4011)
!4013 = !DILocation(line: 472, column: 6, scope: !3902)
!4014 = !DILocation(line: 472, column: 26, scope: !4011)
!4015 = !DILocation(line: 473, column: 6, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 473, column: 6)
!4017 = !DILocation(line: 473, column: 11, scope: !4016)
!4018 = !DILocation(line: 473, column: 6, scope: !3902)
!4019 = !DILocation(line: 473, column: 26, scope: !4016)
!4020 = !DILocation(line: 474, column: 6, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 474, column: 6)
!4022 = !DILocation(line: 474, column: 11, scope: !4021)
!4023 = !DILocation(line: 474, column: 6, scope: !3902)
!4024 = !DILocation(line: 474, column: 27, scope: !4021)
!4025 = !DILocation(line: 475, column: 6, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 475, column: 6)
!4027 = !DILocation(line: 475, column: 11, scope: !4026)
!4028 = !DILocation(line: 475, column: 6, scope: !3902)
!4029 = !DILocation(line: 475, column: 32, scope: !4026)
!4030 = !DILocation(line: 477, column: 50, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !3902, file: !152, line: 477, column: 6)
!4032 = !{i8 0, i8 2}
!4033 = !DILocation(line: 477, column: 6, scope: !3902)
!4034 = !DILocation(line: 478, column: 3, scope: !4031)
!4035 = !DILocation(line: 478, column: 3, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !152, line: 478, column: 3)
!4037 = distinct !DILexicalBlock(scope: !4031, file: !152, line: 478, column: 3)
!4038 = !{i32 -2141714494}
!4039 = !DILocation(line: 478, column: 3, scope: !4037)
!4040 = !DILocation(line: 480, column: 3, scope: !4031)
!4041 = !DILocation(line: 480, column: 3, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4031, file: !152, line: 480, column: 3)
!4043 = !DILocation(line: 480, column: 3, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4042, file: !152, line: 480, column: 3)
!4045 = !DILocation(line: 480, column: 3, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4042, file: !152, line: 480, column: 3)
!4047 = !{i64 2153253005, i64 2153253034, i64 2153253080, i64 2153253138, i64 2153253192, i64 2153253246, i64 2153253301, i64 2153253332}
!4048 = !DILocation(line: 483, column: 2, scope: !3902)
!4049 = !DILocation(line: 484, column: 1, scope: !3902)
!4050 = !DISubprogram(name: "kmalloc_trace", scope: !152, file: !152, line: 525, type: !4051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!14, !4053, !174, !29}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4055, line: 325, flags: DIFlagFwdDecl)
!4055 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4056 = distinct !DISubprogram(name: "kmalloc_type", scope: !152, file: !152, line: 401, type: !4057, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4059)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!151, !174, !33}
!4059 = !{!4060, !4061}
!4060 = !DILocalVariable(name: "flags", arg: 1, scope: !4056, file: !152, line: 401, type: !174)
!4061 = !DILocalVariable(name: "caller", arg: 2, scope: !4056, file: !152, line: 401, type: !33)
!4062 = !DILocation(line: 401, column: 67, scope: !4056)
!4063 = !DILocation(line: 401, column: 88, scope: !4056)
!4064 = !DILocation(line: 407, column: 6, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4056, file: !152, line: 407, column: 6)
!4066 = !DILocation(line: 407, column: 6, scope: !4056)
!4067 = !DILocation(line: 413, column: 3, scope: !4065)
!4068 = !DILocation(line: 423, column: 38, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4056, file: !152, line: 423, column: 6)
!4070 = !DILocation(line: 423, column: 44, scope: !4069)
!4071 = !DILocation(line: 423, column: 6, scope: !4056)
!4072 = !DILocation(line: 424, column: 3, scope: !4069)
!4073 = !DILocation(line: 426, column: 3, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4056, file: !152, line: 425, column: 6)
!4075 = !DILocation(line: 429, column: 1, scope: !4056)
!4076 = !DISubprogram(name: "__kmalloc", scope: !152, file: !152, line: 488, type: !3750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4077 = !DISubprogram(name: "__compiletime_assert_245", scope: !152, file: !152, line: 478, type: !2777, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4078 = distinct !DISubprogram(name: "atomic_set", scope: !4079, file: !4079, line: 65, type: !4080, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4083)
!4079 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !4082, !16}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!4083 = !{!4084, !4085}
!4084 = !DILocalVariable(name: "v", arg: 1, scope: !4078, file: !4079, line: 65, type: !4082)
!4085 = !DILocalVariable(name: "i", arg: 2, scope: !4078, file: !4079, line: 65, type: !16)
!4086 = !DILocation(line: 65, column: 22, scope: !4078)
!4087 = !DILocation(line: 65, column: 29, scope: !4078)
!4088 = !DILocation(line: 67, column: 26, scope: !4078)
!4089 = !DILocation(line: 67, column: 2, scope: !4078)
!4090 = !DILocation(line: 68, column: 17, scope: !4078)
!4091 = !DILocation(line: 68, column: 20, scope: !4078)
!4092 = !DILocation(line: 68, column: 2, scope: !4078)
!4093 = !DILocation(line: 69, column: 1, scope: !4078)
!4094 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4095, file: !4095, line: 80, type: !4096, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4095 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !4098, !29}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4100)
!4100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4101 = !{!4102, !4103}
!4102 = !DILocalVariable(name: "v", arg: 1, scope: !4094, file: !4095, line: 80, type: !4098)
!4103 = !DILocalVariable(name: "size", arg: 2, scope: !4094, file: !4095, line: 80, type: !29)
!4104 = !DILocation(line: 80, column: 74, scope: !4094)
!4105 = !DILocation(line: 80, column: 84, scope: !4094)
!4106 = !DILocation(line: 82, column: 20, scope: !4094)
!4107 = !DILocation(line: 82, column: 23, scope: !4094)
!4108 = !DILocation(line: 82, column: 2, scope: !4094)
!4109 = !DILocation(line: 83, column: 2, scope: !4094)
!4110 = !DILocation(line: 84, column: 1, scope: !4094)
!4111 = distinct !DISubprogram(name: "raw_atomic_set", scope: !4112, file: !4112, line: 488, type: !4080, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4113)
!4112 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4113 = !{!4114, !4115}
!4114 = !DILocalVariable(name: "v", arg: 1, scope: !4111, file: !4112, line: 488, type: !4082)
!4115 = !DILocalVariable(name: "i", arg: 2, scope: !4111, file: !4112, line: 488, type: !16)
!4116 = !DILocation(line: 488, column: 26, scope: !4111)
!4117 = !DILocation(line: 488, column: 33, scope: !4111)
!4118 = !DILocation(line: 490, column: 18, scope: !4111)
!4119 = !DILocation(line: 490, column: 21, scope: !4111)
!4120 = !DILocation(line: 490, column: 2, scope: !4111)
!4121 = !DILocation(line: 491, column: 1, scope: !4111)
!4122 = distinct !DISubprogram(name: "kasan_check_write", scope: !4123, file: !4123, line: 44, type: !4124, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4126)
!4123 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!266, !4098, !98}
!4126 = !{!4127, !4128}
!4127 = !DILocalVariable(name: "p", arg: 1, scope: !4122, file: !4123, line: 44, type: !4098)
!4128 = !DILocalVariable(name: "size", arg: 2, scope: !4122, file: !4123, line: 44, type: !98)
!4129 = !DILocation(line: 44, column: 59, scope: !4122)
!4130 = !DILocation(line: 44, column: 75, scope: !4122)
!4131 = !DILocation(line: 46, column: 2, scope: !4122)
!4132 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4133, file: !4133, line: 229, type: !4134, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4136)
!4133 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !4098, !29, !16}
!4136 = !{!4137, !4138, !4139}
!4137 = !DILocalVariable(name: "ptr", arg: 1, scope: !4132, file: !4133, line: 229, type: !4098)
!4138 = !DILocalVariable(name: "size", arg: 2, scope: !4132, file: !4133, line: 229, type: !29)
!4139 = !DILocalVariable(name: "type", arg: 3, scope: !4132, file: !4133, line: 230, type: !16)
!4140 = !DILocation(line: 229, column: 60, scope: !4132)
!4141 = !DILocation(line: 229, column: 72, scope: !4132)
!4142 = !DILocation(line: 230, column: 15, scope: !4132)
!4143 = !DILocation(line: 230, column: 23, scope: !4132)
!4144 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4145, file: !4145, line: 26, type: !4080, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4146)
!4145 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4146 = !{!4147, !4148}
!4147 = !DILocalVariable(name: "v", arg: 1, scope: !4144, file: !4145, line: 26, type: !4082)
!4148 = !DILocalVariable(name: "i", arg: 2, scope: !4144, file: !4145, line: 26, type: !16)
!4149 = !DILocation(line: 26, column: 55, scope: !4144)
!4150 = !DILocation(line: 26, column: 62, scope: !4144)
!4151 = !DILocation(line: 28, column: 2, scope: !4144)
!4152 = !DILocation(line: 28, column: 2, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4144, file: !4145, line: 28, column: 2)
!4154 = !DILocation(line: 29, column: 1, scope: !4144)
!4155 = distinct !DISubprogram(name: "__refcount_inc", scope: !162, file: !162, line: 248, type: !4156, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4158)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !3782, !1834}
!4158 = !{!4159, !4160}
!4159 = !DILocalVariable(name: "r", arg: 1, scope: !4155, file: !162, line: 248, type: !3782)
!4160 = !DILocalVariable(name: "oldp", arg: 2, scope: !4155, file: !162, line: 248, type: !1834)
!4161 = !DILocation(line: 248, column: 47, scope: !4155)
!4162 = !DILocation(line: 248, column: 55, scope: !4155)
!4163 = !DILocation(line: 250, column: 20, scope: !4155)
!4164 = !DILocation(line: 250, column: 23, scope: !4155)
!4165 = !DILocation(line: 250, column: 2, scope: !4155)
!4166 = !DILocation(line: 251, column: 1, scope: !4155)
!4167 = distinct !DISubprogram(name: "__refcount_add", scope: !162, file: !162, line: 191, type: !4168, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !16, !3782, !1834}
!4170 = !{!4171, !4172, !4173, !4174}
!4171 = !DILocalVariable(name: "i", arg: 1, scope: !4167, file: !162, line: 191, type: !16)
!4172 = !DILocalVariable(name: "r", arg: 2, scope: !4167, file: !162, line: 191, type: !3782)
!4173 = !DILocalVariable(name: "oldp", arg: 3, scope: !4167, file: !162, line: 191, type: !1834)
!4174 = !DILocalVariable(name: "old", scope: !4167, file: !162, line: 193, type: !16)
!4175 = !DILocation(line: 191, column: 39, scope: !4167)
!4176 = !DILocation(line: 191, column: 54, scope: !4167)
!4177 = !DILocation(line: 191, column: 62, scope: !4167)
!4178 = !DILocation(line: 193, column: 2, scope: !4167)
!4179 = !DILocation(line: 193, column: 6, scope: !4167)
!4180 = !DILocation(line: 193, column: 37, scope: !4167)
!4181 = !DILocation(line: 193, column: 41, scope: !4167)
!4182 = !DILocation(line: 193, column: 44, scope: !4167)
!4183 = !DILocation(line: 193, column: 12, scope: !4167)
!4184 = !DILocation(line: 195, column: 6, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4167, file: !162, line: 195, column: 6)
!4186 = !DILocation(line: 195, column: 6, scope: !4167)
!4187 = !DILocation(line: 196, column: 11, scope: !4185)
!4188 = !DILocation(line: 196, column: 4, scope: !4185)
!4189 = !DILocation(line: 196, column: 9, scope: !4185)
!4190 = !DILocation(line: 196, column: 3, scope: !4185)
!4191 = !DILocation(line: 198, column: 6, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4167, file: !162, line: 198, column: 6)
!4193 = !DILocation(line: 198, column: 6, scope: !4167)
!4194 = !DILocation(line: 199, column: 26, scope: !4192)
!4195 = !DILocation(line: 199, column: 3, scope: !4192)
!4196 = !DILocation(line: 200, column: 11, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4192, file: !162, line: 200, column: 11)
!4198 = !DILocation(line: 200, column: 11, scope: !4192)
!4199 = !DILocation(line: 201, column: 26, scope: !4197)
!4200 = !DILocation(line: 201, column: 3, scope: !4197)
!4201 = !DILocation(line: 202, column: 1, scope: !4167)
!4202 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4079, file: !4079, line: 250, type: !4203, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!16, !16, !4082}
!4205 = !{!4206, !4207}
!4206 = !DILocalVariable(name: "i", arg: 1, scope: !4202, file: !4079, line: 250, type: !16)
!4207 = !DILocalVariable(name: "v", arg: 2, scope: !4202, file: !4079, line: 250, type: !4082)
!4208 = !DILocation(line: 250, column: 30, scope: !4202)
!4209 = !DILocation(line: 250, column: 43, scope: !4202)
!4210 = !DILocation(line: 252, column: 31, scope: !4202)
!4211 = !DILocation(line: 252, column: 2, scope: !4202)
!4212 = !DILocation(line: 253, column: 38, scope: !4202)
!4213 = !DILocation(line: 253, column: 41, scope: !4202)
!4214 = !DILocation(line: 253, column: 9, scope: !4202)
!4215 = !DILocation(line: 253, column: 2, scope: !4202)
!4216 = !DISubprogram(name: "refcount_warn_saturate", scope: !162, file: !162, line: 127, type: !4217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !3782, !161}
!4219 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4095, file: !4095, line: 94, type: !4096, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4220)
!4220 = !{!4221, !4222}
!4221 = !DILocalVariable(name: "v", arg: 1, scope: !4219, file: !4095, line: 94, type: !4098)
!4222 = !DILocalVariable(name: "size", arg: 2, scope: !4219, file: !4095, line: 94, type: !29)
!4223 = !DILocation(line: 94, column: 79, scope: !4219)
!4224 = !DILocation(line: 94, column: 89, scope: !4219)
!4225 = !DILocation(line: 96, column: 20, scope: !4219)
!4226 = !DILocation(line: 96, column: 23, scope: !4219)
!4227 = !DILocation(line: 96, column: 2, scope: !4219)
!4228 = !DILocation(line: 97, column: 2, scope: !4219)
!4229 = !DILocation(line: 98, column: 1, scope: !4219)
!4230 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4112, file: !4112, line: 731, type: !4203, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4231)
!4231 = !{!4232, !4233}
!4232 = !DILocalVariable(name: "i", arg: 1, scope: !4230, file: !4112, line: 731, type: !16)
!4233 = !DILocalVariable(name: "v", arg: 2, scope: !4230, file: !4112, line: 731, type: !4082)
!4234 = !DILocation(line: 731, column: 34, scope: !4230)
!4235 = !DILocation(line: 731, column: 47, scope: !4230)
!4236 = !DILocation(line: 736, column: 31, scope: !4230)
!4237 = !DILocation(line: 736, column: 34, scope: !4230)
!4238 = !DILocation(line: 736, column: 9, scope: !4230)
!4239 = !DILocation(line: 736, column: 2, scope: !4230)
!4240 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4145, file: !4145, line: 95, type: !4203, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4241)
!4241 = !{!4242, !4243, !4244}
!4242 = !DILocalVariable(name: "i", arg: 1, scope: !4240, file: !4145, line: 95, type: !16)
!4243 = !DILocalVariable(name: "v", arg: 2, scope: !4240, file: !4145, line: 95, type: !4082)
!4244 = !DILocalVariable(name: "__ret", scope: !4245, file: !4145, line: 97, type: !16)
!4245 = distinct !DILexicalBlock(scope: !4240, file: !4145, line: 97, column: 9)
!4246 = !DILocation(line: 95, column: 54, scope: !4240)
!4247 = !DILocation(line: 95, column: 67, scope: !4240)
!4248 = !DILocation(line: 97, column: 9, scope: !4245)
!4249 = !{i64 2148020859, i64 2148020898, i64 2148020919, i64 2148020956, i64 2148020979, i64 2148020988}
!4250 = !DILocation(line: 97, column: 9, scope: !4240)
!4251 = !DILocation(line: 97, column: 2, scope: !4240)
!4252 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !162, file: !162, line: 313, type: !4253, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!266, !3782, !1834}
!4255 = !{!4256, !4257}
!4256 = !DILocalVariable(name: "r", arg: 1, scope: !4252, file: !162, line: 313, type: !3782)
!4257 = !DILocalVariable(name: "oldp", arg: 2, scope: !4252, file: !162, line: 313, type: !1834)
!4258 = !DILocation(line: 313, column: 69, scope: !4252)
!4259 = !DILocation(line: 313, column: 77, scope: !4252)
!4260 = !DILocation(line: 315, column: 36, scope: !4252)
!4261 = !DILocation(line: 315, column: 39, scope: !4252)
!4262 = !DILocation(line: 315, column: 9, scope: !4252)
!4263 = !DILocation(line: 315, column: 2, scope: !4252)
!4264 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !162, file: !162, line: 270, type: !4265, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4267)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!266, !16, !3782, !1834}
!4267 = !{!4268, !4269, !4270, !4271}
!4268 = !DILocalVariable(name: "i", arg: 1, scope: !4264, file: !162, line: 270, type: !16)
!4269 = !DILocalVariable(name: "r", arg: 2, scope: !4264, file: !162, line: 270, type: !3782)
!4270 = !DILocalVariable(name: "oldp", arg: 3, scope: !4264, file: !162, line: 270, type: !1834)
!4271 = !DILocalVariable(name: "old", scope: !4264, file: !162, line: 272, type: !16)
!4272 = !DILocation(line: 270, column: 61, scope: !4264)
!4273 = !DILocation(line: 270, column: 76, scope: !4264)
!4274 = !DILocation(line: 270, column: 84, scope: !4264)
!4275 = !DILocation(line: 272, column: 2, scope: !4264)
!4276 = !DILocation(line: 272, column: 6, scope: !4264)
!4277 = !DILocation(line: 272, column: 37, scope: !4264)
!4278 = !DILocation(line: 272, column: 41, scope: !4264)
!4279 = !DILocation(line: 272, column: 44, scope: !4264)
!4280 = !DILocation(line: 272, column: 12, scope: !4264)
!4281 = !DILocation(line: 274, column: 6, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4264, file: !162, line: 274, column: 6)
!4283 = !DILocation(line: 274, column: 6, scope: !4264)
!4284 = !DILocation(line: 275, column: 11, scope: !4282)
!4285 = !DILocation(line: 275, column: 4, scope: !4282)
!4286 = !DILocation(line: 275, column: 9, scope: !4282)
!4287 = !DILocation(line: 275, column: 3, scope: !4282)
!4288 = !DILocation(line: 277, column: 6, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4264, file: !162, line: 277, column: 6)
!4290 = !DILocation(line: 277, column: 13, scope: !4289)
!4291 = !DILocation(line: 277, column: 10, scope: !4289)
!4292 = !DILocation(line: 277, column: 6, scope: !4264)
!4293 = !DILocation(line: 278, column: 3, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4289, file: !162, line: 277, column: 16)
!4295 = !DILocation(line: 278, column: 3, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4294, file: !162, line: 278, column: 3)
!4297 = !DILocation(line: 278, column: 3, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4296, file: !162, line: 278, column: 3)
!4299 = !DILocation(line: 278, column: 3, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4296, file: !162, line: 278, column: 3)
!4301 = !DILocation(line: 278, column: 3, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4300, file: !162, line: 278, column: 3)
!4303 = !{i64 2150017373}
!4304 = !DILocation(line: 279, column: 3, scope: !4294)
!4305 = !DILocation(line: 282, column: 6, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4264, file: !162, line: 282, column: 6)
!4307 = !DILocation(line: 282, column: 6, scope: !4264)
!4308 = !DILocation(line: 283, column: 26, scope: !4306)
!4309 = !DILocation(line: 283, column: 3, scope: !4306)
!4310 = !DILocation(line: 285, column: 2, scope: !4264)
!4311 = !DILocation(line: 286, column: 1, scope: !4264)
!4312 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4079, file: !4079, line: 397, type: !4203, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4313)
!4313 = !{!4314, !4315}
!4314 = !DILocalVariable(name: "i", arg: 1, scope: !4312, file: !4079, line: 397, type: !16)
!4315 = !DILocalVariable(name: "v", arg: 2, scope: !4312, file: !4079, line: 397, type: !4082)
!4316 = !DILocation(line: 397, column: 30, scope: !4312)
!4317 = !DILocation(line: 397, column: 43, scope: !4312)
!4318 = !DILocation(line: 399, column: 2, scope: !4312)
!4319 = !DILocation(line: 399, column: 2, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4312, file: !4079, line: 399, column: 2)
!4321 = !DILocation(line: 400, column: 31, scope: !4312)
!4322 = !DILocation(line: 400, column: 2, scope: !4312)
!4323 = !DILocation(line: 401, column: 38, scope: !4312)
!4324 = !DILocation(line: 401, column: 41, scope: !4312)
!4325 = !DILocation(line: 401, column: 9, scope: !4312)
!4326 = !DILocation(line: 401, column: 2, scope: !4312)
!4327 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !4112, file: !4112, line: 928, type: !4203, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4328)
!4328 = !{!4329, !4330}
!4329 = !DILocalVariable(name: "i", arg: 1, scope: !4327, file: !4112, line: 928, type: !16)
!4330 = !DILocalVariable(name: "v", arg: 2, scope: !4327, file: !4112, line: 928, type: !4082)
!4331 = !DILocation(line: 928, column: 34, scope: !4327)
!4332 = !DILocation(line: 928, column: 47, scope: !4327)
!4333 = !DILocation(line: 936, column: 31, scope: !4327)
!4334 = !DILocation(line: 936, column: 34, scope: !4327)
!4335 = !DILocation(line: 936, column: 9, scope: !4327)
!4336 = !DILocation(line: 936, column: 2, scope: !4327)
!4337 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4145, file: !4145, line: 101, type: !4203, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4338)
!4338 = !{!4339, !4340, !4341}
!4339 = !DILocalVariable(name: "i", arg: 1, scope: !4337, file: !4145, line: 101, type: !16)
!4340 = !DILocalVariable(name: "v", arg: 2, scope: !4337, file: !4145, line: 101, type: !4082)
!4341 = !DILocalVariable(name: "__ret", scope: !4342, file: !4145, line: 103, type: !16)
!4342 = distinct !DILexicalBlock(scope: !4337, file: !4145, line: 103, column: 9)
!4343 = !DILocation(line: 101, column: 54, scope: !4337)
!4344 = !DILocation(line: 101, column: 67, scope: !4337)
!4345 = !DILocation(line: 103, column: 9, scope: !4342)
!4346 = !{i64 2148023048, i64 2148023087, i64 2148023108, i64 2148023145, i64 2148023168, i64 2148023177}
!4347 = !DILocation(line: 103, column: 9, scope: !4337)
!4348 = !DILocation(line: 103, column: 2, scope: !4337)
