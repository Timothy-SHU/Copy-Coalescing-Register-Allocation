; ModuleID = 'fs/quota/quota_v2.c'
source_filename = "fs/quota/quota_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_quota_v2__263_439_init_v2_quota_format\22, \22a\22\09\09"
module asm "__initcall__kmod_quota_v2__263_439_init_v2_quota_format6:\09\09\09"
module asm ".long\09__initstub__kmod_quota_v2__263_439_init_v2_quota_format6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.quota_format_type = type { i32, ptr, ptr, ptr }
%struct.quota_format_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qtree_fmt_operations = type { ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.v2_disk_dqheader = type { i32, i32 }
%struct.v2_disk_dqinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qtree_mem_dqinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.14, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.15, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.16, ptr, %struct.address_space, %struct.list_head, %union.anon.17, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.14 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.15 = type { %struct.callback_head }
%union.anon.16 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.17 = type { ptr }
%struct.v2r0_disk_dqblk = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.v2r1_disk_dqblk = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@__UNIQUE_ID_author259 = internal constant [25 x i8] c"quota_v2.author=Jan Kara\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description260 = internal constant [45 x i8] c"quota_v2.description=Quota format v2 support\00", section ".modinfo", align 1, !dbg !3851
@__UNIQUE_ID_file261 = internal constant [32 x i8] c"quota_v2.file=fs/quota/quota_v2\00", section ".modinfo", align 1, !dbg !3856
@__UNIQUE_ID_license262 = internal constant [21 x i8] c"quota_v2.license=GPL\00", section ".modinfo", align 1, !dbg !3859
@v2r0_quota_format = internal global %struct.quota_format_type { i32 2, ptr @v2_format_ops, ptr null, ptr null }, align 8, !dbg !3870
@v2r1_quota_format = internal global %struct.quota_format_type { i32 4, ptr @v2_format_ops, ptr null, ptr null }, align 8, !dbg !3964
@__UNIQUE_ID___addressable___initstub__kmod_quota_v2__263_439_init_v2_quota_format6264 = internal global ptr @__initstub__kmod_quota_v2__263_439_init_v2_quota_format6, section ".discard.addressable", align 8, !dbg !3864
@__exitcall_exit_v2_quota_format = internal global ptr @exit_v2_quota_format, section ".exitcall.exit", align 8, !dbg !3866
@v2_format_ops = internal constant %struct.quota_format_ops { ptr @v2_check_quota_file, ptr @v2_read_file_info, ptr @v2_write_file_info, ptr @v2_free_file_info, ptr @v2_read_dquot, ptr @v2_write_dquot, ptr @v2_release_dquot, ptr @v2_get_next_id }, align 8, !dbg !3872
@v2_check_quota_file.quota_magics = internal constant [3 x i32] [i32 -641720559, i32 -641722073, i32 -641712364], align 4, !dbg !3874
@v2_check_quota_file.quota_versions = internal constant [3 x i32] [i32 1, i32 1, i32 1], align 4, !dbg !3889
@__func__.v2_read_header = private unnamed_addr constant [15 x i8] c"v2_read_header\00", align 1, !dbg !3891
@.str = private unnamed_addr constant [41 x i8] c"Failed header read: expected=%zd got=%zd\00", align 1, !dbg !3896
@__func__.v2_read_file_info = private unnamed_addr constant [18 x i8] c"v2_read_file_info\00", align 1, !dbg !3901
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't read info structure\00", align 1, !dbg !3906
@v2r0_qtree_ops = internal constant %struct.qtree_fmt_operations { ptr @v2r0_mem2diskdqb, ptr @v2r0_disk2memdqb, ptr @v2r0_is_id }, align 8, !dbg !3929
@v2r1_qtree_ops = internal constant %struct.qtree_fmt_operations { ptr @v2r1_mem2diskdqb, ptr @v2r1_disk2memdqb, ptr @v2r1_is_id }, align 8, !dbg !3952
@.str.2 = private unnamed_addr constant [60 x i8] c"Number of blocks too big for quota file size (%llu > %llu).\00", align 1, !dbg !3911
@.str.3 = private unnamed_addr constant [44 x i8] c"Free block number %u out of range (%u, %u).\00", align 1, !dbg !3916
@.str.4 = private unnamed_addr constant [48 x i8] c"Block with free entry %u out of range (%u, %u).\00", align 1, !dbg !3921
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3926
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"include/linux/quota.h\00", align 1, !dbg !3947
@dq_data_lock = external dso_local global %struct.spinlock, align 4
@__func__.v2_write_file_info = private unnamed_addr constant [19 x i8] c"v2_write_file_info\00", align 1, !dbg !3954
@.str.7 = private unnamed_addr constant [27 x i8] c"Can't write info structure\00", align 1, !dbg !3959
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @exit_v2_quota_format, ptr @__UNIQUE_ID___addressable___initstub__kmod_quota_v2__263_439_init_v2_quota_format6264, ptr @__exitcall_exit_v2_quota_format], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @exit_v2_quota_format() #0 section ".exit.text" align 16 !dbg !3978 {
entry:
  call void @unregister_quota_format(ptr noundef @v2r0_quota_format) #15, !dbg !3979
  call void @unregister_quota_format(ptr noundef @v2r1_quota_format) #15, !dbg !3980
  ret void, !dbg !3981
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3982 dso_local void @unregister_quota_format(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_quota_v2__263_439_init_v2_quota_format6() #0 section ".init.text" align 16 !dbg !3985 {
entry:
  %call = call i32 @init_v2_quota_format() #16, !dbg !3986
  ret i32 %call, !dbg !3986
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_v2_quota_format() #0 section ".init.text" align 16 !dbg !3987 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !3990
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3989, metadata !DIExpression()), !dbg !3991
  %call = call i32 @register_quota_format(ptr noundef @v2r0_quota_format) #15, !dbg !3992
  store i32 %call, ptr %ret, align 4, !dbg !3993
  %0 = load i32, ptr %ret, align 4, !dbg !3994
  %tobool = icmp ne i32 %0, 0, !dbg !3994
  br i1 %tobool, label %if.then, label %if.end, !dbg !3996

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !3997
  store i32 %1, ptr %retval, align 4, !dbg !3998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3998

if.end:                                           ; preds = %entry
  %call1 = call i32 @register_quota_format(ptr noundef @v2r1_quota_format) #15, !dbg !3999
  store i32 %call1, ptr %retval, align 4, !dbg !4000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4000

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4001
  %2 = load i32, ptr %retval, align 4, !dbg !4001
  ret i32 %2, !dbg !4001
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2_check_quota_file(ptr noundef %sb, i32 noundef %type) #2 align 16 !dbg !3876 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %dqhead = alloca %struct.v2_disk_dqheader, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3878, metadata !DIExpression()), !dbg !4002
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3879, metadata !DIExpression()), !dbg !4003
  call void @llvm.lifetime.start.p0(i64 8, ptr %dqhead) #17, !dbg !4004
  call void @llvm.dbg.declare(metadata ptr %dqhead, metadata !3880, metadata !DIExpression()), !dbg !4005
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4006
  %1 = load i32, ptr %type.addr, align 4, !dbg !4008
  %call = call i32 @v2_read_header(ptr noundef %0, i32 noundef %1, ptr noundef %dqhead) #15, !dbg !4009
  %tobool = icmp ne i32 %call, 0, !dbg !4009
  br i1 %tobool, label %if.then, label %if.end, !dbg !4010

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4011

if.end:                                           ; preds = %entry
  %dqh_magic = getelementptr inbounds %struct.v2_disk_dqheader, ptr %dqhead, i32 0, i32 0, !dbg !4012
  %2 = load i32, ptr %dqh_magic, align 4, !dbg !4012
  %3 = load i32, ptr %type.addr, align 4, !dbg !4014
  %idxprom = sext i32 %3 to i64, !dbg !4015
  %arrayidx = getelementptr [3 x i32], ptr @v2_check_quota_file.quota_magics, i64 0, i64 %idxprom, !dbg !4015
  %4 = load i32, ptr %arrayidx, align 4, !dbg !4015
  %cmp = icmp ne i32 %2, %4, !dbg !4016
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !4017

lor.lhs.false:                                    ; preds = %if.end
  %dqh_version = getelementptr inbounds %struct.v2_disk_dqheader, ptr %dqhead, i32 0, i32 1, !dbg !4018
  %5 = load i32, ptr %dqh_version, align 4, !dbg !4018
  %6 = load i32, ptr %type.addr, align 4, !dbg !4019
  %idxprom1 = sext i32 %6 to i64, !dbg !4020
  %arrayidx2 = getelementptr [3 x i32], ptr @v2_check_quota_file.quota_versions, i64 0, i64 %idxprom1, !dbg !4020
  %7 = load i32, ptr %arrayidx2, align 4, !dbg !4020
  %cmp3 = icmp ugt i32 %5, %7, !dbg !4021
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4022

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !4023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4023

if.end5:                                          ; preds = %lor.lhs.false
  store i32 1, ptr %retval, align 4, !dbg !4024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4024

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dqhead) #17, !dbg !4025
  %8 = load i32, ptr %retval, align 4, !dbg !4025
  ret i32 %8, !dbg !4025
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2_read_file_info(ptr noundef %sb, i32 noundef %type) #2 align 16 !dbg !4026 {
entry:
  %sb.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %dinfo = alloca %struct.v2_disk_dqinfo, align 4
  %dqhead = alloca %struct.v2_disk_dqheader, align 4
  %dqopt = alloca ptr, align 8
  %info = alloca ptr, align 8
  %qinfo = alloca ptr, align 8
  %size = alloca i64, align 8
  %version = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4028, metadata !DIExpression()), !dbg !4064
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4029, metadata !DIExpression()), !dbg !4065
  call void @llvm.lifetime.start.p0(i64 24, ptr %dinfo) #17, !dbg !4066
  call void @llvm.dbg.declare(metadata ptr %dinfo, metadata !4030, metadata !DIExpression()), !dbg !4067
  call void @llvm.lifetime.start.p0(i64 8, ptr %dqhead) #17, !dbg !4068
  call void @llvm.dbg.declare(metadata ptr %dqhead, metadata !4039, metadata !DIExpression()), !dbg !4069
  call void @llvm.lifetime.start.p0(i64 8, ptr %dqopt) #17, !dbg !4070
  call void @llvm.dbg.declare(metadata ptr %dqopt, metadata !4040, metadata !DIExpression()), !dbg !4071
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4072
  %call = call ptr @sb_dqopt(ptr noundef %0) #15, !dbg !4073
  store ptr %call, ptr %dqopt, align 8, !dbg !4071
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !4074
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4042, metadata !DIExpression()), !dbg !4075
  %1 = load ptr, ptr %dqopt, align 8, !dbg !4076
  %info1 = getelementptr inbounds %struct.quota_info, ptr %1, i32 0, i32 3, !dbg !4077
  %2 = load i32, ptr %type.addr, align 4, !dbg !4078
  %idxprom = sext i32 %2 to i64, !dbg !4076
  %arrayidx = getelementptr [3 x %struct.mem_dqinfo], ptr %info1, i64 0, i64 %idxprom, !dbg !4076
  store ptr %arrayidx, ptr %info, align 8, !dbg !4075
  call void @llvm.lifetime.start.p0(i64 8, ptr %qinfo) #17, !dbg !4079
  call void @llvm.dbg.declare(metadata ptr %qinfo, metadata !4044, metadata !DIExpression()), !dbg !4080
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !4081
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #17, !dbg !4083
  call void @llvm.dbg.declare(metadata ptr %version, metadata !4060, metadata !DIExpression()), !dbg !4084
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4085
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4061, metadata !DIExpression()), !dbg !4086
  %3 = load ptr, ptr %dqopt, align 8, !dbg !4087
  %dqio_sem = getelementptr inbounds %struct.quota_info, ptr %3, i32 0, i32 1, !dbg !4088
  call void @down_read(ptr noundef %dqio_sem) #15, !dbg !4089
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !4090
  %5 = load i32, ptr %type.addr, align 4, !dbg !4091
  %call2 = call i32 @v2_read_header(ptr noundef %4, i32 noundef %5, ptr noundef %dqhead) #15, !dbg !4092
  store i32 %call2, ptr %ret, align 4, !dbg !4093
  %6 = load i32, ptr %ret, align 4, !dbg !4094
  %cmp = icmp slt i32 %6, 0, !dbg !4096
  br i1 %cmp, label %if.then, label %if.end, !dbg !4097

if.then:                                          ; preds = %entry
  br label %out, !dbg !4098

if.end:                                           ; preds = %entry
  %dqh_version = getelementptr inbounds %struct.v2_disk_dqheader, ptr %dqhead, i32 0, i32 1, !dbg !4099
  %7 = load i32, ptr %dqh_version, align 4, !dbg !4099
  store i32 %7, ptr %version, align 4, !dbg !4100
  %8 = load ptr, ptr %info, align 8, !dbg !4101
  %dqi_fmt_id = getelementptr inbounds %struct.mem_dqinfo, ptr %8, i32 0, i32 1, !dbg !4103
  %9 = load i32, ptr %dqi_fmt_id, align 8, !dbg !4103
  %cmp3 = icmp eq i32 %9, 2, !dbg !4104
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false, !dbg !4105

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, ptr %version, align 4, !dbg !4106
  %cmp4 = icmp ne i32 %10, 0, !dbg !4107
  br i1 %cmp4, label %if.then9, label %lor.lhs.false, !dbg !4108

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %11 = load ptr, ptr %info, align 8, !dbg !4109
  %dqi_fmt_id5 = getelementptr inbounds %struct.mem_dqinfo, ptr %11, i32 0, i32 1, !dbg !4110
  %12 = load i32, ptr %dqi_fmt_id5, align 8, !dbg !4110
  %cmp6 = icmp eq i32 %12, 4, !dbg !4111
  br i1 %cmp6, label %land.lhs.true7, label %if.end10, !dbg !4112

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %13 = load i32, ptr %version, align 4, !dbg !4113
  %cmp8 = icmp ne i32 %13, 1, !dbg !4114
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4115

if.then9:                                         ; preds = %land.lhs.true7, %land.lhs.true
  store i32 -22, ptr %ret, align 4, !dbg !4116
  br label %out, !dbg !4118

if.end10:                                         ; preds = %land.lhs.true7, %lor.lhs.false
  %14 = load ptr, ptr %sb.addr, align 8, !dbg !4119
  %s_op = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 6, !dbg !4120
  %15 = load ptr, ptr %s_op, align 16, !dbg !4120
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %15, i32 0, i32 20, !dbg !4121
  %16 = load ptr, ptr %quota_read, align 8, !dbg !4121
  %17 = load ptr, ptr %sb.addr, align 8, !dbg !4122
  %18 = load i32, ptr %type.addr, align 4, !dbg !4123
  %call11 = call i64 %16(ptr noundef %17, i32 noundef %18, ptr noundef %dinfo, i64 noundef 24, i64 noundef 8) #15, !dbg !4119
  store i64 %call11, ptr %size, align 8, !dbg !4124
  %19 = load i64, ptr %size, align 8, !dbg !4125
  %cmp12 = icmp ne i64 %19, 24, !dbg !4127
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !4128

if.then13:                                        ; preds = %if.end10
  %20 = load ptr, ptr %sb.addr, align 8, !dbg !4129
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %20, ptr noundef @__func__.v2_read_file_info, ptr noundef @.str.1) #15, !dbg !4129
  %21 = load i64, ptr %size, align 8, !dbg !4131
  %cmp14 = icmp slt i64 %21, 0, !dbg !4133
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !4134

if.then15:                                        ; preds = %if.then13
  %22 = load i64, ptr %size, align 8, !dbg !4135
  %conv = trunc i64 %22 to i32, !dbg !4135
  store i32 %conv, ptr %ret, align 4, !dbg !4136
  br label %if.end16, !dbg !4137

if.else:                                          ; preds = %if.then13
  store i32 -5, ptr %ret, align 4, !dbg !4138
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  br label %out, !dbg !4139

if.end17:                                         ; preds = %if.end10
  %call18 = call noalias ptr @kmalloc(i64 noundef 48, i32 noundef 3136) #18, !dbg !4140
  %23 = load ptr, ptr %info, align 8, !dbg !4141
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %23, i32 0, i32 8, !dbg !4142
  store ptr %call18, ptr %dqi_priv, align 8, !dbg !4143
  %24 = load ptr, ptr %info, align 8, !dbg !4144
  %dqi_priv19 = getelementptr inbounds %struct.mem_dqinfo, ptr %24, i32 0, i32 8, !dbg !4146
  %25 = load ptr, ptr %dqi_priv19, align 8, !dbg !4146
  %tobool = icmp ne ptr %25, null, !dbg !4144
  br i1 %tobool, label %if.end21, label %if.then20, !dbg !4147

if.then20:                                        ; preds = %if.end17
  store i32 -12, ptr %ret, align 4, !dbg !4148
  br label %out, !dbg !4150

if.end21:                                         ; preds = %if.end17
  %26 = load ptr, ptr %info, align 8, !dbg !4151
  %dqi_priv22 = getelementptr inbounds %struct.mem_dqinfo, ptr %26, i32 0, i32 8, !dbg !4152
  %27 = load ptr, ptr %dqi_priv22, align 8, !dbg !4152
  store ptr %27, ptr %qinfo, align 8, !dbg !4153
  %28 = load i32, ptr %version, align 4, !dbg !4154
  %cmp23 = icmp eq i32 %28, 0, !dbg !4156
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !4157

if.then25:                                        ; preds = %if.end21
  %29 = load ptr, ptr %info, align 8, !dbg !4158
  %dqi_max_spc_limit = getelementptr inbounds %struct.mem_dqinfo, ptr %29, i32 0, i32 6, !dbg !4160
  store i64 4398046510080, ptr %dqi_max_spc_limit, align 8, !dbg !4161
  %30 = load ptr, ptr %info, align 8, !dbg !4162
  %dqi_max_ino_limit = getelementptr inbounds %struct.mem_dqinfo, ptr %30, i32 0, i32 7, !dbg !4163
  store i64 4294967295, ptr %dqi_max_ino_limit, align 8, !dbg !4164
  br label %if.end29, !dbg !4165

if.else26:                                        ; preds = %if.end21
  %31 = load ptr, ptr %info, align 8, !dbg !4166
  %dqi_max_spc_limit27 = getelementptr inbounds %struct.mem_dqinfo, ptr %31, i32 0, i32 6, !dbg !4168
  store i64 9223372036854775807, ptr %dqi_max_spc_limit27, align 8, !dbg !4169
  %32 = load ptr, ptr %info, align 8, !dbg !4170
  %dqi_max_ino_limit28 = getelementptr inbounds %struct.mem_dqinfo, ptr %32, i32 0, i32 7, !dbg !4171
  store i64 9223372036854775807, ptr %dqi_max_ino_limit28, align 8, !dbg !4172
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then25
  %dqi_bgrace = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 0, !dbg !4173
  %33 = load i32, ptr %dqi_bgrace, align 4, !dbg !4173
  %34 = load ptr, ptr %info, align 8, !dbg !4174
  %dqi_bgrace30 = getelementptr inbounds %struct.mem_dqinfo, ptr %34, i32 0, i32 4, !dbg !4175
  store i32 %33, ptr %dqi_bgrace30, align 8, !dbg !4176
  %dqi_igrace = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 1, !dbg !4177
  %35 = load i32, ptr %dqi_igrace, align 4, !dbg !4177
  %36 = load ptr, ptr %info, align 8, !dbg !4178
  %dqi_igrace31 = getelementptr inbounds %struct.mem_dqinfo, ptr %36, i32 0, i32 5, !dbg !4179
  store i32 %35, ptr %dqi_igrace31, align 4, !dbg !4180
  %37 = load ptr, ptr %info, align 8, !dbg !4181
  %dqi_flags = getelementptr inbounds %struct.mem_dqinfo, ptr %37, i32 0, i32 3, !dbg !4182
  store i64 0, ptr %dqi_flags, align 8, !dbg !4183
  %38 = load ptr, ptr %sb.addr, align 8, !dbg !4184
  %39 = load ptr, ptr %qinfo, align 8, !dbg !4185
  %dqi_sb = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %39, i32 0, i32 0, !dbg !4186
  store ptr %38, ptr %dqi_sb, align 8, !dbg !4187
  %40 = load i32, ptr %type.addr, align 4, !dbg !4188
  %41 = load ptr, ptr %qinfo, align 8, !dbg !4189
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %41, i32 0, i32 1, !dbg !4190
  store i32 %40, ptr %dqi_type, align 8, !dbg !4191
  %dqi_blocks = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 3, !dbg !4192
  %42 = load i32, ptr %dqi_blocks, align 4, !dbg !4192
  %43 = load ptr, ptr %qinfo, align 8, !dbg !4193
  %dqi_blocks32 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %43, i32 0, i32 2, !dbg !4194
  store i32 %42, ptr %dqi_blocks32, align 4, !dbg !4195
  %dqi_free_blk = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 4, !dbg !4196
  %44 = load i32, ptr %dqi_free_blk, align 4, !dbg !4196
  %45 = load ptr, ptr %qinfo, align 8, !dbg !4197
  %dqi_free_blk33 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %45, i32 0, i32 3, !dbg !4198
  store i32 %44, ptr %dqi_free_blk33, align 8, !dbg !4199
  %dqi_free_entry = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 5, !dbg !4200
  %46 = load i32, ptr %dqi_free_entry, align 4, !dbg !4200
  %47 = load ptr, ptr %qinfo, align 8, !dbg !4201
  %dqi_free_entry34 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %47, i32 0, i32 4, !dbg !4202
  store i32 %46, ptr %dqi_free_entry34, align 4, !dbg !4203
  %48 = load ptr, ptr %qinfo, align 8, !dbg !4204
  %dqi_blocksize_bits = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %48, i32 0, i32 5, !dbg !4205
  store i32 10, ptr %dqi_blocksize_bits, align 8, !dbg !4206
  %49 = load ptr, ptr %qinfo, align 8, !dbg !4207
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %49, i32 0, i32 7, !dbg !4208
  store i32 1024, ptr %dqi_usable_bs, align 8, !dbg !4209
  %50 = load ptr, ptr %qinfo, align 8, !dbg !4210
  %call35 = call i32 @qtree_depth(ptr noundef %50) #15, !dbg !4211
  %51 = load ptr, ptr %qinfo, align 8, !dbg !4212
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %51, i32 0, i32 8, !dbg !4213
  store i32 %call35, ptr %dqi_qtree_depth, align 4, !dbg !4214
  %52 = load i32, ptr %version, align 4, !dbg !4215
  %cmp36 = icmp eq i32 %52, 0, !dbg !4217
  br i1 %cmp36, label %if.then38, label %if.else39, !dbg !4218

if.then38:                                        ; preds = %if.end29
  %53 = load ptr, ptr %qinfo, align 8, !dbg !4219
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %53, i32 0, i32 6, !dbg !4221
  store i32 48, ptr %dqi_entry_size, align 4, !dbg !4222
  %54 = load ptr, ptr %qinfo, align 8, !dbg !4223
  %dqi_ops = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %54, i32 0, i32 9, !dbg !4224
  store ptr @v2r0_qtree_ops, ptr %dqi_ops, align 8, !dbg !4225
  br label %if.end42, !dbg !4226

if.else39:                                        ; preds = %if.end29
  %55 = load ptr, ptr %qinfo, align 8, !dbg !4227
  %dqi_entry_size40 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %55, i32 0, i32 6, !dbg !4229
  store i32 72, ptr %dqi_entry_size40, align 4, !dbg !4230
  %56 = load ptr, ptr %qinfo, align 8, !dbg !4231
  %dqi_ops41 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %56, i32 0, i32 9, !dbg !4232
  store ptr @v2r1_qtree_ops, ptr %dqi_ops41, align 8, !dbg !4233
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then38
  store i32 -117, ptr %ret, align 4, !dbg !4234
  %57 = load ptr, ptr %qinfo, align 8, !dbg !4235
  %dqi_blocks43 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %57, i32 0, i32 2, !dbg !4237
  %58 = load i32, ptr %dqi_blocks43, align 4, !dbg !4237
  %conv44 = zext i32 %58 to i64, !dbg !4238
  %59 = load ptr, ptr %qinfo, align 8, !dbg !4239
  %dqi_blocksize_bits45 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %59, i32 0, i32 5, !dbg !4240
  %60 = load i32, ptr %dqi_blocksize_bits45, align 8, !dbg !4240
  %sh_prom = zext i32 %60 to i64, !dbg !4241
  %shl = shl i64 %conv44, %sh_prom, !dbg !4241
  %61 = load ptr, ptr %sb.addr, align 8, !dbg !4242
  %call46 = call ptr @sb_dqopt(ptr noundef %61) #15, !dbg !4243
  %files = getelementptr inbounds %struct.quota_info, ptr %call46, i32 0, i32 2, !dbg !4244
  %62 = load i32, ptr %type.addr, align 4, !dbg !4245
  %idxprom47 = sext i32 %62 to i64, !dbg !4243
  %arrayidx48 = getelementptr [3 x ptr], ptr %files, i64 0, i64 %idxprom47, !dbg !4243
  %63 = load ptr, ptr %arrayidx48, align 8, !dbg !4243
  %call49 = call i64 @i_size_read(ptr noundef %63) #15, !dbg !4246
  %cmp50 = icmp sgt i64 %shl, %call49, !dbg !4247
  br i1 %cmp50, label %if.then52, label %if.end63, !dbg !4248

if.then52:                                        ; preds = %if.end42
  %64 = load ptr, ptr %sb.addr, align 8, !dbg !4249
  %65 = load ptr, ptr %qinfo, align 8, !dbg !4249
  %dqi_blocks53 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %65, i32 0, i32 2, !dbg !4249
  %66 = load i32, ptr %dqi_blocks53, align 4, !dbg !4249
  %conv54 = zext i32 %66 to i64, !dbg !4249
  %67 = load ptr, ptr %qinfo, align 8, !dbg !4249
  %dqi_blocksize_bits55 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %67, i32 0, i32 5, !dbg !4249
  %68 = load i32, ptr %dqi_blocksize_bits55, align 8, !dbg !4249
  %sh_prom56 = zext i32 %68 to i64, !dbg !4249
  %shl57 = shl i64 %conv54, %sh_prom56, !dbg !4249
  %69 = load ptr, ptr %sb.addr, align 8, !dbg !4249
  %call58 = call ptr @sb_dqopt(ptr noundef %69) #15, !dbg !4249
  %files59 = getelementptr inbounds %struct.quota_info, ptr %call58, i32 0, i32 2, !dbg !4249
  %70 = load i32, ptr %type.addr, align 4, !dbg !4249
  %idxprom60 = sext i32 %70 to i64, !dbg !4249
  %arrayidx61 = getelementptr [3 x ptr], ptr %files59, i64 0, i64 %idxprom60, !dbg !4249
  %71 = load ptr, ptr %arrayidx61, align 8, !dbg !4249
  %call62 = call i64 @i_size_read(ptr noundef %71) #15, !dbg !4249
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %64, ptr noundef @__func__.v2_read_file_info, ptr noundef @.str.2, i64 noundef %shl57, i64 noundef %call62) #15, !dbg !4249
  br label %out_free, !dbg !4251

if.end63:                                         ; preds = %if.end42
  %72 = load ptr, ptr %qinfo, align 8, !dbg !4252
  %dqi_free_blk64 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %72, i32 0, i32 3, !dbg !4254
  %73 = load i32, ptr %dqi_free_blk64, align 8, !dbg !4254
  %tobool65 = icmp ne i32 %73, 0, !dbg !4252
  br i1 %tobool65, label %land.lhs.true66, label %if.end78, !dbg !4255

land.lhs.true66:                                  ; preds = %if.end63
  %74 = load ptr, ptr %qinfo, align 8, !dbg !4256
  %dqi_free_blk67 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %74, i32 0, i32 3, !dbg !4257
  %75 = load i32, ptr %dqi_free_blk67, align 8, !dbg !4257
  %cmp68 = icmp ule i32 %75, 1, !dbg !4258
  br i1 %cmp68, label %if.then75, label %lor.lhs.false70, !dbg !4259

lor.lhs.false70:                                  ; preds = %land.lhs.true66
  %76 = load ptr, ptr %qinfo, align 8, !dbg !4260
  %dqi_free_blk71 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %76, i32 0, i32 3, !dbg !4261
  %77 = load i32, ptr %dqi_free_blk71, align 8, !dbg !4261
  %78 = load ptr, ptr %qinfo, align 8, !dbg !4262
  %dqi_blocks72 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %78, i32 0, i32 2, !dbg !4263
  %79 = load i32, ptr %dqi_blocks72, align 4, !dbg !4263
  %cmp73 = icmp uge i32 %77, %79, !dbg !4264
  br i1 %cmp73, label %if.then75, label %if.end78, !dbg !4265

if.then75:                                        ; preds = %lor.lhs.false70, %land.lhs.true66
  %80 = load ptr, ptr %sb.addr, align 8, !dbg !4266
  %81 = load ptr, ptr %qinfo, align 8, !dbg !4266
  %dqi_free_blk76 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %81, i32 0, i32 3, !dbg !4266
  %82 = load i32, ptr %dqi_free_blk76, align 8, !dbg !4266
  %83 = load ptr, ptr %qinfo, align 8, !dbg !4266
  %dqi_blocks77 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %83, i32 0, i32 2, !dbg !4266
  %84 = load i32, ptr %dqi_blocks77, align 4, !dbg !4266
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %80, ptr noundef @__func__.v2_read_file_info, ptr noundef @.str.3, i32 noundef %82, i32 noundef 1, i32 noundef %84) #15, !dbg !4266
  br label %out_free, !dbg !4268

if.end78:                                         ; preds = %lor.lhs.false70, %if.end63
  %85 = load ptr, ptr %qinfo, align 8, !dbg !4269
  %dqi_free_entry79 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %85, i32 0, i32 4, !dbg !4271
  %86 = load i32, ptr %dqi_free_entry79, align 4, !dbg !4271
  %tobool80 = icmp ne i32 %86, 0, !dbg !4269
  br i1 %tobool80, label %land.lhs.true81, label %if.end93, !dbg !4272

land.lhs.true81:                                  ; preds = %if.end78
  %87 = load ptr, ptr %qinfo, align 8, !dbg !4273
  %dqi_free_entry82 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %87, i32 0, i32 4, !dbg !4274
  %88 = load i32, ptr %dqi_free_entry82, align 4, !dbg !4274
  %cmp83 = icmp ule i32 %88, 1, !dbg !4275
  br i1 %cmp83, label %if.then90, label %lor.lhs.false85, !dbg !4276

lor.lhs.false85:                                  ; preds = %land.lhs.true81
  %89 = load ptr, ptr %qinfo, align 8, !dbg !4277
  %dqi_free_entry86 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %89, i32 0, i32 4, !dbg !4278
  %90 = load i32, ptr %dqi_free_entry86, align 4, !dbg !4278
  %91 = load ptr, ptr %qinfo, align 8, !dbg !4279
  %dqi_blocks87 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %91, i32 0, i32 2, !dbg !4280
  %92 = load i32, ptr %dqi_blocks87, align 4, !dbg !4280
  %cmp88 = icmp uge i32 %90, %92, !dbg !4281
  br i1 %cmp88, label %if.then90, label %if.end93, !dbg !4282

if.then90:                                        ; preds = %lor.lhs.false85, %land.lhs.true81
  %93 = load ptr, ptr %sb.addr, align 8, !dbg !4283
  %94 = load ptr, ptr %qinfo, align 8, !dbg !4283
  %dqi_free_entry91 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %94, i32 0, i32 4, !dbg !4283
  %95 = load i32, ptr %dqi_free_entry91, align 4, !dbg !4283
  %96 = load ptr, ptr %qinfo, align 8, !dbg !4283
  %dqi_blocks92 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %96, i32 0, i32 2, !dbg !4283
  %97 = load i32, ptr %dqi_blocks92, align 4, !dbg !4283
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %93, ptr noundef @__func__.v2_read_file_info, ptr noundef @.str.4, i32 noundef %95, i32 noundef 1, i32 noundef %97) #15, !dbg !4283
  br label %out_free, !dbg !4285

if.end93:                                         ; preds = %lor.lhs.false85, %if.end78
  store i32 0, ptr %ret, align 4, !dbg !4286
  br label %out_free, !dbg !4287

out_free:                                         ; preds = %if.end93, %if.then90, %if.then75, %if.then52
  call void @llvm.dbg.label(metadata !4062), !dbg !4288
  %98 = load i32, ptr %ret, align 4, !dbg !4289
  %tobool94 = icmp ne i32 %98, 0, !dbg !4289
  br i1 %tobool94, label %if.then95, label %if.end98, !dbg !4291

if.then95:                                        ; preds = %out_free
  %99 = load ptr, ptr %info, align 8, !dbg !4292
  %dqi_priv96 = getelementptr inbounds %struct.mem_dqinfo, ptr %99, i32 0, i32 8, !dbg !4294
  %100 = load ptr, ptr %dqi_priv96, align 8, !dbg !4294
  call void @kfree(ptr noundef %100) #15, !dbg !4295
  %101 = load ptr, ptr %info, align 8, !dbg !4296
  %dqi_priv97 = getelementptr inbounds %struct.mem_dqinfo, ptr %101, i32 0, i32 8, !dbg !4297
  store ptr null, ptr %dqi_priv97, align 8, !dbg !4298
  br label %if.end98, !dbg !4299

if.end98:                                         ; preds = %if.then95, %out_free
  br label %out, !dbg !4289

out:                                              ; preds = %if.end98, %if.then20, %if.end16, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !4063), !dbg !4300
  %102 = load ptr, ptr %dqopt, align 8, !dbg !4301
  %dqio_sem99 = getelementptr inbounds %struct.quota_info, ptr %102, i32 0, i32 1, !dbg !4302
  call void @up_read(ptr noundef %dqio_sem99) #15, !dbg !4303
  %103 = load i32, ptr %ret, align 4, !dbg !4304
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4305
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #17, !dbg !4305
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !4305
  call void @llvm.lifetime.end.p0(i64 8, ptr %qinfo) #17, !dbg !4305
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !4305
  call void @llvm.lifetime.end.p0(i64 8, ptr %dqopt) #17, !dbg !4305
  call void @llvm.lifetime.end.p0(i64 8, ptr %dqhead) #17, !dbg !4305
  call void @llvm.lifetime.end.p0(i64 24, ptr %dinfo) #17, !dbg !4305
  ret i32 %103, !dbg !4306
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2_write_file_info(ptr noundef %sb, i32 noundef %type) #2 align 16 !dbg !4307 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %dinfo = alloca %struct.v2_disk_dqinfo, align 4
  %dqopt = alloca ptr, align 8
  %info = alloca ptr, align 8
  %qinfo = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4309, metadata !DIExpression()), !dbg !4316
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4310, metadata !DIExpression()), !dbg !4317
  call void @llvm.lifetime.start.p0(i64 24, ptr %dinfo) #17, !dbg !4318
  call void @llvm.dbg.declare(metadata ptr %dinfo, metadata !4311, metadata !DIExpression()), !dbg !4319
  call void @llvm.lifetime.start.p0(i64 8, ptr %dqopt) #17, !dbg !4320
  call void @llvm.dbg.declare(metadata ptr %dqopt, metadata !4312, metadata !DIExpression()), !dbg !4321
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4322
  %call = call ptr @sb_dqopt(ptr noundef %0) #15, !dbg !4323
  store ptr %call, ptr %dqopt, align 8, !dbg !4321
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !4324
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4313, metadata !DIExpression()), !dbg !4325
  %1 = load ptr, ptr %dqopt, align 8, !dbg !4326
  %info1 = getelementptr inbounds %struct.quota_info, ptr %1, i32 0, i32 3, !dbg !4327
  %2 = load i32, ptr %type.addr, align 4, !dbg !4328
  %idxprom = sext i32 %2 to i64, !dbg !4326
  %arrayidx = getelementptr [3 x %struct.mem_dqinfo], ptr %info1, i64 0, i64 %idxprom, !dbg !4326
  store ptr %arrayidx, ptr %info, align 8, !dbg !4325
  call void @llvm.lifetime.start.p0(i64 8, ptr %qinfo) #17, !dbg !4329
  call void @llvm.dbg.declare(metadata ptr %qinfo, metadata !4314, metadata !DIExpression()), !dbg !4330
  %3 = load ptr, ptr %info, align 8, !dbg !4331
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %3, i32 0, i32 8, !dbg !4332
  %4 = load ptr, ptr %dqi_priv, align 8, !dbg !4332
  store ptr %4, ptr %qinfo, align 8, !dbg !4330
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !4333
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4315, metadata !DIExpression()), !dbg !4334
  %5 = load ptr, ptr %dqopt, align 8, !dbg !4335
  %dqio_sem = getelementptr inbounds %struct.quota_info, ptr %5, i32 0, i32 1, !dbg !4336
  call void @down_write(ptr noundef %dqio_sem) #15, !dbg !4337
  call void @spin_lock(ptr noundef @dq_data_lock) #15, !dbg !4338
  %6 = load ptr, ptr %info, align 8, !dbg !4339
  %dqi_flags = getelementptr inbounds %struct.mem_dqinfo, ptr %6, i32 0, i32 3, !dbg !4340
  %7 = load i64, ptr %dqi_flags, align 8, !dbg !4341
  %and = and i64 %7, -131073, !dbg !4341
  store i64 %and, ptr %dqi_flags, align 8, !dbg !4341
  %8 = load ptr, ptr %info, align 8, !dbg !4342
  %dqi_bgrace = getelementptr inbounds %struct.mem_dqinfo, ptr %8, i32 0, i32 4, !dbg !4342
  %9 = load i32, ptr %dqi_bgrace, align 8, !dbg !4342
  %dqi_bgrace2 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 0, !dbg !4343
  store i32 %9, ptr %dqi_bgrace2, align 4, !dbg !4344
  %10 = load ptr, ptr %info, align 8, !dbg !4345
  %dqi_igrace = getelementptr inbounds %struct.mem_dqinfo, ptr %10, i32 0, i32 5, !dbg !4345
  %11 = load i32, ptr %dqi_igrace, align 4, !dbg !4345
  %dqi_igrace3 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 1, !dbg !4346
  store i32 %11, ptr %dqi_igrace3, align 4, !dbg !4347
  %dqi_flags4 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 2, !dbg !4348
  store i32 0, ptr %dqi_flags4, align 4, !dbg !4349
  call void @spin_unlock(ptr noundef @dq_data_lock) #15, !dbg !4350
  %12 = load ptr, ptr %qinfo, align 8, !dbg !4351
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %12, i32 0, i32 2, !dbg !4351
  %13 = load i32, ptr %dqi_blocks, align 4, !dbg !4351
  %dqi_blocks5 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 3, !dbg !4352
  store i32 %13, ptr %dqi_blocks5, align 4, !dbg !4353
  %14 = load ptr, ptr %qinfo, align 8, !dbg !4354
  %dqi_free_blk = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %14, i32 0, i32 3, !dbg !4354
  %15 = load i32, ptr %dqi_free_blk, align 8, !dbg !4354
  %dqi_free_blk6 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 4, !dbg !4355
  store i32 %15, ptr %dqi_free_blk6, align 4, !dbg !4356
  %16 = load ptr, ptr %qinfo, align 8, !dbg !4357
  %dqi_free_entry = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %16, i32 0, i32 4, !dbg !4357
  %17 = load i32, ptr %dqi_free_entry, align 4, !dbg !4357
  %dqi_free_entry7 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 5, !dbg !4358
  store i32 %17, ptr %dqi_free_entry7, align 4, !dbg !4359
  %18 = load ptr, ptr %sb.addr, align 8, !dbg !4360
  %s_op = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 6, !dbg !4361
  %19 = load ptr, ptr %s_op, align 16, !dbg !4361
  %quota_write = getelementptr inbounds %struct.super_operations, ptr %19, i32 0, i32 21, !dbg !4362
  %20 = load ptr, ptr %quota_write, align 8, !dbg !4362
  %21 = load ptr, ptr %sb.addr, align 8, !dbg !4363
  %22 = load i32, ptr %type.addr, align 4, !dbg !4364
  %call8 = call i64 %20(ptr noundef %21, i32 noundef %22, ptr noundef %dinfo, i64 noundef 24, i64 noundef 8) #15, !dbg !4360
  store i64 %call8, ptr %size, align 8, !dbg !4365
  %23 = load ptr, ptr %dqopt, align 8, !dbg !4366
  %dqio_sem9 = getelementptr inbounds %struct.quota_info, ptr %23, i32 0, i32 1, !dbg !4367
  call void @up_write(ptr noundef %dqio_sem9) #15, !dbg !4368
  %24 = load i64, ptr %size, align 8, !dbg !4369
  %cmp = icmp ne i64 %24, 24, !dbg !4371
  br i1 %cmp, label %if.then, label %if.end, !dbg !4372

if.then:                                          ; preds = %entry
  %25 = load ptr, ptr %sb.addr, align 8, !dbg !4373
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %25, ptr noundef @__func__.v2_write_file_info, ptr noundef @.str.7) #15, !dbg !4373
  %26 = load i64, ptr %size, align 8, !dbg !4375
  %cmp10 = icmp slt i64 %26, 0, !dbg !4376
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !4375

cond.true:                                        ; preds = %if.then
  %27 = load i64, ptr %size, align 8, !dbg !4377
  br label %cond.end, !dbg !4375

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !4375

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %27, %cond.true ], [ -5, %cond.false ], !dbg !4375
  %conv = trunc i64 %cond to i32, !dbg !4375
  store i32 %conv, ptr %retval, align 4, !dbg !4378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4378

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4379

cleanup:                                          ; preds = %if.end, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 8, ptr %qinfo) #17, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 8, ptr %dqopt) #17, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 24, ptr %dinfo) #17, !dbg !4380
  %28 = load i32, ptr %retval, align 4, !dbg !4380
  ret i32 %28, !dbg !4380
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2_free_file_info(ptr noundef %sb, i32 noundef %type) #2 align 16 !dbg !4381 {
entry:
  %sb.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4383, metadata !DIExpression()), !dbg !4385
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4384, metadata !DIExpression()), !dbg !4386
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4387
  %1 = load i32, ptr %type.addr, align 4, !dbg !4388
  %call = call ptr @sb_dqinfo(ptr noundef %0, i32 noundef %1) #15, !dbg !4389
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %call, i32 0, i32 8, !dbg !4390
  %2 = load ptr, ptr %dqi_priv, align 8, !dbg !4390
  call void @kfree(ptr noundef %2) #15, !dbg !4391
  ret i32 0, !dbg !4392
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2_read_dquot(ptr noundef %dquot) #2 align 16 !dbg !4393 {
entry:
  %dquot.addr = alloca ptr, align 8
  %dqopt = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4395, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.start.p0(i64 8, ptr %dqopt) #17, !dbg !4399
  call void @llvm.dbg.declare(metadata ptr %dqopt, metadata !4396, metadata !DIExpression()), !dbg !4400
  %0 = load ptr, ptr %dquot.addr, align 8, !dbg !4401
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %0, i32 0, i32 7, !dbg !4402
  %1 = load ptr, ptr %dq_sb, align 8, !dbg !4402
  %call = call ptr @sb_dqopt(ptr noundef %1) #15, !dbg !4403
  store ptr %call, ptr %dqopt, align 8, !dbg !4400
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4404
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4397, metadata !DIExpression()), !dbg !4405
  %2 = load ptr, ptr %dqopt, align 8, !dbg !4406
  %dqio_sem = getelementptr inbounds %struct.quota_info, ptr %2, i32 0, i32 1, !dbg !4407
  call void @down_read(ptr noundef %dqio_sem) #15, !dbg !4408
  %3 = load ptr, ptr %dquot.addr, align 8, !dbg !4409
  %dq_sb1 = getelementptr inbounds %struct.dquot, ptr %3, i32 0, i32 7, !dbg !4410
  %4 = load ptr, ptr %dq_sb1, align 8, !dbg !4410
  %5 = load ptr, ptr %dquot.addr, align 8, !dbg !4411
  %dq_id = getelementptr inbounds %struct.dquot, ptr %5, i32 0, i32 8, !dbg !4412
  %type = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !4413
  %6 = load i32, ptr %type, align 4, !dbg !4413
  %call2 = call ptr @sb_dqinfo(ptr noundef %4, i32 noundef %6) #15, !dbg !4414
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %call2, i32 0, i32 8, !dbg !4415
  %7 = load ptr, ptr %dqi_priv, align 8, !dbg !4415
  %8 = load ptr, ptr %dquot.addr, align 8, !dbg !4416
  %call3 = call i32 @qtree_read_dquot(ptr noundef %7, ptr noundef %8) #15, !dbg !4417
  store i32 %call3, ptr %ret, align 4, !dbg !4418
  %9 = load ptr, ptr %dqopt, align 8, !dbg !4419
  %dqio_sem4 = getelementptr inbounds %struct.quota_info, ptr %9, i32 0, i32 1, !dbg !4420
  call void @up_read(ptr noundef %dqio_sem4) #15, !dbg !4421
  %10 = load i32, ptr %ret, align 4, !dbg !4422
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4423
  call void @llvm.lifetime.end.p0(i64 8, ptr %dqopt) #17, !dbg !4423
  ret i32 %10, !dbg !4424
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2_write_dquot(ptr noundef %dquot) #2 align 16 !dbg !4425 {
entry:
  %dquot.addr = alloca ptr, align 8
  %dqopt = alloca ptr, align 8
  %ret = alloca i32, align 4
  %alloc = alloca i8, align 1
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4427, metadata !DIExpression()), !dbg !4431
  call void @llvm.lifetime.start.p0(i64 8, ptr %dqopt) #17, !dbg !4432
  call void @llvm.dbg.declare(metadata ptr %dqopt, metadata !4428, metadata !DIExpression()), !dbg !4433
  %0 = load ptr, ptr %dquot.addr, align 8, !dbg !4434
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %0, i32 0, i32 7, !dbg !4435
  %1 = load ptr, ptr %dq_sb, align 8, !dbg !4435
  %call = call ptr @sb_dqopt(ptr noundef %1) #15, !dbg !4436
  store ptr %call, ptr %dqopt, align 8, !dbg !4433
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4437
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4429, metadata !DIExpression()), !dbg !4438
  call void @llvm.lifetime.start.p0(i64 1, ptr %alloc) #17, !dbg !4439
  call void @llvm.dbg.declare(metadata ptr %alloc, metadata !4430, metadata !DIExpression()), !dbg !4440
  store i8 0, ptr %alloc, align 1, !dbg !4440
  %2 = load ptr, ptr %dquot.addr, align 8, !dbg !4441
  %dq_off = getelementptr inbounds %struct.dquot, ptr %2, i32 0, i32 9, !dbg !4443
  %3 = load i64, ptr %dq_off, align 8, !dbg !4443
  %tobool = icmp ne i64 %3, 0, !dbg !4441
  br i1 %tobool, label %if.else, label %if.then, !dbg !4444

if.then:                                          ; preds = %entry
  store i8 1, ptr %alloc, align 1, !dbg !4445
  %4 = load ptr, ptr %dqopt, align 8, !dbg !4447
  %dqio_sem = getelementptr inbounds %struct.quota_info, ptr %4, i32 0, i32 1, !dbg !4448
  call void @down_write(ptr noundef %dqio_sem) #15, !dbg !4449
  br label %if.end, !dbg !4450

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %dqopt, align 8, !dbg !4451
  %dqio_sem1 = getelementptr inbounds %struct.quota_info, ptr %5, i32 0, i32 1, !dbg !4453
  call void @down_read(ptr noundef %dqio_sem1) #15, !dbg !4454
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %dquot.addr, align 8, !dbg !4455
  %dq_sb2 = getelementptr inbounds %struct.dquot, ptr %6, i32 0, i32 7, !dbg !4456
  %7 = load ptr, ptr %dq_sb2, align 8, !dbg !4456
  %8 = load ptr, ptr %dquot.addr, align 8, !dbg !4457
  %dq_id = getelementptr inbounds %struct.dquot, ptr %8, i32 0, i32 8, !dbg !4458
  %type = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !4459
  %9 = load i32, ptr %type, align 4, !dbg !4459
  %call3 = call ptr @sb_dqinfo(ptr noundef %7, i32 noundef %9) #15, !dbg !4460
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %call3, i32 0, i32 8, !dbg !4461
  %10 = load ptr, ptr %dqi_priv, align 8, !dbg !4461
  %11 = load ptr, ptr %dquot.addr, align 8, !dbg !4462
  %call4 = call i32 @qtree_write_dquot(ptr noundef %10, ptr noundef %11) #15, !dbg !4463
  store i32 %call4, ptr %ret, align 4, !dbg !4464
  %12 = load i8, ptr %alloc, align 1, !dbg !4465, !range !4467, !noundef !472
  %tobool5 = trunc i8 %12 to i1, !dbg !4465
  br i1 %tobool5, label %if.then6, label %if.else8, !dbg !4468

if.then6:                                         ; preds = %if.end
  %13 = load ptr, ptr %dqopt, align 8, !dbg !4469
  %dqio_sem7 = getelementptr inbounds %struct.quota_info, ptr %13, i32 0, i32 1, !dbg !4470
  call void @up_write(ptr noundef %dqio_sem7) #15, !dbg !4471
  br label %if.end10, !dbg !4471

if.else8:                                         ; preds = %if.end
  %14 = load ptr, ptr %dqopt, align 8, !dbg !4472
  %dqio_sem9 = getelementptr inbounds %struct.quota_info, ptr %14, i32 0, i32 1, !dbg !4473
  call void @up_read(ptr noundef %dqio_sem9) #15, !dbg !4474
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  %15 = load i32, ptr %ret, align 4, !dbg !4475
  call void @llvm.lifetime.end.p0(i64 1, ptr %alloc) #17, !dbg !4476
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4476
  call void @llvm.lifetime.end.p0(i64 8, ptr %dqopt) #17, !dbg !4476
  ret i32 %15, !dbg !4477
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2_release_dquot(ptr noundef %dquot) #2 align 16 !dbg !4478 {
entry:
  %dquot.addr = alloca ptr, align 8
  %dqopt = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4480, metadata !DIExpression()), !dbg !4483
  call void @llvm.lifetime.start.p0(i64 8, ptr %dqopt) #17, !dbg !4484
  call void @llvm.dbg.declare(metadata ptr %dqopt, metadata !4481, metadata !DIExpression()), !dbg !4485
  %0 = load ptr, ptr %dquot.addr, align 8, !dbg !4486
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %0, i32 0, i32 7, !dbg !4487
  %1 = load ptr, ptr %dq_sb, align 8, !dbg !4487
  %call = call ptr @sb_dqopt(ptr noundef %1) #15, !dbg !4488
  store ptr %call, ptr %dqopt, align 8, !dbg !4485
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4489
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4482, metadata !DIExpression()), !dbg !4490
  %2 = load ptr, ptr %dqopt, align 8, !dbg !4491
  %dqio_sem = getelementptr inbounds %struct.quota_info, ptr %2, i32 0, i32 1, !dbg !4492
  call void @down_write(ptr noundef %dqio_sem) #15, !dbg !4493
  %3 = load ptr, ptr %dquot.addr, align 8, !dbg !4494
  %dq_sb1 = getelementptr inbounds %struct.dquot, ptr %3, i32 0, i32 7, !dbg !4495
  %4 = load ptr, ptr %dq_sb1, align 8, !dbg !4495
  %5 = load ptr, ptr %dquot.addr, align 8, !dbg !4496
  %dq_id = getelementptr inbounds %struct.dquot, ptr %5, i32 0, i32 8, !dbg !4497
  %type = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !4498
  %6 = load i32, ptr %type, align 4, !dbg !4498
  %call2 = call ptr @sb_dqinfo(ptr noundef %4, i32 noundef %6) #15, !dbg !4499
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %call2, i32 0, i32 8, !dbg !4500
  %7 = load ptr, ptr %dqi_priv, align 8, !dbg !4500
  %8 = load ptr, ptr %dquot.addr, align 8, !dbg !4501
  %call3 = call i32 @qtree_release_dquot(ptr noundef %7, ptr noundef %8) #15, !dbg !4502
  store i32 %call3, ptr %ret, align 4, !dbg !4503
  %9 = load ptr, ptr %dqopt, align 8, !dbg !4504
  %dqio_sem4 = getelementptr inbounds %struct.quota_info, ptr %9, i32 0, i32 1, !dbg !4505
  call void @up_write(ptr noundef %dqio_sem4) #15, !dbg !4506
  %10 = load i32, ptr %ret, align 4, !dbg !4507
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4508
  call void @llvm.lifetime.end.p0(i64 8, ptr %dqopt) #17, !dbg !4508
  ret i32 %10, !dbg !4509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2_get_next_id(ptr noundef %sb, ptr noundef %qid) #2 align 16 !dbg !4510 {
entry:
  %sb.addr = alloca ptr, align 8
  %qid.addr = alloca ptr, align 8
  %dqopt = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4512, metadata !DIExpression()), !dbg !4516
  store ptr %qid, ptr %qid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qid.addr, metadata !4513, metadata !DIExpression()), !dbg !4517
  call void @llvm.lifetime.start.p0(i64 8, ptr %dqopt) #17, !dbg !4518
  call void @llvm.dbg.declare(metadata ptr %dqopt, metadata !4514, metadata !DIExpression()), !dbg !4519
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4520
  %call = call ptr @sb_dqopt(ptr noundef %0) #15, !dbg !4521
  store ptr %call, ptr %dqopt, align 8, !dbg !4519
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4522
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4515, metadata !DIExpression()), !dbg !4523
  %1 = load ptr, ptr %dqopt, align 8, !dbg !4524
  %dqio_sem = getelementptr inbounds %struct.quota_info, ptr %1, i32 0, i32 1, !dbg !4525
  call void @down_read(ptr noundef %dqio_sem) #15, !dbg !4526
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4527
  %3 = load ptr, ptr %qid.addr, align 8, !dbg !4528
  %type = getelementptr inbounds %struct.kqid, ptr %3, i32 0, i32 1, !dbg !4529
  %4 = load i32, ptr %type, align 4, !dbg !4529
  %call1 = call ptr @sb_dqinfo(ptr noundef %2, i32 noundef %4) #15, !dbg !4530
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %call1, i32 0, i32 8, !dbg !4531
  %5 = load ptr, ptr %dqi_priv, align 8, !dbg !4531
  %6 = load ptr, ptr %qid.addr, align 8, !dbg !4532
  %call2 = call i32 @qtree_get_next_id(ptr noundef %5, ptr noundef %6) #15, !dbg !4533
  store i32 %call2, ptr %ret, align 4, !dbg !4534
  %7 = load ptr, ptr %dqopt, align 8, !dbg !4535
  %dqio_sem3 = getelementptr inbounds %struct.quota_info, ptr %7, i32 0, i32 1, !dbg !4536
  call void @up_read(ptr noundef %dqio_sem3) #15, !dbg !4537
  %8 = load i32, ptr %ret, align 4, !dbg !4538
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4539
  call void @llvm.lifetime.end.p0(i64 8, ptr %dqopt) #17, !dbg !4539
  ret i32 %8, !dbg !4540
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2_read_header(ptr noundef %sb, i32 noundef %type, ptr noundef %dqhead) #2 align 16 !dbg !4541 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %dqhead.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4546, metadata !DIExpression()), !dbg !4550
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4547, metadata !DIExpression()), !dbg !4551
  store ptr %dqhead, ptr %dqhead.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dqhead.addr, metadata !4548, metadata !DIExpression()), !dbg !4552
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !4553
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4549, metadata !DIExpression()), !dbg !4554
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4555
  %s_op = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6, !dbg !4556
  %1 = load ptr, ptr %s_op, align 16, !dbg !4556
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %1, i32 0, i32 20, !dbg !4557
  %2 = load ptr, ptr %quota_read, align 8, !dbg !4557
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !4558
  %4 = load i32, ptr %type.addr, align 4, !dbg !4559
  %5 = load ptr, ptr %dqhead.addr, align 8, !dbg !4560
  %call = call i64 %2(ptr noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef 8, i64 noundef 0) #15, !dbg !4555
  store i64 %call, ptr %size, align 8, !dbg !4561
  %6 = load i64, ptr %size, align 8, !dbg !4562
  %cmp = icmp ne i64 %6, 8, !dbg !4564
  br i1 %cmp, label %if.then, label %if.end3, !dbg !4565

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %sb.addr, align 8, !dbg !4566
  %8 = load i64, ptr %size, align 8, !dbg !4566
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %7, ptr noundef @__func__.v2_read_header, ptr noundef @.str, i64 noundef 8, i64 noundef %8) #15, !dbg !4566
  %9 = load i64, ptr %size, align 8, !dbg !4568
  %cmp1 = icmp slt i64 %9, 0, !dbg !4570
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !4571

if.then2:                                         ; preds = %if.then
  %10 = load i64, ptr %size, align 8, !dbg !4572
  %conv = trunc i64 %10 to i32, !dbg !4572
  store i32 %conv, ptr %retval, align 4, !dbg !4573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4573

if.end:                                           ; preds = %if.then
  store i32 -5, ptr %retval, align 4, !dbg !4574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4574

if.end3:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4575

cleanup:                                          ; preds = %if.end3, %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !4576
  %11 = load i32, ptr %retval, align 4, !dbg !4576
  ret i32 %11, !dbg !4576
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4577 dso_local void @__quota_error(ptr noundef, ptr noundef, ptr noundef, ...) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sb_dqopt(ptr noundef %sb) #5 align 16 !dbg !4581 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4587
  %s_dquot = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27, !dbg !4588
  ret ptr %s_dquot, !dbg !4589
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4590 dso_local void @down_read(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4594 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4598, metadata !DIExpression()), !dbg !4603
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4599, metadata !DIExpression()), !dbg !4604
  %0 = load i64, ptr %size.addr, align 8, !dbg !4605
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4606
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4607

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4608
  %tobool = icmp ne i64 %2, 0, !dbg !4608
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4609

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !4610
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4600, metadata !DIExpression()), !dbg !4611
  %3 = load i64, ptr %size.addr, align 8, !dbg !4612
  %cmp = icmp ugt i64 %3, 8192, !dbg !4614
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4615

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4616
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4617
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !4618
  store ptr %call, ptr %retval, align 8, !dbg !4619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4619

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4620
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !4620
  store i32 %call2, ptr %index, align 4, !dbg !4621
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4622
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4623
  %9 = ptrtoint ptr %8 to i64, !dbg !4623
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !4624
  %idxprom = zext i32 %call3 to i64, !dbg !4625
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4625
  %10 = load i32, ptr %index, align 4, !dbg !4626
  %idxprom4 = zext i32 %10 to i64, !dbg !4625
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4625
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4625
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4627
  %13 = load i64, ptr %size.addr, align 8, !dbg !4628
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !4629
  store ptr %call6, ptr %retval, align 8, !dbg !4630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4630

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !4631
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4632
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4633
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !4634
  store ptr %call8, ptr %retval, align 8, !dbg !4635
  br label %return, !dbg !4635

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4636
  ret ptr %16, !dbg !4636
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @qtree_depth(ptr noundef %info) #5 align 16 !dbg !4637 {
entry:
  %info.addr = alloca ptr, align 8
  %epb = alloca i32, align 4
  %entries = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4641, metadata !DIExpression()), !dbg !4645
  call void @llvm.lifetime.start.p0(i64 4, ptr %epb) #17, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %epb, metadata !4642, metadata !DIExpression()), !dbg !4647
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4648
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !4649
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !4649
  %shr = lshr i32 %1, 2, !dbg !4650
  store i32 %shr, ptr %epb, align 4, !dbg !4647
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #17, !dbg !4651
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !4643, metadata !DIExpression()), !dbg !4652
  %2 = load i32, ptr %epb, align 4, !dbg !4653
  %conv = zext i32 %2 to i64, !dbg !4653
  store i64 %conv, ptr %entries, align 8, !dbg !4652
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !4654
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4644, metadata !DIExpression()), !dbg !4655
  store i32 1, ptr %i, align 4, !dbg !4656
  br label %for.cond, !dbg !4658

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %entries, align 8, !dbg !4659
  %cmp = icmp ult i64 %3, 4294967296, !dbg !4661
  br i1 %cmp, label %for.body, label %for.end, !dbg !4662

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %epb, align 4, !dbg !4663
  %conv2 = zext i32 %4 to i64, !dbg !4663
  %5 = load i64, ptr %entries, align 8, !dbg !4664
  %mul = mul i64 %5, %conv2, !dbg !4664
  store i64 %mul, ptr %entries, align 8, !dbg !4664
  br label %for.inc, !dbg !4665

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !4666
  %inc = add i32 %6, 1, !dbg !4666
  store i32 %inc, ptr %i, align 4, !dbg !4666
  br label %for.cond, !dbg !4667, !llvm.loop !4668

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %i, align 4, !dbg !4672
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !4673
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #17, !dbg !4673
  call void @llvm.lifetime.end.p0(i64 4, ptr %epb) #17, !dbg !4673
  ret i32 %7, !dbg !4674
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @i_size_read(ptr noundef %inode) #5 align 16 !dbg !4675 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4679, metadata !DIExpression()), !dbg !4680
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4681
  %i_size = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, !dbg !4682
  %1 = load i64, ptr %i_size, align 8, !dbg !4682
  ret i64 %1, !dbg !4683
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4684 dso_local void @kfree(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4687 dso_local void @up_read(ptr noundef) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4688 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !4689 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4693, metadata !DIExpression()), !dbg !4695
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4694, metadata !DIExpression()), !dbg !4696
  %0 = load i64, ptr %size.addr, align 8, !dbg !4697
  %tobool = icmp ne i64 %0, 0, !dbg !4697
  br i1 %tobool, label %if.end, label %if.then, !dbg !4699

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4700
  br label %return, !dbg !4700

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4701
  %cmp = icmp ule i64 %1, 8, !dbg !4703
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4704

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4705
  br label %return, !dbg !4705

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4706
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4708
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4709

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4710
  %cmp4 = icmp ule i64 %3, 96, !dbg !4711
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4712

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4713
  br label %return, !dbg !4713

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4714
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4716
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4717

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4718
  %cmp9 = icmp ule i64 %5, 192, !dbg !4719
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4720

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4721
  br label %return, !dbg !4721

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4722
  %cmp12 = icmp ule i64 %6, 8, !dbg !4724
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4725

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4726
  br label %return, !dbg !4726

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4727
  %cmp15 = icmp ule i64 %7, 16, !dbg !4729
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4730

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4731
  br label %return, !dbg !4731

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4732
  %cmp18 = icmp ule i64 %8, 32, !dbg !4734
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4735

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4736
  br label %return, !dbg !4736

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4737
  %cmp21 = icmp ule i64 %9, 64, !dbg !4739
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4740

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4741
  br label %return, !dbg !4741

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4742
  %cmp24 = icmp ule i64 %10, 128, !dbg !4744
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4745

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4746
  br label %return, !dbg !4746

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4747
  %cmp27 = icmp ule i64 %11, 256, !dbg !4749
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4750

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4751
  br label %return, !dbg !4751

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4752
  %cmp30 = icmp ule i64 %12, 512, !dbg !4754
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4755

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4756
  br label %return, !dbg !4756

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4757
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4759
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4760

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4761
  br label %return, !dbg !4761

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4762
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4764
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4765

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4766
  br label %return, !dbg !4766

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4767
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4769
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4770

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4771
  br label %return, !dbg !4771

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4772
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4774
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4775

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4776
  br label %return, !dbg !4776

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4777
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4779
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4780

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4781
  br label %return, !dbg !4781

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4782
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4784
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4785

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4786
  br label %return, !dbg !4786

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4787
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4789
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4790

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4791
  br label %return, !dbg !4791

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4792
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4794
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4795

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4796
  br label %return, !dbg !4796

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4797
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4799
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4800

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4801
  br label %return, !dbg !4801

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4802
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4804
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4805

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4806
  br label %return, !dbg !4806

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4807
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4809
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4810

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4811
  br label %return, !dbg !4811

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4812
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4814
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4815

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4816
  br label %return, !dbg !4816

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4817, !range !4467, !noundef !472
  %tobool69 = trunc i8 %25 to i1, !dbg !4817
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4819

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4820

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !4821, !srcloc !4824
  unreachable, !dbg !4821

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4825

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4826

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4827

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4829

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4827

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #17, !dbg !4831, !srcloc !4833
  br label %do.end75, !dbg !4831

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4827

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4834
  br label %return, !dbg !4834

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4835
  ret i32 %26, !dbg !4835
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4836 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !4842 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4846, metadata !DIExpression()), !dbg !4848
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4847, metadata !DIExpression()), !dbg !4849
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4850
  %and = and i32 %0, 17, !dbg !4850
  %cmp = icmp eq i32 %and, 0, !dbg !4850
  %lnot = xor i1 %cmp, true, !dbg !4850
  %lnot1 = xor i1 %lnot, true, !dbg !4850
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4850
  %conv = sext i32 %lnot.ext to i64, !dbg !4850
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4850
  %tobool = icmp ne i64 %expval, 0, !dbg !4850
  br i1 %tobool, label %if.then, label %if.end, !dbg !4852

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4853
  br label %return, !dbg !4853

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4854
  %and2 = and i32 %1, 1, !dbg !4856
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4856
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4857

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4858
  br label %return, !dbg !4858

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4859
  br label %return, !dbg !4859

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4861
  ret i32 %2, !dbg !4861
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4862 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4863 dso_local void @__compiletime_assert_245() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v2r0_mem2diskdqb(ptr noundef %dp, ptr noundef %dquot) #2 align 16 !dbg !4864 {
entry:
  %dp.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %m = alloca ptr, align 8
  %info = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !4866, metadata !DIExpression()), !dbg !4884
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #17, !dbg !4886
  call void @llvm.dbg.declare(metadata ptr %d, metadata !4868, metadata !DIExpression()), !dbg !4887
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !4888
  store ptr %0, ptr %d, align 8, !dbg !4887
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #17, !dbg !4889
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4881, metadata !DIExpression()), !dbg !4890
  %1 = load ptr, ptr %dquot.addr, align 8, !dbg !4891
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %1, i32 0, i32 11, !dbg !4892
  store ptr %dq_dqb, ptr %m, align 8, !dbg !4890
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4883, metadata !DIExpression()), !dbg !4894
  %2 = load ptr, ptr %dquot.addr, align 8, !dbg !4895
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %2, i32 0, i32 7, !dbg !4896
  %3 = load ptr, ptr %dq_sb, align 8, !dbg !4896
  %4 = load ptr, ptr %dquot.addr, align 8, !dbg !4897
  %dq_id = getelementptr inbounds %struct.dquot, ptr %4, i32 0, i32 8, !dbg !4898
  %type = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !4899
  %5 = load i32, ptr %type, align 4, !dbg !4899
  %call = call ptr @sb_dqinfo(ptr noundef %3, i32 noundef %5) #15, !dbg !4900
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %call, i32 0, i32 8, !dbg !4901
  %6 = load ptr, ptr %dqi_priv, align 8, !dbg !4901
  store ptr %6, ptr %info, align 8, !dbg !4894
  %7 = load ptr, ptr %m, align 8, !dbg !4902
  %dqb_ihardlimit = getelementptr inbounds %struct.mem_dqblk, ptr %7, i32 0, i32 4, !dbg !4902
  %8 = load i64, ptr %dqb_ihardlimit, align 8, !dbg !4902
  %conv = trunc i64 %8 to i32, !dbg !4902
  %9 = load ptr, ptr %d, align 8, !dbg !4903
  %dqb_ihardlimit1 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %9, i32 0, i32 1, !dbg !4904
  store i32 %conv, ptr %dqb_ihardlimit1, align 4, !dbg !4905
  %10 = load ptr, ptr %m, align 8, !dbg !4906
  %dqb_isoftlimit = getelementptr inbounds %struct.mem_dqblk, ptr %10, i32 0, i32 5, !dbg !4906
  %11 = load i64, ptr %dqb_isoftlimit, align 8, !dbg !4906
  %conv2 = trunc i64 %11 to i32, !dbg !4906
  %12 = load ptr, ptr %d, align 8, !dbg !4907
  %dqb_isoftlimit3 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %12, i32 0, i32 2, !dbg !4908
  store i32 %conv2, ptr %dqb_isoftlimit3, align 8, !dbg !4909
  %13 = load ptr, ptr %m, align 8, !dbg !4910
  %dqb_curinodes = getelementptr inbounds %struct.mem_dqblk, ptr %13, i32 0, i32 6, !dbg !4910
  %14 = load i64, ptr %dqb_curinodes, align 8, !dbg !4910
  %conv4 = trunc i64 %14 to i32, !dbg !4910
  %15 = load ptr, ptr %d, align 8, !dbg !4911
  %dqb_curinodes5 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %15, i32 0, i32 3, !dbg !4912
  store i32 %conv4, ptr %dqb_curinodes5, align 4, !dbg !4913
  %16 = load ptr, ptr %m, align 8, !dbg !4914
  %dqb_itime = getelementptr inbounds %struct.mem_dqblk, ptr %16, i32 0, i32 8, !dbg !4914
  %17 = load i64, ptr %dqb_itime, align 8, !dbg !4914
  %18 = load ptr, ptr %d, align 8, !dbg !4915
  %dqb_itime6 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %18, i32 0, i32 8, !dbg !4916
  store i64 %17, ptr %dqb_itime6, align 8, !dbg !4917
  %19 = load ptr, ptr %m, align 8, !dbg !4918
  %dqb_bhardlimit = getelementptr inbounds %struct.mem_dqblk, ptr %19, i32 0, i32 0, !dbg !4918
  %20 = load i64, ptr %dqb_bhardlimit, align 8, !dbg !4918
  %call7 = call i64 @v2_stoqb(i64 noundef %20) #15, !dbg !4918
  %conv8 = trunc i64 %call7 to i32, !dbg !4918
  %21 = load ptr, ptr %d, align 8, !dbg !4919
  %dqb_bhardlimit9 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %21, i32 0, i32 4, !dbg !4920
  store i32 %conv8, ptr %dqb_bhardlimit9, align 8, !dbg !4921
  %22 = load ptr, ptr %m, align 8, !dbg !4922
  %dqb_bsoftlimit = getelementptr inbounds %struct.mem_dqblk, ptr %22, i32 0, i32 1, !dbg !4922
  %23 = load i64, ptr %dqb_bsoftlimit, align 8, !dbg !4922
  %call10 = call i64 @v2_stoqb(i64 noundef %23) #15, !dbg !4922
  %conv11 = trunc i64 %call10 to i32, !dbg !4922
  %24 = load ptr, ptr %d, align 8, !dbg !4923
  %dqb_bsoftlimit12 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %24, i32 0, i32 5, !dbg !4924
  store i32 %conv11, ptr %dqb_bsoftlimit12, align 4, !dbg !4925
  %25 = load ptr, ptr %m, align 8, !dbg !4926
  %dqb_curspace = getelementptr inbounds %struct.mem_dqblk, ptr %25, i32 0, i32 2, !dbg !4926
  %26 = load i64, ptr %dqb_curspace, align 8, !dbg !4926
  %27 = load ptr, ptr %d, align 8, !dbg !4927
  %dqb_curspace13 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %27, i32 0, i32 6, !dbg !4928
  store i64 %26, ptr %dqb_curspace13, align 8, !dbg !4929
  %28 = load ptr, ptr %m, align 8, !dbg !4930
  %dqb_btime = getelementptr inbounds %struct.mem_dqblk, ptr %28, i32 0, i32 7, !dbg !4930
  %29 = load i64, ptr %dqb_btime, align 8, !dbg !4930
  %30 = load ptr, ptr %d, align 8, !dbg !4931
  %dqb_btime14 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %30, i32 0, i32 7, !dbg !4932
  store i64 %29, ptr %dqb_btime14, align 8, !dbg !4933
  %31 = load ptr, ptr %dquot.addr, align 8, !dbg !4934
  %dq_id15 = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 8, !dbg !4934
  %32 = load i64, ptr %dq_id15, align 8, !dbg !4934
  %call16 = call i32 @from_kqid(ptr noundef @init_user_ns, i64 %32) #15, !dbg !4934
  %33 = load ptr, ptr %d, align 8, !dbg !4935
  %dqb_id = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %33, i32 0, i32 0, !dbg !4936
  store i32 %call16, ptr %dqb_id, align 8, !dbg !4937
  %34 = load ptr, ptr %info, align 8, !dbg !4938
  %35 = load ptr, ptr %dp.addr, align 8, !dbg !4940
  %call17 = call i32 @qtree_entry_unused(ptr noundef %34, ptr noundef %35) #15, !dbg !4941
  %tobool = icmp ne i32 %call17, 0, !dbg !4941
  br i1 %tobool, label %if.then, label %if.end, !dbg !4942

if.then:                                          ; preds = %entry
  %36 = load ptr, ptr %d, align 8, !dbg !4943
  %dqb_itime18 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %36, i32 0, i32 8, !dbg !4944
  store i64 1, ptr %dqb_itime18, align 8, !dbg !4945
  br label %if.end, !dbg !4943

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !4946
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #17, !dbg !4946
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #17, !dbg !4946
  ret void, !dbg !4946
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v2r0_disk2memdqb(ptr noundef %dquot, ptr noundef %dp) #2 align 16 !dbg !4947 {
entry:
  %dquot.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %empty = alloca %struct.v2r0_disk_dqblk, align 8
  %m = alloca ptr, align 8
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4949, metadata !DIExpression()), !dbg !4954
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !4950, metadata !DIExpression()), !dbg !4955
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #17, !dbg !4956
  call void @llvm.dbg.declare(metadata ptr %d, metadata !4951, metadata !DIExpression()), !dbg !4957
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !4958
  store ptr %0, ptr %d, align 8, !dbg !4957
  call void @llvm.lifetime.start.p0(i64 48, ptr %empty) #17, !dbg !4956
  call void @llvm.dbg.declare(metadata ptr %empty, metadata !4952, metadata !DIExpression()), !dbg !4959
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #17, !dbg !4960
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4953, metadata !DIExpression()), !dbg !4961
  %1 = load ptr, ptr %dquot.addr, align 8, !dbg !4962
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %1, i32 0, i32 11, !dbg !4963
  store ptr %dq_dqb, ptr %m, align 8, !dbg !4961
  %2 = load ptr, ptr %d, align 8, !dbg !4964
  %dqb_ihardlimit = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %2, i32 0, i32 1, !dbg !4964
  %3 = load i32, ptr %dqb_ihardlimit, align 4, !dbg !4964
  %conv = zext i32 %3 to i64, !dbg !4964
  %4 = load ptr, ptr %m, align 8, !dbg !4965
  %dqb_ihardlimit1 = getelementptr inbounds %struct.mem_dqblk, ptr %4, i32 0, i32 4, !dbg !4966
  store i64 %conv, ptr %dqb_ihardlimit1, align 8, !dbg !4967
  %5 = load ptr, ptr %d, align 8, !dbg !4968
  %dqb_isoftlimit = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %5, i32 0, i32 2, !dbg !4968
  %6 = load i32, ptr %dqb_isoftlimit, align 8, !dbg !4968
  %conv2 = zext i32 %6 to i64, !dbg !4968
  %7 = load ptr, ptr %m, align 8, !dbg !4969
  %dqb_isoftlimit3 = getelementptr inbounds %struct.mem_dqblk, ptr %7, i32 0, i32 5, !dbg !4970
  store i64 %conv2, ptr %dqb_isoftlimit3, align 8, !dbg !4971
  %8 = load ptr, ptr %d, align 8, !dbg !4972
  %dqb_curinodes = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %8, i32 0, i32 3, !dbg !4972
  %9 = load i32, ptr %dqb_curinodes, align 4, !dbg !4972
  %conv4 = zext i32 %9 to i64, !dbg !4972
  %10 = load ptr, ptr %m, align 8, !dbg !4973
  %dqb_curinodes5 = getelementptr inbounds %struct.mem_dqblk, ptr %10, i32 0, i32 6, !dbg !4974
  store i64 %conv4, ptr %dqb_curinodes5, align 8, !dbg !4975
  %11 = load ptr, ptr %d, align 8, !dbg !4976
  %dqb_itime = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %11, i32 0, i32 8, !dbg !4976
  %12 = load i64, ptr %dqb_itime, align 8, !dbg !4976
  %13 = load ptr, ptr %m, align 8, !dbg !4977
  %dqb_itime6 = getelementptr inbounds %struct.mem_dqblk, ptr %13, i32 0, i32 8, !dbg !4978
  store i64 %12, ptr %dqb_itime6, align 8, !dbg !4979
  %14 = load ptr, ptr %d, align 8, !dbg !4980
  %dqb_bhardlimit = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %14, i32 0, i32 4, !dbg !4980
  %15 = load i32, ptr %dqb_bhardlimit, align 8, !dbg !4980
  %conv7 = zext i32 %15 to i64, !dbg !4980
  %call = call i64 @v2_qbtos(i64 noundef %conv7) #15, !dbg !4981
  %16 = load ptr, ptr %m, align 8, !dbg !4982
  %dqb_bhardlimit8 = getelementptr inbounds %struct.mem_dqblk, ptr %16, i32 0, i32 0, !dbg !4983
  store i64 %call, ptr %dqb_bhardlimit8, align 8, !dbg !4984
  %17 = load ptr, ptr %d, align 8, !dbg !4985
  %dqb_bsoftlimit = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %17, i32 0, i32 5, !dbg !4985
  %18 = load i32, ptr %dqb_bsoftlimit, align 4, !dbg !4985
  %conv9 = zext i32 %18 to i64, !dbg !4985
  %call10 = call i64 @v2_qbtos(i64 noundef %conv9) #15, !dbg !4986
  %19 = load ptr, ptr %m, align 8, !dbg !4987
  %dqb_bsoftlimit11 = getelementptr inbounds %struct.mem_dqblk, ptr %19, i32 0, i32 1, !dbg !4988
  store i64 %call10, ptr %dqb_bsoftlimit11, align 8, !dbg !4989
  %20 = load ptr, ptr %d, align 8, !dbg !4990
  %dqb_curspace = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %20, i32 0, i32 6, !dbg !4990
  %21 = load i64, ptr %dqb_curspace, align 8, !dbg !4990
  %22 = load ptr, ptr %m, align 8, !dbg !4991
  %dqb_curspace12 = getelementptr inbounds %struct.mem_dqblk, ptr %22, i32 0, i32 2, !dbg !4992
  store i64 %21, ptr %dqb_curspace12, align 8, !dbg !4993
  %23 = load ptr, ptr %d, align 8, !dbg !4994
  %dqb_btime = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %23, i32 0, i32 7, !dbg !4994
  %24 = load i64, ptr %dqb_btime, align 8, !dbg !4994
  %25 = load ptr, ptr %m, align 8, !dbg !4995
  %dqb_btime13 = getelementptr inbounds %struct.mem_dqblk, ptr %25, i32 0, i32 7, !dbg !4996
  store i64 %24, ptr %dqb_btime13, align 8, !dbg !4997
  call void @llvm.memset.p0.i64(ptr align 8 %empty, i8 0, i64 48, i1 false), !dbg !4998
  %dqb_itime14 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %empty, i32 0, i32 8, !dbg !4999
  store i64 1, ptr %dqb_itime14, align 8, !dbg !5000
  %26 = load ptr, ptr %dp.addr, align 8, !dbg !5001
  %call15 = call i32 @memcmp(ptr noundef %empty, ptr noundef %26, i64 noundef 48) #15, !dbg !5003
  %tobool = icmp ne i32 %call15, 0, !dbg !5003
  br i1 %tobool, label %if.end, label %if.then, !dbg !5004

if.then:                                          ; preds = %entry
  %27 = load ptr, ptr %m, align 8, !dbg !5005
  %dqb_itime16 = getelementptr inbounds %struct.mem_dqblk, ptr %27, i32 0, i32 8, !dbg !5006
  store i64 0, ptr %dqb_itime16, align 8, !dbg !5007
  br label %if.end, !dbg !5005

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #17, !dbg !5008
  call void @llvm.lifetime.end.p0(i64 48, ptr %empty) #17, !dbg !5008
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #17, !dbg !5008
  ret void, !dbg !5008
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2r0_is_id(ptr noundef %dp, ptr noundef %dquot) #2 align 16 !dbg !5009 {
entry:
  %retval = alloca i32, align 4
  %dp.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.kqid, align 4
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !5011, metadata !DIExpression()), !dbg !5015
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !5012, metadata !DIExpression()), !dbg !5016
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #17, !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5013, metadata !DIExpression()), !dbg !5018
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !5019
  store ptr %0, ptr %d, align 8, !dbg !5018
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5014, metadata !DIExpression()), !dbg !5021
  %1 = load ptr, ptr %dquot.addr, align 8, !dbg !5022
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %1, i32 0, i32 7, !dbg !5023
  %2 = load ptr, ptr %dq_sb, align 8, !dbg !5023
  %3 = load ptr, ptr %dquot.addr, align 8, !dbg !5024
  %dq_id = getelementptr inbounds %struct.dquot, ptr %3, i32 0, i32 8, !dbg !5025
  %type = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !5026
  %4 = load i32, ptr %type, align 4, !dbg !5026
  %call = call ptr @sb_dqinfo(ptr noundef %2, i32 noundef %4) #15, !dbg !5027
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %call, i32 0, i32 8, !dbg !5028
  %5 = load ptr, ptr %dqi_priv, align 8, !dbg !5028
  store ptr %5, ptr %info, align 8, !dbg !5021
  %6 = load ptr, ptr %info, align 8, !dbg !5029
  %7 = load ptr, ptr %dp.addr, align 8, !dbg !5031
  %call1 = call i32 @qtree_entry_unused(ptr noundef %6, ptr noundef %7) #15, !dbg !5032
  %tobool = icmp ne i32 %call1, 0, !dbg !5032
  br i1 %tobool, label %if.then, label %if.end, !dbg !5033

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5034

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %dquot.addr, align 8, !dbg !5035
  %dq_id2 = getelementptr inbounds %struct.dquot, ptr %8, i32 0, i32 8, !dbg !5036
  %type3 = getelementptr inbounds %struct.kqid, ptr %dq_id2, i32 0, i32 1, !dbg !5037
  %9 = load i32, ptr %type3, align 4, !dbg !5037
  %10 = load ptr, ptr %d, align 8, !dbg !5038
  %dqb_id = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %10, i32 0, i32 0, !dbg !5038
  %11 = load i32, ptr %dqb_id, align 8, !dbg !5038
  %call4 = call i64 @make_kqid(ptr noundef @init_user_ns, i32 noundef %9, i32 noundef %11) #15, !dbg !5039
  store i64 %call4, ptr %agg.tmp, align 4, !dbg !5039
  %12 = load ptr, ptr %dquot.addr, align 8, !dbg !5040
  %dq_id5 = getelementptr inbounds %struct.dquot, ptr %12, i32 0, i32 8, !dbg !5041
  %13 = load i64, ptr %agg.tmp, align 4, !dbg !5042
  %14 = load i64, ptr %dq_id5, align 8, !dbg !5042
  %call6 = call zeroext i1 @qid_eq(i64 %13, i64 %14) #15, !dbg !5042
  %conv = zext i1 %call6 to i32, !dbg !5042
  store i32 %conv, ptr %retval, align 4, !dbg !5043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5043

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #17, !dbg !5044
  %15 = load i32, ptr %retval, align 4, !dbg !5044
  ret i32 %15, !dbg !5044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sb_dqinfo(ptr noundef %sb, i32 noundef %type) #5 align 16 !dbg !5045 {
entry:
  %sb.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5049, metadata !DIExpression()), !dbg !5051
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5050, metadata !DIExpression()), !dbg !5052
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5053
  %call = call ptr @sb_dqopt(ptr noundef %0) #15, !dbg !5054
  %info = getelementptr inbounds %struct.quota_info, ptr %call, i32 0, i32 3, !dbg !5055
  %arraydecay = getelementptr inbounds [3 x %struct.mem_dqinfo], ptr %info, i64 0, i64 0, !dbg !5054
  %1 = load i32, ptr %type.addr, align 4, !dbg !5056
  %idx.ext = sext i32 %1 to i64, !dbg !5057
  %add.ptr = getelementptr %struct.mem_dqinfo, ptr %arraydecay, i64 %idx.ext, !dbg !5057
  ret ptr %add.ptr, !dbg !5058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @v2_stoqb(i64 noundef %space) #5 align 16 !dbg !5059 {
entry:
  %space.addr = alloca i64, align 8
  store i64 %space, ptr %space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %space.addr, metadata !5063, metadata !DIExpression()), !dbg !5064
  %0 = load i64, ptr %space.addr, align 8, !dbg !5065
  %add = add i64 %0, 1024, !dbg !5066
  %sub = sub i64 %add, 1, !dbg !5067
  %shr = ashr i64 %sub, 10, !dbg !5068
  ret i64 %shr, !dbg !5069
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5070 dso_local i32 @from_kqid(ptr noundef, i64) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5074 dso_local i32 @qtree_entry_unused(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @v2_qbtos(i64 noundef %blocks) #5 align 16 !dbg !5077 {
entry:
  %blocks.addr = alloca i64, align 8
  store i64 %blocks, ptr %blocks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocks.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load i64, ptr %blocks.addr, align 8, !dbg !5081
  %shl = shl i64 %0, 10, !dbg !5082
  ret i64 %shl, !dbg !5083
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5084 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5088 dso_local zeroext i1 @qid_eq(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @make_kqid(ptr noundef %from, i32 noundef %type, i32 noundef %qid) #5 align 16 !dbg !5091 {
entry:
  %retval = alloca %struct.kqid, align 4
  %from.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %qid.addr = alloca i32, align 4
  %tmp = alloca %struct.kuid_t, align 4
  %tmp3 = alloca %struct.kgid_t, align 4
  %tmp7 = alloca %struct.kprojid_t, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5095, metadata !DIExpression()), !dbg !5099
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5096, metadata !DIExpression()), !dbg !5100
  store i32 %qid, ptr %qid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %qid.addr, metadata !5097, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5098, metadata !DIExpression()), !dbg !5102
  %0 = load i32, ptr %type.addr, align 4, !dbg !5103
  %type1 = getelementptr inbounds %struct.kqid, ptr %retval, i32 0, i32 1, !dbg !5104
  store i32 %0, ptr %type1, align 4, !dbg !5105
  %1 = load i32, ptr %type.addr, align 4, !dbg !5106
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb6
  ], !dbg !5107

sw.bb:                                            ; preds = %entry
  %2 = getelementptr inbounds %struct.kqid, ptr %retval, i32 0, i32 0, !dbg !5108
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #17, !dbg !5110
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5111
  %4 = load i32, ptr %qid.addr, align 4, !dbg !5112
  %call = call i32 @make_kuid(ptr noundef %3, i32 noundef %4) #15, !dbg !5110
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !5110
  store i32 %call, ptr %coerce.dive, align 4, !dbg !5110
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %tmp, i64 4, i1 false), !dbg !5110
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #17, !dbg !5110
  br label %sw.epilog, !dbg !5113

sw.bb2:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.kqid, ptr %retval, i32 0, i32 0, !dbg !5114
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp3) #17, !dbg !5115
  %6 = load ptr, ptr %from.addr, align 8, !dbg !5116
  %7 = load i32, ptr %qid.addr, align 4, !dbg !5117
  %call4 = call i32 @make_kgid(ptr noundef %6, i32 noundef %7) #15, !dbg !5115
  %coerce.dive5 = getelementptr inbounds %struct.kgid_t, ptr %tmp3, i32 0, i32 0, !dbg !5115
  store i32 %call4, ptr %coerce.dive5, align 4, !dbg !5115
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %tmp3, i64 4, i1 false), !dbg !5115
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp3) #17, !dbg !5115
  br label %sw.epilog, !dbg !5118

sw.bb6:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.kqid, ptr %retval, i32 0, i32 0, !dbg !5119
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp7) #17, !dbg !5120
  %9 = load ptr, ptr %from.addr, align 8, !dbg !5121
  %10 = load i32, ptr %qid.addr, align 4, !dbg !5122
  %call8 = call i32 @make_kprojid(ptr noundef %9, i32 noundef %10) #15, !dbg !5120
  %coerce.dive9 = getelementptr inbounds %struct.kprojid_t, ptr %tmp7, i32 0, i32 0, !dbg !5120
  store i32 %call8, ptr %coerce.dive9, align 4, !dbg !5120
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %tmp7, i64 4, i1 false), !dbg !5120
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp7) #17, !dbg !5120
  br label %sw.epilog, !dbg !5123

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !5124

do.body:                                          ; preds = %sw.default
  br label %do.body10, !dbg !5125

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !5127

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !5125

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 114, i32 0, i64 12) #17, !dbg !5129, !srcloc !5131
  br label %do.end12, !dbg !5129

do.end12:                                         ; preds = %do.body11
  unreachable, !dbg !5125

do.end13:                                         ; No predecessors!
  br label %sw.epilog, !dbg !5132

sw.epilog:                                        ; preds = %do.end13, %sw.bb6, %sw.bb2, %sw.bb
  %11 = load i64, ptr %retval, align 4, !dbg !5133
  ret i64 %11, !dbg !5133
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #5 align 16 !dbg !5134 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5138, metadata !DIExpression()), !dbg !5140
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !5139, metadata !DIExpression()), !dbg !5141
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !5142
  %0 = load i32, ptr %uid.addr, align 4, !dbg !5142
  store i32 %0, ptr %val, align 4, !dbg !5142
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !5143
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5143
  ret i32 %1, !dbg !5143
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #5 align 16 !dbg !5144 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5148, metadata !DIExpression()), !dbg !5150
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !5149, metadata !DIExpression()), !dbg !5151
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5152
  %0 = load i32, ptr %gid.addr, align 4, !dbg !5152
  store i32 %0, ptr %val, align 4, !dbg !5152
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5153
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5153
  ret i32 %1, !dbg !5153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kprojid(ptr noundef %from, i32 noundef %projid) #5 align 16 !dbg !5154 {
entry:
  %retval = alloca %struct.kprojid_t, align 4
  %from.addr = alloca ptr, align 8
  %projid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5158, metadata !DIExpression()), !dbg !5160
  store i32 %projid, ptr %projid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %projid.addr, metadata !5159, metadata !DIExpression()), !dbg !5161
  %val = getelementptr inbounds %struct.kprojid_t, ptr %retval, i32 0, i32 0, !dbg !5162
  %0 = load i32, ptr %projid.addr, align 4, !dbg !5162
  store i32 %0, ptr %val, align 4, !dbg !5162
  %coerce.dive = getelementptr inbounds %struct.kprojid_t, ptr %retval, i32 0, i32 0, !dbg !5163
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5163
  ret i32 %1, !dbg !5163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v2r1_mem2diskdqb(ptr noundef %dp, ptr noundef %dquot) #2 align 16 !dbg !5164 {
entry:
  %dp.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %m = alloca ptr, align 8
  %info = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !5166, metadata !DIExpression()), !dbg !5184
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !5167, metadata !DIExpression()), !dbg !5185
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #17, !dbg !5186
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5168, metadata !DIExpression()), !dbg !5187
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !5188
  store ptr %0, ptr %d, align 8, !dbg !5187
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #17, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %m, metadata !5182, metadata !DIExpression()), !dbg !5190
  %1 = load ptr, ptr %dquot.addr, align 8, !dbg !5191
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %1, i32 0, i32 11, !dbg !5192
  store ptr %dq_dqb, ptr %m, align 8, !dbg !5190
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !5193
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5183, metadata !DIExpression()), !dbg !5194
  %2 = load ptr, ptr %dquot.addr, align 8, !dbg !5195
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %2, i32 0, i32 7, !dbg !5196
  %3 = load ptr, ptr %dq_sb, align 8, !dbg !5196
  %4 = load ptr, ptr %dquot.addr, align 8, !dbg !5197
  %dq_id = getelementptr inbounds %struct.dquot, ptr %4, i32 0, i32 8, !dbg !5198
  %type = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !5199
  %5 = load i32, ptr %type, align 4, !dbg !5199
  %call = call ptr @sb_dqinfo(ptr noundef %3, i32 noundef %5) #15, !dbg !5200
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %call, i32 0, i32 8, !dbg !5201
  %6 = load ptr, ptr %dqi_priv, align 8, !dbg !5201
  store ptr %6, ptr %info, align 8, !dbg !5194
  %7 = load ptr, ptr %m, align 8, !dbg !5202
  %dqb_ihardlimit = getelementptr inbounds %struct.mem_dqblk, ptr %7, i32 0, i32 4, !dbg !5202
  %8 = load i64, ptr %dqb_ihardlimit, align 8, !dbg !5202
  %9 = load ptr, ptr %d, align 8, !dbg !5203
  %dqb_ihardlimit1 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %9, i32 0, i32 2, !dbg !5204
  store i64 %8, ptr %dqb_ihardlimit1, align 8, !dbg !5205
  %10 = load ptr, ptr %m, align 8, !dbg !5206
  %dqb_isoftlimit = getelementptr inbounds %struct.mem_dqblk, ptr %10, i32 0, i32 5, !dbg !5206
  %11 = load i64, ptr %dqb_isoftlimit, align 8, !dbg !5206
  %12 = load ptr, ptr %d, align 8, !dbg !5207
  %dqb_isoftlimit2 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %12, i32 0, i32 3, !dbg !5208
  store i64 %11, ptr %dqb_isoftlimit2, align 8, !dbg !5209
  %13 = load ptr, ptr %m, align 8, !dbg !5210
  %dqb_curinodes = getelementptr inbounds %struct.mem_dqblk, ptr %13, i32 0, i32 6, !dbg !5210
  %14 = load i64, ptr %dqb_curinodes, align 8, !dbg !5210
  %15 = load ptr, ptr %d, align 8, !dbg !5211
  %dqb_curinodes3 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %15, i32 0, i32 4, !dbg !5212
  store i64 %14, ptr %dqb_curinodes3, align 8, !dbg !5213
  %16 = load ptr, ptr %m, align 8, !dbg !5214
  %dqb_itime = getelementptr inbounds %struct.mem_dqblk, ptr %16, i32 0, i32 8, !dbg !5214
  %17 = load i64, ptr %dqb_itime, align 8, !dbg !5214
  %18 = load ptr, ptr %d, align 8, !dbg !5215
  %dqb_itime4 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %18, i32 0, i32 9, !dbg !5216
  store i64 %17, ptr %dqb_itime4, align 8, !dbg !5217
  %19 = load ptr, ptr %m, align 8, !dbg !5218
  %dqb_bhardlimit = getelementptr inbounds %struct.mem_dqblk, ptr %19, i32 0, i32 0, !dbg !5218
  %20 = load i64, ptr %dqb_bhardlimit, align 8, !dbg !5218
  %call5 = call i64 @v2_stoqb(i64 noundef %20) #15, !dbg !5218
  %21 = load ptr, ptr %d, align 8, !dbg !5219
  %dqb_bhardlimit6 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %21, i32 0, i32 5, !dbg !5220
  store i64 %call5, ptr %dqb_bhardlimit6, align 8, !dbg !5221
  %22 = load ptr, ptr %m, align 8, !dbg !5222
  %dqb_bsoftlimit = getelementptr inbounds %struct.mem_dqblk, ptr %22, i32 0, i32 1, !dbg !5222
  %23 = load i64, ptr %dqb_bsoftlimit, align 8, !dbg !5222
  %call7 = call i64 @v2_stoqb(i64 noundef %23) #15, !dbg !5222
  %24 = load ptr, ptr %d, align 8, !dbg !5223
  %dqb_bsoftlimit8 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %24, i32 0, i32 6, !dbg !5224
  store i64 %call7, ptr %dqb_bsoftlimit8, align 8, !dbg !5225
  %25 = load ptr, ptr %m, align 8, !dbg !5226
  %dqb_curspace = getelementptr inbounds %struct.mem_dqblk, ptr %25, i32 0, i32 2, !dbg !5226
  %26 = load i64, ptr %dqb_curspace, align 8, !dbg !5226
  %27 = load ptr, ptr %d, align 8, !dbg !5227
  %dqb_curspace9 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %27, i32 0, i32 7, !dbg !5228
  store i64 %26, ptr %dqb_curspace9, align 8, !dbg !5229
  %28 = load ptr, ptr %m, align 8, !dbg !5230
  %dqb_btime = getelementptr inbounds %struct.mem_dqblk, ptr %28, i32 0, i32 7, !dbg !5230
  %29 = load i64, ptr %dqb_btime, align 8, !dbg !5230
  %30 = load ptr, ptr %d, align 8, !dbg !5231
  %dqb_btime10 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %30, i32 0, i32 8, !dbg !5232
  store i64 %29, ptr %dqb_btime10, align 8, !dbg !5233
  %31 = load ptr, ptr %dquot.addr, align 8, !dbg !5234
  %dq_id11 = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 8, !dbg !5234
  %32 = load i64, ptr %dq_id11, align 8, !dbg !5234
  %call12 = call i32 @from_kqid(ptr noundef @init_user_ns, i64 %32) #15, !dbg !5234
  %33 = load ptr, ptr %d, align 8, !dbg !5235
  %dqb_id = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %33, i32 0, i32 0, !dbg !5236
  store i32 %call12, ptr %dqb_id, align 8, !dbg !5237
  %34 = load ptr, ptr %d, align 8, !dbg !5238
  %dqb_pad = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %34, i32 0, i32 1, !dbg !5239
  store i32 0, ptr %dqb_pad, align 4, !dbg !5240
  %35 = load ptr, ptr %info, align 8, !dbg !5241
  %36 = load ptr, ptr %dp.addr, align 8, !dbg !5243
  %call13 = call i32 @qtree_entry_unused(ptr noundef %35, ptr noundef %36) #15, !dbg !5244
  %tobool = icmp ne i32 %call13, 0, !dbg !5244
  br i1 %tobool, label %if.then, label %if.end, !dbg !5245

if.then:                                          ; preds = %entry
  %37 = load ptr, ptr %d, align 8, !dbg !5246
  %dqb_itime14 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %37, i32 0, i32 9, !dbg !5247
  store i64 1, ptr %dqb_itime14, align 8, !dbg !5248
  br label %if.end, !dbg !5246

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !5249
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #17, !dbg !5249
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #17, !dbg !5249
  ret void, !dbg !5249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v2r1_disk2memdqb(ptr noundef %dquot, ptr noundef %dp) #2 align 16 !dbg !5250 {
entry:
  %dquot.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %empty = alloca %struct.v2r1_disk_dqblk, align 8
  %m = alloca ptr, align 8
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !5252, metadata !DIExpression()), !dbg !5257
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !5253, metadata !DIExpression()), !dbg !5258
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #17, !dbg !5259
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5254, metadata !DIExpression()), !dbg !5260
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !5261
  store ptr %0, ptr %d, align 8, !dbg !5260
  call void @llvm.lifetime.start.p0(i64 72, ptr %empty) #17, !dbg !5259
  call void @llvm.dbg.declare(metadata ptr %empty, metadata !5255, metadata !DIExpression()), !dbg !5262
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #17, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %m, metadata !5256, metadata !DIExpression()), !dbg !5264
  %1 = load ptr, ptr %dquot.addr, align 8, !dbg !5265
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %1, i32 0, i32 11, !dbg !5266
  store ptr %dq_dqb, ptr %m, align 8, !dbg !5264
  %2 = load ptr, ptr %d, align 8, !dbg !5267
  %dqb_ihardlimit = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %2, i32 0, i32 2, !dbg !5267
  %3 = load i64, ptr %dqb_ihardlimit, align 8, !dbg !5267
  %4 = load ptr, ptr %m, align 8, !dbg !5268
  %dqb_ihardlimit1 = getelementptr inbounds %struct.mem_dqblk, ptr %4, i32 0, i32 4, !dbg !5269
  store i64 %3, ptr %dqb_ihardlimit1, align 8, !dbg !5270
  %5 = load ptr, ptr %d, align 8, !dbg !5271
  %dqb_isoftlimit = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %5, i32 0, i32 3, !dbg !5271
  %6 = load i64, ptr %dqb_isoftlimit, align 8, !dbg !5271
  %7 = load ptr, ptr %m, align 8, !dbg !5272
  %dqb_isoftlimit2 = getelementptr inbounds %struct.mem_dqblk, ptr %7, i32 0, i32 5, !dbg !5273
  store i64 %6, ptr %dqb_isoftlimit2, align 8, !dbg !5274
  %8 = load ptr, ptr %d, align 8, !dbg !5275
  %dqb_curinodes = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %8, i32 0, i32 4, !dbg !5275
  %9 = load i64, ptr %dqb_curinodes, align 8, !dbg !5275
  %10 = load ptr, ptr %m, align 8, !dbg !5276
  %dqb_curinodes3 = getelementptr inbounds %struct.mem_dqblk, ptr %10, i32 0, i32 6, !dbg !5277
  store i64 %9, ptr %dqb_curinodes3, align 8, !dbg !5278
  %11 = load ptr, ptr %d, align 8, !dbg !5279
  %dqb_itime = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %11, i32 0, i32 9, !dbg !5279
  %12 = load i64, ptr %dqb_itime, align 8, !dbg !5279
  %13 = load ptr, ptr %m, align 8, !dbg !5280
  %dqb_itime4 = getelementptr inbounds %struct.mem_dqblk, ptr %13, i32 0, i32 8, !dbg !5281
  store i64 %12, ptr %dqb_itime4, align 8, !dbg !5282
  %14 = load ptr, ptr %d, align 8, !dbg !5283
  %dqb_bhardlimit = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %14, i32 0, i32 5, !dbg !5283
  %15 = load i64, ptr %dqb_bhardlimit, align 8, !dbg !5283
  %call = call i64 @v2_qbtos(i64 noundef %15) #15, !dbg !5284
  %16 = load ptr, ptr %m, align 8, !dbg !5285
  %dqb_bhardlimit5 = getelementptr inbounds %struct.mem_dqblk, ptr %16, i32 0, i32 0, !dbg !5286
  store i64 %call, ptr %dqb_bhardlimit5, align 8, !dbg !5287
  %17 = load ptr, ptr %d, align 8, !dbg !5288
  %dqb_bsoftlimit = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %17, i32 0, i32 6, !dbg !5288
  %18 = load i64, ptr %dqb_bsoftlimit, align 8, !dbg !5288
  %call6 = call i64 @v2_qbtos(i64 noundef %18) #15, !dbg !5289
  %19 = load ptr, ptr %m, align 8, !dbg !5290
  %dqb_bsoftlimit7 = getelementptr inbounds %struct.mem_dqblk, ptr %19, i32 0, i32 1, !dbg !5291
  store i64 %call6, ptr %dqb_bsoftlimit7, align 8, !dbg !5292
  %20 = load ptr, ptr %d, align 8, !dbg !5293
  %dqb_curspace = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %20, i32 0, i32 7, !dbg !5293
  %21 = load i64, ptr %dqb_curspace, align 8, !dbg !5293
  %22 = load ptr, ptr %m, align 8, !dbg !5294
  %dqb_curspace8 = getelementptr inbounds %struct.mem_dqblk, ptr %22, i32 0, i32 2, !dbg !5295
  store i64 %21, ptr %dqb_curspace8, align 8, !dbg !5296
  %23 = load ptr, ptr %d, align 8, !dbg !5297
  %dqb_btime = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %23, i32 0, i32 8, !dbg !5297
  %24 = load i64, ptr %dqb_btime, align 8, !dbg !5297
  %25 = load ptr, ptr %m, align 8, !dbg !5298
  %dqb_btime9 = getelementptr inbounds %struct.mem_dqblk, ptr %25, i32 0, i32 7, !dbg !5299
  store i64 %24, ptr %dqb_btime9, align 8, !dbg !5300
  call void @llvm.memset.p0.i64(ptr align 8 %empty, i8 0, i64 72, i1 false), !dbg !5301
  %dqb_itime10 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %empty, i32 0, i32 9, !dbg !5302
  store i64 1, ptr %dqb_itime10, align 8, !dbg !5303
  %26 = load ptr, ptr %dp.addr, align 8, !dbg !5304
  %call11 = call i32 @memcmp(ptr noundef %empty, ptr noundef %26, i64 noundef 72) #15, !dbg !5306
  %tobool = icmp ne i32 %call11, 0, !dbg !5306
  br i1 %tobool, label %if.end, label %if.then, !dbg !5307

if.then:                                          ; preds = %entry
  %27 = load ptr, ptr %m, align 8, !dbg !5308
  %dqb_itime12 = getelementptr inbounds %struct.mem_dqblk, ptr %27, i32 0, i32 8, !dbg !5309
  store i64 0, ptr %dqb_itime12, align 8, !dbg !5310
  br label %if.end, !dbg !5308

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #17, !dbg !5311
  call void @llvm.lifetime.end.p0(i64 72, ptr %empty) #17, !dbg !5311
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #17, !dbg !5311
  ret void, !dbg !5311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v2r1_is_id(ptr noundef %dp, ptr noundef %dquot) #2 align 16 !dbg !5312 {
entry:
  %retval = alloca i32, align 4
  %dp.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.kqid, align 4
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !5314, metadata !DIExpression()), !dbg !5318
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !5315, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #17, !dbg !5320
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5316, metadata !DIExpression()), !dbg !5321
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !5322
  store ptr %0, ptr %d, align 8, !dbg !5321
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !5323
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5317, metadata !DIExpression()), !dbg !5324
  %1 = load ptr, ptr %dquot.addr, align 8, !dbg !5325
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %1, i32 0, i32 7, !dbg !5326
  %2 = load ptr, ptr %dq_sb, align 8, !dbg !5326
  %3 = load ptr, ptr %dquot.addr, align 8, !dbg !5327
  %dq_id = getelementptr inbounds %struct.dquot, ptr %3, i32 0, i32 8, !dbg !5328
  %type = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !5329
  %4 = load i32, ptr %type, align 4, !dbg !5329
  %call = call ptr @sb_dqinfo(ptr noundef %2, i32 noundef %4) #15, !dbg !5330
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %call, i32 0, i32 8, !dbg !5331
  %5 = load ptr, ptr %dqi_priv, align 8, !dbg !5331
  store ptr %5, ptr %info, align 8, !dbg !5324
  %6 = load ptr, ptr %info, align 8, !dbg !5332
  %7 = load ptr, ptr %dp.addr, align 8, !dbg !5334
  %call1 = call i32 @qtree_entry_unused(ptr noundef %6, ptr noundef %7) #15, !dbg !5335
  %tobool = icmp ne i32 %call1, 0, !dbg !5335
  br i1 %tobool, label %if.then, label %if.end, !dbg !5336

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5337

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %dquot.addr, align 8, !dbg !5338
  %dq_id2 = getelementptr inbounds %struct.dquot, ptr %8, i32 0, i32 8, !dbg !5339
  %type3 = getelementptr inbounds %struct.kqid, ptr %dq_id2, i32 0, i32 1, !dbg !5340
  %9 = load i32, ptr %type3, align 4, !dbg !5340
  %10 = load ptr, ptr %d, align 8, !dbg !5341
  %dqb_id = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %10, i32 0, i32 0, !dbg !5341
  %11 = load i32, ptr %dqb_id, align 8, !dbg !5341
  %call4 = call i64 @make_kqid(ptr noundef @init_user_ns, i32 noundef %9, i32 noundef %11) #15, !dbg !5342
  store i64 %call4, ptr %agg.tmp, align 4, !dbg !5342
  %12 = load ptr, ptr %dquot.addr, align 8, !dbg !5343
  %dq_id5 = getelementptr inbounds %struct.dquot, ptr %12, i32 0, i32 8, !dbg !5344
  %13 = load i64, ptr %agg.tmp, align 4, !dbg !5345
  %14 = load i64, ptr %dq_id5, align 8, !dbg !5345
  %call6 = call zeroext i1 @qid_eq(i64 %13, i64 %14) #15, !dbg !5345
  %conv = zext i1 %call6 to i32, !dbg !5345
  store i32 %conv, ptr %retval, align 4, !dbg !5346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5346

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !5347
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #17, !dbg !5347
  %15 = load i32, ptr %retval, align 4, !dbg !5347
  ret i32 %15, !dbg !5347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5348 dso_local void @down_write(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #9 align 16 !dbg !5349 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5357
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5357
  call void @_raw_spin_lock(ptr noundef %1) #15, !dbg !5357
  ret void, !dbg !5358
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #9 align 16 !dbg !5359 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5361, metadata !DIExpression()), !dbg !5362
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5363
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5363
  call void @_raw_spin_unlock(ptr noundef %1) #15, !dbg !5363
  ret void, !dbg !5364
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5365 dso_local void @up_write(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5366 dso_local void @_raw_spin_lock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5371 dso_local void @_raw_spin_unlock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5372 dso_local i32 @qtree_read_dquot(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5375 dso_local i32 @qtree_write_dquot(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5376 dso_local i32 @qtree_release_dquot(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5377 dso_local i32 @qtree_get_next_id(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5380 dso_local i32 @register_quota_format(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976}
!llvm.ident = !{!3977}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author259", scope: !2, file: !3, line: 21, type: !3966, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/quota/.quota_v2.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/quota/quota_v2\22 -D KBUILD_BASENAME=\22quota_v2\22 -D KBUILD_MODNAME=\22quota_v2\22 -D __KBUILD_MODNAME=kmod_quota_v2 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/quota/quota_v2.ll fs/quota/quota_v2.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !81, globals: !3850, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/quota/quota_v2.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a09eebe7de5a14579af1f84fa6c6087b")
!4 = !{!5, !14, !21, !28, !34, !39, !45, !50, !56, !63, !68, !78}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !22, line: 15, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!25 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!26 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!27 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !29, line: 26, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !35, line: 2052, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!38 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !40, line: 54, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "USRQUOTA", value: 0)
!43 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!44 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !46, line: 65, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!49 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !51, line: 16, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "TT_NONE", value: 0)
!54 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!55 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 10, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "false", value: 0)
!67 = !DIEnumerator(name: "true", value: 1)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !69, line: 364, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!72 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!73 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!74 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!75 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!76 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!77 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 242, baseType: !7, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIEnumerator(name: "DQF_INFO_DIRTY_B", value: 17)
!81 = !{!82, !83, !339, !3848, !189, !633, !430, !239, !3849, !343}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !85)
!85 = !{!86, !87, !94, !99, !3524, !3550, !3551, !3552, !3553, !3557, !3560, !3561, !3562, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3629, !3633, !3651, !3668, !3669, !3670, !3671, !3680, !3703, !3704, !3707, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3721, !3722, !3808, !3816, !3817, !3818, !3820, !3824, !3825, !3829, !3830, !3831, !3832, !3834, !3835, !3836, !3843, !3844, !3845, !3847}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !84, file: !15, line: 403, baseType: !14, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !84, file: !15, line: 406, baseType: !88, size: 128, offset: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !89, line: 190, size: 128, elements: !90)
!89 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!90 = !{!91, !93}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !89, line: 191, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !89, line: 191, baseType: !92, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !15, line: 409, baseType: !95, size: 448, offset: 192)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 448, elements: !97)
!96 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !{!98}
!98 = !DISubrange(count: 56)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !84, file: !15, line: 417, baseType: !100, size: 768, offset: 640)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !101)
!101 = !{!102, !3518, !3519, !3520, !3523}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !100, file: !15, line: 46, baseType: !103, size: 512)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !104, line: 64, size: 512, elements: !105)
!104 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!105 = !{!106, !109, !110, !112, !202, !3404, !3508, !3513, !3514, !3515, !3516, !3517}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !104, line: 65, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !103, file: !104, line: 66, baseType: !88, size: 128, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !104, line: 67, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !103, file: !104, line: 68, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !104, line: 168, size: 768, elements: !115)
!115 = !{!116, !117, !161, !162}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !114, file: !104, line: 169, baseType: !88, size: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !114, file: !104, line: 170, baseType: !118, size: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !119, line: 29, baseType: !120)
!119 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !119, line: 17, size: 32, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !119, line: 18, baseType: !123, size: 32)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !119, line: 18, size: 32, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !123, file: !119, line: 19, baseType: !126, size: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !127, line: 14, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !126, file: !127, line: 15, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !131, line: 44, baseType: !132)
!131 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !131, line: 14, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, scope: !132, file: !131, line: 15, baseType: !135, size: 32)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !131, line: 15, size: 32, elements: !136)
!136 = !{!137, !143, !153}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !135, file: !131, line: 16, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !89, line: 174, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 172, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !139, file: !89, line: 173, baseType: !142, size: 32)
!142 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !131, line: 24, baseType: !144, size: 16)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !131, line: 24, size: 16, elements: !145)
!145 = !{!146, !152}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !144, file: !131, line: 25, baseType: !147, size: 8)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !148, line: 17, baseType: !149)
!148 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !150, line: 21, baseType: !151)
!150 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!151 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !144, file: !131, line: 26, baseType: !147, size: 8, offset: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !131, line: 28, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !131, line: 28, size: 32, elements: !155)
!155 = !{!156, !160}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !154, file: !131, line: 29, baseType: !157, size: 16)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !148, line: 19, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !150, line: 24, baseType: !159)
!159 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !154, file: !131, line: 30, baseType: !157, size: 16, offset: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !114, file: !104, line: 171, baseType: !103, size: 512, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !114, file: !104, line: 172, baseType: !163, size: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !104, line: 133, size: 192, elements: !166)
!166 = !{!167, !174, !179}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !165, file: !104, line: 134, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!142, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !104, line: 135, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!107, !172}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !165, file: !104, line: 136, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!142, !172, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !104, line: 125, size: 20736, elements: !186)
!186 = !{!187, !192, !196, !197, !201}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !185, file: !104, line: 126, baseType: !188, size: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 192, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!190 = !{!191}
!191 = !DISubrange(count: 3)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !185, file: !104, line: 127, baseType: !193, size: 4096, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 4096, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !185, file: !104, line: 128, baseType: !142, size: 32, offset: 4288)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !185, file: !104, line: 129, baseType: !198, size: 16384, offset: 4320)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 16384, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !185, file: !104, line: 130, baseType: !142, size: 32, offset: 20704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !103, file: !104, line: 69, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !104, line: 116, size: 384, elements: !206)
!206 = !{!207, !211, !240, !3366, !3394, !3398}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !205, file: !104, line: 117, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !111}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !205, file: !104, line: 118, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !215, line: 254, size: 128, elements: !216)
!215 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!216 = !{!217, !232}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !214, file: !215, line: 255, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !111, !226, !189}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !89, line: 66, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !223, line: 73, baseType: !224)
!223 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !223, line: 15, baseType: !225)
!225 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !215, line: 30, size: 128, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !215, line: 31, baseType: !107, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !227, file: !215, line: 32, baseType: !231, size: 16, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !89, line: 24, baseType: !159)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !214, file: !215, line: 256, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!221, !111, !226, !107, !236}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 61, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !223, line: 72, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !223, line: 16, baseType: !239)
!239 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !205, file: !104, line: 119, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !215, line: 84, size: 320, elements: !245)
!245 = !{!246, !247, !251, !3362, !3364}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !244, file: !215, line: 85, baseType: !107, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !244, file: !215, line: 86, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!231, !111, !226, !142}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !244, file: !215, line: 88, baseType: !252, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!231, !111, !255, !142}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !215, line: 175, size: 512, elements: !257)
!257 = !{!258, !259, !260, !261, !3353, !3357, !3358}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !256, file: !215, line: 176, baseType: !227, size: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !256, file: !215, line: 177, baseType: !236, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !256, file: !215, line: 178, baseType: !82, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !256, file: !215, line: 179, baseType: !262, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !267)
!267 = !{!268, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3347, !3348, !3349, !3350, !3351, !3352}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !266, file: !35, line: 473, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !271)
!271 = !{!272, !273, !274, !282, !283, !290, !291, !294, !295, !3125, !3126, !3127, !3128, !3129, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3169, !3172, !3173, !3174, !3183, !3184, !3185, !3186}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !270, file: !35, line: 642, baseType: !231, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !270, file: !35, line: 643, baseType: !159, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !270, file: !35, line: 644, baseType: !275, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !276, line: 23, baseType: !277)
!276 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 21, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !277, file: !276, line: 22, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !89, line: 37, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !223, line: 49, baseType: !7)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !270, file: !35, line: 645, baseType: !88, size: 128, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !270, file: !35, line: 646, baseType: !284, size: 32, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !276, line: 28, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 26, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !276, line: 27, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !89, line: 38, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !223, line: 50, baseType: !7)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !270, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !270, file: !35, line: 650, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !270, file: !35, line: 651, baseType: !292, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !270, file: !35, line: 654, baseType: !296, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !299)
!299 = !{!300, !2950, !2963, !2967, !2971, !2975, !2979, !2983, !2987, !2991, !2995, !2996, !3000, !3004, !3041, !3070, !3074, !3080, !3084, !3088, !3092, !3096, !3100, !3106, !3110}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !298, file: !35, line: 1967, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !269, !304, !7}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !306, line: 82, size: 1536, elements: !307)
!306 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!307 = !{!308, !309, !319, !327, !328, !348, !349, !353, !366, !2933, !2934, !2935, !2936, !2942, !2943, !2944}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !305, file: !306, line: 84, baseType: !7, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !305, file: !306, line: 85, baseType: !310, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !311, line: 275, baseType: !312)
!311 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !311, line: 275, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !312, file: !311, line: 275, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !311, line: 69, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !311, line: 64, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !316, file: !311, line: 65, baseType: !7, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !305, file: !306, line: 86, baseType: !320, size: 128, offset: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !321, line: 38, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 39, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !320, file: !321, line: 39, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !305, file: !306, line: 87, baseType: !304, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !305, file: !306, line: 88, baseType: !329, size: 128, offset: 256)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !306, line: 49, size: 128, elements: !330)
!330 = !{!331, !345}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !306, line: 50, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !306, line: 50, size: 64, elements: !333)
!333 = !{!334, !341}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !306, line: 51, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !306, line: 51, size: 64, elements: !336)
!336 = !{!337, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !335, file: !306, line: 52, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !148, line: 21, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !150, line: 27, baseType: !7)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !335, file: !306, line: 52, baseType: !338, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !332, file: !306, line: 54, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !148, line: 23, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !150, line: 31, baseType: !344)
!344 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !329, file: !306, line: 56, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !305, file: !306, line: 89, baseType: !269, size: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !305, file: !306, line: 91, baseType: !350, size: 256, offset: 448)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !305, file: !306, line: 94, baseType: !354, size: 64, offset: 704)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !355, line: 25, size: 64, elements: !356)
!355 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !355, line: 26, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 26, size: 64, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !358, file: !355, line: 28, baseType: !343, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !355, line: 30, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !355, line: 30, size: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !362, file: !355, line: 31, baseType: !118, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !362, file: !355, line: 32, baseType: !142, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !305, file: !306, line: 95, baseType: !367, size: 64, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !306, line: 128, size: 1024, align: 512, elements: !370)
!370 = !{!371, !375, !376, !383, !389, !393, !397, !401, !402, !406, !410, !2923, !2927}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !369, file: !306, line: 129, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!142, !304, !7}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !369, file: !306, line: 130, baseType: !372, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !369, file: !306, line: 131, baseType: !377, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!142, !380, !382}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !369, file: !306, line: 132, baseType: !384, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!142, !380, !7, !107, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !369, file: !306, line: 134, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!142, !380}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !369, file: !306, line: 135, baseType: !394, size: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!142, !304}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !369, file: !306, line: 136, baseType: !398, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !304}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !369, file: !306, line: 137, baseType: !398, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !369, file: !306, line: 138, baseType: !403, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !304, !269}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !369, file: !306, line: 139, baseType: !407, size: 64, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!189, !304, !189, !142}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !369, file: !306, line: 140, baseType: !411, size: 64, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !2922}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !416, line: 70, size: 256, elements: !417)
!416 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!417 = !{!418, !419, !2918, !2919}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !415, file: !416, line: 71, baseType: !304, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !415, file: !416, line: 72, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !422)
!422 = !{!423, !424, !427, !428, !429, !433, !481, !642, !682, !772, !776, !777, !778, !779, !780, !789, !790, !791, !792, !797, !801, !802, !805, !808, !811, !814, !815, !816, !857, !2849, !2850, !2851, !2852, !2853, !2854, !2857, !2859, !2866, !2867, !2868, !2869, !2870, !2885, !2886, !2887, !2888, !2889, !2892, !2893, !2894, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !421, file: !35, line: 1191, baseType: !88, size: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !421, file: !35, line: 1192, baseType: !425, size: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !89, line: 21, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !89, line: 18, baseType: !338)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !421, file: !35, line: 1193, baseType: !151, size: 8, offset: 160)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !421, file: !35, line: 1194, baseType: !239, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !421, file: !35, line: 1195, baseType: !430, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !89, line: 52, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !223, line: 88, baseType: !432)
!432 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !421, file: !35, line: 1196, baseType: !434, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !436)
!436 = !{!437, !438, !439, !445, !449, !453, !457, !458, !459, !469, !473, !474, !475, !477, !478, !479, !480}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !435, file: !35, line: 2367, baseType: !107, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !435, file: !35, line: 2368, baseType: !142, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !435, file: !35, line: 2376, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!142, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !416, line: 21, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !435, file: !35, line: 2377, baseType: !446, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !435, file: !35, line: 2378, baseType: !450, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!304, !434, !142, !107, !82}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !435, file: !35, line: 2380, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !420}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !435, file: !35, line: 2381, baseType: !83, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !35, line: 2382, baseType: !434, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !435, file: !35, line: 2383, baseType: !460, size: 64, offset: 512)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !89, line: 194, size: 64, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !460, file: !89, line: 195, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !89, line: 198, size: 128, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !89, line: 199, baseType: !463, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !464, file: !89, line: 199, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !435, file: !35, line: 2385, baseType: !470, offset: 576)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !471, line: 206, elements: !472)
!471 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!472 = !{}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !435, file: !35, line: 2386, baseType: !470, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !435, file: !35, line: 2387, baseType: !470, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !435, file: !35, line: 2388, baseType: !476, offset: 576)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, elements: !190)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !435, file: !35, line: 2390, baseType: !470, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !435, file: !35, line: 2391, baseType: !470, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !435, file: !35, line: 2392, baseType: !470, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !435, file: !35, line: 2393, baseType: !470, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !421, file: !35, line: 1197, baseType: !482, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !485)
!485 = !{!486, !490, !494, !495, !499, !505, !509, !510, !511, !515, !519, !523, !524, !525, !531, !536, !537, !544, !545, !546, !547, !551, !555, !624, !640, !641}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !484, file: !35, line: 2058, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!269, !420}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !484, file: !35, line: 2059, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !269}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !484, file: !35, line: 2060, baseType: !491, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !484, file: !35, line: 2062, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !269, !142}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !484, file: !35, line: 2063, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!142, !269, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !484, file: !35, line: 2064, baseType: !506, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!142, !269}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !484, file: !35, line: 2065, baseType: !491, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !484, file: !35, line: 2066, baseType: !454, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !484, file: !35, line: 2067, baseType: !512, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!142, !420, !142}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !484, file: !35, line: 2068, baseType: !516, size: 64, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!142, !420, !34}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !484, file: !35, line: 2069, baseType: !520, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!142, !420}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !484, file: !35, line: 2070, baseType: !516, size: 64, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !484, file: !35, line: 2071, baseType: !520, size: 64, offset: 768)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !484, file: !35, line: 2072, baseType: !526, size: 64, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!142, !304, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !484, file: !35, line: 2073, baseType: !532, size: 64, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!142, !420, !535, !189}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !484, file: !35, line: 2074, baseType: !454, size: 64, offset: 960)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !484, file: !35, line: 2076, baseType: !538, size: 64, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!142, !541, !304}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !543, line: 66, flags: DIFlagFwdDecl)
!543 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!544 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !484, file: !35, line: 2077, baseType: !538, size: 64, offset: 1088)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !484, file: !35, line: 2078, baseType: !538, size: 64, offset: 1152)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !484, file: !35, line: 2079, baseType: !538, size: 64, offset: 1216)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !484, file: !35, line: 2081, baseType: !548, size: 64, offset: 1280)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!221, !420, !142, !189, !236, !430}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !484, file: !35, line: 2082, baseType: !552, size: 64, offset: 1344)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!221, !420, !142, !107, !236, !430}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !484, file: !35, line: 2083, baseType: !556, size: 64, offset: 1408)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!559, !269}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !588, !589, !590, !591, !607, !608, !609}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !561, file: !40, line: 297, baseType: !464, size: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !561, file: !40, line: 298, baseType: !88, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !561, file: !40, line: 299, baseType: !88, size: 128, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !561, file: !40, line: 300, baseType: !88, size: 128, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !561, file: !40, line: 301, baseType: !568, size: 256, offset: 512)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !569, line: 66, size: 256, elements: !570)
!569 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!570 = !{!571, !580, !582, !587}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !568, file: !569, line: 67, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !573, line: 13, baseType: !574)
!573 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !89, line: 181, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 179, size: 64, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !575, file: !89, line: 180, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !148, line: 22, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !150, line: 30, baseType: !432)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !568, file: !569, line: 68, baseType: !581, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !127, line: 23, baseType: !126)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !568, file: !569, line: 70, baseType: !583, size: 32, offset: 96)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !584, line: 15, size: 32, elements: !585)
!584 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !583, file: !584, line: 20, baseType: !138, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !568, file: !569, line: 72, baseType: !88, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !561, file: !40, line: 302, baseType: !118, size: 32, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !561, file: !40, line: 303, baseType: !138, size: 32, offset: 800)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !561, file: !40, line: 304, baseType: !420, size: 64, offset: 832)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !561, file: !40, line: 305, baseType: !592, size: 64, offset: 896)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !593)
!593 = !{!594, !606}
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !40, line: 69, baseType: !595, size: 32)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !592, file: !40, line: 69, size: 32, elements: !596)
!596 = !{!597, !598, !599}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !595, file: !40, line: 70, baseType: !275, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !595, file: !40, line: 71, baseType: !284, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !595, file: !40, line: 72, baseType: !600, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !601, line: 24, baseType: !602)
!601 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 22, size: 32, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !602, file: !601, line: 23, baseType: !605, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !601, line: 20, baseType: !281)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !561, file: !40, line: 306, baseType: !430, size: 64, offset: 960)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !561, file: !40, line: 307, baseType: !239, size: 64, offset: 1024)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !561, file: !40, line: 308, baseType: !610, size: 576, offset: 1088)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !611)
!611 = !{!612, !614, !615, !616, !617, !618, !619, !620, !623}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !610, file: !40, line: 206, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !432)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !610, file: !40, line: 207, baseType: !613, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !610, file: !40, line: 208, baseType: !613, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !610, file: !40, line: 209, baseType: !613, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !610, file: !40, line: 210, baseType: !613, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !610, file: !40, line: 211, baseType: !613, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !610, file: !40, line: 212, baseType: !613, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !610, file: !40, line: 213, baseType: !621, size: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !622, line: 8, baseType: !579)
!622 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !610, file: !40, line: 214, baseType: !621, size: 64, offset: 512)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !484, file: !35, line: 2085, baseType: !625, size: 64, offset: 1472)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!225, !420, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !630, line: 15, size: 256, elements: !631)
!630 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!631 = !{!632, !634, !635, !636, !637}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !629, file: !630, line: 16, baseType: !633, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !89, line: 154, baseType: !7)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !629, file: !630, line: 19, baseType: !142, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !629, file: !630, line: 26, baseType: !239, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !629, file: !630, line: 33, baseType: !239, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !629, file: !630, line: 36, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !630, line: 36, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !484, file: !35, line: 2087, baseType: !625, size: 64, offset: 1536)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !484, file: !35, line: 2089, baseType: !454, size: 64, offset: 1600)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !421, file: !35, line: 1198, baseType: !643, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !646)
!646 = !{!647, !651, !655, !659, !660, !661, !662, !663, !668, !673, !677}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !645, file: !40, line: 325, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!142, !560}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !645, file: !40, line: 326, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!560, !420, !142}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !645, file: !40, line: 327, baseType: !656, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !560}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !645, file: !40, line: 328, baseType: !648, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !645, file: !40, line: 329, baseType: !648, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !645, file: !40, line: 330, baseType: !648, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !645, file: !40, line: 331, baseType: !512, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !645, file: !40, line: 334, baseType: !664, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !269}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !645, file: !40, line: 335, baseType: !669, size: 64, offset: 512)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!142, !269, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !645, file: !40, line: 337, baseType: !674, size: 64, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!142, !269, !667}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !645, file: !40, line: 339, baseType: !678, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!142, !420, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !421, file: !35, line: 1199, baseType: !683, size: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !686)
!686 = !{!687, !698, !699, !703, !704, !705, !720, !743, !747, !748, !771}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !685, file: !40, line: 431, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!142, !420, !142, !142, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !694, line: 8, size: 128, elements: !695)
!694 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !693, file: !694, line: 9, baseType: !414, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !693, file: !694, line: 10, baseType: !304, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !685, file: !40, line: 432, baseType: !512, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !685, file: !40, line: 433, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!142, !420, !7}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !685, file: !40, line: 434, baseType: !700, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !685, file: !40, line: 435, baseType: !512, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !685, file: !40, line: 436, baseType: !706, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!142, !420, !142, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !710, file: !40, line: 418, baseType: !142, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !710, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !710, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !710, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !710, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !710, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !710, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !710, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !685, file: !40, line: 437, baseType: !721, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!142, !420, !592, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !725, file: !40, line: 346, baseType: !142, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !725, file: !40, line: 347, baseType: !342, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !725, file: !40, line: 348, baseType: !342, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !725, file: !40, line: 349, baseType: !342, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !725, file: !40, line: 350, baseType: !342, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !725, file: !40, line: 351, baseType: !342, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !725, file: !40, line: 352, baseType: !342, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !725, file: !40, line: 353, baseType: !578, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !725, file: !40, line: 355, baseType: !578, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !725, file: !40, line: 356, baseType: !142, size: 32, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !725, file: !40, line: 357, baseType: !142, size: 32, offset: 608)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !725, file: !40, line: 358, baseType: !342, size: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !725, file: !40, line: 359, baseType: !342, size: 64, offset: 704)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !725, file: !40, line: 360, baseType: !342, size: 64, offset: 768)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !725, file: !40, line: 361, baseType: !578, size: 64, offset: 832)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !725, file: !40, line: 362, baseType: !142, size: 32, offset: 896)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !685, file: !40, line: 438, baseType: !744, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!142, !420, !681, !724}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !685, file: !40, line: 440, baseType: !721, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !685, file: !40, line: 441, baseType: !749, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!142, !420, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !753, file: !40, line: 412, baseType: !7, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !753, file: !40, line: 413, baseType: !757, size: 1344, offset: 64)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 1344, elements: !190)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !770}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !40, line: 398, baseType: !7, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !758, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !758, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !758, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !758, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !758, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !758, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !758, file: !40, line: 406, baseType: !344, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !758, file: !40, line: 407, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !89, line: 132, baseType: !342)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !758, file: !40, line: 408, baseType: !769, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !685, file: !40, line: 442, baseType: !700, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !421, file: !35, line: 1200, baseType: !773, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !421, file: !35, line: 1201, baseType: !239, size: 64, offset: 640)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !421, file: !35, line: 1202, baseType: !239, size: 64, offset: 704)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !421, file: !35, line: 1203, baseType: !239, size: 64, offset: 768)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !421, file: !35, line: 1204, baseType: !304, size: 64, offset: 832)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !421, file: !35, line: 1205, baseType: !781, size: 320, offset: 896)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !782, line: 48, size: 320, elements: !783)
!782 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!783 = !{!784, !785, !786, !787, !788}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !781, file: !782, line: 49, baseType: !572, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !781, file: !782, line: 55, baseType: !572, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !781, file: !782, line: 57, baseType: !583, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !781, file: !782, line: 59, baseType: !581, size: 32, offset: 160)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !781, file: !782, line: 60, baseType: !88, size: 128, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !421, file: !35, line: 1206, baseType: !142, size: 32, offset: 1216)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !421, file: !35, line: 1207, baseType: !138, size: 32, offset: 1248)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !421, file: !35, line: 1209, baseType: !82, size: 64, offset: 1280)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !421, file: !35, line: 1211, baseType: !793, size: 64, offset: 1344)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !421, file: !35, line: 1223, baseType: !798, size: 64, offset: 1408)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !321, line: 34, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !798, file: !321, line: 35, baseType: !324, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !421, file: !35, line: 1224, baseType: !88, size: 128, offset: 1472)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !421, file: !35, line: 1225, baseType: !803, size: 64, offset: 1600)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !421, file: !35, line: 1226, baseType: !806, size: 64, offset: 1664)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !421, file: !35, line: 1227, baseType: !809, size: 64, offset: 1728)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !421, file: !35, line: 1228, baseType: !812, size: 64, offset: 1792)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !421, file: !35, line: 1229, baseType: !464, size: 128, offset: 1856)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !421, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !421, file: !35, line: 1231, baseType: !817, size: 2496, offset: 2048)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !818)
!818 = !{!819, !820, !821, !823, !855}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !40, line: 522, baseType: !7, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !817, file: !40, line: 523, baseType: !781, size: 320, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !817, file: !40, line: 524, baseType: !822, size: 192, offset: 384)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 192, elements: !190)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !817, file: !40, line: 525, baseType: !824, size: 1728, offset: 576)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 1728, elements: !190)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !826)
!826 = !{!827, !847, !848, !849, !850, !851, !852, !853, !854}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !825, file: !40, line: 223, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !830)
!830 = !{!831, !832, !845, !846}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !829, file: !40, line: 446, baseType: !142, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !829, file: !40, line: 447, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !836)
!836 = !{!837, !838, !839, !840, !841, !842, !843, !844}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !835, file: !40, line: 313, baseType: !512, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !835, file: !40, line: 314, baseType: !512, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !835, file: !40, line: 315, baseType: !512, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !835, file: !40, line: 316, baseType: !512, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !835, file: !40, line: 317, baseType: !648, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !835, file: !40, line: 318, baseType: !648, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !835, file: !40, line: 319, baseType: !648, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !835, file: !40, line: 320, baseType: !678, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !829, file: !40, line: 448, baseType: !83, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !829, file: !40, line: 449, baseType: !828, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !825, file: !40, line: 224, baseType: !142, size: 32, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !825, file: !40, line: 226, baseType: !88, size: 128, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !825, file: !40, line: 227, baseType: !239, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !825, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !825, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !825, file: !40, line: 230, baseType: !613, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !825, file: !40, line: 231, baseType: !613, size: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !825, file: !40, line: 232, baseType: !82, size: 64, offset: 512)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !817, file: !40, line: 526, baseType: !856, size: 192, offset: 2304)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 192, elements: !190)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !421, file: !35, line: 1233, baseType: !858, size: 2368, offset: 4544)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !858, file: !35, line: 1185, baseType: !159, size: 16)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !858, file: !35, line: 1186, baseType: !159, size: 16, offset: 16)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !858, file: !35, line: 1187, baseType: !863, size: 2304, offset: 64)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 2304, elements: !190)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !865, line: 12, size: 768, elements: !866)
!865 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!866 = !{!867, !889, !891, !2847, !2848}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !864, file: !865, line: 13, baseType: !868, size: 384)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !869, line: 17, size: 384, elements: !870)
!869 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!870 = !{!871, !872, !873, !880}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !868, file: !869, line: 18, baseType: !142, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !868, file: !869, line: 19, baseType: !142, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !868, file: !869, line: 20, baseType: !874, size: 192, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !875, line: 41, baseType: !876)
!875 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !875, line: 37, size: 192, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !876, file: !875, line: 38, baseType: !118, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !876, file: !875, line: 39, baseType: !88, size: 128, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !868, file: !869, line: 22, baseType: !881, size: 128, align: 64, offset: 256)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !89, line: 232, size: 128, align: 64, elements: !882)
!882 = !{!883, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !881, file: !89, line: 233, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !881, file: !89, line: 234, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !884}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !864, file: !865, line: 14, baseType: !890, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !864, file: !865, line: 15, baseType: !892, size: 64, offset: 448)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !893, line: 16, size: 64, elements: !894)
!893 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !892, file: !893, line: 17, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !543, line: 746, size: 58368, elements: !898)
!898 = !{!899, !907, !908, !909, !915, !916, !917, !918, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !996, !1007, !1102, !1106, !1109, !1140, !1141, !1142, !1143, !1154, !1156, !1157, !1158, !1159, !1160, !1161, !1172, !1173, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1190, !1191, !1198, !1199, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1948, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1963, !1964, !1965, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !2007, !2013, !2014, !2015, !2016, !2017, !2021, !2024, !2031, !2036, !2039, !2042, !2045, !2048, !2188, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2228, !2229, !2230, !2239, !2247, !2248, !2249, !2250, !2251, !2256, !2257, !2258, !2261, !2262, !2265, !2268, !2271, !2279, !2282, !2283, !2369, !2370, !2371, !2372, !2373, !2379, !2380, !2381, !2382, !2385, !2386, !2389, !2392, !2393, !2396, !2397, !2398, !2401, !2402, !2403, !2404, !2405, !2406, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2438, !2439, !2505, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2517, !2589, !2591, !2592, !2593, !2594, !2595, !2607, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2624, !2625, !2626}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !897, file: !543, line: 752, baseType: !900, size: 192)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !901, line: 56, size: 192, elements: !902)
!901 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!902 = !{!903, !904, !905, !906}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !900, file: !901, line: 57, baseType: !239, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !900, file: !901, line: 58, baseType: !239, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !900, file: !901, line: 59, baseType: !338, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !900, file: !901, line: 61, baseType: !338, size: 32, offset: 160)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !897, file: !543, line: 754, baseType: !7, size: 32, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !897, file: !543, line: 767, baseType: !82, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !897, file: !543, line: 768, baseType: !910, size: 32, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !911, line: 113, baseType: !912)
!911 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !911, line: 111, size: 32, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !912, file: !911, line: 112, baseType: !138, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !897, file: !543, line: 770, baseType: !7, size: 32, offset: 352)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !897, file: !543, line: 771, baseType: !7, size: 32, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !897, file: !543, line: 774, baseType: !142, size: 32, offset: 416)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !897, file: !543, line: 775, baseType: !919, size: 128, offset: 448)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !920, line: 58, size: 128, elements: !921)
!920 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!921 = !{!922, !928, !933, !934}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !919, file: !920, line: 59, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !924, line: 60, size: 64, elements: !925)
!924 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!925 = !{!926}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !923, file: !924, line: 61, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !920, line: 60, baseType: !929, size: 32, offset: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !920, line: 60, size: 32, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !929, file: !920, line: 61, baseType: !7, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !929, file: !920, line: 62, baseType: !138, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !919, file: !920, line: 65, baseType: !157, size: 16, offset: 96)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !919, file: !920, line: 65, baseType: !157, size: 16, offset: 112)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !897, file: !543, line: 776, baseType: !7, size: 32, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !897, file: !543, line: 777, baseType: !239, size: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !897, file: !543, line: 778, baseType: !896, size: 64, offset: 704)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !897, file: !543, line: 787, baseType: !142, size: 32, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !897, file: !543, line: 788, baseType: !142, size: 32, offset: 800)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !897, file: !543, line: 790, baseType: !142, size: 32, offset: 832)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !897, file: !543, line: 792, baseType: !142, size: 32, offset: 864)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !897, file: !543, line: 793, baseType: !142, size: 32, offset: 896)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !897, file: !543, line: 794, baseType: !142, size: 32, offset: 928)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !897, file: !543, line: 795, baseType: !7, size: 32, offset: 960)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !897, file: !543, line: 797, baseType: !946, size: 2048, offset: 1024)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !543, line: 551, size: 2048, elements: !947)
!947 = !{!948, !953, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !975, !978, !979, !980}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !946, file: !543, line: 553, baseType: !949, size: 128)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !543, line: 411, size: 128, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !949, file: !543, line: 412, baseType: !239, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !949, file: !543, line: 413, baseType: !338, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !946, file: !543, line: 554, baseType: !954, size: 192, align: 64, offset: 128)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !955, line: 5, size: 192, align: 64, elements: !956)
!955 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!956 = !{!957, !958, !960}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !954, file: !955, line: 6, baseType: !239, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !954, file: !955, line: 7, baseType: !959, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !954, file: !955, line: 8, baseType: !959, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !946, file: !543, line: 555, baseType: !342, size: 64, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !946, file: !543, line: 556, baseType: !342, size: 64, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !946, file: !543, line: 558, baseType: !88, size: 128, offset: 448)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !946, file: !543, line: 559, baseType: !7, size: 32, offset: 576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !946, file: !543, line: 561, baseType: !342, size: 64, offset: 640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !946, file: !543, line: 562, baseType: !342, size: 64, offset: 704)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !946, file: !543, line: 563, baseType: !342, size: 64, offset: 768)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !946, file: !543, line: 564, baseType: !342, size: 64, offset: 832)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !946, file: !543, line: 565, baseType: !578, size: 64, offset: 896)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !946, file: !543, line: 566, baseType: !342, size: 64, offset: 960)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !946, file: !543, line: 568, baseType: !342, size: 64, offset: 1024)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !946, file: !543, line: 571, baseType: !142, size: 32, offset: 1088)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !946, file: !543, line: 572, baseType: !974, size: 64, offset: 1152)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !946, file: !543, line: 574, baseType: !976, size: 64, offset: 1216)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !543, line: 49, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !946, file: !543, line: 576, baseType: !976, size: 64, offset: 1280)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !946, file: !543, line: 578, baseType: !239, size: 64, offset: 1344)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !946, file: !543, line: 588, baseType: !981, size: 512, align: 512, offset: 1536)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !543, line: 497, size: 512, align: 512, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990, !991}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !981, file: !543, line: 498, baseType: !342, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !981, file: !543, line: 499, baseType: !342, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !981, file: !543, line: 500, baseType: !342, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !981, file: !543, line: 501, baseType: !338, size: 32, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !981, file: !543, line: 502, baseType: !338, size: 32, offset: 224)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !981, file: !543, line: 503, baseType: !239, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !981, file: !543, line: 504, baseType: !239, size: 64, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !981, file: !543, line: 505, baseType: !239, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !981, file: !543, line: 506, baseType: !992, size: 64, align: 64, offset: 448)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !543, line: 445, size: 64, align: 64, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !992, file: !543, line: 446, baseType: !7, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !992, file: !543, line: 447, baseType: !7, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !897, file: !543, line: 798, baseType: !997, size: 384, offset: 3072)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !543, line: 592, size: 384, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !997, file: !543, line: 593, baseType: !88, size: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !997, file: !543, line: 594, baseType: !239, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !997, file: !543, line: 595, baseType: !239, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !997, file: !543, line: 596, baseType: !7, size: 32, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !997, file: !543, line: 597, baseType: !159, size: 16, offset: 288)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !997, file: !543, line: 598, baseType: !159, size: 16, offset: 304)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !997, file: !543, line: 600, baseType: !1006, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !897, file: !543, line: 799, baseType: !1008, size: 1792, offset: 3456)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !543, line: 610, size: 1792, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1099, !1100}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1008, file: !543, line: 611, baseType: !954, size: 192, align: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1008, file: !543, line: 618, baseType: !342, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1008, file: !543, line: 619, baseType: !342, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1008, file: !543, line: 620, baseType: !342, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1008, file: !543, line: 621, baseType: !342, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1008, file: !543, line: 622, baseType: !342, size: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1008, file: !543, line: 629, baseType: !578, size: 64, offset: 512)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1008, file: !543, line: 630, baseType: !342, size: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1008, file: !543, line: 631, baseType: !7, size: 32, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1008, file: !543, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1008, file: !543, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1008, file: !543, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1008, file: !543, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1008, file: !543, line: 662, baseType: !1024, size: 512, offset: 704)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !1025)
!1025 = !{!1026, !1034, !1035, !1040, !1095, !1096, !1097, !1098}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1024, file: !46, line: 119, baseType: !1027, size: 256)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1028, line: 9, size: 256, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1027, file: !1028, line: 10, baseType: !954, size: 192, align: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1027, file: !1028, line: 11, baseType: !1032, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1033, line: 29, baseType: !578)
!1033 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1024, file: !46, line: 120, baseType: !1032, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1024, file: !46, line: 121, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!45, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1024, file: !46, line: 122, baseType: !1041, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !1043)
!1043 = !{!1044, !1069, !1070, !1073, !1078, !1079, !1090, !1094}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1042, file: !46, line: 160, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1046, file: !46, line: 216, baseType: !581, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1046, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1046, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1046, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1046, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1046, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1046, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1046, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1046, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1046, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1046, file: !46, line: 227, baseType: !159, size: 16, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1046, file: !46, line: 228, baseType: !159, size: 16, offset: 208)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1046, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1046, file: !46, line: 235, baseType: !1032, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1046, file: !46, line: 236, baseType: !1039, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1046, file: !46, line: 237, baseType: !1032, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1046, file: !46, line: 238, baseType: !1039, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1046, file: !46, line: 239, baseType: !1066, size: 4096, align: 512, offset: 512)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 4096, align: 512, elements: !1067)
!1067 = !{!1068}
!1068 = !DISubrange(count: 8)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1042, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1042, file: !46, line: 162, baseType: !1071, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !89, line: 32, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !223, line: 96, baseType: !142)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1042, file: !46, line: 163, baseType: !1074, size: 32, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !311, line: 274, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !311, line: 274, size: 32, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1075, file: !311, line: 274, baseType: !315, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1042, file: !46, line: 164, baseType: !1039, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1042, file: !46, line: 165, baseType: !1080, size: 128, offset: 256)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1028, line: 14, size: 128, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1080, file: !1028, line: 15, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !955, line: 26, size: 128, elements: !1084)
!1084 = !{!1085, !1089}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1083, file: !955, line: 27, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !955, line: 12, size: 64, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1086, file: !955, line: 13, baseType: !959, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1083, file: !955, line: 28, baseType: !959, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1042, file: !46, line: 166, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1032}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1042, file: !46, line: 167, baseType: !1032, size: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1024, file: !46, line: 123, baseType: !147, size: 8, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1024, file: !46, line: 124, baseType: !147, size: 8, offset: 456)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1024, file: !46, line: 125, baseType: !147, size: 8, offset: 464)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1024, file: !46, line: 126, baseType: !147, size: 8, offset: 472)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1008, file: !543, line: 671, baseType: !1024, size: 512, offset: 1216)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1008, file: !543, line: 679, baseType: !1101, size: 64, offset: 1728)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !897, file: !543, line: 800, baseType: !1103, size: 64, offset: 5248)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1105)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !543, line: 800, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !897, file: !543, line: 809, baseType: !1107, size: 64, offset: 5312)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !543, line: 70, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !897, file: !543, line: 825, baseType: !1110, size: 2048, align: 512, offset: 5632)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !543, line: 509, size: 2048, align: 512, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1110, file: !543, line: 511, baseType: !342, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1110, file: !543, line: 512, baseType: !342, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1110, file: !543, line: 513, baseType: !342, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1110, file: !543, line: 514, baseType: !342, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1110, file: !543, line: 515, baseType: !342, size: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1110, file: !543, line: 516, baseType: !342, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1110, file: !543, line: 518, baseType: !342, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1110, file: !543, line: 519, baseType: !342, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1110, file: !543, line: 520, baseType: !578, size: 64, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1110, file: !543, line: 522, baseType: !342, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1110, file: !543, line: 523, baseType: !342, size: 64, offset: 640)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1110, file: !543, line: 524, baseType: !578, size: 64, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1110, file: !543, line: 526, baseType: !578, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1110, file: !543, line: 527, baseType: !342, size: 64, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1110, file: !543, line: 529, baseType: !342, size: 64, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1110, file: !543, line: 530, baseType: !342, size: 64, offset: 960)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1110, file: !543, line: 531, baseType: !342, size: 64, offset: 1024)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1110, file: !543, line: 532, baseType: !342, size: 64, offset: 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1110, file: !543, line: 533, baseType: !342, size: 64, offset: 1152)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1110, file: !543, line: 535, baseType: !342, size: 64, offset: 1216)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1110, file: !543, line: 536, baseType: !342, size: 64, offset: 1280)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1110, file: !543, line: 537, baseType: !342, size: 64, offset: 1344)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1110, file: !543, line: 538, baseType: !342, size: 64, offset: 1408)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1110, file: !543, line: 539, baseType: !342, size: 64, offset: 1472)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1110, file: !543, line: 540, baseType: !342, size: 64, offset: 1536)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1110, file: !543, line: 541, baseType: !342, size: 64, offset: 1600)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1110, file: !543, line: 542, baseType: !342, size: 64, offset: 1664)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1110, file: !543, line: 543, baseType: !342, size: 64, offset: 1728)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !897, file: !543, line: 833, baseType: !7, size: 32, offset: 7680)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !897, file: !543, line: 836, baseType: !7, size: 32, offset: 7712)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !897, file: !543, line: 837, baseType: !142, size: 32, offset: 7744)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !897, file: !543, line: 838, baseType: !1144, size: 64, offset: 7808)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1147, line: 19, baseType: !1148)
!1147 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1147, line: 19, size: 64, elements: !1149)
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1148, file: !1147, line: 19, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 1)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !897, file: !543, line: 839, baseType: !1155, size: 64, offset: 7872)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !897, file: !543, line: 840, baseType: !1146, size: 64, offset: 7936)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !897, file: !543, line: 841, baseType: !82, size: 64, offset: 8000)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !897, file: !543, line: 843, baseType: !159, size: 16, offset: 8064)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !897, file: !543, line: 845, baseType: !159, size: 16, offset: 8080)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !897, file: !543, line: 848, baseType: !142, size: 32, offset: 8096)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !897, file: !543, line: 849, baseType: !1162, size: 32, offset: 8128)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !543, line: 718, size: 32, elements: !1163)
!1163 = !{!1164, !1171}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1162, file: !543, line: 724, baseType: !1165, size: 32)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1162, file: !543, line: 719, size: 32, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1165, file: !543, line: 720, baseType: !147, size: 8)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1165, file: !543, line: 721, baseType: !147, size: 8, offset: 8)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1165, file: !543, line: 722, baseType: !147, size: 8, offset: 16)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1165, file: !543, line: 723, baseType: !147, size: 8, offset: 24)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1162, file: !543, line: 725, baseType: !338, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !897, file: !543, line: 850, baseType: !88, size: 128, offset: 8192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !897, file: !543, line: 851, baseType: !1174, size: 64, offset: 8320)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !543, line: 60, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !897, file: !543, line: 855, baseType: !239, size: 64, offset: 8384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !897, file: !543, line: 856, baseType: !147, size: 8, offset: 8448)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !897, file: !543, line: 857, baseType: !147, size: 8, offset: 8456)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !897, file: !543, line: 858, baseType: !142, size: 32, offset: 8480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !897, file: !543, line: 859, baseType: !88, size: 128, offset: 8512)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !897, file: !543, line: 860, baseType: !142, size: 32, offset: 8640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !897, file: !543, line: 861, baseType: !88, size: 128, offset: 8704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !897, file: !543, line: 873, baseType: !1184, size: 256, offset: 8832)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !543, line: 376, size: 256, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1184, file: !543, line: 381, baseType: !239, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1184, file: !543, line: 384, baseType: !344, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1184, file: !543, line: 389, baseType: !344, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1184, file: !543, line: 392, baseType: !344, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !897, file: !543, line: 875, baseType: !88, size: 128, offset: 9088)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !897, file: !543, line: 877, baseType: !1192, size: 320, offset: 9216)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1193, line: 86, size: 320, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1194 = !{!1195, !1196, !1197}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1192, file: !1193, line: 87, baseType: !142, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1192, file: !1193, line: 88, baseType: !88, size: 128, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1192, file: !1193, line: 89, baseType: !88, size: 128, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !897, file: !543, line: 878, baseType: !954, size: 192, align: 64, offset: 9536)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !897, file: !543, line: 881, baseType: !1200, size: 64, offset: 9728)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1202, line: 733, size: 10240, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1203 = !{!1204, !1867}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1202, line: 734, baseType: !1205, size: 10240)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !1202, line: 734, size: 10240, elements: !1206)
!1206 = !{!1207, !1211, !1224, !1731, !1732, !1733, !1734, !1735, !1736, !1743, !1744, !1745, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1784, !1786, !1789, !1836, !1837, !1838, !1841, !1842, !1843, !1846, !1847, !1848, !1854, !1855}
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1202, line: 739, baseType: !1208, size: 512, align: 512)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1205, file: !1202, line: 739, size: 512, align: 512, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1208, file: !1202, line: 747, baseType: !138, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1205, file: !1202, line: 750, baseType: !1212, size: 128, offset: 512)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1213, line: 218, size: 128, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1214 = !{!1215, !1222, !1223}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1213, line: 219, baseType: !1216, size: 32)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1213, line: 219, size: 32, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1216, file: !1213, line: 220, baseType: !118, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1216, file: !1213, line: 221, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1213, line: 197, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1213, line: 197, elements: !472)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1212, file: !1213, line: 223, baseType: !7, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1212, file: !1213, line: 224, baseType: !82, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1205, file: !1202, line: 752, baseType: !1225, size: 64, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!239, !1228, !239, !239, !239, !239}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !1230)
!1230 = !{!1231, !1237, !1238, !1240, !1241, !1242, !1243, !1244, !1296, !1491, !1500, !1501, !1502, !1721, !1722, !1723, !1724, !1726, !1727, !1730}
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !35, line: 995, baseType: !1232, size: 128)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !35, line: 995, size: 128, elements: !1233)
!1233 = !{!1234, !1235, !1236}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1232, file: !35, line: 996, baseType: !923, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1232, file: !35, line: 997, baseType: !881, size: 128, align: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1232, file: !35, line: 998, baseType: !7, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1229, file: !35, line: 1005, baseType: !118, size: 32, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1229, file: !35, line: 1006, baseType: !1239, size: 32, offset: 160)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !89, line: 156, baseType: !7)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1229, file: !35, line: 1007, baseType: !572, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1229, file: !35, line: 1008, baseType: !568, size: 256, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1229, file: !35, line: 1009, baseType: !430, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1229, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1229, file: !35, line: 1011, baseType: !1245, size: 256, offset: 640)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !1246)
!1246 = !{!1247, !1268, !1292, !1293, !1294, !1295}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1245, file: !35, line: 949, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1249, line: 34, baseType: !1250)
!1249 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1249, line: 25, size: 64, elements: !1251)
!1251 = !{!1252}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1250, file: !1249, line: 26, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1254, line: 27, baseType: !1255)
!1254 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1254, line: 13, size: 64, elements: !1256)
!1256 = !{!1257, !1267}
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1254, line: 14, baseType: !1258, size: 32)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1254, line: 14, size: 32, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1258, file: !1254, line: 15, baseType: !138, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1254, line: 16, baseType: !1262, size: 32)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1258, file: !1254, line: 16, size: 32, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1262, file: !1254, line: 18, baseType: !147, size: 8)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1262, file: !1254, line: 19, baseType: !1266, size: 24, offset: 8)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 24, elements: !190)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1255, file: !1254, line: 26, baseType: !130, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1245, file: !35, line: 950, baseType: !1269, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1279, !1280, !1281, !1282}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1270, file: !6, line: 61, baseType: !910, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1270, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1270, file: !6, line: 63, baseType: !118, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1270, file: !6, line: 65, baseType: !1276, size: 256, offset: 128)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 256, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 4)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1270, file: !6, line: 66, baseType: !460, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1270, file: !6, line: 68, baseType: !874, size: 192, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1270, file: !6, line: 69, baseType: !881, size: 128, align: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1270, file: !6, line: 70, baseType: !1283, offset: 768)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, elements: !1290)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1284, file: !6, line: 55, baseType: !142, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1284, file: !6, line: 56, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!1290 = !{!1291}
!1291 = !DISubrange(count: -1)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1245, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1245, file: !35, line: 952, baseType: !275, size: 32, offset: 160)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1245, file: !35, line: 952, baseType: !275, size: 32, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1245, file: !35, line: 953, baseType: !142, size: 32, offset: 224)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1229, file: !35, line: 1012, baseType: !1297, size: 64, offset: 896)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1300, line: 110, size: 1472, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1318, !1319, !1320, !1321, !1322, !1323, !1436, !1437, !1438, !1439, !1440, !1471, !1474, !1478, !1486}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1299, file: !1300, line: 111, baseType: !572, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1299, file: !1300, line: 112, baseType: !275, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1299, file: !1300, line: 113, baseType: !284, size: 32, offset: 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1299, file: !1300, line: 114, baseType: !275, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1299, file: !1300, line: 115, baseType: !284, size: 32, offset: 160)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1299, file: !1300, line: 116, baseType: !275, size: 32, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1299, file: !1300, line: 117, baseType: !284, size: 32, offset: 224)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1299, file: !1300, line: 118, baseType: !275, size: 32, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1299, file: !1300, line: 119, baseType: !284, size: 32, offset: 288)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1299, file: !1300, line: 120, baseType: !7, size: 32, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1299, file: !1300, line: 121, baseType: !1313, size: 64, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1314, line: 24, baseType: !1315)
!1314 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1314, line: 24, size: 64, elements: !1316)
!1316 = !{!1317}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1315, file: !1314, line: 24, baseType: !342, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1299, file: !1300, line: 122, baseType: !1313, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1299, file: !1300, line: 123, baseType: !1313, size: 64, offset: 512)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1299, file: !1300, line: 124, baseType: !1313, size: 64, offset: 576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1299, file: !1300, line: 125, baseType: !1313, size: 64, offset: 640)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1299, file: !1300, line: 127, baseType: !151, size: 8, offset: 704)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1299, file: !1300, line: 129, baseType: !1324, size: 64, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1326, line: 195, size: 1728, elements: !1327)
!1326 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1327 = !{!1328, !1329, !1334, !1339, !1340, !1343, !1344, !1349, !1350, !1351, !1352, !1355, !1356, !1357, !1359, !1360, !1400, !1421}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1325, file: !1326, line: 196, baseType: !910, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1325, file: !1326, line: 197, baseType: !1330, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1326, line: 28, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !89, line: 104, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !148, line: 20, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !150, line: 26, baseType: !142)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !1326, line: 198, baseType: !1335, size: 192, offset: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1325, file: !1326, line: 198, size: 192, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1335, file: !1326, line: 199, baseType: !88, size: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1335, file: !1326, line: 200, baseType: !954, size: 192, align: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1325, file: !1326, line: 205, baseType: !781, size: 320, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1325, file: !1326, line: 206, baseType: !1341, size: 64, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1326, line: 206, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1325, file: !1326, line: 207, baseType: !82, size: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !1326, line: 208, baseType: !1345, size: 64, offset: 704)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1325, file: !1326, line: 208, size: 64, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1345, file: !1326, line: 209, baseType: !621, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1345, file: !1326, line: 210, baseType: !621, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1325, file: !1326, line: 212, baseType: !621, size: 64, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1325, file: !1326, line: 213, baseType: !275, size: 32, offset: 832)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1325, file: !1326, line: 214, baseType: !284, size: 32, offset: 864)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1325, file: !1326, line: 215, baseType: !1353, size: 32, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1326, line: 31, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !89, line: 110, baseType: !338)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1325, file: !1326, line: 216, baseType: !159, size: 16, offset: 928)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1325, file: !1326, line: 217, baseType: !159, size: 16, offset: 944)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1325, file: !1326, line: 221, baseType: !1358, size: 16, offset: 960)
!1358 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1325, file: !1326, line: 228, baseType: !239, size: 64, offset: 1024)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !1326, line: 245, baseType: !1361, size: 320, offset: 1088)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1325, file: !1326, line: 245, size: 320, elements: !1362)
!1362 = !{!1363, !1392}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1361, file: !1326, line: 246, baseType: !1364, size: 320)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1326, line: 114, size: 320, elements: !1365)
!1365 = !{!1366, !1367, !1379, !1382, !1391}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1364, file: !1326, line: 116, baseType: !239, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !1326, line: 117, baseType: !1368, size: 64, offset: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !1326, line: 117, size: 64, elements: !1369)
!1369 = !{!1370, !1378}
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1326, line: 118, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !1326, line: 118, size: 64, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1371, file: !1326, line: 120, baseType: !157, size: 16)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1371, file: !1326, line: 121, baseType: !1375, size: 48, offset: 16)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 48, elements: !1376)
!1376 = !{!1377}
!1377 = !DISubrange(count: 6)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1368, file: !1326, line: 127, baseType: !239, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1364, file: !1326, line: 129, baseType: !1380, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1326, line: 102, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1364, file: !1326, line: 130, baseType: !1383, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1326, line: 108, size: 192, elements: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1384, file: !1326, line: 109, baseType: !881, size: 128, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1384, file: !1326, line: 110, baseType: !910, size: 32, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1384, file: !1326, line: 111, baseType: !1389, size: 8, offset: 160)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !89, line: 35, baseType: !1390)
!1390 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1364, file: !1326, line: 131, baseType: !107, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1326, line: 247, baseType: !1393, size: 320)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1361, file: !1326, line: 247, size: 320, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1393, file: !1326, line: 248, baseType: !239, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1393, file: !1326, line: 249, baseType: !239, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1393, file: !1326, line: 250, baseType: !1380, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1393, file: !1326, line: 251, baseType: !1383, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1393, file: !1326, line: 252, baseType: !189, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !1326, line: 260, baseType: !1401, size: 256, offset: 1408)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1325, file: !1326, line: 260, size: 256, elements: !1402)
!1402 = !{!1403, !1409}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1401, file: !1326, line: 261, baseType: !1404, size: 256)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1326, line: 134, size: 256, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1404, file: !1326, line: 135, baseType: !82, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1404, file: !1326, line: 136, baseType: !1408, size: 256)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !1277)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1326, line: 262, baseType: !1410, size: 256)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1401, file: !1326, line: 262, size: 256, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1410, file: !1326, line: 264, baseType: !88, size: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1410, file: !1326, line: 265, baseType: !1414, size: 128, offset: 128)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1415, line: 22, size: 128, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1416 = !{!1417, !1420}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1414, file: !1415, line: 23, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1415, line: 23, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1414, file: !1415, line: 24, baseType: !239, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1325, file: !1326, line: 280, baseType: !1422, size: 64, offset: 1664)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1326, line: 176, size: 192, elements: !1424)
!1424 = !{!1425, !1434, !1435}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1423, file: !1326, line: 177, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1326, line: 171, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!142, !1324, !1430, !1432, !1324}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1423, file: !1326, line: 178, baseType: !1324, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1423, file: !1326, line: 179, baseType: !1380, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1299, file: !1300, line: 130, baseType: !1324, size: 64, offset: 832)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1299, file: !1300, line: 131, baseType: !1324, size: 64, offset: 896)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1299, file: !1300, line: 132, baseType: !1324, size: 64, offset: 960)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1299, file: !1300, line: 135, baseType: !82, size: 64, offset: 1024)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1299, file: !1300, line: 137, baseType: !1441, size: 64, offset: 1088)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1443, line: 14, size: 1088, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1444 = !{!1445, !1446, !1455, !1456, !1457, !1458, !1459, !1460}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1442, file: !1443, line: 15, baseType: !910, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1442, file: !1443, line: 17, baseType: !1447, size: 320, offset: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1448, line: 22, size: 320, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1449 = !{!1450, !1451, !1452, !1453}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1447, file: !1448, line: 23, baseType: !581, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1447, file: !1448, line: 24, baseType: !578, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1447, file: !1448, line: 26, baseType: !88, size: 128, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1447, file: !1448, line: 28, baseType: !1454, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1442, file: !1443, line: 19, baseType: !239, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1442, file: !1443, line: 20, baseType: !572, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1442, file: !1443, line: 23, baseType: !464, size: 128, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1442, file: !1443, line: 24, baseType: !275, size: 32, offset: 640)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1442, file: !1443, line: 29, baseType: !572, size: 64, offset: 704)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1442, file: !1443, line: 36, baseType: !1461, size: 320, offset: 768)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1462, line: 15, size: 320, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1461, file: !1462, line: 16, baseType: !581, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1461, file: !1462, line: 18, baseType: !142, size: 32, offset: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1461, file: !1462, line: 19, baseType: !142, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1461, file: !1462, line: 20, baseType: !142, size: 32, offset: 96)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1461, file: !1462, line: 21, baseType: !142, size: 32, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1461, file: !1462, line: 22, baseType: !239, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1461, file: !1462, line: 23, baseType: !239, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1299, file: !1300, line: 138, baseType: !1472, size: 64, offset: 1152)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !276, line: 18, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1299, file: !1300, line: 139, baseType: !1475, size: 64, offset: 1216)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1477, line: 16, flags: DIFlagFwdDecl)
!1477 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1299, file: !1300, line: 140, baseType: !1479, size: 64, offset: 1280)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1300, line: 25, size: 64, elements: !1481)
!1481 = !{!1482, !1483, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1480, file: !1300, line: 26, baseType: !138, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1480, file: !1300, line: 27, baseType: !142, size: 32, offset: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1480, file: !1300, line: 28, baseType: !1485, offset: 64)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, elements: !1290)
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1300, line: 142, baseType: !1487, size: 128, offset: 1344)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1300, line: 142, size: 128, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1487, file: !1300, line: 143, baseType: !142, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1487, file: !1300, line: 144, baseType: !881, size: 128, align: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1229, file: !35, line: 1013, baseType: !1492, size: 256, offset: 960)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !1493)
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1492, file: !35, line: 971, baseType: !239, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1492, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1492, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1492, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1492, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1492, file: !35, line: 976, baseType: !430, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1229, file: !35, line: 1014, baseType: !693, size: 128, offset: 1216)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1229, file: !35, line: 1015, baseType: !269, size: 64, offset: 1344)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1229, file: !35, line: 1016, baseType: !1503, size: 64, offset: 1408)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !1506)
!1506 = !{!1507, !1508, !1512, !1517, !1521, !1549, !1550, !1556, !1569, !1577, !1581, !1582, !1643, !1644, !1648, !1653, !1654, !1658, !1662, !1668, !1669, !1673, !1674, !1680, !1684, !1688, !1694, !1698, !1702, !1706, !1710, !1711, !1717}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1505, file: !35, line: 1915, baseType: !83, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1505, file: !35, line: 1916, baseType: !1509, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!430, !1228, !430, !142}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1505, file: !35, line: 1917, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!221, !1228, !189, !236, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1505, file: !35, line: 1918, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!221, !1228, !107, !236, !1516}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1505, file: !35, line: 1919, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!221, !1525, !1547}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1527)
!1527 = !{!1528, !1529, !1530, !1534, !1535, !1536, !1537}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1526, file: !35, line: 374, baseType: !1228, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1526, file: !35, line: 375, baseType: !430, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1526, file: !35, line: 376, baseType: !1531, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !1525, !225}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1526, file: !35, line: 377, baseType: !82, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1526, file: !35, line: 378, baseType: !142, size: 32, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1526, file: !35, line: 379, baseType: !157, size: 16, offset: 288)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !35, line: 380, baseType: !1538, size: 64, offset: 320)
!1538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !35, line: 380, size: 64, elements: !1539)
!1539 = !{!1540, !1543}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1538, file: !35, line: 386, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1538, file: !35, line: 395, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!221, !82}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1505, file: !35, line: 1920, baseType: !1522, size: 64, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1505, file: !35, line: 1921, baseType: !1551, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!142, !1525, !1554, !7}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1505, file: !35, line: 1923, baseType: !1557, size: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!142, !1228, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !1562)
!1562 = !{!1563, !1568}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1561, file: !35, line: 1859, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1389, !1560, !107, !142, !430, !342, !7}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1561, file: !35, line: 1860, baseType: !430, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1505, file: !35, line: 1924, baseType: !1570, size: 64, offset: 512)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!1573, !1228, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1574, line: 59, baseType: !7)
!1574 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !35, line: 61, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1505, file: !35, line: 1925, baseType: !1578, size: 64, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!225, !1228, !7, !239}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1505, file: !35, line: 1926, baseType: !1578, size: 64, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1505, file: !35, line: 1927, baseType: !1583, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!142, !1228, !1586}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1202, line: 625, size: 1344, elements: !1588)
!1588 = !{!1589, !1598, !1599, !1607, !1614, !1615, !1620, !1621, !1626, !1627, !1630, !1634, !1635, !1636, !1637, !1638, !1641}
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1202, line: 628, baseType: !1590, size: 128)
!1590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !1202, line: 628, size: 128, elements: !1591)
!1591 = !{!1592, !1597}
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1202, line: 629, baseType: !1593, size: 128)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1590, file: !1202, line: 629, size: 128, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1593, file: !1202, line: 631, baseType: !239, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1593, file: !1202, line: 632, baseType: !239, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1590, file: !1202, line: 635, baseType: !881, size: 128, align: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1587, file: !1202, line: 639, baseType: !1200, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1587, file: !1202, line: 640, baseType: !1600, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1601, line: 297, baseType: !1602)
!1601 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1601, line: 297, size: 64, elements: !1603)
!1603 = !{!1604}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1602, file: !1601, line: 297, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1606, line: 19, baseType: !239)
!1606 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1202, line: 646, baseType: !1608, size: 64, offset: 256)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !1202, line: 646, size: 64, elements: !1609)
!1609 = !{!1610, !1613}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1608, file: !1202, line: 647, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1202, line: 542, baseType: !239)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1608, file: !1202, line: 648, baseType: !1612, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1587, file: !1202, line: 666, baseType: !142, size: 32, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1587, file: !1202, line: 667, baseType: !1616, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1202, line: 579, size: 320, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1617, file: !1202, line: 580, baseType: !781, size: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1587, file: !1202, line: 670, baseType: !1389, size: 8, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1587, file: !1202, line: 681, baseType: !1622, size: 256, offset: 512)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1587, file: !1202, line: 678, size: 256, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1622, file: !1202, line: 679, baseType: !954, size: 192, align: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1622, file: !1202, line: 680, baseType: !239, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1587, file: !1202, line: 689, baseType: !88, size: 128, offset: 768)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1587, file: !1202, line: 691, baseType: !1628, size: 64, offset: 896)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1202, line: 691, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1587, file: !1202, line: 694, baseType: !1631, size: 64, offset: 960)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1202, line: 694, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1587, file: !1202, line: 697, baseType: !239, size: 64, offset: 1024)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1587, file: !1202, line: 699, baseType: !1228, size: 64, offset: 1088)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1587, file: !1202, line: 700, baseType: !82, size: 64, offset: 1152)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1587, file: !1202, line: 711, baseType: !572, size: 64, offset: 1216)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1587, file: !1202, line: 717, baseType: !1639, size: 64, offset: 1280)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1202, line: 717, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1587, file: !1202, line: 722, baseType: !1642, offset: 1344)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1202, line: 570, elements: !472)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1505, file: !35, line: 1928, baseType: !239, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1505, file: !35, line: 1929, baseType: !1645, size: 64, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!142, !269, !1228}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1505, file: !35, line: 1930, baseType: !1649, size: 64, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!142, !1228, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !82)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1505, file: !35, line: 1931, baseType: !1645, size: 64, offset: 960)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1505, file: !35, line: 1932, baseType: !1655, size: 64, offset: 1024)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!142, !1228, !430, !430, !142}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1505, file: !35, line: 1933, baseType: !1659, size: 64, offset: 1088)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!142, !142, !1228, !142}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !35, line: 1934, baseType: !1663, size: 64, offset: 1152)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!142, !1228, !142, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1505, file: !35, line: 1935, baseType: !1225, size: 64, offset: 1216)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1505, file: !35, line: 1936, baseType: !1670, size: 64, offset: 1280)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!142, !142}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1505, file: !35, line: 1937, baseType: !1663, size: 64, offset: 1344)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1505, file: !35, line: 1938, baseType: !1675, size: 64, offset: 1408)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!221, !1678, !1228, !1516, !236, !7}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !543, line: 59, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1505, file: !35, line: 1939, baseType: !1681, size: 64, offset: 1472)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!221, !1228, !1516, !1678, !236, !7}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1505, file: !35, line: 1940, baseType: !1685, size: 64, offset: 1536)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1228}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1505, file: !35, line: 1941, baseType: !1689, size: 64, offset: 1600)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!142, !1228, !142, !1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1505, file: !35, line: 1942, baseType: !1695, size: 64, offset: 1664)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!225, !1228, !142, !430, !430}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1505, file: !35, line: 1944, baseType: !1699, size: 64, offset: 1728)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !541, !1228}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1505, file: !35, line: 1948, baseType: !1703, size: 64, offset: 1792)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!221, !1228, !430, !1228, !430, !236, !7}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1505, file: !35, line: 1950, baseType: !1707, size: 64, offset: 1856)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!430, !1228, !430, !1228, !430, !430, !7}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1505, file: !35, line: 1953, baseType: !1655, size: 64, offset: 1920)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1505, file: !35, line: 1954, baseType: !1712, size: 64, offset: 1984)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!142, !1715, !7}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1505, file: !35, line: 1955, baseType: !1718, size: 64, offset: 2048)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!142, !1715, !1554, !7}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1229, file: !35, line: 1018, baseType: !342, size: 64, offset: 1472)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1229, file: !35, line: 1020, baseType: !82, size: 64, offset: 1536)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1229, file: !35, line: 1023, baseType: !82, size: 64, offset: 1600)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1229, file: !35, line: 1027, baseType: !1725, size: 64, offset: 1664)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1229, file: !35, line: 1029, baseType: !265, size: 64, offset: 1728)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1229, file: !35, line: 1030, baseType: !1728, size: 32, offset: 1792)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1729, line: 8, baseType: !338)
!1729 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1229, file: !35, line: 1031, baseType: !1728, size: 32, offset: 1824)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1205, file: !1202, line: 756, baseType: !239, size: 64, offset: 704)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1205, file: !1202, line: 757, baseType: !239, size: 64, offset: 768)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1205, file: !1202, line: 760, baseType: !239, size: 64, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1205, file: !1202, line: 761, baseType: !239, size: 64, offset: 896)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1205, file: !1202, line: 763, baseType: !239, size: 64, offset: 960)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1205, file: !1202, line: 764, baseType: !1737, size: 64, offset: 1024)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1601, line: 299, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1601, line: 299, size: 64, elements: !1740)
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1739, file: !1601, line: 299, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1606, line: 18, baseType: !239)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1205, file: !1202, line: 773, baseType: !138, size: 32, offset: 1088)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1205, file: !1202, line: 785, baseType: !138, size: 32, offset: 1120)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1205, file: !1202, line: 795, baseType: !1746, size: 64, offset: 1152)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1202, line: 726, size: 128, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1747, file: !1202, line: 727, baseType: !342, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1747, file: !1202, line: 728, baseType: !142, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1205, file: !1202, line: 801, baseType: !239, size: 64, offset: 1216)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1205, file: !1202, line: 804, baseType: !572, size: 64, offset: 1280)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1205, file: !1202, line: 806, baseType: !142, size: 32, offset: 1344)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1205, file: !1202, line: 808, baseType: !118, size: 32, offset: 1376)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1205, file: !1202, line: 823, baseType: !781, size: 320, offset: 1408)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1205, file: !1202, line: 825, baseType: !88, size: 128, offset: 1728)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1205, file: !1202, line: 845, baseType: !142, size: 32, offset: 1856)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1205, file: !1202, line: 849, baseType: !239, size: 64, offset: 1920)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1205, file: !1202, line: 850, baseType: !239, size: 64, offset: 1984)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1205, file: !1202, line: 852, baseType: !239, size: 64, offset: 2048)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1205, file: !1202, line: 853, baseType: !239, size: 64, offset: 2112)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1205, file: !1202, line: 854, baseType: !574, size: 64, offset: 2176)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1205, file: !1202, line: 855, baseType: !239, size: 64, offset: 2240)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1205, file: !1202, line: 856, baseType: !239, size: 64, offset: 2304)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1205, file: !1202, line: 857, baseType: !239, size: 64, offset: 2368)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1205, file: !1202, line: 858, baseType: !239, size: 64, offset: 2432)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1205, file: !1202, line: 865, baseType: !315, size: 32, offset: 2496)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1205, file: !1202, line: 867, baseType: !118, size: 32, offset: 2528)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1205, file: !1202, line: 869, baseType: !239, size: 64, offset: 2560)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1205, file: !1202, line: 869, baseType: !239, size: 64, offset: 2624)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1205, file: !1202, line: 869, baseType: !239, size: 64, offset: 2688)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1205, file: !1202, line: 869, baseType: !239, size: 64, offset: 2752)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1205, file: !1202, line: 870, baseType: !239, size: 64, offset: 2816)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1205, file: !1202, line: 870, baseType: !239, size: 64, offset: 2880)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1205, file: !1202, line: 870, baseType: !239, size: 64, offset: 2944)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1205, file: !1202, line: 871, baseType: !239, size: 64, offset: 3008)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1205, file: !1202, line: 871, baseType: !239, size: 64, offset: 3072)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1205, file: !1202, line: 871, baseType: !239, size: 64, offset: 3136)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1205, file: !1202, line: 871, baseType: !239, size: 64, offset: 3200)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1205, file: !1202, line: 873, baseType: !1781, size: 3328, offset: 3264)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 3328, elements: !1782)
!1782 = !{!1783}
!1783 = !DISubrange(count: 52)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1205, file: !1202, line: 875, baseType: !1785, size: 1280, offset: 6592)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 1280, elements: !1277)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1205, file: !1202, line: 877, baseType: !1787, size: 64, offset: 7872)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1202, line: 877, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1205, file: !1202, line: 880, baseType: !1790, size: 1088, offset: 7936)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1791, line: 72, baseType: !1792)
!1791 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1791, line: 23, size: 1088, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1801, !1802, !1803, !1804, !1831, !1832, !1833}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1792, file: !1791, line: 28, baseType: !342, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1792, file: !1791, line: 38, baseType: !574, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1792, file: !1791, line: 40, baseType: !239, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1792, file: !1791, line: 43, baseType: !781, size: 320, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1792, file: !1791, line: 44, baseType: !1799, size: 64, offset: 512)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1791, line: 44, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1792, file: !1791, line: 48, baseType: !239, size: 64, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1792, file: !1791, line: 59, baseType: !568, size: 256, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1792, file: !1791, line: 60, baseType: !82, size: 64, offset: 896)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1792, file: !1791, line: 61, baseType: !1805, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1808, line: 13, size: 1216, elements: !1809)
!1808 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1807, file: !1808, line: 14, baseType: !82, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1807, file: !1808, line: 15, baseType: !239, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1807, file: !1808, line: 17, baseType: !239, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1807, file: !1808, line: 17, baseType: !239, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1807, file: !1808, line: 18, baseType: !239, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1807, file: !1808, line: 18, baseType: !239, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1807, file: !1808, line: 19, baseType: !1817, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1807, file: !1808, line: 21, baseType: !225, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1807, file: !1808, line: 23, baseType: !225, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1807, file: !1808, line: 24, baseType: !225, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1807, file: !1808, line: 25, baseType: !225, size: 64, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1807, file: !1808, line: 26, baseType: !225, size: 64, offset: 704)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1807, file: !1808, line: 27, baseType: !225, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1807, file: !1808, line: 28, baseType: !225, size: 64, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1807, file: !1808, line: 29, baseType: !225, size: 64, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1807, file: !1808, line: 30, baseType: !225, size: 64, offset: 960)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1807, file: !1808, line: 31, baseType: !225, size: 64, offset: 1024)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1807, file: !1808, line: 32, baseType: !225, size: 64, offset: 1088)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1807, file: !1808, line: 33, baseType: !225, size: 64, offset: 1152)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1792, file: !1791, line: 63, baseType: !138, size: 32, offset: 1024)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1792, file: !1791, line: 69, baseType: !157, size: 16, offset: 1056)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1792, file: !1791, line: 70, baseType: !1834, size: 16, offset: 1072)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !148, line: 18, baseType: !1835)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !150, line: 23, baseType: !1358)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1205, file: !1202, line: 882, baseType: !239, size: 64, offset: 9024)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1205, file: !1202, line: 885, baseType: !118, size: 32, offset: 9088)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1205, file: !1202, line: 886, baseType: !1839, size: 64, offset: 9152)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1202, line: 732, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1205, file: !1202, line: 901, baseType: !1472, size: 64, offset: 9216)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1205, file: !1202, line: 904, baseType: !1228, size: 64, offset: 9280)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1205, file: !1202, line: 906, baseType: !1844, size: 64, offset: 9344)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1202, line: 906, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1205, file: !1202, line: 930, baseType: !138, size: 32, offset: 9408)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1205, file: !1202, line: 933, baseType: !138, size: 32, offset: 9440)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1205, file: !1202, line: 935, baseType: !1849, size: 64, offset: 9472)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1850)
!1850 = !{!1851}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1849, file: !57, line: 104, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1205, file: !1202, line: 940, baseType: !572, size: 64, offset: 9536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1205, file: !1202, line: 942, baseType: !1856, size: 256, offset: 9600)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1857, line: 98, size: 256, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1856, file: !1857, line: 99, baseType: !572, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1856, file: !1857, line: 100, baseType: !88, size: 128, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1856, file: !1857, line: 101, baseType: !1862, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1857, line: 21, baseType: !1863)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1201, file: !1202, line: 986, baseType: !1868, offset: 10240)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, elements: !1290)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !897, file: !543, line: 882, baseType: !1200, size: 64, offset: 9792)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !897, file: !543, line: 884, baseType: !142, size: 32, offset: 9856)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !897, file: !543, line: 885, baseType: !142, size: 32, offset: 9888)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !897, file: !543, line: 886, baseType: !142, size: 32, offset: 9920)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !897, file: !543, line: 888, baseType: !142, size: 32, offset: 9952)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !897, file: !543, line: 890, baseType: !239, size: 64, offset: 9984)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !897, file: !543, line: 893, baseType: !7, size: 32, offset: 10048)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !897, file: !543, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !897, file: !543, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !897, file: !543, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !897, file: !543, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !897, file: !543, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !897, file: !543, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !897, file: !543, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !897, file: !543, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !897, file: !543, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !897, file: !543, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !897, file: !543, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !897, file: !543, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !897, file: !543, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !897, file: !543, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !897, file: !543, line: 969, baseType: !239, size: 64, offset: 10176)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !897, file: !543, line: 971, baseType: !1892, size: 448, offset: 10240)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !1893)
!1893 = !{!1894, !1895, !1900}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1892, file: !51, line: 26, baseType: !239, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1892, file: !51, line: 27, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!225, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !51, line: 28, baseType: !1901, size: 320, offset: 128)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !51, line: 28, size: 320, elements: !1902)
!1902 = !{!1903, !1913, !1938}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1901, file: !51, line: 37, baseType: !1904, size: 320)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1901, file: !51, line: 30, size: 320, elements: !1905)
!1905 = !{!1906, !1908, !1909, !1910, !1911, !1912}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1904, file: !51, line: 31, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1904, file: !51, line: 32, baseType: !338, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1904, file: !51, line: 33, baseType: !338, size: 32, offset: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1904, file: !51, line: 34, baseType: !338, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1904, file: !51, line: 35, baseType: !342, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1904, file: !51, line: 36, baseType: !1907, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1901, file: !51, line: 47, baseType: !1914, size: 192)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1901, file: !51, line: 39, size: 192, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1937}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1914, file: !51, line: 40, baseType: !1071, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1914, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !51, line: 42, baseType: !1919, size: 64, offset: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !51, line: 42, size: 64, elements: !1920)
!1920 = !{!1921, !1929}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1919, file: !51, line: 43, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1924, line: 7, size: 128, elements: !1925)
!1924 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1925 = !{!1926, !1928}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1923, file: !1924, line: 8, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !223, line: 93, baseType: !432)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1923, file: !1924, line: 9, baseType: !432, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1919, file: !51, line: 44, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1932, line: 7, size: 64, elements: !1933)
!1932 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1933 = !{!1934, !1936}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1931, file: !1932, line: 8, baseType: !1935, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1932, line: 5, baseType: !1332)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1931, file: !1932, line: 9, baseType: !1332, size: 32, offset: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1914, file: !51, line: 46, baseType: !342, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1901, file: !51, line: 55, baseType: !1939, size: 256)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1901, file: !51, line: 49, size: 256, elements: !1940)
!1940 = !{!1941, !1944, !1945, !1946, !1947}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1939, file: !51, line: 50, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1939, file: !51, line: 51, baseType: !142, size: 32, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1939, file: !51, line: 52, baseType: !142, size: 32, offset: 96)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1939, file: !51, line: 53, baseType: !239, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1939, file: !51, line: 54, baseType: !239, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !897, file: !543, line: 973, baseType: !1949, size: 32, offset: 10688)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !89, line: 27, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !223, line: 28, baseType: !142)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !897, file: !543, line: 974, baseType: !1949, size: 32, offset: 10720)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !897, file: !543, line: 978, baseType: !239, size: 64, offset: 10752)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !897, file: !543, line: 987, baseType: !896, size: 64, offset: 10816)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !897, file: !543, line: 990, baseType: !896, size: 64, offset: 10880)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !897, file: !543, line: 995, baseType: !88, size: 128, offset: 10944)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !897, file: !543, line: 996, baseType: !88, size: 128, offset: 11072)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !897, file: !543, line: 997, baseType: !896, size: 64, offset: 11200)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !897, file: !543, line: 1005, baseType: !88, size: 128, offset: 11264)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !897, file: !543, line: 1006, baseType: !88, size: 128, offset: 11392)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !897, file: !543, line: 1009, baseType: !1269, size: 64, offset: 11520)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !897, file: !543, line: 1010, baseType: !1962, size: 512, offset: 11584)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 512, elements: !1277)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !897, file: !543, line: 1011, baseType: !88, size: 128, offset: 12096)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !897, file: !543, line: 1012, baseType: !88, size: 128, offset: 12224)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !897, file: !543, line: 1014, baseType: !1966, size: 64, offset: 12352)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1968, line: 26, size: 256, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1967, file: !1968, line: 27, baseType: !7, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1967, file: !1968, line: 28, baseType: !1972, size: 192, offset: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1973, line: 43, size: 192, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1972, file: !1973, line: 44, baseType: !581, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1972, file: !1973, line: 45, baseType: !88, size: 128, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !897, file: !543, line: 1017, baseType: !535, size: 64, offset: 12416)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !897, file: !543, line: 1020, baseType: !535, size: 64, offset: 12480)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !897, file: !543, line: 1023, baseType: !82, size: 64, offset: 12544)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !897, file: !543, line: 1025, baseType: !342, size: 64, offset: 12608)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !897, file: !543, line: 1026, baseType: !342, size: 64, offset: 12672)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !897, file: !543, line: 1031, baseType: !342, size: 64, offset: 12736)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !897, file: !543, line: 1032, baseType: !1984, size: 192, offset: 12800)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !543, line: 324, size: 192, elements: !1985)
!1985 = !{!1986, !1987, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1984, file: !543, line: 326, baseType: !342, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1984, file: !543, line: 327, baseType: !342, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1984, file: !543, line: 328, baseType: !581, size: 32, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !897, file: !543, line: 1041, baseType: !239, size: 64, offset: 12992)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !897, file: !543, line: 1042, baseType: !239, size: 64, offset: 13056)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !897, file: !543, line: 1045, baseType: !342, size: 64, offset: 13120)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !897, file: !543, line: 1048, baseType: !342, size: 64, offset: 13184)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !897, file: !543, line: 1051, baseType: !239, size: 64, offset: 13248)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !897, file: !543, line: 1052, baseType: !239, size: 64, offset: 13312)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !897, file: !543, line: 1055, baseType: !1996, size: 640, offset: 13376)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1997, line: 132, size: 640, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1998 = !{!1999, !2005, !2006}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1996, file: !1997, line: 133, baseType: !2000, size: 576)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2001, size: 576, elements: !190)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1997, line: 117, size: 192, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2001, file: !1997, line: 118, baseType: !342, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2001, file: !1997, line: 119, baseType: !1080, size: 128, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1996, file: !1997, line: 134, baseType: !7, size: 32, offset: 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1996, file: !1997, line: 135, baseType: !7, size: 32, offset: 608)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !897, file: !543, line: 1058, baseType: !2008, size: 448, offset: 14016)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1997, line: 144, size: 448, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2008, file: !1997, line: 145, baseType: !881, size: 128, align: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2008, file: !1997, line: 146, baseType: !568, size: 256, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2008, file: !1997, line: 147, baseType: !7, size: 32, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !897, file: !543, line: 1064, baseType: !1297, size: 64, offset: 14464)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !897, file: !543, line: 1067, baseType: !1297, size: 64, offset: 14528)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !897, file: !543, line: 1070, baseType: !1297, size: 64, offset: 14592)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !897, file: !543, line: 1074, baseType: !1324, size: 64, offset: 14656)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !897, file: !543, line: 1084, baseType: !2018, size: 128, offset: 14720)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !2019)
!2019 = !{!2020}
!2020 = !DISubrange(count: 16)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !897, file: !543, line: 1086, baseType: !2022, size: 64, offset: 14848)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !543, line: 55, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !897, file: !543, line: 1089, baseType: !2025, size: 64, offset: 14912)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2026, line: 12, size: 64, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2027 = !{!2028}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2025, file: !2026, line: 13, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2026, line: 8, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !897, file: !543, line: 1090, baseType: !2032, size: 128, offset: 14976)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2033, line: 13, size: 128, elements: !2034)
!2033 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2034 = !{!2035}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2032, file: !2033, line: 14, baseType: !88, size: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !897, file: !543, line: 1097, baseType: !2037, size: 64, offset: 15104)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !543, line: 50, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !897, file: !543, line: 1100, baseType: !2040, size: 64, offset: 15168)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !543, line: 1100, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !897, file: !543, line: 1103, baseType: !2043, size: 64, offset: 15232)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !543, line: 53, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !897, file: !543, line: 1107, baseType: !2046, size: 64, offset: 15296)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !543, line: 56, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !897, file: !543, line: 1110, baseType: !2049, size: 64, offset: 15360)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2051, line: 93, size: 8768, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2102, !2111, !2112, !2114, !2115, !2116, !2119, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2157, !2158, !2165, !2175, !2178, !2179, !2182, !2183, !2184, !2185, !2186, !2187}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2050, file: !2051, line: 94, baseType: !910, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2050, file: !2051, line: 95, baseType: !138, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2050, file: !2051, line: 96, baseType: !142, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2050, file: !2051, line: 97, baseType: !142, size: 32, offset: 96)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2050, file: !2051, line: 98, baseType: !88, size: 128, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2050, file: !2051, line: 100, baseType: !874, size: 192, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2050, file: !2051, line: 103, baseType: !896, size: 64, offset: 448)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2050, file: !2051, line: 106, baseType: !2061, size: 192, offset: 512)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1477, line: 32, size: 192, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2061, file: !1477, line: 33, baseType: !88, size: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2061, file: !1477, line: 34, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2066, line: 25, baseType: !2067)
!2066 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2066, line: 23, size: 64, elements: !2068)
!2068 = !{!2069}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2067, file: !2066, line: 24, baseType: !1151, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2050, file: !2051, line: 109, baseType: !460, size: 64, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2050, file: !2051, line: 112, baseType: !142, size: 32, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2050, file: !2051, line: 114, baseType: !142, size: 32, offset: 800)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2050, file: !2051, line: 115, baseType: !896, size: 64, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2050, file: !2051, line: 118, baseType: !142, size: 32, offset: 896)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2050, file: !2051, line: 119, baseType: !7, size: 32, offset: 928)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2050, file: !2051, line: 121, baseType: !2077, size: 64, offset: 960)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2051, line: 80, size: 448, elements: !2079)
!2079 = !{!2080, !2081, !2087}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2078, file: !2051, line: 81, baseType: !138, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2078, file: !2051, line: 82, baseType: !2082, size: 128, offset: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2051, line: 75, size: 128, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2082, file: !2051, line: 76, baseType: !896, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2082, file: !2051, line: 77, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2078, file: !2051, line: 83, baseType: !1967, size: 256, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2050, file: !2051, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2050, file: !2051, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2050, file: !2051, line: 138, baseType: !7, size: 32, offset: 1056)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2050, file: !2051, line: 139, baseType: !88, size: 128, offset: 1088)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2050, file: !2051, line: 142, baseType: !1024, size: 512, offset: 1216)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2050, file: !2051, line: 143, baseType: !1032, size: 64, offset: 1728)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2050, file: !2051, line: 150, baseType: !2095, size: 256, offset: 1792)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2096, size: 256, elements: !2100)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2051, line: 38, size: 128, elements: !2097)
!2097 = !{!2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2096, file: !2051, line: 39, baseType: !342, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2096, file: !2051, line: 40, baseType: !342, size: 64, offset: 64)
!2100 = !{!2101}
!2101 = !DISubrange(count: 2)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2050, file: !2051, line: 156, baseType: !2103, size: 192, offset: 2048)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2051, line: 66, size: 192, elements: !2104)
!2104 = !{!2105}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2103, file: !2051, line: 67, baseType: !2106, size: 192)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2051, line: 47, size: 192, elements: !2107)
!2107 = !{!2108, !2109, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2106, file: !2051, line: 48, baseType: !574, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2106, file: !2051, line: 49, baseType: !574, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2106, file: !2051, line: 50, baseType: !574, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2050, file: !2051, line: 160, baseType: !1996, size: 640, offset: 2240)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2050, file: !2051, line: 163, baseType: !2113, size: 256, offset: 2880)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1269, size: 256, elements: !1277)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2050, file: !2051, line: 169, baseType: !1269, size: 64, offset: 3136)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2050, file: !2051, line: 172, baseType: !142, size: 32, offset: 3200)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2050, file: !2051, line: 174, baseType: !2117, size: 64, offset: 3264)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2051, line: 174, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2050, file: !2051, line: 185, baseType: !2120, size: 64, offset: 3328)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !311, line: 860, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 853, size: 64, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2121, file: !311, line: 858, baseType: !310, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2121, file: !311, line: 859, baseType: !118, size: 32, offset: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2050, file: !2051, line: 186, baseType: !342, size: 64, offset: 3392)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2050, file: !2051, line: 186, baseType: !342, size: 64, offset: 3456)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2050, file: !2051, line: 186, baseType: !342, size: 64, offset: 3520)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2050, file: !2051, line: 186, baseType: !342, size: 64, offset: 3584)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2050, file: !2051, line: 187, baseType: !342, size: 64, offset: 3648)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2050, file: !2051, line: 188, baseType: !342, size: 64, offset: 3712)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2050, file: !2051, line: 189, baseType: !1984, size: 192, offset: 3776)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2050, file: !2051, line: 190, baseType: !239, size: 64, offset: 3968)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2050, file: !2051, line: 190, baseType: !239, size: 64, offset: 4032)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2050, file: !2051, line: 190, baseType: !239, size: 64, offset: 4096)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2050, file: !2051, line: 190, baseType: !239, size: 64, offset: 4160)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2050, file: !2051, line: 191, baseType: !239, size: 64, offset: 4224)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2050, file: !2051, line: 191, baseType: !239, size: 64, offset: 4288)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2050, file: !2051, line: 191, baseType: !239, size: 64, offset: 4352)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2050, file: !2051, line: 191, baseType: !239, size: 64, offset: 4416)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2050, file: !2051, line: 192, baseType: !239, size: 64, offset: 4480)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2050, file: !2051, line: 192, baseType: !239, size: 64, offset: 4544)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2050, file: !2051, line: 192, baseType: !239, size: 64, offset: 4608)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2050, file: !2051, line: 192, baseType: !239, size: 64, offset: 4672)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2050, file: !2051, line: 193, baseType: !239, size: 64, offset: 4736)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2050, file: !2051, line: 193, baseType: !239, size: 64, offset: 4800)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2050, file: !2051, line: 194, baseType: !2147, size: 448, offset: 4864)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2148, line: 12, size: 448, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2147, file: !2148, line: 15, baseType: !342, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2147, file: !2148, line: 17, baseType: !342, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2147, file: !2148, line: 19, baseType: !342, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2147, file: !2148, line: 21, baseType: !342, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2147, file: !2148, line: 29, baseType: !342, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2147, file: !2148, line: 35, baseType: !342, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2147, file: !2148, line: 44, baseType: !342, size: 64, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2050, file: !2051, line: 202, baseType: !344, size: 64, offset: 5312)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2050, file: !2051, line: 213, baseType: !2159, size: 2048, offset: 5376)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2160, size: 2048, elements: !2019)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2161, line: 43, size: 128, elements: !2162)
!2161 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2160, file: !2161, line: 44, baseType: !238, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2160, file: !2161, line: 45, baseType: !238, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2050, file: !2051, line: 216, baseType: !2166, size: 448, offset: 7424)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2051, line: 30, size: 448, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2166, file: !2051, line: 31, baseType: !142, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2166, file: !2051, line: 32, baseType: !225, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2166, file: !2051, line: 33, baseType: !239, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2166, file: !2051, line: 34, baseType: !342, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2166, file: !2051, line: 34, baseType: !342, size: 64, offset: 256)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2166, file: !2051, line: 35, baseType: !239, size: 64, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2166, file: !2051, line: 35, baseType: !239, size: 64, offset: 384)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2050, file: !2051, line: 219, baseType: !2176, size: 64, offset: 7872)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2051, line: 219, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2050, file: !2051, line: 222, baseType: !7, size: 32, offset: 7936)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2050, file: !2051, line: 223, baseType: !2180, size: 64, offset: 8000)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2051, line: 223, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2050, file: !2051, line: 230, baseType: !1389, size: 8, offset: 8064)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2050, file: !2051, line: 231, baseType: !1358, size: 16, offset: 8080)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2050, file: !2051, line: 232, baseType: !1358, size: 16, offset: 8096)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2050, file: !2051, line: 234, baseType: !1200, size: 64, offset: 8128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2050, file: !2051, line: 237, baseType: !568, size: 256, offset: 8192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2050, file: !2051, line: 243, baseType: !781, size: 320, offset: 8448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !897, file: !543, line: 1111, baseType: !2189, size: 64, offset: 15424)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2051, line: 20, size: 16640, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2190, file: !2051, line: 21, baseType: !118, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2190, file: !2051, line: 22, baseType: !910, size: 32, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2190, file: !2051, line: 23, baseType: !874, size: 192, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2190, file: !2051, line: 24, baseType: !2196, size: 16384, offset: 256)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2197, size: 16384, elements: !194)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1477, line: 51, size: 256, elements: !2198)
!2198 = !{!2199}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2197, file: !1477, line: 52, baseType: !2200, size: 256)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1477, line: 37, size: 256, elements: !2201)
!2201 = !{!2202, !2209, !2210, !2216}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2200, file: !1477, line: 39, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2204, line: 83, baseType: !2205)
!2204 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2204, line: 82, baseType: !2207)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !142}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2200, file: !1477, line: 40, baseType: !239, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2200, file: !1477, line: 46, baseType: !2211, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2204, line: 86, baseType: !2212)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2204, line: 85, baseType: !2214)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2200, file: !1477, line: 48, baseType: !2065, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !897, file: !543, line: 1112, baseType: !2065, size: 64, offset: 15488)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !897, file: !543, line: 1113, baseType: !2065, size: 64, offset: 15552)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !897, file: !543, line: 1115, baseType: !2065, size: 64, offset: 15616)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !897, file: !543, line: 1116, baseType: !2061, size: 192, offset: 15680)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !897, file: !543, line: 1117, baseType: !239, size: 64, offset: 15872)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !897, file: !543, line: 1118, baseType: !236, size: 64, offset: 15936)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !897, file: !543, line: 1119, baseType: !7, size: 32, offset: 16000)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !897, file: !543, line: 1121, baseType: !884, size: 64, offset: 16064)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !897, file: !543, line: 1125, baseType: !2226, size: 64, offset: 16128)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !543, line: 43, flags: DIFlagFwdDecl)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !897, file: !543, line: 1127, baseType: !275, size: 32, offset: 16192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !897, file: !543, line: 1128, baseType: !7, size: 32, offset: 16224)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !897, file: !543, line: 1130, baseType: !2231, size: 128, offset: 16256)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2232, line: 37, size: 128, elements: !2233)
!2232 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2233 = !{!2234, !2235, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2231, file: !2232, line: 38, baseType: !142, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2231, file: !2232, line: 39, baseType: !138, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2231, file: !2232, line: 40, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2232, line: 24, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !897, file: !543, line: 1131, baseType: !2240, size: 256, offset: 16384)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2241, line: 12, size: 256, elements: !2242)
!2241 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2242 = !{!2243, !2244, !2245, !2246}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2240, file: !2241, line: 13, baseType: !189, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2240, file: !2241, line: 14, baseType: !239, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2240, file: !2241, line: 15, baseType: !239, size: 64, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2240, file: !2241, line: 16, baseType: !1389, size: 8, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !897, file: !543, line: 1134, baseType: !342, size: 64, offset: 16640)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !897, file: !543, line: 1135, baseType: !342, size: 64, offset: 16704)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !897, file: !543, line: 1138, baseType: !118, size: 32, offset: 16768)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !897, file: !543, line: 1141, baseType: !581, size: 32, offset: 16800)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !897, file: !543, line: 1143, baseType: !2252, size: 64, offset: 16832)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !543, line: 735, size: 64, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2252, file: !543, line: 736, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !897, file: !543, line: 1147, baseType: !1083, size: 128, offset: 16896)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !897, file: !543, line: 1149, baseType: !896, size: 64, offset: 17024)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !897, file: !543, line: 1151, baseType: !2259, size: 64, offset: 17088)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !543, line: 1151, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !897, file: !543, line: 1188, baseType: !82, size: 64, offset: 17152)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !897, file: !543, line: 1191, baseType: !2263, size: 64, offset: 17216)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !543, line: 44, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !897, file: !543, line: 1194, baseType: !2266, size: 64, offset: 17280)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !543, line: 45, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !897, file: !543, line: 1197, baseType: !2269, size: 64, offset: 17344)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !543, line: 61, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !897, file: !543, line: 1199, baseType: !2272, size: 64, offset: 17408)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2274, line: 99, size: 128, elements: !2275)
!2274 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2273, file: !2274, line: 100, baseType: !572, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2273, file: !2274, line: 101, baseType: !138, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2273, file: !2274, line: 103, baseType: !159, size: 16, offset: 96)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !897, file: !543, line: 1202, baseType: !2280, size: 64, offset: 17472)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !543, line: 48, flags: DIFlagFwdDecl)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !897, file: !543, line: 1205, baseType: !239, size: 64, offset: 17536)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !897, file: !543, line: 1206, baseType: !2284, size: 64, offset: 17600)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1477, line: 14, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1477, line: 12, size: 384, elements: !2287)
!2287 = !{!2288}
!2288 = !DIDerivedType(tag: DW_TAG_member, scope: !2286, file: !1477, line: 13, baseType: !2289, size: 384)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !1477, line: 13, size: 384, elements: !2290)
!2290 = !{!2291, !2292, !2293, !2294}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2289, file: !1477, line: 13, baseType: !142, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2289, file: !1477, line: 13, baseType: !142, size: 32, offset: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2289, file: !1477, line: 13, baseType: !142, size: 32, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2289, file: !1477, line: 13, baseType: !2295, size: 256, offset: 128)
!2295 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2296, line: 37, size: 256, elements: !2297)
!2296 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2297 = !{!2298, !2303, !2316, !2322, !2331, !2358, !2363}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2295, file: !2296, line: 42, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !2296, line: 39, size: 64, elements: !2300)
!2300 = !{!2301, !2302}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2299, file: !2296, line: 40, baseType: !1950, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2299, file: !2296, line: 41, baseType: !281, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2295, file: !2296, line: 50, baseType: !2304, size: 192)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !2296, line: 45, size: 192, elements: !2305)
!2305 = !{!2306, !2308, !2309, !2315}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2304, file: !2296, line: 46, baseType: !2307, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !223, line: 95, baseType: !142)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2304, file: !2296, line: 47, baseType: !142, size: 32, offset: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2304, file: !2296, line: 48, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2296, line: 11, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2296, line: 8, size: 64, elements: !2312)
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2311, file: !2296, line: 9, baseType: !142, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2311, file: !2296, line: 10, baseType: !82, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2304, file: !2296, line: 49, baseType: !142, size: 32, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2295, file: !2296, line: 57, baseType: !2317, size: 128)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !2296, line: 53, size: 128, elements: !2318)
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2317, file: !2296, line: 54, baseType: !1950, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2317, file: !2296, line: 55, baseType: !281, size: 32, offset: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2317, file: !2296, line: 56, baseType: !2310, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2295, file: !2296, line: 66, baseType: !2323, size: 256)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !2296, line: 60, size: 256, elements: !2324)
!2324 = !{!2325, !2326, !2327, !2328, !2330}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2323, file: !2296, line: 61, baseType: !1950, size: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2323, file: !2296, line: 62, baseType: !281, size: 32, offset: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2323, file: !2296, line: 63, baseType: !142, size: 32, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2323, file: !2296, line: 64, baseType: !2329, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !223, line: 94, baseType: !224)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2323, file: !2296, line: 65, baseType: !2329, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2295, file: !2296, line: 105, baseType: !2332, size: 256)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !2296, line: 69, size: 256, elements: !2333)
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2332, file: !2296, line: 70, baseType: !82, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !2296, line: 79, baseType: !2336, size: 192, offset: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2332, file: !2296, line: 79, size: 192, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2347, !2352}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2336, file: !2296, line: 81, baseType: !142, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2336, file: !2296, line: 86, baseType: !1358, size: 16)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2336, file: !2296, line: 92, baseType: !2341, size: 192)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2336, file: !2296, line: 88, size: 192, elements: !2342)
!2342 = !{!2343, !2345, !2346}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2341, file: !2296, line: 89, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !1067)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2341, file: !2296, line: 90, baseType: !82, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2341, file: !2296, line: 91, baseType: !82, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2336, file: !2296, line: 97, baseType: !2348, size: 96)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2336, file: !2296, line: 94, size: 96, elements: !2349)
!2349 = !{!2350, !2351}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2348, file: !2296, line: 95, baseType: !2344, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2348, file: !2296, line: 96, baseType: !339, size: 32, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2336, file: !2296, line: 103, baseType: !2353, size: 128)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2336, file: !2296, line: 99, size: 128, elements: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2353, file: !2296, line: 100, baseType: !239, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2353, file: !2296, line: 101, baseType: !339, size: 32, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2353, file: !2296, line: 102, baseType: !339, size: 32, offset: 96)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2295, file: !2296, line: 111, baseType: !2359, size: 128)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !2296, line: 108, size: 128, elements: !2360)
!2360 = !{!2361, !2362}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2359, file: !2296, line: 109, baseType: !225, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2359, file: !2296, line: 110, baseType: !142, size: 32, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2295, file: !2296, line: 118, baseType: !2364, size: 128)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !2296, line: 114, size: 128, elements: !2365)
!2365 = !{!2366, !2367, !2368}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2364, file: !2296, line: 115, baseType: !82, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2364, file: !2296, line: 116, baseType: !142, size: 32, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2364, file: !2296, line: 117, baseType: !7, size: 32, offset: 96)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !897, file: !543, line: 1208, baseType: !2147, size: 448, offset: 17664)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !897, file: !543, line: 1215, baseType: !342, size: 64, offset: 18112)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !897, file: !543, line: 1217, baseType: !342, size: 64, offset: 18176)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !897, file: !543, line: 1219, baseType: !342, size: 64, offset: 18240)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !897, file: !543, line: 1223, baseType: !2374, size: 64, offset: 18304)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2375, line: 99, baseType: !2376)
!2375 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2375, line: 99, size: 64, elements: !2377)
!2377 = !{!2378}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2376, file: !2375, line: 99, baseType: !1151, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !897, file: !543, line: 1225, baseType: !310, size: 32, offset: 18368)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !897, file: !543, line: 1226, baseType: !142, size: 32, offset: 18400)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !897, file: !543, line: 1227, baseType: !142, size: 32, offset: 18432)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !897, file: !543, line: 1231, baseType: !2383, size: 64, offset: 18496)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !543, line: 1231, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !897, file: !543, line: 1233, baseType: !88, size: 128, offset: 18560)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !897, file: !543, line: 1240, baseType: !2387, size: 64, offset: 18688)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !543, line: 62, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !897, file: !543, line: 1242, baseType: !2390, size: 64, offset: 18752)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !543, line: 1242, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !897, file: !543, line: 1244, baseType: !88, size: 128, offset: 18816)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !897, file: !543, line: 1245, baseType: !2394, size: 64, offset: 18944)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !543, line: 51, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !897, file: !543, line: 1246, baseType: !568, size: 256, offset: 19008)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !897, file: !543, line: 1247, baseType: !7, size: 32, offset: 19264)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !897, file: !543, line: 1250, baseType: !2399, size: 64, offset: 19328)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !543, line: 57, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !897, file: !543, line: 1251, baseType: !568, size: 256, offset: 19392)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !897, file: !543, line: 1252, baseType: !88, size: 128, offset: 19648)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !897, file: !543, line: 1259, baseType: !1639, size: 64, offset: 19776)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !897, file: !543, line: 1260, baseType: !1358, size: 16, offset: 19840)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !897, file: !543, line: 1261, baseType: !1358, size: 16, offset: 19856)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !897, file: !543, line: 1314, baseType: !2407, size: 64, offset: 19904)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2409, line: 62, size: 256, align: 256, elements: !2410)
!2409 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2408, file: !2409, line: 75, baseType: !339, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2408, file: !2409, line: 90, baseType: !339, size: 32, offset: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2408, file: !2409, line: 112, baseType: !343, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2408, file: !2409, line: 132, baseType: !339, size: 32, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2408, file: !2409, line: 140, baseType: !339, size: 32, offset: 160)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2408, file: !2409, line: 149, baseType: !339, size: 32, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2408, file: !2409, line: 154, baseType: !2418, offset: 224)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !1290)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !897, file: !543, line: 1315, baseType: !338, size: 32, offset: 19968)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !897, file: !543, line: 1316, baseType: !338, size: 32, offset: 20000)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !897, file: !543, line: 1321, baseType: !239, size: 64, offset: 20032)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !897, file: !543, line: 1325, baseType: !142, size: 32, offset: 20096)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !897, file: !543, line: 1326, baseType: !142, size: 32, offset: 20128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !897, file: !543, line: 1327, baseType: !142, size: 32, offset: 20160)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !897, file: !543, line: 1328, baseType: !142, size: 32, offset: 20192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !897, file: !543, line: 1329, baseType: !881, size: 128, align: 64, offset: 20224)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !897, file: !543, line: 1332, baseType: !2428, size: 128, offset: 20352)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2429, line: 51, size: 128, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2430 = !{!2431, !2436, !2437}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2428, file: !2429, line: 60, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2433, line: 7, size: 64, elements: !2434)
!2433 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2434 = !{!2435}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2432, file: !2433, line: 12, baseType: !1148, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2428, file: !2429, line: 63, baseType: !1389, size: 8, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2428, file: !2429, line: 70, baseType: !1389, size: 8, offset: 72)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !897, file: !543, line: 1335, baseType: !1678, size: 64, offset: 20480)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !897, file: !543, line: 1337, baseType: !2440, size: 128, offset: 20544)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2429, line: 39, size: 128, elements: !2441)
!2441 = !{!2442, !2503, !2504}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2440, file: !2429, line: 40, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1202, line: 74, size: 512, align: 128, elements: !2445)
!2445 = !{!2446, !2447, !2497, !2502}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2444, file: !1202, line: 75, baseType: !239, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, scope: !2444, file: !1202, line: 83, baseType: !2448, size: 320, offset: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2444, file: !1202, line: 83, size: 320, elements: !2449)
!2449 = !{!2450, !2471, !2485, !2489, !2496}
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !1202, line: 84, baseType: !2451, size: 320)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2448, file: !1202, line: 84, size: 320, elements: !2452)
!2452 = !{!2453, !2464, !2465, !2470}
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !1202, line: 90, baseType: !2454, size: 128)
!2454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2451, file: !1202, line: 90, size: 128, elements: !2455)
!2455 = !{!2456, !2457, !2462, !2463}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2454, file: !1202, line: 91, baseType: !88, size: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2454, file: !1202, line: 94, baseType: !2458, size: 128)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2454, file: !1202, line: 94, size: 128, elements: !2459)
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2458, file: !1202, line: 96, baseType: !82, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2458, file: !1202, line: 98, baseType: !7, size: 32, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2454, file: !1202, line: 102, baseType: !88, size: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2454, file: !1202, line: 103, baseType: !88, size: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2451, file: !1202, line: 106, baseType: !265, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !1202, line: 107, baseType: !2466, size: 64, offset: 192)
!2466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2451, file: !1202, line: 107, size: 64, elements: !2467)
!2467 = !{!2468, !2469}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2466, file: !1202, line: 108, baseType: !239, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2466, file: !1202, line: 109, baseType: !239, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2451, file: !1202, line: 117, baseType: !239, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !1202, line: 119, baseType: !2472, size: 320)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2448, file: !1202, line: 119, size: 320, elements: !2473)
!2473 = !{!2474, !2475, !2478, !2479, !2480}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2472, file: !1202, line: 124, baseType: !239, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2472, file: !1202, line: 125, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1202, line: 125, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2472, file: !1202, line: 126, baseType: !239, size: 64, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2472, file: !1202, line: 127, baseType: !239, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, scope: !2472, file: !1202, line: 128, baseType: !2481, size: 64, offset: 256)
!2481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2472, file: !1202, line: 128, size: 64, elements: !2482)
!2482 = !{!2483, !2484}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2481, file: !1202, line: 133, baseType: !239, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2481, file: !1202, line: 138, baseType: !572, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !1202, line: 141, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2448, file: !1202, line: 141, size: 64, elements: !2487)
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2486, file: !1202, line: 142, baseType: !239, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !1202, line: 144, baseType: !2490, size: 128)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2448, file: !1202, line: 144, size: 128, elements: !2491)
!2491 = !{!2492, !2495}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2490, file: !1202, line: 146, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1202, line: 146, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2490, file: !1202, line: 147, baseType: !82, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2448, file: !1202, line: 161, baseType: !881, size: 128, align: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, scope: !2444, file: !1202, line: 164, baseType: !2498, size: 32, offset: 384)
!2498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2444, file: !1202, line: 164, size: 32, elements: !2499)
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2498, file: !1202, line: 169, baseType: !138, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2498, file: !1202, line: 177, baseType: !7, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2444, file: !1202, line: 181, baseType: !138, size: 32, offset: 416)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2440, file: !2429, line: 42, baseType: !339, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2440, file: !2429, line: 43, baseType: !339, size: 32, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !897, file: !543, line: 1340, baseType: !2506, size: 64, offset: 20672)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !543, line: 69, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !897, file: !543, line: 1351, baseType: !142, size: 32, offset: 20736)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !897, file: !543, line: 1352, baseType: !142, size: 32, offset: 20768)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !897, file: !543, line: 1354, baseType: !239, size: 64, offset: 20800)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !897, file: !543, line: 1364, baseType: !342, size: 64, offset: 20864)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !897, file: !543, line: 1365, baseType: !342, size: 64, offset: 20928)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !897, file: !543, line: 1412, baseType: !239, size: 64, offset: 20992)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !897, file: !543, line: 1453, baseType: !2515, size: 64, offset: 21056)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !543, line: 1453, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !897, file: !543, line: 1457, baseType: !2518, size: 64, offset: 21120)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !2520)
!2520 = !{!2521, !2522, !2541, !2544, !2545, !2578, !2588}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2519, file: !57, line: 62, baseType: !56, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !57, line: 64, baseType: !2523, size: 192, offset: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2519, file: !57, line: 64, size: 192, elements: !2524)
!2524 = !{!2525, !2536}
!2525 = !DIDerivedType(tag: DW_TAG_member, scope: !2523, file: !57, line: 65, baseType: !2526, size: 192)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2523, file: !57, line: 65, size: 192, elements: !2527)
!2527 = !{!2528, !2535}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2526, file: !57, line: 66, baseType: !2529, size: 128)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2530, line: 50, size: 128, elements: !2531)
!2530 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2531 = !{!2532, !2533, !2534}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2529, file: !2530, line: 52, baseType: !239, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2529, file: !2530, line: 54, baseType: !7, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2529, file: !2530, line: 55, baseType: !7, size: 32, offset: 96)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2526, file: !57, line: 67, baseType: !239, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, scope: !2523, file: !57, line: 70, baseType: !2537, size: 192)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2523, file: !57, line: 70, size: 192, elements: !2538)
!2538 = !{!2539, !2540}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2537, file: !57, line: 71, baseType: !881, size: 128, align: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2537, file: !57, line: 72, baseType: !239, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2519, file: !57, line: 76, baseType: !2542, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2519, file: !57, line: 77, baseType: !239, size: 64, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2519, file: !57, line: 79, baseType: !2546, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2530, line: 25, size: 256, elements: !2548)
!2548 = !{!2549, !2555, !2559}
!2549 = !DIDerivedType(tag: DW_TAG_member, scope: !2547, file: !2530, line: 26, baseType: !2550, size: 128)
!2550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2547, file: !2530, line: 26, size: 128, elements: !2551)
!2551 = !{!2552, !2554}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2550, file: !2530, line: 27, baseType: !2553, size: 128)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, elements: !2019)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2550, file: !2530, line: 28, baseType: !2553, size: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2547, file: !2530, line: 31, baseType: !2556, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2530, line: 23, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2547, file: !2530, line: 33, baseType: !2560, size: 64, offset: 192)
!2560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2547, file: !2530, line: 33, size: 64, elements: !2561)
!2561 = !{!2562, !2568, !2573}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2560, file: !2530, line: 38, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2560, file: !2530, line: 34, size: 64, elements: !2564)
!2564 = !{!2565, !2566, !2567}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2563, file: !2530, line: 35, baseType: !1332, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2563, file: !2530, line: 36, baseType: !147, size: 8, offset: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2563, file: !2530, line: 37, baseType: !147, size: 8, offset: 40)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2560, file: !2530, line: 42, baseType: !2569, size: 16)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2560, file: !2530, line: 39, size: 16, elements: !2570)
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2569, file: !2530, line: 40, baseType: !147, size: 8)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2569, file: !2530, line: 41, baseType: !147, size: 8, offset: 8)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2560, file: !2530, line: 46, baseType: !2574, size: 16)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2560, file: !2530, line: 43, size: 16, elements: !2575)
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2574, file: !2530, line: 44, baseType: !147, size: 8)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2574, file: !2530, line: 45, baseType: !147, size: 8, offset: 8)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2519, file: !57, line: 81, baseType: !2579, size: 64, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !2581)
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2580, file: !57, line: 86, baseType: !2542, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2580, file: !57, line: 87, baseType: !239, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2580, file: !57, line: 88, baseType: !239, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2580, file: !57, line: 89, baseType: !239, size: 64, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2580, file: !57, line: 90, baseType: !1389, size: 8, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2580, file: !57, line: 92, baseType: !2579, size: 64, offset: 320)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2519, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !897, file: !543, line: 1463, baseType: !2590, offset: 21184)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !543, line: 739, elements: !472)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !897, file: !543, line: 1470, baseType: !881, size: 128, align: 64, offset: 21184)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !897, file: !543, line: 1471, baseType: !910, size: 32, offset: 21312)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !897, file: !543, line: 1472, baseType: !142, size: 32, offset: 21344)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !897, file: !543, line: 1474, baseType: !896, size: 64, offset: 21376)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !897, file: !543, line: 1475, baseType: !2596, size: 320, offset: 21440)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2597, line: 11, size: 320, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2598 = !{!2599, !2600, !2601, !2606}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2596, file: !2597, line: 16, baseType: !464, size: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2596, file: !2597, line: 17, baseType: !239, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2596, file: !2597, line: 18, baseType: !2602, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{null, !2605}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2596, file: !2597, line: 19, baseType: !338, size: 32, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !897, file: !543, line: 1478, baseType: !2608, size: 64, offset: 21760)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !543, line: 1478, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !897, file: !543, line: 1482, baseType: !910, size: 32, offset: 21824)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !897, file: !543, line: 1489, baseType: !82, size: 64, offset: 21888)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !897, file: !543, line: 1504, baseType: !82, size: 64, offset: 21952)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !897, file: !543, line: 1505, baseType: !343, size: 64, offset: 22016)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !897, file: !543, line: 1506, baseType: !342, size: 64, offset: 22080)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !897, file: !543, line: 1507, baseType: !343, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !897, file: !543, line: 1508, baseType: !343, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !897, file: !543, line: 1509, baseType: !343, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !897, file: !543, line: 1510, baseType: !881, size: 128, align: 64, offset: 22208)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !897, file: !543, line: 1511, baseType: !142, size: 32, offset: 22336)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !897, file: !543, line: 1515, baseType: !2621, size: 64, offset: 22400)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !924, line: 56, size: 64, elements: !2622)
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2621, file: !924, line: 57, baseType: !927, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !897, file: !543, line: 1518, baseType: !2621, size: 64, offset: 22464)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !897, file: !543, line: 1528, baseType: !881, size: 128, align: 64, offset: 22528)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !897, file: !543, line: 1552, baseType: !2627, size: 35328, offset: 23040)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2628, line: 430, size: 35328, elements: !2629)
!2628 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2629 = !{!2630, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2659, !2660, !2661, !2662, !2663, !2664, !2667, !2668, !2669, !2670}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2627, file: !2628, line: 432, baseType: !2631, size: 192)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2632, size: 192, elements: !190)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2633, line: 16, size: 64, elements: !2634)
!2633 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2632, file: !2633, line: 17, baseType: !157, size: 16)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2632, file: !2633, line: 18, baseType: !157, size: 16, offset: 16)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2632, file: !2633, line: 19, baseType: !157, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2632, file: !2633, line: 19, baseType: !157, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2632, file: !2633, line: 19, baseType: !157, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2632, file: !2633, line: 19, baseType: !157, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2632, file: !2633, line: 19, baseType: !157, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2632, file: !2633, line: 20, baseType: !157, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2632, file: !2633, line: 20, baseType: !157, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2632, file: !2633, line: 20, baseType: !157, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2632, file: !2633, line: 20, baseType: !157, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2632, file: !2633, line: 20, baseType: !157, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2632, file: !2633, line: 20, baseType: !157, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2627, file: !2628, line: 436, baseType: !239, size: 64, offset: 192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2627, file: !2628, line: 440, baseType: !159, size: 16, offset: 256)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2627, file: !2628, line: 441, baseType: !159, size: 16, offset: 272)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2627, file: !2628, line: 442, baseType: !159, size: 16, offset: 288)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2627, file: !2628, line: 443, baseType: !159, size: 16, offset: 304)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2627, file: !2628, line: 447, baseType: !239, size: 64, offset: 320)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2627, file: !2628, line: 448, baseType: !239, size: 64, offset: 384)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2627, file: !2628, line: 459, baseType: !2656, size: 256, offset: 448)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2657, size: 256, elements: !1277)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2628, line: 428, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2627, file: !2628, line: 461, baseType: !239, size: 64, offset: 704)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2627, file: !2628, line: 463, baseType: !239, size: 64, offset: 768)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2627, file: !2628, line: 465, baseType: !239, size: 64, offset: 832)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2627, file: !2628, line: 466, baseType: !239, size: 64, offset: 896)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2627, file: !2628, line: 467, baseType: !239, size: 64, offset: 960)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2627, file: !2628, line: 473, baseType: !2665, size: 64, offset: 1024)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2628, line: 10, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2627, file: !2628, line: 480, baseType: !239, size: 64, offset: 1088)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2627, file: !2628, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2627, file: !2628, line: 491, baseType: !338, size: 32, offset: 1184)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2627, file: !2628, line: 501, baseType: !2671, size: 33792, offset: 1536)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2672, line: 448, size: 33792, elements: !2673)
!2672 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2673 = !{!2674, !2675, !2676, !2838, !2839, !2845, !2846}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2671, file: !2672, line: 461, baseType: !7, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2671, file: !2672, line: 468, baseType: !239, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2671, file: !2672, line: 476, baseType: !2677, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2672, line: 356, size: 33280, align: 512, elements: !2679)
!2679 = !{!2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2678, file: !2672, line: 358, baseType: !7, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2678, file: !2672, line: 361, baseType: !7, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2678, file: !2672, line: 364, baseType: !342, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2678, file: !2672, line: 367, baseType: !342, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2678, file: !2672, line: 370, baseType: !342, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2678, file: !2672, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2678, file: !2672, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2678, file: !2672, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2678, file: !2672, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2678, file: !2672, line: 397, baseType: !2690, size: 32768, offset: 512)
!2690 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2672, line: 348, size: 32768, elements: !2691)
!2691 = !{!2692, !2707, !2744, !2821, !2834}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2690, file: !2672, line: 349, baseType: !2693, size: 896)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2672, line: 12, size: 896, elements: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2706}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2693, file: !2672, line: 13, baseType: !338, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2693, file: !2672, line: 14, baseType: !338, size: 32, offset: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2693, file: !2672, line: 15, baseType: !338, size: 32, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2693, file: !2672, line: 16, baseType: !338, size: 32, offset: 96)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2693, file: !2672, line: 17, baseType: !338, size: 32, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2693, file: !2672, line: 18, baseType: !338, size: 32, offset: 160)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2693, file: !2672, line: 19, baseType: !338, size: 32, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2693, file: !2672, line: 22, baseType: !2703, size: 640, offset: 224)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 640, elements: !2704)
!2704 = !{!2705}
!2705 = !DISubrange(count: 20)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2693, file: !2672, line: 25, baseType: !338, size: 32, offset: 864)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2690, file: !2672, line: 350, baseType: !2708, size: 4096, align: 128)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2672, line: 34, size: 4096, align: 128, elements: !2709)
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2729, !2730, !2731, !2733, !2735, !2739}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2708, file: !2672, line: 35, baseType: !157, size: 16)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2708, file: !2672, line: 36, baseType: !157, size: 16, offset: 16)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2708, file: !2672, line: 37, baseType: !157, size: 16, offset: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2708, file: !2672, line: 38, baseType: !157, size: 16, offset: 48)
!2714 = !DIDerivedType(tag: DW_TAG_member, scope: !2708, file: !2672, line: 39, baseType: !2715, size: 128, offset: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2708, file: !2672, line: 39, size: 128, elements: !2716)
!2716 = !{!2717, !2722}
!2717 = !DIDerivedType(tag: DW_TAG_member, scope: !2715, file: !2672, line: 40, baseType: !2718, size: 128)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2715, file: !2672, line: 40, size: 128, elements: !2719)
!2719 = !{!2720, !2721}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2718, file: !2672, line: 41, baseType: !342, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2718, file: !2672, line: 42, baseType: !342, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, scope: !2715, file: !2672, line: 44, baseType: !2723, size: 128)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2715, file: !2672, line: 44, size: 128, elements: !2724)
!2724 = !{!2725, !2726, !2727, !2728}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2723, file: !2672, line: 45, baseType: !338, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2723, file: !2672, line: 46, baseType: !338, size: 32, offset: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2723, file: !2672, line: 47, baseType: !338, size: 32, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2723, file: !2672, line: 48, baseType: !338, size: 32, offset: 96)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2708, file: !2672, line: 51, baseType: !338, size: 32, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2708, file: !2672, line: 52, baseType: !338, size: 32, offset: 224)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2708, file: !2672, line: 55, baseType: !2732, size: 1024, offset: 256)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1024, elements: !351)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2708, file: !2672, line: 58, baseType: !2734, size: 2048, offset: 1280)
!2734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 2048, elements: !194)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2708, file: !2672, line: 60, baseType: !2736, size: 384, offset: 3328)
!2736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 384, elements: !2737)
!2737 = !{!2738}
!2738 = !DISubrange(count: 12)
!2739 = !DIDerivedType(tag: DW_TAG_member, scope: !2708, file: !2672, line: 62, baseType: !2740, size: 384, offset: 3712)
!2740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2708, file: !2672, line: 62, size: 384, elements: !2741)
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2740, file: !2672, line: 63, baseType: !2736, size: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2740, file: !2672, line: 64, baseType: !2736, size: 384)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2690, file: !2672, line: 351, baseType: !2745, size: 1088)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2672, line: 79, size: 1088, elements: !2746)
!2746 = !{!2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2820}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2745, file: !2672, line: 80, baseType: !338, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2745, file: !2672, line: 81, baseType: !338, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2745, file: !2672, line: 82, baseType: !338, size: 32, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2745, file: !2672, line: 83, baseType: !338, size: 32, offset: 96)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2745, file: !2672, line: 84, baseType: !338, size: 32, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2745, file: !2672, line: 85, baseType: !338, size: 32, offset: 160)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2745, file: !2672, line: 86, baseType: !338, size: 32, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2745, file: !2672, line: 88, baseType: !2703, size: 640, offset: 224)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2745, file: !2672, line: 89, baseType: !147, size: 8, offset: 864)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2745, file: !2672, line: 90, baseType: !147, size: 8, offset: 872)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2745, file: !2672, line: 91, baseType: !147, size: 8, offset: 880)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2745, file: !2672, line: 92, baseType: !147, size: 8, offset: 888)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2745, file: !2672, line: 93, baseType: !147, size: 8, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2745, file: !2672, line: 94, baseType: !147, size: 8, offset: 904)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2745, file: !2672, line: 95, baseType: !2762, size: 64, offset: 960)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2764, line: 11, size: 128, elements: !2765)
!2764 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2765 = !{!2766, !2767}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2763, file: !2764, line: 12, baseType: !225, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2763, file: !2764, line: 13, baseType: !2768, size: 64, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2770, line: 103, size: 1344, elements: !2771)
!2770 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2800, !2801, !2802}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2769, file: !2770, line: 109, baseType: !239, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2769, file: !2770, line: 110, baseType: !239, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2769, file: !2770, line: 111, baseType: !239, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2769, file: !2770, line: 112, baseType: !239, size: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2769, file: !2770, line: 113, baseType: !239, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2769, file: !2770, line: 114, baseType: !239, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2769, file: !2770, line: 117, baseType: !239, size: 64, offset: 384)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2769, file: !2770, line: 118, baseType: !239, size: 64, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2769, file: !2770, line: 119, baseType: !239, size: 64, offset: 512)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2769, file: !2770, line: 120, baseType: !239, size: 64, offset: 576)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2769, file: !2770, line: 121, baseType: !239, size: 64, offset: 640)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2769, file: !2770, line: 122, baseType: !239, size: 64, offset: 704)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2769, file: !2770, line: 123, baseType: !239, size: 64, offset: 768)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2769, file: !2770, line: 124, baseType: !239, size: 64, offset: 832)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2769, file: !2770, line: 125, baseType: !239, size: 64, offset: 896)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2769, file: !2770, line: 139, baseType: !239, size: 64, offset: 960)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2769, file: !2770, line: 142, baseType: !239, size: 64, offset: 1024)
!2789 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !2770, line: 144, baseType: !2790, size: 64, offset: 1088)
!2790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2769, file: !2770, line: 144, size: 64, elements: !2791)
!2791 = !{!2792, !2793, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2790, file: !2770, line: 146, baseType: !157, size: 16)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2790, file: !2770, line: 148, baseType: !342, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2790, file: !2770, line: 150, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2770, line: 59, size: 64, elements: !2796)
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2795, file: !2770, line: 61, baseType: !342, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2795, file: !2770, line: 63, baseType: !342, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2795, file: !2770, line: 65, baseType: !342, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2769, file: !2770, line: 153, baseType: !239, size: 64, offset: 1152)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2769, file: !2770, line: 154, baseType: !239, size: 64, offset: 1216)
!2802 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !2770, line: 156, baseType: !2803, size: 64, offset: 1280)
!2803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2769, file: !2770, line: 156, size: 64, elements: !2804)
!2804 = !{!2805, !2806, !2807}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2803, file: !2770, line: 158, baseType: !157, size: 16)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2803, file: !2770, line: 160, baseType: !342, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2803, file: !2770, line: 162, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2770, line: 69, size: 64, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2808, file: !2770, line: 71, baseType: !342, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2808, file: !2770, line: 73, baseType: !342, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2808, file: !2770, line: 75, baseType: !342, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2808, file: !2770, line: 77, baseType: !342, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2808, file: !2770, line: 80, baseType: !342, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2808, file: !2770, line: 83, baseType: !342, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2808, file: !2770, line: 86, baseType: !342, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2808, file: !2770, line: 88, baseType: !342, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2808, file: !2770, line: 93, baseType: !342, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2808, file: !2770, line: 100, baseType: !342, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2745, file: !2672, line: 96, baseType: !338, size: 32, offset: 1024)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2690, file: !2672, line: 352, baseType: !2822, size: 4608, align: 512)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2672, line: 333, size: 4608, align: 512, elements: !2823)
!2823 = !{!2824, !2825, !2832}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2822, file: !2672, line: 334, baseType: !2708, size: 4096, align: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2822, file: !2672, line: 335, baseType: !2826, size: 512, offset: 4096)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2672, line: 312, size: 512, elements: !2827)
!2827 = !{!2828, !2829, !2830}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2826, file: !2672, line: 313, baseType: !342, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2826, file: !2672, line: 314, baseType: !342, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2826, file: !2672, line: 315, baseType: !2831, size: 384, offset: 128)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 384, elements: !1376)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2822, file: !2672, line: 336, baseType: !2833, offset: 4608)
!2833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, elements: !1290)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2690, file: !2672, line: 353, baseType: !2835, size: 32768)
!2835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 32768, elements: !2836)
!2836 = !{!2837}
!2837 = !DISubrange(count: 4096)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2671, file: !2672, line: 484, baseType: !2677, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2671, file: !2672, line: 491, baseType: !2840, size: 128, offset: 256)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2672, line: 404, size: 128, elements: !2841)
!2841 = !{!2842, !2843, !2844}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2840, file: !2672, line: 424, baseType: !342, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2840, file: !2672, line: 432, baseType: !7, size: 32, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2840, file: !2672, line: 440, baseType: !7, size: 32, offset: 96)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2671, file: !2672, line: 498, baseType: !2840, size: 128, offset: 384)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2671, file: !2672, line: 508, baseType: !2678, size: 33280, align: 512, offset: 512)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !864, file: !865, line: 16, baseType: !874, size: 192, offset: 512)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !864, file: !865, line: 17, baseType: !138, size: 32, offset: 704)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !421, file: !35, line: 1240, baseType: !82, size: 64, offset: 6912)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !421, file: !35, line: 1243, baseType: !338, size: 32, offset: 6976)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !421, file: !35, line: 1245, baseType: !621, size: 64, offset: 7040)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !421, file: !35, line: 1246, baseType: !621, size: 64, offset: 7104)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !421, file: !35, line: 1248, baseType: !339, size: 32, offset: 7168)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !421, file: !35, line: 1249, baseType: !2855, size: 64, offset: 7232)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !421, file: !35, line: 1252, baseType: !2858, size: 256, offset: 7296)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !351)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !421, file: !35, line: 1253, baseType: !2860, size: 128, offset: 7552)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2861, line: 21, baseType: !2862)
!2861 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2861, line: 19, size: 128, elements: !2863)
!2863 = !{!2864}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2862, file: !2861, line: 20, baseType: !2865, size: 128)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 128, elements: !2019)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !421, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !421, file: !35, line: 1261, baseType: !568, size: 256, offset: 7744)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !421, file: !35, line: 1267, baseType: !107, size: 64, offset: 8000)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !421, file: !35, line: 1269, baseType: !367, size: 64, offset: 8064)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !421, file: !35, line: 1271, baseType: !2871, size: 448, offset: 8128)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !630, line: 63, size: 448, elements: !2872)
!2872 = !{!2873, !2878, !2879, !2880, !2881, !2882, !2883}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2871, file: !630, line: 64, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!239, !2877, !628}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2871, file: !630, line: 66, baseType: !2874, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2871, file: !630, line: 69, baseType: !225, size: 64, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2871, file: !630, line: 70, baseType: !142, size: 32, offset: 192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !630, line: 71, baseType: !7, size: 32, offset: 224)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2871, file: !630, line: 74, baseType: !88, size: 128, offset: 256)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2871, file: !630, line: 85, baseType: !2884, size: 64, offset: 384)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !421, file: !35, line: 1274, baseType: !572, size: 64, offset: 8576)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !421, file: !35, line: 1280, baseType: !572, size: 64, offset: 8640)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !421, file: !35, line: 1283, baseType: !142, size: 32, offset: 8704)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !421, file: !35, line: 1286, baseType: !1728, size: 32, offset: 8736)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !421, file: !35, line: 1289, baseType: !2890, size: 64, offset: 8768)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1857, line: 18, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !421, file: !35, line: 1290, baseType: !460, size: 64, offset: 8832)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !421, file: !35, line: 1297, baseType: !1472, size: 64, offset: 8896)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !421, file: !35, line: 1304, baseType: !2895, size: 64, offset: 8960)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2896, line: 49, size: 64, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2895, file: !2896, line: 50, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2896, line: 41, size: 512, align: 512, elements: !2901)
!2901 = !{!2902, !2903, !2908}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2900, file: !2896, line: 43, baseType: !118, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2900, file: !2896, line: 45, baseType: !2904, size: 192, offset: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2896, line: 29, size: 192, elements: !2905)
!2905 = !{!2906, !2907}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2904, file: !2896, line: 30, baseType: !88, size: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2904, file: !2896, line: 32, baseType: !225, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2900, file: !2896, line: 46, baseType: !225, size: 64, offset: 256)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !421, file: !35, line: 1305, baseType: !2895, size: 64, offset: 9024)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !421, file: !35, line: 1306, baseType: !881, size: 128, align: 64, offset: 9088)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !421, file: !35, line: 1307, baseType: !1856, size: 256, offset: 9216)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !421, file: !35, line: 1309, baseType: !568, size: 256, offset: 9472)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !421, file: !35, line: 1314, baseType: !142, size: 32, offset: 9728)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !421, file: !35, line: 1317, baseType: !118, size: 32, align: 512, offset: 10240)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !421, file: !35, line: 1318, baseType: !88, size: 128, offset: 10304)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !421, file: !35, line: 1320, baseType: !118, size: 32, offset: 10432)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !421, file: !35, line: 1321, baseType: !88, size: 128, offset: 10496)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !415, file: !416, line: 73, baseType: !142, size: 32, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !415, file: !416, line: 74, baseType: !2920, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1314, line: 42, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !369, file: !306, line: 141, baseType: !2924, size: 64, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!142, !691, !1389}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !369, file: !306, line: 142, baseType: !2928, size: 64, offset: 768)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!304, !304, !2931}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !305, file: !306, line: 96, baseType: !420, size: 64, offset: 832)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !305, file: !306, line: 97, baseType: !239, size: 64, offset: 896)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !305, file: !306, line: 98, baseType: !82, size: 64, offset: 960)
!2936 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !306, line: 100, baseType: !2937, size: 128, offset: 1024)
!2937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 100, size: 128, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2937, file: !306, line: 101, baseType: !88, size: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2937, file: !306, line: 102, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !305, file: !306, line: 104, baseType: !88, size: 128, offset: 1152)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !305, file: !306, line: 105, baseType: !88, size: 128, offset: 1280)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !305, file: !306, line: 113, baseType: !2945, size: 128, offset: 1408)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 109, size: 128, elements: !2946)
!2946 = !{!2947, !2948, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2945, file: !306, line: 110, baseType: !464, size: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2945, file: !306, line: 111, baseType: !320, size: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2945, file: !306, line: 112, baseType: !881, size: 128, align: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !298, file: !35, line: 1968, baseType: !2951, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!107, !304, !269, !2954}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2956, line: 10, size: 128, elements: !2957)
!2956 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!2957 = !{!2958, !2962}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2955, file: !2956, line: 11, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !82}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2955, file: !2956, line: 12, baseType: !82, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !298, file: !35, line: 1969, baseType: !2964, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!142, !2920, !269, !142}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !298, file: !35, line: 1970, baseType: !2968, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!292, !269, !142, !1389}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !298, file: !35, line: 1972, baseType: !2972, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!142, !304, !189, !142}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !298, file: !35, line: 1974, baseType: !2976, size: 64, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!142, !2920, !269, !304, !231, !1389}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !298, file: !35, line: 1976, baseType: !2980, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!142, !304, !269, !304}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !298, file: !35, line: 1977, baseType: !2984, size: 64, offset: 448)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!142, !269, !304}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !298, file: !35, line: 1978, baseType: !2988, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!142, !2920, !269, !304, !107}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !298, file: !35, line: 1980, baseType: !2992, size: 64, offset: 576)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!142, !2920, !269, !304, !231}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !298, file: !35, line: 1982, baseType: !2984, size: 64, offset: 640)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !298, file: !35, line: 1983, baseType: !2997, size: 64, offset: 704)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!142, !2920, !269, !304, !231, !425}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !298, file: !35, line: 1985, baseType: !3001, size: 64, offset: 768)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!142, !2920, !269, !304, !269, !304, !7}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !298, file: !35, line: 1987, baseType: !3005, size: 64, offset: 832)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!142, !2920, !304, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3023, !3032, !3033, !3038, !3039, !3040}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3009, file: !35, line: 227, baseType: !7, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3009, file: !35, line: 228, baseType: !231, size: 16, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !35, line: 241, baseType: !3014, size: 32, offset: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3009, file: !35, line: 241, size: 32, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3014, file: !35, line: 242, baseType: !275, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3014, file: !35, line: 243, baseType: !3018, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3019, line: 16, baseType: !3020)
!3019 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3019, line: 14, size: 32, elements: !3021)
!3021 = !{!3022}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3020, file: !3019, line: 15, baseType: !280, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !35, line: 245, baseType: !3024, size: 32, offset: 96)
!3024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3009, file: !35, line: 245, size: 32, elements: !3025)
!3025 = !{!3026, !3027}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3024, file: !35, line: 246, baseType: !284, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3024, file: !35, line: 247, baseType: !3028, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3019, line: 20, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3019, line: 18, size: 32, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3029, file: !3019, line: 19, baseType: !288, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3009, file: !35, line: 249, baseType: !430, size: 64, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3009, file: !35, line: 250, baseType: !3034, size: 128, offset: 192)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !622, line: 13, size: 128, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3034, file: !622, line: 14, baseType: !621, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3034, file: !622, line: 15, baseType: !225, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3009, file: !35, line: 251, baseType: !3034, size: 128, offset: 320)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3009, file: !35, line: 252, baseType: !3034, size: 128, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3009, file: !35, line: 259, baseType: !1228, size: 64, offset: 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !298, file: !35, line: 1988, baseType: !3042, size: 64, offset: 896)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!142, !2920, !691, !3045, !338, !7}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3047, line: 22, size: 1280, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3046, file: !3047, line: 23, baseType: !338, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3046, file: !3047, line: 24, baseType: !231, size: 16, offset: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3046, file: !3047, line: 25, baseType: !7, size: 32, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3046, file: !3047, line: 26, baseType: !1354, size: 32, offset: 96)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3046, file: !3047, line: 27, baseType: !342, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3046, file: !3047, line: 28, baseType: !342, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3046, file: !3047, line: 41, baseType: !342, size: 64, offset: 256)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3046, file: !3047, line: 42, baseType: !425, size: 32, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3046, file: !3047, line: 43, baseType: !425, size: 32, offset: 352)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3046, file: !3047, line: 44, baseType: !275, size: 32, offset: 384)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3046, file: !3047, line: 45, baseType: !284, size: 32, offset: 416)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3046, file: !3047, line: 46, baseType: !430, size: 64, offset: 448)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3046, file: !3047, line: 47, baseType: !3034, size: 128, offset: 512)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3046, file: !3047, line: 48, baseType: !3034, size: 128, offset: 640)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3046, file: !3047, line: 49, baseType: !3034, size: 128, offset: 768)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3046, file: !3047, line: 50, baseType: !3034, size: 128, offset: 896)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3046, file: !3047, line: 51, baseType: !342, size: 64, offset: 1024)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3046, file: !3047, line: 52, baseType: !342, size: 64, offset: 1088)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3046, file: !3047, line: 53, baseType: !338, size: 32, offset: 1152)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3046, file: !3047, line: 54, baseType: !338, size: 32, offset: 1184)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3046, file: !3047, line: 55, baseType: !342, size: 64, offset: 1216)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !298, file: !35, line: 1990, baseType: !3071, size: 64, offset: 960)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!221, !304, !189, !236}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !298, file: !35, line: 1991, baseType: !3075, size: 64, offset: 1024)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!142, !269, !3078, !342, !342}
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !298, file: !35, line: 1993, baseType: !3081, size: 64, offset: 1088)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!142, !269, !142}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !298, file: !35, line: 1994, baseType: !3085, size: 64, offset: 1152)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!142, !269, !304, !1228, !7, !231}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !298, file: !35, line: 1997, baseType: !3089, size: 64, offset: 1216)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!142, !2920, !269, !1228, !231}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !298, file: !35, line: 1999, baseType: !3093, size: 64, offset: 1280)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!292, !2920, !304, !142}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !298, file: !35, line: 2001, baseType: !3097, size: 64, offset: 1344)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!142, !2920, !304, !292, !142}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !298, file: !35, line: 2003, baseType: !3101, size: 64, offset: 1408)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!142, !2920, !304, !3104}
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !298, file: !35, line: 2005, baseType: !3107, size: 64, offset: 1472)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!142, !304, !3104}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !298, file: !35, line: 2006, baseType: !3111, size: 64, offset: 1536)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!3114, !269}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !3116)
!3116 = !{!3117, !3124}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3115, file: !35, line: 3193, baseType: !3118, size: 128)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3119, line: 296, size: 128, elements: !3120)
!3119 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3118, file: !3119, line: 297, baseType: !118, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3118, file: !3119, line: 299, baseType: !633, size: 32, offset: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3118, file: !3119, line: 300, baseType: !82, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3115, file: !35, line: 3194, baseType: !338, size: 32, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !270, file: !35, line: 655, baseType: !420, size: 64, offset: 448)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !270, file: !35, line: 656, baseType: !265, size: 64, offset: 512)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !270, file: !35, line: 659, baseType: !82, size: 64, offset: 576)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !270, file: !35, line: 663, baseType: !239, size: 64, offset: 640)
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !35, line: 671, baseType: !3130, size: 32, offset: 704)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !35, line: 671, size: 32, elements: !3131)
!3131 = !{!3132, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3130, file: !35, line: 672, baseType: !3133, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3130, file: !35, line: 673, baseType: !7, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !270, file: !35, line: 675, baseType: !425, size: 32, offset: 736)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !270, file: !35, line: 676, baseType: !430, size: 64, offset: 768)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !270, file: !35, line: 677, baseType: !3034, size: 128, offset: 832)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !270, file: !35, line: 678, baseType: !3034, size: 128, offset: 960)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !270, file: !35, line: 679, baseType: !3034, size: 128, offset: 1088)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !270, file: !35, line: 680, baseType: !118, size: 32, offset: 1216)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !270, file: !35, line: 681, baseType: !159, size: 16, offset: 1248)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !270, file: !35, line: 682, baseType: !147, size: 8, offset: 1264)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !270, file: !35, line: 683, baseType: !147, size: 8, offset: 1272)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !270, file: !35, line: 684, baseType: !769, size: 64, offset: 1280)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !270, file: !35, line: 691, baseType: !239, size: 64, offset: 1344)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !270, file: !35, line: 692, baseType: !781, size: 320, offset: 1408)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !270, file: !35, line: 694, baseType: !239, size: 64, offset: 1728)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !270, file: !35, line: 695, baseType: !239, size: 64, offset: 1792)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !270, file: !35, line: 697, baseType: !464, size: 128, offset: 1856)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !270, file: !35, line: 698, baseType: !88, size: 128, offset: 1984)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !270, file: !35, line: 707, baseType: !88, size: 128, offset: 2112)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !270, file: !35, line: 708, baseType: !88, size: 128, offset: 2240)
!3153 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !35, line: 709, baseType: !3154, size: 128, offset: 2368)
!3154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !35, line: 709, size: 128, elements: !3155)
!3155 = !{!3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3154, file: !35, line: 710, baseType: !460, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3154, file: !35, line: 711, baseType: !881, size: 128, align: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !270, file: !35, line: 713, baseType: !574, size: 64, offset: 2496)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !270, file: !35, line: 714, baseType: !574, size: 64, offset: 2560)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !270, file: !35, line: 715, baseType: !138, size: 32, offset: 2624)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !270, file: !35, line: 716, baseType: !138, size: 32, offset: 2656)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !270, file: !35, line: 717, baseType: !138, size: 32, offset: 2688)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !270, file: !35, line: 719, baseType: !138, size: 32, offset: 2720)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !35, line: 721, baseType: !3165, size: 64, offset: 2752)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !35, line: 721, size: 64, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3165, file: !35, line: 722, baseType: !1503, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3165, file: !35, line: 723, baseType: !491, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !270, file: !35, line: 725, baseType: !3170, size: 64, offset: 2816)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !270, file: !35, line: 726, baseType: !266, size: 1536, align: 64, offset: 2880)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !270, file: !35, line: 727, baseType: !88, size: 128, offset: 4416)
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !35, line: 728, baseType: !3175, size: 64, offset: 4544)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !35, line: 728, size: 64, elements: !3176)
!3176 = !{!3177, !3178, !3181, !3182}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3175, file: !35, line: 729, baseType: !1678, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3175, file: !35, line: 730, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3175, file: !35, line: 731, baseType: !189, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3175, file: !35, line: 732, baseType: !7, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !270, file: !35, line: 735, baseType: !339, size: 32, offset: 4608)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !270, file: !35, line: 738, baseType: !339, size: 32, offset: 4640)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !270, file: !35, line: 739, baseType: !2855, size: 64, offset: 4672)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !270, file: !35, line: 750, baseType: !82, size: 64, offset: 4736)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !266, file: !35, line: 474, baseType: !3118, size: 128, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !266, file: !35, line: 475, baseType: !781, size: 320, offset: 192)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !266, file: !35, line: 476, baseType: !633, size: 32, offset: 512)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !266, file: !35, line: 477, baseType: !138, size: 32, offset: 544)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !266, file: !35, line: 482, baseType: !1083, size: 128, offset: 576)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !266, file: !35, line: 483, baseType: !239, size: 64, offset: 704)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !266, file: !35, line: 484, baseType: !239, size: 64, offset: 768)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !266, file: !35, line: 485, baseType: !3195, size: 64, offset: 832)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !3198)
!3198 = !{!3199, !3203, !3273, !3277, !3281, !3287, !3292, !3296, !3301, !3305, !3309, !3313, !3314, !3318, !3322, !3326, !3331, !3335, !3342, !3343}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3197, file: !35, line: 405, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!142, !2443, !503}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3197, file: !35, line: 406, baseType: !3204, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!142, !1228, !3207}
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1202, line: 293, size: 1536, elements: !3209)
!3209 = !{!3210, !3240, !3254}
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !1202, line: 295, baseType: !3211, size: 512)
!3211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !1202, line: 295, size: 512, elements: !3212)
!3212 = !{!3213, !3239}
!3213 = !DIDerivedType(tag: DW_TAG_member, scope: !3211, file: !1202, line: 296, baseType: !3214, size: 448)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3211, file: !1202, line: 296, size: 448, elements: !3215)
!3215 = !{!3216, !3217, !3226, !3227, !3228, !3237, !3238}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3214, file: !1202, line: 298, baseType: !239, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !1202, line: 299, baseType: !3218, size: 128, offset: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3214, file: !1202, line: 299, size: 128, elements: !3219)
!3219 = !{!3220, !3221}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3218, file: !1202, line: 300, baseType: !88, size: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, scope: !3218, file: !1202, line: 302, baseType: !3222, size: 128)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3218, file: !1202, line: 302, size: 128, elements: !3223)
!3223 = !{!3224, !3225}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3222, file: !1202, line: 303, baseType: !82, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3222, file: !1202, line: 305, baseType: !7, size: 32, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3214, file: !1202, line: 310, baseType: !265, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3214, file: !1202, line: 311, baseType: !239, size: 64, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !1202, line: 312, baseType: !3229, size: 64, offset: 320)
!3229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3214, file: !1202, line: 312, size: 64, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3229, file: !1202, line: 313, baseType: !82, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3229, file: !1202, line: 314, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1202, line: 257, baseType: !3234)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1202, line: 255, size: 64, elements: !3235)
!3235 = !{!3236}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3234, file: !1202, line: 256, baseType: !239, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3214, file: !1202, line: 316, baseType: !138, size: 32, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3214, file: !1202, line: 317, baseType: !138, size: 32, offset: 416)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3211, file: !1202, line: 323, baseType: !2444, size: 512, align: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !1202, line: 325, baseType: !3241, size: 512, offset: 512)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !1202, line: 325, size: 512, elements: !3242)
!3242 = !{!3243, !3253}
!3243 = !DIDerivedType(tag: DW_TAG_member, scope: !3241, file: !1202, line: 326, baseType: !3244, size: 320)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3241, file: !1202, line: 326, size: 320, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3244, file: !1202, line: 327, baseType: !239, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3244, file: !1202, line: 328, baseType: !239, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3244, file: !1202, line: 329, baseType: !239, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3244, file: !1202, line: 331, baseType: !138, size: 32, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3244, file: !1202, line: 332, baseType: !138, size: 32, offset: 224)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3244, file: !1202, line: 333, baseType: !138, size: 32, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3244, file: !1202, line: 335, baseType: !7, size: 32, offset: 288)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3241, file: !1202, line: 339, baseType: !2444, size: 512, align: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !1202, line: 341, baseType: !3255, size: 512, offset: 1024)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !1202, line: 341, size: 512, elements: !3256)
!3256 = !{!3257, !3266, !3272}
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !1202, line: 342, baseType: !3258, size: 384)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !1202, line: 342, size: 384, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3263, !3264, !3265}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3258, file: !1202, line: 343, baseType: !239, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3258, file: !1202, line: 344, baseType: !239, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3258, file: !1202, line: 346, baseType: !82, size: 64, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3258, file: !1202, line: 347, baseType: !82, size: 64, offset: 192)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3258, file: !1202, line: 348, baseType: !82, size: 64, offset: 256)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3258, file: !1202, line: 349, baseType: !82, size: 64, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !1202, line: 352, baseType: !3267, size: 256)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !1202, line: 352, size: 256, elements: !3268)
!3268 = !{!3269, !3270, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3267, file: !1202, line: 353, baseType: !239, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3267, file: !1202, line: 354, baseType: !239, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3267, file: !1202, line: 356, baseType: !88, size: 128, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3255, file: !1202, line: 359, baseType: !2444, size: 512, align: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3197, file: !35, line: 409, baseType: !3274, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!142, !265, !503}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3197, file: !35, line: 412, baseType: !3278, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!1389, !265, !3207}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3197, file: !35, line: 414, baseType: !3282, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3197, file: !35, line: 416, baseType: !3288, size: 64, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!142, !1228, !265, !430, !7, !3291, !1693}
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3197, file: !35, line: 419, baseType: !3293, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!142, !1228, !265, !430, !7, !7, !2443, !82}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3197, file: !35, line: 424, baseType: !3297, size: 64, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!3300, !265, !3300}
!3300 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !89, line: 131, baseType: !342)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3197, file: !35, line: 425, baseType: !3302, size: 64, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{null, !3207, !236, !236}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3197, file: !35, line: 426, baseType: !3306, size: 64, offset: 576)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!1389, !3207, !633}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3197, file: !35, line: 427, baseType: !3310, size: 64, offset: 640)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{null, !3207}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3197, file: !35, line: 428, baseType: !1522, size: 64, offset: 704)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3197, file: !35, line: 433, baseType: !3315, size: 64, offset: 768)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!142, !265, !3207, !3207, !21}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3197, file: !35, line: 435, baseType: !3319, size: 64, offset: 832)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!142, !3207}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3197, file: !35, line: 436, baseType: !3323, size: 64, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!1389, !3207, !236, !236}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3197, file: !35, line: 438, baseType: !3327, size: 64, offset: 960)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !3207, !3330, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3197, file: !35, line: 439, baseType: !3332, size: 64, offset: 1024)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!142, !265, !2443}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3197, file: !35, line: 442, baseType: !3336, size: 64, offset: 1088)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!142, !3339, !1228, !3341}
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3197, file: !35, line: 444, baseType: !1685, size: 64, offset: 1152)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3197, file: !35, line: 445, baseType: !3344, size: 64, offset: 1216)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!142, !1525, !1547}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !35, line: 486, baseType: !239, size: 64, offset: 896)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !266, file: !35, line: 487, baseType: !781, size: 320, offset: 960)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !266, file: !35, line: 488, baseType: !1728, size: 32, offset: 1280)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !266, file: !35, line: 489, baseType: !118, size: 32, offset: 1312)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !266, file: !35, line: 490, baseType: !88, size: 128, offset: 1344)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !266, file: !35, line: 491, baseType: !82, size: 64, offset: 1472)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !256, file: !215, line: 180, baseType: !3354, size: 64, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!221, !1228, !111, !255, !189, !430, !236}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !256, file: !215, line: 182, baseType: !3354, size: 64, offset: 384)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !256, file: !215, line: 184, baseType: !3359, size: 64, offset: 448)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!142, !1228, !111, !255, !1586}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !244, file: !215, line: 90, baseType: !3363, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !244, file: !215, line: 91, baseType: !3365, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !205, file: !104, line: 120, baseType: !3367, size: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!3370, !172}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3372)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !3373)
!3373 = !{!3374, !3375, !3379, !3383, !3389, !3393}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3372, file: !29, line: 40, baseType: !28, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3372, file: !29, line: 41, baseType: !3376, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!1389}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3372, file: !29, line: 42, baseType: !3380, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!82}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3372, file: !29, line: 43, baseType: !3384, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!1817, !3387}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3372, file: !29, line: 44, baseType: !3390, size: 64, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!1817}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3372, file: !29, line: 45, baseType: !2959, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !205, file: !104, line: 121, baseType: !3395, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!1817, !172}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !205, file: !104, line: 122, baseType: !3399, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{null, !172, !3402, !3403}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !103, file: !104, line: 70, baseType: !3405, size: 64, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3407, line: 190, size: 1152, elements: !3408)
!3407 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3500, !3501, !3502, !3503, !3504, !3507}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3406, file: !3407, line: 191, baseType: !138, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3406, file: !3407, line: 192, baseType: !138, size: 32, offset: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3406, file: !3407, line: 202, baseType: !3405, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3406, file: !3407, line: 203, baseType: !107, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3406, file: !3407, line: 205, baseType: !954, size: 192, align: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3406, file: !3407, line: 207, baseType: !1817, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3406, file: !3407, line: 208, baseType: !7, size: 32, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, scope: !3406, file: !3407, line: 209, baseType: !3417, size: 256, offset: 512)
!3417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3406, file: !3407, line: 209, size: 256, elements: !3418)
!3418 = !{!3419, !3428, !3432}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3417, file: !3407, line: 210, baseType: !3420, size: 256)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3407, line: 153, size: 256, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3427}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3420, file: !3407, line: 154, baseType: !239, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3420, file: !3407, line: 156, baseType: !1086, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3420, file: !3407, line: 162, baseType: !3425, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3407, line: 162, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3420, file: !3407, line: 167, baseType: !239, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3417, file: !3407, line: 211, baseType: !3429, size: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3407, line: 170, size: 64, elements: !3430)
!3430 = !{!3431}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3429, file: !3407, line: 171, baseType: !3405, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3417, file: !3407, line: 212, baseType: !3433, size: 256)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3407, line: 174, size: 256, elements: !3434)
!3434 = !{!3435, !3495, !3498, !3499}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3433, file: !3407, line: 175, baseType: !3436, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3407, line: 271, size: 768, elements: !3439)
!3439 = !{!3440, !3460, !3464, !3468, !3472, !3476, !3480, !3484, !3485, !3486, !3487, !3491}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3438, file: !3407, line: 276, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!142, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3407, line: 251, size: 1216, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3445, file: !3407, line: 253, baseType: !3405, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3445, file: !3407, line: 254, baseType: !1228, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3445, file: !3407, line: 255, baseType: !541, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3445, file: !3407, line: 256, baseType: !82, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3445, file: !3407, line: 259, baseType: !568, size: 256, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3445, file: !3407, line: 260, baseType: !568, size: 256, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3445, file: !3407, line: 261, baseType: !142, size: 32, offset: 768)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3445, file: !3407, line: 262, baseType: !88, size: 128, offset: 832)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3445, file: !3407, line: 263, baseType: !189, size: 64, offset: 960)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3445, file: !3407, line: 265, baseType: !236, size: 64, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3445, file: !3407, line: 266, baseType: !1389, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3445, file: !3407, line: 267, baseType: !1389, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3445, file: !3407, line: 268, baseType: !1631, size: 64, offset: 1152)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3438, file: !3407, line: 277, baseType: !3461, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{null, !3444}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3438, file: !3407, line: 290, baseType: !3465, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!142, !541, !82}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3438, file: !3407, line: 292, baseType: !3469, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!82, !541, !1516}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3438, file: !3407, line: 293, baseType: !3473, size: 64, offset: 256)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!82, !541, !82, !1516}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3438, file: !3407, line: 294, baseType: !3477, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{null, !541, !82}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3438, file: !3407, line: 296, baseType: !3481, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!221, !3444, !189, !236, !430}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3438, file: !3407, line: 306, baseType: !236, size: 64, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3438, file: !3407, line: 313, baseType: !1389, size: 8, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3438, file: !3407, line: 314, baseType: !3481, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3438, file: !3407, line: 317, baseType: !3488, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!1573, !3444, !1575}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3438, file: !3407, line: 320, baseType: !3492, size: 64, offset: 704)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!142, !3444, !1586}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3433, file: !3407, line: 176, baseType: !3496, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3407, line: 35, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3433, file: !3407, line: 177, baseType: !430, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3433, file: !3407, line: 178, baseType: !3405, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3406, file: !3407, line: 215, baseType: !82, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3406, file: !3407, line: 221, baseType: !342, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3406, file: !3407, line: 223, baseType: !159, size: 16, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3406, file: !3407, line: 224, baseType: !231, size: 16, offset: 912)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3406, file: !3407, line: 225, baseType: !3505, size: 64, offset: 960)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3407, line: 36, flags: DIFlagFwdDecl)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3406, file: !3407, line: 227, baseType: !881, size: 128, align: 64, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !103, file: !104, line: 71, baseType: !3509, size: 32, offset: 448)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3510, line: 19, size: 32, elements: !3511)
!3510 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3511 = !{!3512}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3509, file: !3510, line: 20, baseType: !910, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !103, file: !104, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !103, file: !104, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !103, file: !104, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !103, file: !104, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !103, file: !104, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !100, file: !15, line: 47, baseType: !83, size: 64, offset: 512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !100, file: !15, line: 48, baseType: !111, size: 64, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !100, file: !15, line: 49, baseType: !3521, size: 64, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !100, file: !15, line: 50, baseType: !1966, size: 64, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !84, file: !15, line: 418, baseType: !3525, size: 64, offset: 1408)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !3527)
!3527 = !{!3528, !3529, !3534, !3538, !3542, !3546}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3526, file: !15, line: 54, baseType: !227, size: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3526, file: !15, line: 55, baseType: !3530, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!221, !3525, !3533, !189}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3526, file: !15, line: 57, baseType: !3535, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!221, !3525, !3533, !107, !236}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3526, file: !15, line: 59, baseType: !3539, size: 64, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null, !83, !107}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3526, file: !15, line: 60, baseType: !3543, size: 64, offset: 320)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!142, !83}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3526, file: !15, line: 61, baseType: !3547, size: 64, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{null, !83}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !84, file: !15, line: 419, baseType: !107, size: 64, offset: 1472)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !84, file: !15, line: 420, baseType: !107, size: 64, offset: 1536)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !84, file: !15, line: 421, baseType: !111, size: 64, offset: 1600)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !84, file: !15, line: 424, baseType: !3554, size: 64, offset: 1664)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3556)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !84, file: !15, line: 425, baseType: !3558, size: 64, offset: 1728)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1332)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !84, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !84, file: !15, line: 435, baseType: !568, size: 256, offset: 1856)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !84, file: !15, line: 437, baseType: !3563, size: 64, offset: 2112)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3565, line: 69, size: 320, elements: !3566)
!3565 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3566 = !{!3567, !3568, !3569, !3586, !3588, !3592, !3593}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3564, file: !3565, line: 70, baseType: !107, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3564, file: !3565, line: 71, baseType: !83, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3564, file: !3565, line: 72, baseType: !3570, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3572)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3565, line: 47, size: 256, elements: !3573)
!3573 = !{!3574, !3575, !3581, !3585}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3572, file: !3565, line: 49, baseType: !7, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3572, file: !3565, line: 51, baseType: !3576, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!142, !107, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3572, file: !3565, line: 53, baseType: !3582, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!142, !189, !3579}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3572, file: !3565, line: 55, baseType: !2959, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3564, file: !3565, line: 73, baseType: !3587, size: 16, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3564, file: !3565, line: 74, baseType: !3589, size: 8, offset: 208)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !148, line: 16, baseType: !3590)
!3590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !150, line: 20, baseType: !3591)
!3591 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3564, file: !3565, line: 75, baseType: !147, size: 8, offset: 216)
!3593 = !DIDerivedType(tag: DW_TAG_member, scope: !3564, file: !3565, line: 76, baseType: !3594, size: 64, offset: 256)
!3594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3564, file: !3565, line: 76, size: 64, elements: !3595)
!3595 = !{!3596, !3597, !3604}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3594, file: !3565, line: 77, baseType: !82, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3594, file: !3565, line: 78, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3600)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3565, line: 86, size: 128, elements: !3601)
!3601 = !{!3602, !3603}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3600, file: !3565, line: 87, baseType: !7, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3600, file: !3565, line: 88, baseType: !189, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3594, file: !3565, line: 79, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3607)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3565, line: 92, size: 256, elements: !3608)
!3608 = !{!3609, !3610, !3611, !3612, !3613}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3607, file: !3565, line: 94, baseType: !7, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3607, file: !3565, line: 95, baseType: !7, size: 32, offset: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3607, file: !3565, line: 96, baseType: !890, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3607, file: !3565, line: 97, baseType: !3570, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3607, file: !3565, line: 98, baseType: !82, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !84, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !84, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !84, file: !15, line: 442, baseType: !3554, size: 64, offset: 2240)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !84, file: !15, line: 443, baseType: !3558, size: 64, offset: 2304)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !84, file: !15, line: 444, baseType: !1389, size: 8, offset: 2368)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !84, file: !15, line: 451, baseType: !1389, size: 8, offset: 2376)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !84, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !84, file: !15, line: 455, baseType: !3622, size: 64, offset: 2432)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3624, line: 23, size: 96, elements: !3625)
!3624 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3625 = !{!3626, !3627, !3628}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3623, file: !3624, line: 24, baseType: !142, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3623, file: !3624, line: 24, baseType: !142, size: 32, offset: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3623, file: !3624, line: 24, baseType: !142, size: 32, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !84, file: !15, line: 458, baseType: !3630, size: 64, offset: 2496)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!142}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !84, file: !15, line: 460, baseType: !3634, size: 4032, align: 512, offset: 2560)
!3634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3635, size: 4032, elements: !3649)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !3636)
!3636 = !{!3637, !3638, !3639}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3635, file: !15, line: 363, baseType: !82, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3635, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3635, file: !15, line: 367, baseType: !3640, size: 448, offset: 128)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !3641)
!3641 = !{!3642, !3643}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3640, file: !15, line: 320, baseType: !83, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3640, file: !15, line: 321, baseType: !3644, size: 384, offset: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3645, line: 40, size: 384, elements: !3646)
!3645 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3646 = !{!3647}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3644, file: !3645, line: 41, baseType: !3648, size: 384, align: 64)
!3648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 384, align: 64, elements: !2100)
!3649 = !{!3650}
!3650 = !DISubrange(count: 7)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !84, file: !15, line: 463, baseType: !3652, size: 192, offset: 6592)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3653, line: 8, size: 192, elements: !3654)
!3653 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3654 = !{!3655, !3656, !3657}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3652, file: !3653, line: 10, baseType: !7, size: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3652, file: !3653, line: 11, baseType: !535, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3652, file: !3653, line: 12, baseType: !3658, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3660, line: 59, size: 48, elements: !3661)
!3660 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3661 = !{!3662, !3663, !3664, !3665, !3666, !3667}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3659, file: !3660, line: 60, baseType: !1834, size: 16)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3659, file: !3660, line: 61, baseType: !1834, size: 16, offset: 16)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3659, file: !3660, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3659, file: !3660, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3659, file: !3660, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3659, file: !3660, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !84, file: !15, line: 465, baseType: !239, size: 64, offset: 6784)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !84, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !84, file: !15, line: 470, baseType: !88, size: 128, offset: 6912)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !84, file: !15, line: 471, baseType: !3672, size: 64, offset: 7040)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3674, line: 33, size: 96, elements: !3675)
!3674 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3675 = !{!3676, !3677, !3678, !3679}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3673, file: !3674, line: 37, baseType: !142, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3673, file: !3674, line: 43, baseType: !142, size: 32, offset: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3673, file: !3674, line: 45, baseType: !159, size: 16, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3673, file: !3674, line: 47, baseType: !159, size: 16, offset: 80)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !84, file: !15, line: 476, baseType: !3681, size: 64, offset: 7104)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !3683)
!3683 = !{!3684, !3700, !3701, !3702}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3682, file: !15, line: 379, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3687, line: 204, baseType: !3688)
!3687 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3687, line: 197, size: 192, elements: !3689)
!3689 = !{!3690, !3692, !3693, !3694, !3696, !3698}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3688, file: !3687, line: 198, baseType: !3691, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3687, line: 21, baseType: !339)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3688, file: !3687, line: 199, baseType: !151, size: 8, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3688, file: !3687, line: 200, baseType: !151, size: 8, offset: 40)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3688, file: !3687, line: 201, baseType: !3695, size: 16, offset: 48)
!3695 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3687, line: 17, baseType: !158)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3688, file: !3687, line: 202, baseType: !3697, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3687, line: 16, baseType: !343)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3688, file: !3687, line: 203, baseType: !3699, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3687, line: 22, baseType: !343)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3682, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3682, file: !15, line: 381, baseType: !189, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3682, file: !15, line: 382, baseType: !189, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !84, file: !15, line: 477, baseType: !3682, size: 256, offset: 7168)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !84, file: !15, line: 480, baseType: !3705, size: 64, offset: 7424)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !84, file: !15, line: 483, baseType: !3708, size: 64, offset: 7488)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !84, file: !15, line: 488, baseType: !189, size: 64, offset: 7552)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !84, file: !15, line: 492, baseType: !82, size: 64, offset: 7616)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !84, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !84, file: !15, line: 495, baseType: !82, size: 64, offset: 7744)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !84, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !84, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !84, file: !15, line: 500, baseType: !3717, size: 64, offset: 7872)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3719, line: 45, baseType: !3720)
!3719 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !84, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !84, file: !15, line: 504, baseType: !3723, size: 64, offset: 8000)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3726, line: 96, size: 192, elements: !3727)
!3726 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3727 = !{!3728, !3729, !3772, !3774}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3725, file: !3726, line: 97, baseType: !7, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3725, file: !3726, line: 98, baseType: !3730, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3726, line: 24, size: 3072, elements: !3732)
!3732 = !{!3733, !3735, !3736, !3737, !3738, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3769, !3770, !3771}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3731, file: !3726, line: 26, baseType: !3734, size: 128)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 128, elements: !2100)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3731, file: !3726, line: 27, baseType: !3734, size: 128, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3731, file: !3726, line: 28, baseType: !142, size: 32, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3731, file: !3726, line: 31, baseType: !118, size: 32, align: 512, offset: 512)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3731, file: !3726, line: 32, baseType: !3739, size: 960, offset: 576)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3740, line: 206, size: 960, elements: !3741)
!3740 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3741 = !{!3742, !3743, !3746, !3748, !3749, !3751}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3739, file: !3740, line: 207, baseType: !884, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3739, file: !3740, line: 208, baseType: !3744, size: 256, offset: 64)
!3744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3745, size: 256, elements: !1277)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3739, file: !3740, line: 209, baseType: !3747, size: 256, offset: 320)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 256, elements: !1277)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3739, file: !3740, line: 213, baseType: !225, size: 64, offset: 576)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3739, file: !3740, line: 215, baseType: !3750, size: 256, offset: 640)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !1277)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3739, file: !3740, line: 216, baseType: !147, size: 8, offset: 896)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3731, file: !3726, line: 33, baseType: !239, size: 64, offset: 1536)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3731, file: !3726, line: 34, baseType: !239, size: 64, offset: 1600)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3731, file: !3726, line: 35, baseType: !1389, size: 8, offset: 1664)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3731, file: !3726, line: 36, baseType: !2596, size: 320, offset: 1728)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3731, file: !3726, line: 37, baseType: !1856, size: 256, offset: 2048)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3731, file: !3726, line: 38, baseType: !881, size: 128, align: 64, offset: 2304)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3731, file: !3726, line: 39, baseType: !3759, size: 64, offset: 2432)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3726, line: 49, size: 768, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3760, file: !3726, line: 50, baseType: !118, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3760, file: !3726, line: 51, baseType: !3747, size: 256, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3760, file: !3726, line: 53, baseType: !3747, size: 256, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3760, file: !3726, line: 54, baseType: !239, size: 64, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3760, file: !3726, line: 55, baseType: !3759, size: 64, offset: 640)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3760, file: !3726, line: 56, baseType: !142, size: 32, offset: 704)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3760, file: !3726, line: 57, baseType: !142, size: 32, offset: 736)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3731, file: !3726, line: 40, baseType: !239, size: 64, offset: 2496)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3731, file: !3726, line: 42, baseType: !142, size: 32, offset: 2560)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3731, file: !3726, line: 43, baseType: !3724, size: 64, offset: 2624)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3725, file: !3726, line: 99, baseType: !3773, offset: 128)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !471, line: 211, elements: !472)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3725, file: !3726, line: 100, baseType: !3775, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3726, line: 63, size: 3008, elements: !3777)
!3777 = !{!3778, !3779, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3807}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3776, file: !3726, line: 64, baseType: !3759, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3776, file: !3726, line: 65, baseType: !3780, size: 192, offset: 64)
!3780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3759, size: 192, elements: !190)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3776, file: !3726, line: 67, baseType: !142, size: 32, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3776, file: !3726, line: 68, baseType: !568, size: 256, offset: 320)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3776, file: !3726, line: 69, baseType: !118, size: 32, offset: 576)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3776, file: !3726, line: 70, baseType: !568, size: 256, offset: 640)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3776, file: !3726, line: 71, baseType: !239, size: 64, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3776, file: !3726, line: 72, baseType: !239, size: 64, offset: 960)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3776, file: !3726, line: 73, baseType: !239, size: 64, offset: 1024)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3776, file: !3726, line: 74, baseType: !239, size: 64, offset: 1088)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3776, file: !3726, line: 75, baseType: !239, size: 64, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3776, file: !3726, line: 76, baseType: !239, size: 64, offset: 1216)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3776, file: !3726, line: 77, baseType: !239, size: 64, offset: 1280)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3776, file: !3726, line: 78, baseType: !239, size: 64, offset: 1344)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3776, file: !3726, line: 79, baseType: !1389, size: 8, offset: 1408)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3776, file: !3726, line: 80, baseType: !239, size: 64, offset: 1472)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3776, file: !3726, line: 81, baseType: !568, size: 256, offset: 1536)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3776, file: !3726, line: 82, baseType: !1967, size: 256, offset: 1792)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3776, file: !3726, line: 84, baseType: !138, size: 32, offset: 2048)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3776, file: !3726, line: 87, baseType: !239, size: 64, offset: 2112)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3776, file: !3726, line: 88, baseType: !239, size: 64, offset: 2176)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3776, file: !3726, line: 89, baseType: !3801, size: 704, offset: 2240)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1857, line: 111, size: 704, elements: !3802)
!3802 = !{!3803, !3804, !3805, !3806}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3801, file: !1857, line: 112, baseType: !1856, size: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3801, file: !1857, line: 113, baseType: !2596, size: 320, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3801, file: !1857, line: 116, baseType: !2890, size: 64, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3801, file: !1857, line: 117, baseType: !142, size: 32, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3776, file: !3726, line: 90, baseType: !3724, size: 64, offset: 2944)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !84, file: !15, line: 515, baseType: !3809, size: 64, offset: 8064)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3811, line: 117, size: 128, elements: !3812)
!3811 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3812 = !{!3813, !3814, !3815}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3810, file: !3811, line: 118, baseType: !1332, size: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3810, file: !3811, line: 119, baseType: !1332, size: 32, offset: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3810, file: !3811, line: 120, baseType: !225, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !84, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !84, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !84, file: !15, line: 520, baseType: !3819, size: 64, offset: 8192)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !84, file: !15, line: 523, baseType: !3821, size: 64, offset: 8256)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !84, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !84, file: !15, line: 525, baseType: !3826, size: 64, offset: 8384)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !84, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !84, file: !15, line: 533, baseType: !82, size: 64, offset: 8512)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !84, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !84, file: !15, line: 535, baseType: !3833, size: 64, offset: 8640)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !84, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !84, file: !15, line: 539, baseType: !142, size: 32, offset: 8736)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !84, file: !15, line: 540, baseType: !3837, size: 64, offset: 8768)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3839, line: 32, size: 64, elements: !3840)
!3839 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3840 = !{!3841, !3842}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3838, file: !3839, line: 33, baseType: !1332, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3838, file: !3839, line: 34, baseType: !1332, size: 32, offset: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !84, file: !15, line: 563, baseType: !88, size: 128, offset: 8832)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !84, file: !15, line: 565, baseType: !88, size: 128, offset: 8960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !84, file: !15, line: 568, baseType: !3846, size: 64, offset: 9088)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !84, file: !15, line: 570, baseType: !138, size: 32, offset: 9152)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1574, line: 38, baseType: !339)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !1574, line: 40, baseType: !343)
!3850 = !{!0, !3851, !3856, !3859, !3864, !3866, !3870, !3872, !3874, !3889, !3891, !3896, !3901, !3906, !3911, !3916, !3921, !3926, !3929, !3947, !3952, !3954, !3959, !3964}
!3851 = !DIGlobalVariableExpression(var: !3852, expr: !DIExpression())
!3852 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description260", scope: !2, file: !3, line: 22, type: !3853, isLocal: true, isDefinition: true, align: 8)
!3853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 360, elements: !3854)
!3854 = !{!3855}
!3855 = !DISubrange(count: 45)
!3856 = !DIGlobalVariableExpression(var: !3857, expr: !DIExpression())
!3857 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file261", scope: !2, file: !3, line: 23, type: !3858, isLocal: true, isDefinition: true, align: 8)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !351)
!3859 = !DIGlobalVariableExpression(var: !3860, expr: !DIExpression())
!3860 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license262", scope: !2, file: !3, line: 23, type: !3861, isLocal: true, isDefinition: true, align: 8)
!3861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 168, elements: !3862)
!3862 = !{!3863}
!3863 = !DISubrange(count: 21)
!3864 = !DIGlobalVariableExpression(var: !3865, expr: !DIExpression())
!3865 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_quota_v2__263_439_init_v2_quota_format6264", scope: !2, file: !3, line: 439, type: !82, isLocal: true, isDefinition: true)
!3866 = !DIGlobalVariableExpression(var: !3867, expr: !DIExpression())
!3867 = distinct !DIGlobalVariable(name: "__exitcall_exit_v2_quota_format", scope: !2, file: !3, line: 440, type: !3868, isLocal: true, isDefinition: true)
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3869, line: 120, baseType: !3846)
!3869 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!3870 = !DIGlobalVariableExpression(var: !3871, expr: !DIExpression())
!3871 = distinct !DIGlobalVariable(name: "v2r0_quota_format", scope: !2, file: !3, line: 411, type: !829, isLocal: true, isDefinition: true)
!3872 = !DIGlobalVariableExpression(var: !3873, expr: !DIExpression())
!3873 = distinct !DIGlobalVariable(name: "v2_format_ops", scope: !2, file: !3, line: 400, type: !834, isLocal: true, isDefinition: true)
!3874 = !DIGlobalVariableExpression(var: !3875, expr: !DIExpression())
!3875 = distinct !DIGlobalVariable(name: "quota_magics", scope: !3876, file: !3, line: 78, type: !3886, isLocal: true, isDefinition: true)
!3876 = distinct !DISubprogram(name: "v2_check_quota_file", scope: !3, file: !3, line: 75, type: !513, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3877)
!3877 = !{!3878, !3879, !3880}
!3878 = !DILocalVariable(name: "sb", arg: 1, scope: !3876, file: !3, line: 75, type: !420)
!3879 = !DILocalVariable(name: "type", arg: 2, scope: !3876, file: !3, line: 75, type: !142)
!3880 = !DILocalVariable(name: "dqhead", scope: !3876, file: !3, line: 77, type: !3881)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v2_disk_dqheader", file: !3882, line: 28, size: 64, elements: !3883)
!3882 = !DIFile(filename: "fs/quota/quotaio_v2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dbb676a0213e202d20dd7faf558590d4")
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dqh_magic", scope: !3881, file: !3882, line: 29, baseType: !3848, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dqh_version", scope: !3881, file: !3882, line: 30, baseType: !3848, size: 32, offset: 32)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3887, size: 96, elements: !190)
!3887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3888)
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !89, line: 93, baseType: !7)
!3889 = !DIGlobalVariableExpression(var: !3890, expr: !DIExpression())
!3890 = distinct !DIGlobalVariable(name: "quota_versions", scope: !3876, file: !3, line: 79, type: !3886, isLocal: true, isDefinition: true)
!3891 = !DIGlobalVariableExpression(var: !3892, expr: !DIExpression())
!3892 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !3893, isLocal: true, isDefinition: true)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 120, elements: !3894)
!3894 = !{!3895}
!3895 = !DISubrange(count: 15)
!3896 = !DIGlobalVariableExpression(var: !3897, expr: !DIExpression())
!3897 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !3898, isLocal: true, isDefinition: true)
!3898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 328, elements: !3899)
!3899 = !{!3900}
!3900 = !DISubrange(count: 41)
!3901 = !DIGlobalVariableExpression(var: !3902, expr: !DIExpression())
!3902 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !3903, isLocal: true, isDefinition: true)
!3903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 144, elements: !3904)
!3904 = !{!3905}
!3905 = !DISubrange(count: 18)
!3906 = !DIGlobalVariableExpression(var: !3907, expr: !DIExpression())
!3907 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !3908, isLocal: true, isDefinition: true)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 208, elements: !3909)
!3909 = !{!3910}
!3910 = !DISubrange(count: 26)
!3911 = !DIGlobalVariableExpression(var: !3912, expr: !DIExpression())
!3912 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !3913, isLocal: true, isDefinition: true)
!3913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 480, elements: !3914)
!3914 = !{!3915}
!3915 = !DISubrange(count: 60)
!3916 = !DIGlobalVariableExpression(var: !3917, expr: !DIExpression())
!3917 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !3918, isLocal: true, isDefinition: true)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 352, elements: !3919)
!3919 = !{!3920}
!3920 = !DISubrange(count: 44)
!3921 = !DIGlobalVariableExpression(var: !3922, expr: !DIExpression())
!3922 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !3923, isLocal: true, isDefinition: true)
!3923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 384, elements: !3924)
!3924 = !{!3925}
!3925 = !DISubrange(count: 48)
!3926 = !DIGlobalVariableExpression(var: !3927, expr: !DIExpression())
!3927 = distinct !DIGlobalVariable(scope: null, file: !69, line: 480, type: !3928, isLocal: true, isDefinition: true)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 168, elements: !3862)
!3929 = !DIGlobalVariableExpression(var: !3930, expr: !DIExpression())
!3930 = distinct !DIGlobalVariable(name: "v2r0_qtree_ops", scope: !2, file: !3, line: 32, type: !3931, isLocal: true, isDefinition: true)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3932)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qtree_fmt_operations", file: !3933, line: 22, size: 192, elements: !3934)
!3933 = !DIFile(filename: "./include/linux/dqblk_qtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a37abcc49522b6303b5c210297d4528e")
!3934 = !{!3935, !3939, !3943}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mem2disk_dqblk", scope: !3932, file: !3933, line: 23, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !82, !560}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "disk2mem_dqblk", scope: !3932, file: !3933, line: 24, baseType: !3940, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !560, !82}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "is_id", scope: !3932, file: !3933, line: 25, baseType: !3944, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!142, !82, !560}
!3947 = !DIGlobalVariableExpression(var: !3948, expr: !DIExpression())
!3948 = distinct !DIGlobalVariable(scope: null, file: !40, line: 114, type: !3949, isLocal: true, isDefinition: true)
!3949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 176, elements: !3950)
!3950 = !{!3951}
!3951 = !DISubrange(count: 22)
!3952 = !DIGlobalVariableExpression(var: !3953, expr: !DIExpression())
!3953 = distinct !DIGlobalVariable(name: "v2r1_qtree_ops", scope: !2, file: !3, line: 38, type: !3931, isLocal: true, isDefinition: true)
!3954 = !DIGlobalVariableExpression(var: !3955, expr: !DIExpression())
!3955 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !3956, isLocal: true, isDefinition: true)
!3956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 152, elements: !3957)
!3957 = !{!3958}
!3958 = !DISubrange(count: 19)
!3959 = !DIGlobalVariableExpression(var: !3960, expr: !DIExpression())
!3960 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !3961, isLocal: true, isDefinition: true)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 216, elements: !3962)
!3962 = !{!3963}
!3963 = !DISubrange(count: 27)
!3964 = !DIGlobalVariableExpression(var: !3965, expr: !DIExpression())
!3965 = distinct !DIGlobalVariable(name: "v2r1_quota_format", scope: !2, file: !3, line: 417, type: !829, isLocal: true, isDefinition: true)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 200, elements: !3967)
!3967 = !{!3968}
!3968 = !DISubrange(count: 25)
!3969 = !{i32 7, !"Dwarf Version", i32 5}
!3970 = !{i32 2, !"Debug Info Version", i32 3}
!3971 = !{i32 1, !"wchar_size", i32 2}
!3972 = !{i32 8, !"cf-protection-branch", i32 1}
!3973 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3974 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3975 = !{i32 1, !"Code Model", i32 2}
!3976 = !{i32 1, !"override-stack-alignment", i32 8}
!3977 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3978 = distinct !DISubprogram(name: "exit_v2_quota_format", scope: !3, file: !3, line: 433, type: !2214, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3979 = !DILocation(line: 435, column: 2, scope: !3978)
!3980 = !DILocation(line: 436, column: 2, scope: !3978)
!3981 = !DILocation(line: 437, column: 1, scope: !3978)
!3982 = !DISubprogram(name: "unregister_quota_format", scope: !40, file: !40, line: 530, type: !3983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !828}
!3985 = distinct !DISubprogram(name: "__initstub__kmod_quota_v2__263_439_init_v2_quota_format6", scope: !3, file: !3, line: 439, type: !3631, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3986 = !DILocation(line: 439, column: 1, scope: !3985)
!3987 = distinct !DISubprogram(name: "init_v2_quota_format", scope: !3, file: !3, line: 423, type: !3631, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3988)
!3988 = !{!3989}
!3989 = !DILocalVariable(name: "ret", scope: !3987, file: !3, line: 425, type: !142)
!3990 = !DILocation(line: 425, column: 2, scope: !3987)
!3991 = !DILocation(line: 425, column: 6, scope: !3987)
!3992 = !DILocation(line: 427, column: 8, scope: !3987)
!3993 = !DILocation(line: 427, column: 6, scope: !3987)
!3994 = !DILocation(line: 428, column: 6, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 428, column: 6)
!3996 = !DILocation(line: 428, column: 6, scope: !3987)
!3997 = !DILocation(line: 429, column: 10, scope: !3995)
!3998 = !DILocation(line: 429, column: 3, scope: !3995)
!3999 = !DILocation(line: 430, column: 9, scope: !3987)
!4000 = !DILocation(line: 430, column: 2, scope: !3987)
!4001 = !DILocation(line: 431, column: 1, scope: !3987)
!4002 = !DILocation(line: 75, column: 52, scope: !3876)
!4003 = !DILocation(line: 75, column: 60, scope: !3876)
!4004 = !DILocation(line: 77, column: 2, scope: !3876)
!4005 = !DILocation(line: 77, column: 26, scope: !3876)
!4006 = !DILocation(line: 81, column: 21, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 81, column: 6)
!4008 = !DILocation(line: 81, column: 25, scope: !4007)
!4009 = !DILocation(line: 81, column: 6, scope: !4007)
!4010 = !DILocation(line: 81, column: 6, scope: !3876)
!4011 = !DILocation(line: 82, column: 3, scope: !4007)
!4012 = !DILocation(line: 83, column: 6, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 83, column: 6)
!4014 = !DILocation(line: 83, column: 52, scope: !4013)
!4015 = !DILocation(line: 83, column: 39, scope: !4013)
!4016 = !DILocation(line: 83, column: 36, scope: !4013)
!4017 = !DILocation(line: 83, column: 58, scope: !4013)
!4018 = !DILocation(line: 84, column: 6, scope: !4013)
!4019 = !DILocation(line: 84, column: 55, scope: !4013)
!4020 = !DILocation(line: 84, column: 40, scope: !4013)
!4021 = !DILocation(line: 84, column: 38, scope: !4013)
!4022 = !DILocation(line: 83, column: 6, scope: !3876)
!4023 = !DILocation(line: 85, column: 3, scope: !4013)
!4024 = !DILocation(line: 86, column: 2, scope: !3876)
!4025 = !DILocation(line: 87, column: 1, scope: !3876)
!4026 = distinct !DISubprogram(name: "v2_read_file_info", scope: !3, file: !3, line: 90, type: !513, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4027)
!4027 = !{!4028, !4029, !4030, !4039, !4040, !4042, !4044, !4059, !4060, !4061, !4062, !4063}
!4028 = !DILocalVariable(name: "sb", arg: 1, scope: !4026, file: !3, line: 90, type: !420)
!4029 = !DILocalVariable(name: "type", arg: 2, scope: !4026, file: !3, line: 90, type: !142)
!4030 = !DILocalVariable(name: "dinfo", scope: !4026, file: !3, line: 92, type: !4031)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v2_disk_dqinfo", file: !3882, line: 64, size: 192, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4038}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4031, file: !3882, line: 65, baseType: !3848, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4031, file: !3882, line: 66, baseType: !3848, size: 32, offset: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4031, file: !3882, line: 67, baseType: !3848, size: 32, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_blocks", scope: !4031, file: !3882, line: 68, baseType: !3848, size: 32, offset: 96)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_free_blk", scope: !4031, file: !3882, line: 69, baseType: !3848, size: 32, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_free_entry", scope: !4031, file: !3882, line: 70, baseType: !3848, size: 32, offset: 160)
!4039 = !DILocalVariable(name: "dqhead", scope: !4026, file: !3, line: 93, type: !3881)
!4040 = !DILocalVariable(name: "dqopt", scope: !4026, file: !3, line: 94, type: !4041)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!4042 = !DILocalVariable(name: "info", scope: !4026, file: !3, line: 95, type: !4043)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!4044 = !DILocalVariable(name: "qinfo", scope: !4026, file: !3, line: 96, type: !4045)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qtree_mem_dqinfo", file: !3933, line: 29, size: 384, elements: !4047)
!4047 = !{!4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_sb", scope: !4046, file: !3933, line: 30, baseType: !420, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_type", scope: !4046, file: !3933, line: 31, baseType: !142, size: 32, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_blocks", scope: !4046, file: !3933, line: 32, baseType: !7, size: 32, offset: 96)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_free_blk", scope: !4046, file: !3933, line: 33, baseType: !7, size: 32, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_free_entry", scope: !4046, file: !3933, line: 34, baseType: !7, size: 32, offset: 160)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_blocksize_bits", scope: !4046, file: !3933, line: 35, baseType: !7, size: 32, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_entry_size", scope: !4046, file: !3933, line: 36, baseType: !7, size: 32, offset: 224)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_usable_bs", scope: !4046, file: !3933, line: 37, baseType: !7, size: 32, offset: 256)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_qtree_depth", scope: !4046, file: !3933, line: 38, baseType: !7, size: 32, offset: 288)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_ops", scope: !4046, file: !3933, line: 39, baseType: !4058, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!4059 = !DILocalVariable(name: "size", scope: !4026, file: !3, line: 97, type: !221)
!4060 = !DILocalVariable(name: "version", scope: !4026, file: !3, line: 98, type: !7)
!4061 = !DILocalVariable(name: "ret", scope: !4026, file: !3, line: 99, type: !142)
!4062 = !DILabel(scope: !4026, name: "out_free", file: !3, line: 183)
!4063 = !DILabel(scope: !4026, name: "out", file: !3, line: 188)
!4064 = !DILocation(line: 90, column: 50, scope: !4026)
!4065 = !DILocation(line: 90, column: 58, scope: !4026)
!4066 = !DILocation(line: 92, column: 2, scope: !4026)
!4067 = !DILocation(line: 92, column: 24, scope: !4026)
!4068 = !DILocation(line: 93, column: 2, scope: !4026)
!4069 = !DILocation(line: 93, column: 26, scope: !4026)
!4070 = !DILocation(line: 94, column: 2, scope: !4026)
!4071 = !DILocation(line: 94, column: 21, scope: !4026)
!4072 = !DILocation(line: 94, column: 38, scope: !4026)
!4073 = !DILocation(line: 94, column: 29, scope: !4026)
!4074 = !DILocation(line: 95, column: 2, scope: !4026)
!4075 = !DILocation(line: 95, column: 21, scope: !4026)
!4076 = !DILocation(line: 95, column: 29, scope: !4026)
!4077 = !DILocation(line: 95, column: 36, scope: !4026)
!4078 = !DILocation(line: 95, column: 41, scope: !4026)
!4079 = !DILocation(line: 96, column: 2, scope: !4026)
!4080 = !DILocation(line: 96, column: 27, scope: !4026)
!4081 = !DILocation(line: 97, column: 2, scope: !4026)
!4082 = !DILocation(line: 97, column: 10, scope: !4026)
!4083 = !DILocation(line: 98, column: 2, scope: !4026)
!4084 = !DILocation(line: 98, column: 15, scope: !4026)
!4085 = !DILocation(line: 99, column: 2, scope: !4026)
!4086 = !DILocation(line: 99, column: 6, scope: !4026)
!4087 = !DILocation(line: 101, column: 13, scope: !4026)
!4088 = !DILocation(line: 101, column: 20, scope: !4026)
!4089 = !DILocation(line: 101, column: 2, scope: !4026)
!4090 = !DILocation(line: 102, column: 23, scope: !4026)
!4091 = !DILocation(line: 102, column: 27, scope: !4026)
!4092 = !DILocation(line: 102, column: 8, scope: !4026)
!4093 = !DILocation(line: 102, column: 6, scope: !4026)
!4094 = !DILocation(line: 103, column: 6, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 103, column: 6)
!4096 = !DILocation(line: 103, column: 10, scope: !4095)
!4097 = !DILocation(line: 103, column: 6, scope: !4026)
!4098 = !DILocation(line: 104, column: 3, scope: !4095)
!4099 = !DILocation(line: 105, column: 12, scope: !4026)
!4100 = !DILocation(line: 105, column: 10, scope: !4026)
!4101 = !DILocation(line: 106, column: 7, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 106, column: 6)
!4103 = !DILocation(line: 106, column: 13, scope: !4102)
!4104 = !DILocation(line: 106, column: 24, scope: !4102)
!4105 = !DILocation(line: 106, column: 39, scope: !4102)
!4106 = !DILocation(line: 106, column: 42, scope: !4102)
!4107 = !DILocation(line: 106, column: 50, scope: !4102)
!4108 = !DILocation(line: 106, column: 56, scope: !4102)
!4109 = !DILocation(line: 107, column: 7, scope: !4102)
!4110 = !DILocation(line: 107, column: 13, scope: !4102)
!4111 = !DILocation(line: 107, column: 24, scope: !4102)
!4112 = !DILocation(line: 107, column: 39, scope: !4102)
!4113 = !DILocation(line: 107, column: 42, scope: !4102)
!4114 = !DILocation(line: 107, column: 50, scope: !4102)
!4115 = !DILocation(line: 106, column: 6, scope: !4026)
!4116 = !DILocation(line: 108, column: 7, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 107, column: 57)
!4118 = !DILocation(line: 109, column: 3, scope: !4117)
!4119 = !DILocation(line: 112, column: 9, scope: !4026)
!4120 = !DILocation(line: 112, column: 13, scope: !4026)
!4121 = !DILocation(line: 112, column: 19, scope: !4026)
!4122 = !DILocation(line: 112, column: 30, scope: !4026)
!4123 = !DILocation(line: 112, column: 34, scope: !4026)
!4124 = !DILocation(line: 112, column: 7, scope: !4026)
!4125 = !DILocation(line: 114, column: 6, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 114, column: 6)
!4127 = !DILocation(line: 114, column: 11, scope: !4126)
!4128 = !DILocation(line: 114, column: 6, scope: !4026)
!4129 = !DILocation(line: 115, column: 3, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 114, column: 45)
!4131 = !DILocation(line: 116, column: 7, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 116, column: 7)
!4133 = !DILocation(line: 116, column: 12, scope: !4132)
!4134 = !DILocation(line: 116, column: 7, scope: !4130)
!4135 = !DILocation(line: 117, column: 10, scope: !4132)
!4136 = !DILocation(line: 117, column: 8, scope: !4132)
!4137 = !DILocation(line: 117, column: 4, scope: !4132)
!4138 = !DILocation(line: 119, column: 8, scope: !4132)
!4139 = !DILocation(line: 120, column: 3, scope: !4130)
!4140 = !DILocation(line: 122, column: 19, scope: !4026)
!4141 = !DILocation(line: 122, column: 2, scope: !4026)
!4142 = !DILocation(line: 122, column: 8, scope: !4026)
!4143 = !DILocation(line: 122, column: 17, scope: !4026)
!4144 = !DILocation(line: 123, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 123, column: 6)
!4146 = !DILocation(line: 123, column: 13, scope: !4145)
!4147 = !DILocation(line: 123, column: 6, scope: !4026)
!4148 = !DILocation(line: 124, column: 7, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 123, column: 23)
!4150 = !DILocation(line: 125, column: 3, scope: !4149)
!4151 = !DILocation(line: 127, column: 10, scope: !4026)
!4152 = !DILocation(line: 127, column: 16, scope: !4026)
!4153 = !DILocation(line: 127, column: 8, scope: !4026)
!4154 = !DILocation(line: 128, column: 6, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 128, column: 6)
!4156 = !DILocation(line: 128, column: 14, scope: !4155)
!4157 = !DILocation(line: 128, column: 6, scope: !4026)
!4158 = !DILocation(line: 130, column: 3, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 128, column: 20)
!4160 = !DILocation(line: 130, column: 9, scope: !4159)
!4161 = !DILocation(line: 130, column: 27, scope: !4159)
!4162 = !DILocation(line: 131, column: 3, scope: !4159)
!4163 = !DILocation(line: 131, column: 9, scope: !4159)
!4164 = !DILocation(line: 131, column: 27, scope: !4159)
!4165 = !DILocation(line: 132, column: 2, scope: !4159)
!4166 = !DILocation(line: 138, column: 3, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 132, column: 9)
!4168 = !DILocation(line: 138, column: 9, scope: !4167)
!4169 = !DILocation(line: 138, column: 27, scope: !4167)
!4170 = !DILocation(line: 139, column: 3, scope: !4167)
!4171 = !DILocation(line: 139, column: 9, scope: !4167)
!4172 = !DILocation(line: 139, column: 27, scope: !4167)
!4173 = !DILocation(line: 141, column: 21, scope: !4026)
!4174 = !DILocation(line: 141, column: 2, scope: !4026)
!4175 = !DILocation(line: 141, column: 8, scope: !4026)
!4176 = !DILocation(line: 141, column: 19, scope: !4026)
!4177 = !DILocation(line: 142, column: 21, scope: !4026)
!4178 = !DILocation(line: 142, column: 2, scope: !4026)
!4179 = !DILocation(line: 142, column: 8, scope: !4026)
!4180 = !DILocation(line: 142, column: 19, scope: !4026)
!4181 = !DILocation(line: 144, column: 2, scope: !4026)
!4182 = !DILocation(line: 144, column: 8, scope: !4026)
!4183 = !DILocation(line: 144, column: 18, scope: !4026)
!4184 = !DILocation(line: 145, column: 18, scope: !4026)
!4185 = !DILocation(line: 145, column: 2, scope: !4026)
!4186 = !DILocation(line: 145, column: 9, scope: !4026)
!4187 = !DILocation(line: 145, column: 16, scope: !4026)
!4188 = !DILocation(line: 146, column: 20, scope: !4026)
!4189 = !DILocation(line: 146, column: 2, scope: !4026)
!4190 = !DILocation(line: 146, column: 9, scope: !4026)
!4191 = !DILocation(line: 146, column: 18, scope: !4026)
!4192 = !DILocation(line: 147, column: 22, scope: !4026)
!4193 = !DILocation(line: 147, column: 2, scope: !4026)
!4194 = !DILocation(line: 147, column: 9, scope: !4026)
!4195 = !DILocation(line: 147, column: 20, scope: !4026)
!4196 = !DILocation(line: 148, column: 24, scope: !4026)
!4197 = !DILocation(line: 148, column: 2, scope: !4026)
!4198 = !DILocation(line: 148, column: 9, scope: !4026)
!4199 = !DILocation(line: 148, column: 22, scope: !4026)
!4200 = !DILocation(line: 149, column: 26, scope: !4026)
!4201 = !DILocation(line: 149, column: 2, scope: !4026)
!4202 = !DILocation(line: 149, column: 9, scope: !4026)
!4203 = !DILocation(line: 149, column: 24, scope: !4026)
!4204 = !DILocation(line: 150, column: 2, scope: !4026)
!4205 = !DILocation(line: 150, column: 9, scope: !4026)
!4206 = !DILocation(line: 150, column: 28, scope: !4026)
!4207 = !DILocation(line: 151, column: 2, scope: !4026)
!4208 = !DILocation(line: 151, column: 9, scope: !4026)
!4209 = !DILocation(line: 151, column: 23, scope: !4026)
!4210 = !DILocation(line: 152, column: 39, scope: !4026)
!4211 = !DILocation(line: 152, column: 27, scope: !4026)
!4212 = !DILocation(line: 152, column: 2, scope: !4026)
!4213 = !DILocation(line: 152, column: 9, scope: !4026)
!4214 = !DILocation(line: 152, column: 25, scope: !4026)
!4215 = !DILocation(line: 153, column: 6, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 153, column: 6)
!4217 = !DILocation(line: 153, column: 14, scope: !4216)
!4218 = !DILocation(line: 153, column: 6, scope: !4026)
!4219 = !DILocation(line: 154, column: 3, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 153, column: 20)
!4221 = !DILocation(line: 154, column: 10, scope: !4220)
!4222 = !DILocation(line: 154, column: 25, scope: !4220)
!4223 = !DILocation(line: 155, column: 3, scope: !4220)
!4224 = !DILocation(line: 155, column: 10, scope: !4220)
!4225 = !DILocation(line: 155, column: 18, scope: !4220)
!4226 = !DILocation(line: 156, column: 2, scope: !4220)
!4227 = !DILocation(line: 157, column: 3, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 156, column: 9)
!4229 = !DILocation(line: 157, column: 10, scope: !4228)
!4230 = !DILocation(line: 157, column: 25, scope: !4228)
!4231 = !DILocation(line: 158, column: 3, scope: !4228)
!4232 = !DILocation(line: 158, column: 10, scope: !4228)
!4233 = !DILocation(line: 158, column: 18, scope: !4228)
!4234 = !DILocation(line: 160, column: 6, scope: !4026)
!4235 = !DILocation(line: 162, column: 14, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 162, column: 6)
!4237 = !DILocation(line: 162, column: 21, scope: !4236)
!4238 = !DILocation(line: 162, column: 6, scope: !4236)
!4239 = !DILocation(line: 162, column: 35, scope: !4236)
!4240 = !DILocation(line: 162, column: 42, scope: !4236)
!4241 = !DILocation(line: 162, column: 32, scope: !4236)
!4242 = !DILocation(line: 163, column: 27, scope: !4236)
!4243 = !DILocation(line: 163, column: 18, scope: !4236)
!4244 = !DILocation(line: 163, column: 32, scope: !4236)
!4245 = !DILocation(line: 163, column: 38, scope: !4236)
!4246 = !DILocation(line: 163, column: 6, scope: !4236)
!4247 = !DILocation(line: 162, column: 61, scope: !4236)
!4248 = !DILocation(line: 162, column: 6, scope: !4026)
!4249 = !DILocation(line: 164, column: 3, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 163, column: 46)
!4251 = !DILocation(line: 167, column: 3, scope: !4250)
!4252 = !DILocation(line: 169, column: 6, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 169, column: 6)
!4254 = !DILocation(line: 169, column: 13, scope: !4253)
!4255 = !DILocation(line: 169, column: 26, scope: !4253)
!4256 = !DILocation(line: 169, column: 30, scope: !4253)
!4257 = !DILocation(line: 169, column: 37, scope: !4253)
!4258 = !DILocation(line: 169, column: 50, scope: !4253)
!4259 = !DILocation(line: 169, column: 64, scope: !4253)
!4260 = !DILocation(line: 170, column: 6, scope: !4253)
!4261 = !DILocation(line: 170, column: 13, scope: !4253)
!4262 = !DILocation(line: 170, column: 29, scope: !4253)
!4263 = !DILocation(line: 170, column: 36, scope: !4253)
!4264 = !DILocation(line: 170, column: 26, scope: !4253)
!4265 = !DILocation(line: 169, column: 6, scope: !4026)
!4266 = !DILocation(line: 171, column: 3, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 170, column: 49)
!4268 = !DILocation(line: 173, column: 3, scope: !4267)
!4269 = !DILocation(line: 175, column: 6, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 175, column: 6)
!4271 = !DILocation(line: 175, column: 13, scope: !4270)
!4272 = !DILocation(line: 175, column: 28, scope: !4270)
!4273 = !DILocation(line: 175, column: 32, scope: !4270)
!4274 = !DILocation(line: 175, column: 39, scope: !4270)
!4275 = !DILocation(line: 175, column: 54, scope: !4270)
!4276 = !DILocation(line: 175, column: 68, scope: !4270)
!4277 = !DILocation(line: 176, column: 6, scope: !4270)
!4278 = !DILocation(line: 176, column: 13, scope: !4270)
!4279 = !DILocation(line: 176, column: 31, scope: !4270)
!4280 = !DILocation(line: 176, column: 38, scope: !4270)
!4281 = !DILocation(line: 176, column: 28, scope: !4270)
!4282 = !DILocation(line: 175, column: 6, scope: !4026)
!4283 = !DILocation(line: 177, column: 3, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 176, column: 51)
!4285 = !DILocation(line: 180, column: 3, scope: !4284)
!4286 = !DILocation(line: 182, column: 6, scope: !4026)
!4287 = !DILocation(line: 182, column: 2, scope: !4026)
!4288 = !DILocation(line: 183, column: 1, scope: !4026)
!4289 = !DILocation(line: 184, column: 6, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 184, column: 6)
!4291 = !DILocation(line: 184, column: 6, scope: !4026)
!4292 = !DILocation(line: 185, column: 9, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 184, column: 11)
!4294 = !DILocation(line: 185, column: 15, scope: !4293)
!4295 = !DILocation(line: 185, column: 3, scope: !4293)
!4296 = !DILocation(line: 186, column: 3, scope: !4293)
!4297 = !DILocation(line: 186, column: 9, scope: !4293)
!4298 = !DILocation(line: 186, column: 18, scope: !4293)
!4299 = !DILocation(line: 187, column: 2, scope: !4293)
!4300 = !DILocation(line: 188, column: 1, scope: !4026)
!4301 = !DILocation(line: 189, column: 11, scope: !4026)
!4302 = !DILocation(line: 189, column: 18, scope: !4026)
!4303 = !DILocation(line: 189, column: 2, scope: !4026)
!4304 = !DILocation(line: 190, column: 9, scope: !4026)
!4305 = !DILocation(line: 191, column: 1, scope: !4026)
!4306 = !DILocation(line: 190, column: 2, scope: !4026)
!4307 = distinct !DISubprogram(name: "v2_write_file_info", scope: !3, file: !3, line: 194, type: !513, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4308)
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4315}
!4309 = !DILocalVariable(name: "sb", arg: 1, scope: !4307, file: !3, line: 194, type: !420)
!4310 = !DILocalVariable(name: "type", arg: 2, scope: !4307, file: !3, line: 194, type: !142)
!4311 = !DILocalVariable(name: "dinfo", scope: !4307, file: !3, line: 196, type: !4031)
!4312 = !DILocalVariable(name: "dqopt", scope: !4307, file: !3, line: 197, type: !4041)
!4313 = !DILocalVariable(name: "info", scope: !4307, file: !3, line: 198, type: !4043)
!4314 = !DILocalVariable(name: "qinfo", scope: !4307, file: !3, line: 199, type: !4045)
!4315 = !DILocalVariable(name: "size", scope: !4307, file: !3, line: 200, type: !221)
!4316 = !DILocation(line: 194, column: 51, scope: !4307)
!4317 = !DILocation(line: 194, column: 59, scope: !4307)
!4318 = !DILocation(line: 196, column: 2, scope: !4307)
!4319 = !DILocation(line: 196, column: 24, scope: !4307)
!4320 = !DILocation(line: 197, column: 2, scope: !4307)
!4321 = !DILocation(line: 197, column: 21, scope: !4307)
!4322 = !DILocation(line: 197, column: 38, scope: !4307)
!4323 = !DILocation(line: 197, column: 29, scope: !4307)
!4324 = !DILocation(line: 198, column: 2, scope: !4307)
!4325 = !DILocation(line: 198, column: 21, scope: !4307)
!4326 = !DILocation(line: 198, column: 29, scope: !4307)
!4327 = !DILocation(line: 198, column: 36, scope: !4307)
!4328 = !DILocation(line: 198, column: 41, scope: !4307)
!4329 = !DILocation(line: 199, column: 2, scope: !4307)
!4330 = !DILocation(line: 199, column: 27, scope: !4307)
!4331 = !DILocation(line: 199, column: 35, scope: !4307)
!4332 = !DILocation(line: 199, column: 41, scope: !4307)
!4333 = !DILocation(line: 200, column: 2, scope: !4307)
!4334 = !DILocation(line: 200, column: 10, scope: !4307)
!4335 = !DILocation(line: 202, column: 14, scope: !4307)
!4336 = !DILocation(line: 202, column: 21, scope: !4307)
!4337 = !DILocation(line: 202, column: 2, scope: !4307)
!4338 = !DILocation(line: 203, column: 2, scope: !4307)
!4339 = !DILocation(line: 204, column: 2, scope: !4307)
!4340 = !DILocation(line: 204, column: 8, scope: !4307)
!4341 = !DILocation(line: 204, column: 18, scope: !4307)
!4342 = !DILocation(line: 205, column: 21, scope: !4307)
!4343 = !DILocation(line: 205, column: 8, scope: !4307)
!4344 = !DILocation(line: 205, column: 19, scope: !4307)
!4345 = !DILocation(line: 206, column: 21, scope: !4307)
!4346 = !DILocation(line: 206, column: 8, scope: !4307)
!4347 = !DILocation(line: 206, column: 19, scope: !4307)
!4348 = !DILocation(line: 208, column: 8, scope: !4307)
!4349 = !DILocation(line: 208, column: 18, scope: !4307)
!4350 = !DILocation(line: 209, column: 2, scope: !4307)
!4351 = !DILocation(line: 210, column: 21, scope: !4307)
!4352 = !DILocation(line: 210, column: 8, scope: !4307)
!4353 = !DILocation(line: 210, column: 19, scope: !4307)
!4354 = !DILocation(line: 211, column: 23, scope: !4307)
!4355 = !DILocation(line: 211, column: 8, scope: !4307)
!4356 = !DILocation(line: 211, column: 21, scope: !4307)
!4357 = !DILocation(line: 212, column: 25, scope: !4307)
!4358 = !DILocation(line: 212, column: 8, scope: !4307)
!4359 = !DILocation(line: 212, column: 23, scope: !4307)
!4360 = !DILocation(line: 213, column: 9, scope: !4307)
!4361 = !DILocation(line: 213, column: 13, scope: !4307)
!4362 = !DILocation(line: 213, column: 19, scope: !4307)
!4363 = !DILocation(line: 213, column: 31, scope: !4307)
!4364 = !DILocation(line: 213, column: 35, scope: !4307)
!4365 = !DILocation(line: 213, column: 7, scope: !4307)
!4366 = !DILocation(line: 215, column: 12, scope: !4307)
!4367 = !DILocation(line: 215, column: 19, scope: !4307)
!4368 = !DILocation(line: 215, column: 2, scope: !4307)
!4369 = !DILocation(line: 216, column: 6, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 216, column: 6)
!4371 = !DILocation(line: 216, column: 11, scope: !4370)
!4372 = !DILocation(line: 216, column: 6, scope: !4307)
!4373 = !DILocation(line: 217, column: 3, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 216, column: 45)
!4375 = !DILocation(line: 218, column: 10, scope: !4374)
!4376 = !DILocation(line: 218, column: 15, scope: !4374)
!4377 = !DILocation(line: 218, column: 21, scope: !4374)
!4378 = !DILocation(line: 218, column: 3, scope: !4374)
!4379 = !DILocation(line: 220, column: 2, scope: !4307)
!4380 = !DILocation(line: 221, column: 1, scope: !4307)
!4381 = distinct !DISubprogram(name: "v2_free_file_info", scope: !3, file: !3, line: 383, type: !513, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4382)
!4382 = !{!4383, !4384}
!4383 = !DILocalVariable(name: "sb", arg: 1, scope: !4381, file: !3, line: 383, type: !420)
!4384 = !DILocalVariable(name: "type", arg: 2, scope: !4381, file: !3, line: 383, type: !142)
!4385 = !DILocation(line: 383, column: 50, scope: !4381)
!4386 = !DILocation(line: 383, column: 58, scope: !4381)
!4387 = !DILocation(line: 385, column: 18, scope: !4381)
!4388 = !DILocation(line: 385, column: 22, scope: !4381)
!4389 = !DILocation(line: 385, column: 8, scope: !4381)
!4390 = !DILocation(line: 385, column: 29, scope: !4381)
!4391 = !DILocation(line: 385, column: 2, scope: !4381)
!4392 = !DILocation(line: 386, column: 2, scope: !4381)
!4393 = distinct !DISubprogram(name: "v2_read_dquot", scope: !3, file: !3, line: 330, type: !649, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4394)
!4394 = !{!4395, !4396, !4397}
!4395 = !DILocalVariable(name: "dquot", arg: 1, scope: !4393, file: !3, line: 330, type: !560)
!4396 = !DILocalVariable(name: "dqopt", scope: !4393, file: !3, line: 332, type: !4041)
!4397 = !DILocalVariable(name: "ret", scope: !4393, file: !3, line: 333, type: !142)
!4398 = !DILocation(line: 330, column: 40, scope: !4393)
!4399 = !DILocation(line: 332, column: 2, scope: !4393)
!4400 = !DILocation(line: 332, column: 21, scope: !4393)
!4401 = !DILocation(line: 332, column: 38, scope: !4393)
!4402 = !DILocation(line: 332, column: 45, scope: !4393)
!4403 = !DILocation(line: 332, column: 29, scope: !4393)
!4404 = !DILocation(line: 333, column: 2, scope: !4393)
!4405 = !DILocation(line: 333, column: 6, scope: !4393)
!4406 = !DILocation(line: 335, column: 13, scope: !4393)
!4407 = !DILocation(line: 335, column: 20, scope: !4393)
!4408 = !DILocation(line: 335, column: 2, scope: !4393)
!4409 = !DILocation(line: 337, column: 14, scope: !4393)
!4410 = !DILocation(line: 337, column: 21, scope: !4393)
!4411 = !DILocation(line: 337, column: 28, scope: !4393)
!4412 = !DILocation(line: 337, column: 35, scope: !4393)
!4413 = !DILocation(line: 337, column: 41, scope: !4393)
!4414 = !DILocation(line: 337, column: 4, scope: !4393)
!4415 = !DILocation(line: 337, column: 48, scope: !4393)
!4416 = !DILocation(line: 338, column: 4, scope: !4393)
!4417 = !DILocation(line: 336, column: 8, scope: !4393)
!4418 = !DILocation(line: 336, column: 6, scope: !4393)
!4419 = !DILocation(line: 339, column: 11, scope: !4393)
!4420 = !DILocation(line: 339, column: 18, scope: !4393)
!4421 = !DILocation(line: 339, column: 2, scope: !4393)
!4422 = !DILocation(line: 340, column: 9, scope: !4393)
!4423 = !DILocation(line: 341, column: 1, scope: !4393)
!4424 = !DILocation(line: 340, column: 2, scope: !4393)
!4425 = distinct !DISubprogram(name: "v2_write_dquot", scope: !3, file: !3, line: 343, type: !649, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4426)
!4426 = !{!4427, !4428, !4429, !4430}
!4427 = !DILocalVariable(name: "dquot", arg: 1, scope: !4425, file: !3, line: 343, type: !560)
!4428 = !DILocalVariable(name: "dqopt", scope: !4425, file: !3, line: 345, type: !4041)
!4429 = !DILocalVariable(name: "ret", scope: !4425, file: !3, line: 346, type: !142)
!4430 = !DILocalVariable(name: "alloc", scope: !4425, file: !3, line: 347, type: !1389)
!4431 = !DILocation(line: 343, column: 41, scope: !4425)
!4432 = !DILocation(line: 345, column: 2, scope: !4425)
!4433 = !DILocation(line: 345, column: 21, scope: !4425)
!4434 = !DILocation(line: 345, column: 38, scope: !4425)
!4435 = !DILocation(line: 345, column: 45, scope: !4425)
!4436 = !DILocation(line: 345, column: 29, scope: !4425)
!4437 = !DILocation(line: 346, column: 2, scope: !4425)
!4438 = !DILocation(line: 346, column: 6, scope: !4425)
!4439 = !DILocation(line: 347, column: 2, scope: !4425)
!4440 = !DILocation(line: 347, column: 7, scope: !4425)
!4441 = !DILocation(line: 355, column: 7, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 355, column: 6)
!4443 = !DILocation(line: 355, column: 14, scope: !4442)
!4444 = !DILocation(line: 355, column: 6, scope: !4425)
!4445 = !DILocation(line: 356, column: 9, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 355, column: 22)
!4447 = !DILocation(line: 357, column: 15, scope: !4446)
!4448 = !DILocation(line: 357, column: 22, scope: !4446)
!4449 = !DILocation(line: 357, column: 3, scope: !4446)
!4450 = !DILocation(line: 358, column: 2, scope: !4446)
!4451 = !DILocation(line: 359, column: 14, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 358, column: 9)
!4453 = !DILocation(line: 359, column: 21, scope: !4452)
!4454 = !DILocation(line: 359, column: 3, scope: !4452)
!4455 = !DILocation(line: 362, column: 14, scope: !4425)
!4456 = !DILocation(line: 362, column: 21, scope: !4425)
!4457 = !DILocation(line: 362, column: 28, scope: !4425)
!4458 = !DILocation(line: 362, column: 35, scope: !4425)
!4459 = !DILocation(line: 362, column: 41, scope: !4425)
!4460 = !DILocation(line: 362, column: 4, scope: !4425)
!4461 = !DILocation(line: 362, column: 48, scope: !4425)
!4462 = !DILocation(line: 363, column: 4, scope: !4425)
!4463 = !DILocation(line: 361, column: 8, scope: !4425)
!4464 = !DILocation(line: 361, column: 6, scope: !4425)
!4465 = !DILocation(line: 364, column: 6, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 364, column: 6)
!4467 = !{i8 0, i8 2}
!4468 = !DILocation(line: 364, column: 6, scope: !4425)
!4469 = !DILocation(line: 365, column: 13, scope: !4466)
!4470 = !DILocation(line: 365, column: 20, scope: !4466)
!4471 = !DILocation(line: 365, column: 3, scope: !4466)
!4472 = !DILocation(line: 367, column: 12, scope: !4466)
!4473 = !DILocation(line: 367, column: 19, scope: !4466)
!4474 = !DILocation(line: 367, column: 3, scope: !4466)
!4475 = !DILocation(line: 368, column: 9, scope: !4425)
!4476 = !DILocation(line: 369, column: 1, scope: !4425)
!4477 = !DILocation(line: 368, column: 2, scope: !4425)
!4478 = distinct !DISubprogram(name: "v2_release_dquot", scope: !3, file: !3, line: 371, type: !649, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4479)
!4479 = !{!4480, !4481, !4482}
!4480 = !DILocalVariable(name: "dquot", arg: 1, scope: !4478, file: !3, line: 371, type: !560)
!4481 = !DILocalVariable(name: "dqopt", scope: !4478, file: !3, line: 373, type: !4041)
!4482 = !DILocalVariable(name: "ret", scope: !4478, file: !3, line: 374, type: !142)
!4483 = !DILocation(line: 371, column: 43, scope: !4478)
!4484 = !DILocation(line: 373, column: 2, scope: !4478)
!4485 = !DILocation(line: 373, column: 21, scope: !4478)
!4486 = !DILocation(line: 373, column: 38, scope: !4478)
!4487 = !DILocation(line: 373, column: 45, scope: !4478)
!4488 = !DILocation(line: 373, column: 29, scope: !4478)
!4489 = !DILocation(line: 374, column: 2, scope: !4478)
!4490 = !DILocation(line: 374, column: 6, scope: !4478)
!4491 = !DILocation(line: 376, column: 14, scope: !4478)
!4492 = !DILocation(line: 376, column: 21, scope: !4478)
!4493 = !DILocation(line: 376, column: 2, scope: !4478)
!4494 = !DILocation(line: 377, column: 38, scope: !4478)
!4495 = !DILocation(line: 377, column: 45, scope: !4478)
!4496 = !DILocation(line: 377, column: 52, scope: !4478)
!4497 = !DILocation(line: 377, column: 59, scope: !4478)
!4498 = !DILocation(line: 377, column: 65, scope: !4478)
!4499 = !DILocation(line: 377, column: 28, scope: !4478)
!4500 = !DILocation(line: 377, column: 72, scope: !4478)
!4501 = !DILocation(line: 377, column: 82, scope: !4478)
!4502 = !DILocation(line: 377, column: 8, scope: !4478)
!4503 = !DILocation(line: 377, column: 6, scope: !4478)
!4504 = !DILocation(line: 378, column: 12, scope: !4478)
!4505 = !DILocation(line: 378, column: 19, scope: !4478)
!4506 = !DILocation(line: 378, column: 2, scope: !4478)
!4507 = !DILocation(line: 380, column: 9, scope: !4478)
!4508 = !DILocation(line: 381, column: 1, scope: !4478)
!4509 = !DILocation(line: 380, column: 2, scope: !4478)
!4510 = distinct !DISubprogram(name: "v2_get_next_id", scope: !3, file: !3, line: 389, type: !679, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4511)
!4511 = !{!4512, !4513, !4514, !4515}
!4512 = !DILocalVariable(name: "sb", arg: 1, scope: !4510, file: !3, line: 389, type: !420)
!4513 = !DILocalVariable(name: "qid", arg: 2, scope: !4510, file: !3, line: 389, type: !681)
!4514 = !DILocalVariable(name: "dqopt", scope: !4510, file: !3, line: 391, type: !4041)
!4515 = !DILocalVariable(name: "ret", scope: !4510, file: !3, line: 392, type: !142)
!4516 = !DILocation(line: 389, column: 47, scope: !4510)
!4517 = !DILocation(line: 389, column: 64, scope: !4510)
!4518 = !DILocation(line: 391, column: 2, scope: !4510)
!4519 = !DILocation(line: 391, column: 21, scope: !4510)
!4520 = !DILocation(line: 391, column: 38, scope: !4510)
!4521 = !DILocation(line: 391, column: 29, scope: !4510)
!4522 = !DILocation(line: 392, column: 2, scope: !4510)
!4523 = !DILocation(line: 392, column: 6, scope: !4510)
!4524 = !DILocation(line: 394, column: 13, scope: !4510)
!4525 = !DILocation(line: 394, column: 20, scope: !4510)
!4526 = !DILocation(line: 394, column: 2, scope: !4510)
!4527 = !DILocation(line: 395, column: 36, scope: !4510)
!4528 = !DILocation(line: 395, column: 40, scope: !4510)
!4529 = !DILocation(line: 395, column: 45, scope: !4510)
!4530 = !DILocation(line: 395, column: 26, scope: !4510)
!4531 = !DILocation(line: 395, column: 52, scope: !4510)
!4532 = !DILocation(line: 395, column: 62, scope: !4510)
!4533 = !DILocation(line: 395, column: 8, scope: !4510)
!4534 = !DILocation(line: 395, column: 6, scope: !4510)
!4535 = !DILocation(line: 396, column: 11, scope: !4510)
!4536 = !DILocation(line: 396, column: 18, scope: !4510)
!4537 = !DILocation(line: 396, column: 2, scope: !4510)
!4538 = !DILocation(line: 397, column: 9, scope: !4510)
!4539 = !DILocation(line: 398, column: 1, scope: !4510)
!4540 = !DILocation(line: 397, column: 2, scope: !4510)
!4541 = distinct !DISubprogram(name: "v2_read_header", scope: !3, file: !3, line: 57, type: !4542, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4545)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!142, !420, !142, !4544}
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!4545 = !{!4546, !4547, !4548, !4549}
!4546 = !DILocalVariable(name: "sb", arg: 1, scope: !4541, file: !3, line: 57, type: !420)
!4547 = !DILocalVariable(name: "type", arg: 2, scope: !4541, file: !3, line: 57, type: !142)
!4548 = !DILocalVariable(name: "dqhead", arg: 3, scope: !4541, file: !3, line: 58, type: !4544)
!4549 = !DILocalVariable(name: "size", scope: !4541, file: !3, line: 60, type: !221)
!4550 = !DILocation(line: 57, column: 47, scope: !4541)
!4551 = !DILocation(line: 57, column: 55, scope: !4541)
!4552 = !DILocation(line: 58, column: 31, scope: !4541)
!4553 = !DILocation(line: 60, column: 2, scope: !4541)
!4554 = !DILocation(line: 60, column: 10, scope: !4541)
!4555 = !DILocation(line: 62, column: 9, scope: !4541)
!4556 = !DILocation(line: 62, column: 13, scope: !4541)
!4557 = !DILocation(line: 62, column: 19, scope: !4541)
!4558 = !DILocation(line: 62, column: 30, scope: !4541)
!4559 = !DILocation(line: 62, column: 34, scope: !4541)
!4560 = !DILocation(line: 62, column: 48, scope: !4541)
!4561 = !DILocation(line: 62, column: 7, scope: !4541)
!4562 = !DILocation(line: 64, column: 6, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 64, column: 6)
!4564 = !DILocation(line: 64, column: 11, scope: !4563)
!4565 = !DILocation(line: 64, column: 6, scope: !4541)
!4566 = !DILocation(line: 65, column: 3, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 64, column: 47)
!4568 = !DILocation(line: 67, column: 7, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 67, column: 7)
!4570 = !DILocation(line: 67, column: 12, scope: !4569)
!4571 = !DILocation(line: 67, column: 7, scope: !4567)
!4572 = !DILocation(line: 68, column: 11, scope: !4569)
!4573 = !DILocation(line: 68, column: 4, scope: !4569)
!4574 = !DILocation(line: 69, column: 3, scope: !4567)
!4575 = !DILocation(line: 71, column: 2, scope: !4541)
!4576 = !DILocation(line: 72, column: 1, scope: !4541)
!4577 = !DISubprogram(name: "__quota_error", scope: !4578, file: !4578, line: 37, type: !4579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4578 = !DIFile(filename: "./include/linux/quotaops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6dc28cea268ecb45653da7e53975c60c")
!4579 = !DISubroutineType(types: !4580)
!4580 = !{null, !420, !107, !107, null}
!4581 = distinct !DISubprogram(name: "sb_dqopt", scope: !4578, file: !4578, line: 17, type: !4582, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!4041, !420}
!4584 = !{!4585}
!4585 = !DILocalVariable(name: "sb", arg: 1, scope: !4581, file: !4578, line: 17, type: !420)
!4586 = !DILocation(line: 17, column: 63, scope: !4581)
!4587 = !DILocation(line: 19, column: 10, scope: !4581)
!4588 = !DILocation(line: 19, column: 14, scope: !4581)
!4589 = !DILocation(line: 19, column: 2, scope: !4581)
!4590 = !DISubprogram(name: "down_read", scope: !782, file: !782, line: 175, type: !4591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{null, !4593}
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!4594 = distinct !DISubprogram(name: "kmalloc", scope: !69, file: !69, line: 591, type: !4595, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4597)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!82, !236, !633}
!4597 = !{!4598, !4599, !4600}
!4598 = !DILocalVariable(name: "size", arg: 1, scope: !4594, file: !69, line: 591, type: !236)
!4599 = !DILocalVariable(name: "flags", arg: 2, scope: !4594, file: !69, line: 591, type: !633)
!4600 = !DILocalVariable(name: "index", scope: !4601, file: !69, line: 594, type: !7)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !69, line: 593, column: 42)
!4602 = distinct !DILexicalBlock(scope: !4594, file: !69, line: 593, column: 6)
!4603 = !DILocation(line: 591, column: 61, scope: !4594)
!4604 = !DILocation(line: 591, column: 73, scope: !4594)
!4605 = !DILocation(line: 593, column: 27, scope: !4602)
!4606 = !DILocation(line: 593, column: 6, scope: !4602)
!4607 = !DILocation(line: 593, column: 33, scope: !4602)
!4608 = !DILocation(line: 593, column: 36, scope: !4602)
!4609 = !DILocation(line: 593, column: 6, scope: !4594)
!4610 = !DILocation(line: 594, column: 3, scope: !4601)
!4611 = !DILocation(line: 594, column: 16, scope: !4601)
!4612 = !DILocation(line: 596, column: 7, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4601, file: !69, line: 596, column: 7)
!4614 = !DILocation(line: 596, column: 12, scope: !4613)
!4615 = !DILocation(line: 596, column: 7, scope: !4601)
!4616 = !DILocation(line: 597, column: 25, scope: !4613)
!4617 = !DILocation(line: 597, column: 31, scope: !4613)
!4618 = !DILocation(line: 597, column: 11, scope: !4613)
!4619 = !DILocation(line: 597, column: 4, scope: !4613)
!4620 = !DILocation(line: 599, column: 11, scope: !4601)
!4621 = !DILocation(line: 599, column: 9, scope: !4601)
!4622 = !DILocation(line: 601, column: 33, scope: !4601)
!4623 = !DILocation(line: 601, column: 40, scope: !4601)
!4624 = !DILocation(line: 601, column: 20, scope: !4601)
!4625 = !DILocation(line: 601, column: 5, scope: !4601)
!4626 = !DILocation(line: 601, column: 51, scope: !4601)
!4627 = !DILocation(line: 602, column: 5, scope: !4601)
!4628 = !DILocation(line: 602, column: 12, scope: !4601)
!4629 = !DILocation(line: 600, column: 10, scope: !4601)
!4630 = !DILocation(line: 600, column: 3, scope: !4601)
!4631 = !DILocation(line: 603, column: 2, scope: !4602)
!4632 = !DILocation(line: 604, column: 19, scope: !4594)
!4633 = !DILocation(line: 604, column: 25, scope: !4594)
!4634 = !DILocation(line: 604, column: 9, scope: !4594)
!4635 = !DILocation(line: 604, column: 2, scope: !4594)
!4636 = !DILocation(line: 605, column: 1, scope: !4594)
!4637 = distinct !DISubprogram(name: "qtree_depth", scope: !3933, file: !3933, line: 47, type: !4638, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4640)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!142, !4045}
!4640 = !{!4641, !4642, !4643, !4644}
!4641 = !DILocalVariable(name: "info", arg: 1, scope: !4637, file: !3933, line: 47, type: !4045)
!4642 = !DILocalVariable(name: "epb", scope: !4637, file: !3933, line: 49, type: !7)
!4643 = !DILocalVariable(name: "entries", scope: !4637, file: !3933, line: 50, type: !344)
!4644 = !DILocalVariable(name: "i", scope: !4637, file: !3933, line: 51, type: !142)
!4645 = !DILocation(line: 47, column: 56, scope: !4637)
!4646 = !DILocation(line: 49, column: 2, scope: !4637)
!4647 = !DILocation(line: 49, column: 15, scope: !4637)
!4648 = !DILocation(line: 49, column: 21, scope: !4637)
!4649 = !DILocation(line: 49, column: 27, scope: !4637)
!4650 = !DILocation(line: 49, column: 41, scope: !4637)
!4651 = !DILocation(line: 50, column: 2, scope: !4637)
!4652 = !DILocation(line: 50, column: 21, scope: !4637)
!4653 = !DILocation(line: 50, column: 31, scope: !4637)
!4654 = !DILocation(line: 51, column: 2, scope: !4637)
!4655 = !DILocation(line: 51, column: 6, scope: !4637)
!4656 = !DILocation(line: 53, column: 9, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4637, file: !3933, line: 53, column: 2)
!4658 = !DILocation(line: 53, column: 7, scope: !4657)
!4659 = !DILocation(line: 53, column: 14, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4657, file: !3933, line: 53, column: 2)
!4661 = !DILocation(line: 53, column: 22, scope: !4660)
!4662 = !DILocation(line: 53, column: 2, scope: !4657)
!4663 = !DILocation(line: 54, column: 14, scope: !4660)
!4664 = !DILocation(line: 54, column: 11, scope: !4660)
!4665 = !DILocation(line: 54, column: 3, scope: !4660)
!4666 = !DILocation(line: 53, column: 39, scope: !4660)
!4667 = !DILocation(line: 53, column: 2, scope: !4660)
!4668 = distinct !{!4668, !4662, !4669, !4670, !4671}
!4669 = !DILocation(line: 54, column: 14, scope: !4657)
!4670 = !{!"llvm.loop.mustprogress"}
!4671 = !{!"llvm.loop.unroll.disable"}
!4672 = !DILocation(line: 55, column: 9, scope: !4637)
!4673 = !DILocation(line: 56, column: 1, scope: !4637)
!4674 = !DILocation(line: 55, column: 2, scope: !4637)
!4675 = distinct !DISubprogram(name: "i_size_read", scope: !35, file: !35, line: 893, type: !4676, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4678)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!430, !2931}
!4678 = !{!4679}
!4679 = !DILocalVariable(name: "inode", arg: 1, scope: !4675, file: !35, line: 893, type: !2931)
!4680 = !DILocation(line: 893, column: 54, scope: !4675)
!4681 = !DILocation(line: 912, column: 9, scope: !4675)
!4682 = !DILocation(line: 912, column: 16, scope: !4675)
!4683 = !DILocation(line: 912, column: 2, scope: !4675)
!4684 = !DISubprogram(name: "kfree", scope: !69, file: !69, line: 227, type: !4685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null, !1817}
!4687 = !DISubprogram(name: "up_read", scope: !782, file: !782, line: 198, type: !4591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4688 = !DISubprogram(name: "kmalloc_large", scope: !69, file: !69, line: 531, type: !4595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4689 = distinct !DISubprogram(name: "__kmalloc_index", scope: !69, file: !69, line: 444, type: !4690, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4692)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!7, !236, !1389}
!4692 = !{!4693, !4694}
!4693 = !DILocalVariable(name: "size", arg: 1, scope: !4689, file: !69, line: 444, type: !236)
!4694 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4689, file: !69, line: 445, type: !1389)
!4695 = !DILocation(line: 444, column: 60, scope: !4689)
!4696 = !DILocation(line: 445, column: 16, scope: !4689)
!4697 = !DILocation(line: 447, column: 7, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 447, column: 6)
!4699 = !DILocation(line: 447, column: 6, scope: !4689)
!4700 = !DILocation(line: 448, column: 3, scope: !4698)
!4701 = !DILocation(line: 450, column: 6, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 450, column: 6)
!4703 = !DILocation(line: 450, column: 11, scope: !4702)
!4704 = !DILocation(line: 450, column: 6, scope: !4689)
!4705 = !DILocation(line: 451, column: 3, scope: !4702)
!4706 = !DILocation(line: 453, column: 32, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 453, column: 6)
!4708 = !DILocation(line: 453, column: 37, scope: !4707)
!4709 = !DILocation(line: 453, column: 42, scope: !4707)
!4710 = !DILocation(line: 453, column: 45, scope: !4707)
!4711 = !DILocation(line: 453, column: 50, scope: !4707)
!4712 = !DILocation(line: 453, column: 6, scope: !4689)
!4713 = !DILocation(line: 454, column: 3, scope: !4707)
!4714 = !DILocation(line: 455, column: 32, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 455, column: 6)
!4716 = !DILocation(line: 455, column: 37, scope: !4715)
!4717 = !DILocation(line: 455, column: 43, scope: !4715)
!4718 = !DILocation(line: 455, column: 46, scope: !4715)
!4719 = !DILocation(line: 455, column: 51, scope: !4715)
!4720 = !DILocation(line: 455, column: 6, scope: !4689)
!4721 = !DILocation(line: 456, column: 3, scope: !4715)
!4722 = !DILocation(line: 457, column: 6, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 457, column: 6)
!4724 = !DILocation(line: 457, column: 11, scope: !4723)
!4725 = !DILocation(line: 457, column: 6, scope: !4689)
!4726 = !DILocation(line: 457, column: 26, scope: !4723)
!4727 = !DILocation(line: 458, column: 6, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 458, column: 6)
!4729 = !DILocation(line: 458, column: 11, scope: !4728)
!4730 = !DILocation(line: 458, column: 6, scope: !4689)
!4731 = !DILocation(line: 458, column: 26, scope: !4728)
!4732 = !DILocation(line: 459, column: 6, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 459, column: 6)
!4734 = !DILocation(line: 459, column: 11, scope: !4733)
!4735 = !DILocation(line: 459, column: 6, scope: !4689)
!4736 = !DILocation(line: 459, column: 26, scope: !4733)
!4737 = !DILocation(line: 460, column: 6, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 460, column: 6)
!4739 = !DILocation(line: 460, column: 11, scope: !4738)
!4740 = !DILocation(line: 460, column: 6, scope: !4689)
!4741 = !DILocation(line: 460, column: 26, scope: !4738)
!4742 = !DILocation(line: 461, column: 6, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 461, column: 6)
!4744 = !DILocation(line: 461, column: 11, scope: !4743)
!4745 = !DILocation(line: 461, column: 6, scope: !4689)
!4746 = !DILocation(line: 461, column: 26, scope: !4743)
!4747 = !DILocation(line: 462, column: 6, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 462, column: 6)
!4749 = !DILocation(line: 462, column: 11, scope: !4748)
!4750 = !DILocation(line: 462, column: 6, scope: !4689)
!4751 = !DILocation(line: 462, column: 26, scope: !4748)
!4752 = !DILocation(line: 463, column: 6, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 463, column: 6)
!4754 = !DILocation(line: 463, column: 11, scope: !4753)
!4755 = !DILocation(line: 463, column: 6, scope: !4689)
!4756 = !DILocation(line: 463, column: 26, scope: !4753)
!4757 = !DILocation(line: 464, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 464, column: 6)
!4759 = !DILocation(line: 464, column: 11, scope: !4758)
!4760 = !DILocation(line: 464, column: 6, scope: !4689)
!4761 = !DILocation(line: 464, column: 26, scope: !4758)
!4762 = !DILocation(line: 465, column: 6, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 465, column: 6)
!4764 = !DILocation(line: 465, column: 11, scope: !4763)
!4765 = !DILocation(line: 465, column: 6, scope: !4689)
!4766 = !DILocation(line: 465, column: 26, scope: !4763)
!4767 = !DILocation(line: 466, column: 6, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 466, column: 6)
!4769 = !DILocation(line: 466, column: 11, scope: !4768)
!4770 = !DILocation(line: 466, column: 6, scope: !4689)
!4771 = !DILocation(line: 466, column: 26, scope: !4768)
!4772 = !DILocation(line: 467, column: 6, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 467, column: 6)
!4774 = !DILocation(line: 467, column: 11, scope: !4773)
!4775 = !DILocation(line: 467, column: 6, scope: !4689)
!4776 = !DILocation(line: 467, column: 26, scope: !4773)
!4777 = !DILocation(line: 468, column: 6, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 468, column: 6)
!4779 = !DILocation(line: 468, column: 11, scope: !4778)
!4780 = !DILocation(line: 468, column: 6, scope: !4689)
!4781 = !DILocation(line: 468, column: 26, scope: !4778)
!4782 = !DILocation(line: 469, column: 6, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 469, column: 6)
!4784 = !DILocation(line: 469, column: 11, scope: !4783)
!4785 = !DILocation(line: 469, column: 6, scope: !4689)
!4786 = !DILocation(line: 469, column: 26, scope: !4783)
!4787 = !DILocation(line: 470, column: 6, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 470, column: 6)
!4789 = !DILocation(line: 470, column: 11, scope: !4788)
!4790 = !DILocation(line: 470, column: 6, scope: !4689)
!4791 = !DILocation(line: 470, column: 26, scope: !4788)
!4792 = !DILocation(line: 471, column: 6, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 471, column: 6)
!4794 = !DILocation(line: 471, column: 11, scope: !4793)
!4795 = !DILocation(line: 471, column: 6, scope: !4689)
!4796 = !DILocation(line: 471, column: 26, scope: !4793)
!4797 = !DILocation(line: 472, column: 6, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 472, column: 6)
!4799 = !DILocation(line: 472, column: 11, scope: !4798)
!4800 = !DILocation(line: 472, column: 6, scope: !4689)
!4801 = !DILocation(line: 472, column: 26, scope: !4798)
!4802 = !DILocation(line: 473, column: 6, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 473, column: 6)
!4804 = !DILocation(line: 473, column: 11, scope: !4803)
!4805 = !DILocation(line: 473, column: 6, scope: !4689)
!4806 = !DILocation(line: 473, column: 26, scope: !4803)
!4807 = !DILocation(line: 474, column: 6, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 474, column: 6)
!4809 = !DILocation(line: 474, column: 11, scope: !4808)
!4810 = !DILocation(line: 474, column: 6, scope: !4689)
!4811 = !DILocation(line: 474, column: 27, scope: !4808)
!4812 = !DILocation(line: 475, column: 6, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 475, column: 6)
!4814 = !DILocation(line: 475, column: 11, scope: !4813)
!4815 = !DILocation(line: 475, column: 6, scope: !4689)
!4816 = !DILocation(line: 475, column: 32, scope: !4813)
!4817 = !DILocation(line: 477, column: 50, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4689, file: !69, line: 477, column: 6)
!4819 = !DILocation(line: 477, column: 6, scope: !4689)
!4820 = !DILocation(line: 478, column: 3, scope: !4818)
!4821 = !DILocation(line: 478, column: 3, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !69, line: 478, column: 3)
!4823 = distinct !DILexicalBlock(scope: !4818, file: !69, line: 478, column: 3)
!4824 = !{i32 -2141712046}
!4825 = !DILocation(line: 478, column: 3, scope: !4823)
!4826 = !DILocation(line: 480, column: 3, scope: !4818)
!4827 = !DILocation(line: 480, column: 3, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4818, file: !69, line: 480, column: 3)
!4829 = !DILocation(line: 480, column: 3, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4828, file: !69, line: 480, column: 3)
!4831 = !DILocation(line: 480, column: 3, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4828, file: !69, line: 480, column: 3)
!4833 = !{i64 2153255453, i64 2153255482, i64 2153255528, i64 2153255586, i64 2153255640, i64 2153255694, i64 2153255749, i64 2153255780}
!4834 = !DILocation(line: 483, column: 2, scope: !4689)
!4835 = !DILocation(line: 484, column: 1, scope: !4689)
!4836 = !DISubprogram(name: "kmalloc_trace", scope: !69, file: !69, line: 525, type: !4837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!82, !4839, !633, !236}
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4841, line: 325, flags: DIFlagFwdDecl)
!4841 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4842 = distinct !DISubprogram(name: "kmalloc_type", scope: !69, file: !69, line: 401, type: !4843, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4845)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!68, !633, !239}
!4845 = !{!4846, !4847}
!4846 = !DILocalVariable(name: "flags", arg: 1, scope: !4842, file: !69, line: 401, type: !633)
!4847 = !DILocalVariable(name: "caller", arg: 2, scope: !4842, file: !69, line: 401, type: !239)
!4848 = !DILocation(line: 401, column: 67, scope: !4842)
!4849 = !DILocation(line: 401, column: 88, scope: !4842)
!4850 = !DILocation(line: 407, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4842, file: !69, line: 407, column: 6)
!4852 = !DILocation(line: 407, column: 6, scope: !4842)
!4853 = !DILocation(line: 413, column: 3, scope: !4851)
!4854 = !DILocation(line: 423, column: 38, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4842, file: !69, line: 423, column: 6)
!4856 = !DILocation(line: 423, column: 44, scope: !4855)
!4857 = !DILocation(line: 423, column: 6, scope: !4842)
!4858 = !DILocation(line: 424, column: 3, scope: !4855)
!4859 = !DILocation(line: 426, column: 3, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4842, file: !69, line: 425, column: 6)
!4861 = !DILocation(line: 429, column: 1, scope: !4842)
!4862 = !DISubprogram(name: "__kmalloc", scope: !69, file: !69, line: 488, type: !4595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4863 = !DISubprogram(name: "__compiletime_assert_245", scope: !69, file: !69, line: 478, type: !2214, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4864 = distinct !DISubprogram(name: "v2r0_mem2diskdqb", scope: !3, file: !3, line: 243, type: !3937, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4865)
!4865 = !{!4866, !4867, !4868, !4881, !4883}
!4866 = !DILocalVariable(name: "dp", arg: 1, scope: !4864, file: !3, line: 243, type: !82)
!4867 = !DILocalVariable(name: "dquot", arg: 2, scope: !4864, file: !3, line: 243, type: !560)
!4868 = !DILocalVariable(name: "d", scope: !4864, file: !3, line: 245, type: !4869)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v2r0_disk_dqblk", file: !3882, line: 38, size: 384, elements: !4871)
!4871 = !{!4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_id", scope: !4870, file: !3882, line: 39, baseType: !3848, size: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4870, file: !3882, line: 40, baseType: !3848, size: 32, offset: 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4870, file: !3882, line: 41, baseType: !3848, size: 32, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4870, file: !3882, line: 42, baseType: !3848, size: 32, offset: 96)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4870, file: !3882, line: 43, baseType: !3848, size: 32, offset: 128)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4870, file: !3882, line: 44, baseType: !3848, size: 32, offset: 160)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4870, file: !3882, line: 45, baseType: !3849, size: 64, offset: 192)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4870, file: !3882, line: 46, baseType: !3849, size: 64, offset: 256)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4870, file: !3882, line: 47, baseType: !3849, size: 64, offset: 320)
!4881 = !DILocalVariable(name: "m", scope: !4864, file: !3, line: 246, type: !4882)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!4883 = !DILocalVariable(name: "info", scope: !4864, file: !3, line: 247, type: !4045)
!4884 = !DILocation(line: 243, column: 36, scope: !4864)
!4885 = !DILocation(line: 243, column: 54, scope: !4864)
!4886 = !DILocation(line: 245, column: 2, scope: !4864)
!4887 = !DILocation(line: 245, column: 26, scope: !4864)
!4888 = !DILocation(line: 245, column: 30, scope: !4864)
!4889 = !DILocation(line: 246, column: 2, scope: !4864)
!4890 = !DILocation(line: 246, column: 20, scope: !4864)
!4891 = !DILocation(line: 246, column: 25, scope: !4864)
!4892 = !DILocation(line: 246, column: 32, scope: !4864)
!4893 = !DILocation(line: 247, column: 2, scope: !4864)
!4894 = !DILocation(line: 247, column: 27, scope: !4864)
!4895 = !DILocation(line: 248, column: 14, scope: !4864)
!4896 = !DILocation(line: 248, column: 21, scope: !4864)
!4897 = !DILocation(line: 248, column: 28, scope: !4864)
!4898 = !DILocation(line: 248, column: 35, scope: !4864)
!4899 = !DILocation(line: 248, column: 41, scope: !4864)
!4900 = !DILocation(line: 248, column: 4, scope: !4864)
!4901 = !DILocation(line: 248, column: 48, scope: !4864)
!4902 = !DILocation(line: 250, column: 22, scope: !4864)
!4903 = !DILocation(line: 250, column: 2, scope: !4864)
!4904 = !DILocation(line: 250, column: 5, scope: !4864)
!4905 = !DILocation(line: 250, column: 20, scope: !4864)
!4906 = !DILocation(line: 251, column: 22, scope: !4864)
!4907 = !DILocation(line: 251, column: 2, scope: !4864)
!4908 = !DILocation(line: 251, column: 5, scope: !4864)
!4909 = !DILocation(line: 251, column: 20, scope: !4864)
!4910 = !DILocation(line: 252, column: 21, scope: !4864)
!4911 = !DILocation(line: 252, column: 2, scope: !4864)
!4912 = !DILocation(line: 252, column: 5, scope: !4864)
!4913 = !DILocation(line: 252, column: 19, scope: !4864)
!4914 = !DILocation(line: 253, column: 17, scope: !4864)
!4915 = !DILocation(line: 253, column: 2, scope: !4864)
!4916 = !DILocation(line: 253, column: 5, scope: !4864)
!4917 = !DILocation(line: 253, column: 15, scope: !4864)
!4918 = !DILocation(line: 254, column: 22, scope: !4864)
!4919 = !DILocation(line: 254, column: 2, scope: !4864)
!4920 = !DILocation(line: 254, column: 5, scope: !4864)
!4921 = !DILocation(line: 254, column: 20, scope: !4864)
!4922 = !DILocation(line: 255, column: 22, scope: !4864)
!4923 = !DILocation(line: 255, column: 2, scope: !4864)
!4924 = !DILocation(line: 255, column: 5, scope: !4864)
!4925 = !DILocation(line: 255, column: 20, scope: !4864)
!4926 = !DILocation(line: 256, column: 20, scope: !4864)
!4927 = !DILocation(line: 256, column: 2, scope: !4864)
!4928 = !DILocation(line: 256, column: 5, scope: !4864)
!4929 = !DILocation(line: 256, column: 18, scope: !4864)
!4930 = !DILocation(line: 257, column: 17, scope: !4864)
!4931 = !DILocation(line: 257, column: 2, scope: !4864)
!4932 = !DILocation(line: 257, column: 5, scope: !4864)
!4933 = !DILocation(line: 257, column: 15, scope: !4864)
!4934 = !DILocation(line: 258, column: 14, scope: !4864)
!4935 = !DILocation(line: 258, column: 2, scope: !4864)
!4936 = !DILocation(line: 258, column: 5, scope: !4864)
!4937 = !DILocation(line: 258, column: 12, scope: !4864)
!4938 = !DILocation(line: 259, column: 25, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 259, column: 6)
!4940 = !DILocation(line: 259, column: 31, scope: !4939)
!4941 = !DILocation(line: 259, column: 6, scope: !4939)
!4942 = !DILocation(line: 259, column: 6, scope: !4864)
!4943 = !DILocation(line: 260, column: 3, scope: !4939)
!4944 = !DILocation(line: 260, column: 6, scope: !4939)
!4945 = !DILocation(line: 260, column: 16, scope: !4939)
!4946 = !DILocation(line: 261, column: 1, scope: !4864)
!4947 = distinct !DISubprogram(name: "v2r0_disk2memdqb", scope: !3, file: !3, line: 223, type: !3941, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4948)
!4948 = !{!4949, !4950, !4951, !4952, !4953}
!4949 = !DILocalVariable(name: "dquot", arg: 1, scope: !4947, file: !3, line: 223, type: !560)
!4950 = !DILocalVariable(name: "dp", arg: 2, scope: !4947, file: !3, line: 223, type: !82)
!4951 = !DILocalVariable(name: "d", scope: !4947, file: !3, line: 225, type: !4869)
!4952 = !DILocalVariable(name: "empty", scope: !4947, file: !3, line: 225, type: !4870)
!4953 = !DILocalVariable(name: "m", scope: !4947, file: !3, line: 226, type: !4882)
!4954 = !DILocation(line: 223, column: 44, scope: !4947)
!4955 = !DILocation(line: 223, column: 57, scope: !4947)
!4956 = !DILocation(line: 225, column: 2, scope: !4947)
!4957 = !DILocation(line: 225, column: 26, scope: !4947)
!4958 = !DILocation(line: 225, column: 30, scope: !4947)
!4959 = !DILocation(line: 225, column: 34, scope: !4947)
!4960 = !DILocation(line: 226, column: 2, scope: !4947)
!4961 = !DILocation(line: 226, column: 20, scope: !4947)
!4962 = !DILocation(line: 226, column: 25, scope: !4947)
!4963 = !DILocation(line: 226, column: 32, scope: !4947)
!4964 = !DILocation(line: 228, column: 22, scope: !4947)
!4965 = !DILocation(line: 228, column: 2, scope: !4947)
!4966 = !DILocation(line: 228, column: 5, scope: !4947)
!4967 = !DILocation(line: 228, column: 20, scope: !4947)
!4968 = !DILocation(line: 229, column: 22, scope: !4947)
!4969 = !DILocation(line: 229, column: 2, scope: !4947)
!4970 = !DILocation(line: 229, column: 5, scope: !4947)
!4971 = !DILocation(line: 229, column: 20, scope: !4947)
!4972 = !DILocation(line: 230, column: 21, scope: !4947)
!4973 = !DILocation(line: 230, column: 2, scope: !4947)
!4974 = !DILocation(line: 230, column: 5, scope: !4947)
!4975 = !DILocation(line: 230, column: 19, scope: !4947)
!4976 = !DILocation(line: 231, column: 17, scope: !4947)
!4977 = !DILocation(line: 231, column: 2, scope: !4947)
!4978 = !DILocation(line: 231, column: 5, scope: !4947)
!4979 = !DILocation(line: 231, column: 15, scope: !4947)
!4980 = !DILocation(line: 232, column: 31, scope: !4947)
!4981 = !DILocation(line: 232, column: 22, scope: !4947)
!4982 = !DILocation(line: 232, column: 2, scope: !4947)
!4983 = !DILocation(line: 232, column: 5, scope: !4947)
!4984 = !DILocation(line: 232, column: 20, scope: !4947)
!4985 = !DILocation(line: 233, column: 31, scope: !4947)
!4986 = !DILocation(line: 233, column: 22, scope: !4947)
!4987 = !DILocation(line: 233, column: 2, scope: !4947)
!4988 = !DILocation(line: 233, column: 5, scope: !4947)
!4989 = !DILocation(line: 233, column: 20, scope: !4947)
!4990 = !DILocation(line: 234, column: 20, scope: !4947)
!4991 = !DILocation(line: 234, column: 2, scope: !4947)
!4992 = !DILocation(line: 234, column: 5, scope: !4947)
!4993 = !DILocation(line: 234, column: 18, scope: !4947)
!4994 = !DILocation(line: 235, column: 17, scope: !4947)
!4995 = !DILocation(line: 235, column: 2, scope: !4947)
!4996 = !DILocation(line: 235, column: 5, scope: !4947)
!4997 = !DILocation(line: 235, column: 15, scope: !4947)
!4998 = !DILocation(line: 237, column: 2, scope: !4947)
!4999 = !DILocation(line: 238, column: 8, scope: !4947)
!5000 = !DILocation(line: 238, column: 18, scope: !4947)
!5001 = !DILocation(line: 239, column: 22, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 239, column: 6)
!5003 = !DILocation(line: 239, column: 7, scope: !5002)
!5004 = !DILocation(line: 239, column: 6, scope: !4947)
!5005 = !DILocation(line: 240, column: 3, scope: !5002)
!5006 = !DILocation(line: 240, column: 6, scope: !5002)
!5007 = !DILocation(line: 240, column: 16, scope: !5002)
!5008 = !DILocation(line: 241, column: 1, scope: !4947)
!5009 = distinct !DISubprogram(name: "v2r0_is_id", scope: !3, file: !3, line: 263, type: !3945, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5010)
!5010 = !{!5011, !5012, !5013, !5014}
!5011 = !DILocalVariable(name: "dp", arg: 1, scope: !5009, file: !3, line: 263, type: !82)
!5012 = !DILocalVariable(name: "dquot", arg: 2, scope: !5009, file: !3, line: 263, type: !560)
!5013 = !DILocalVariable(name: "d", scope: !5009, file: !3, line: 265, type: !4869)
!5014 = !DILocalVariable(name: "info", scope: !5009, file: !3, line: 266, type: !4045)
!5015 = !DILocation(line: 263, column: 29, scope: !5009)
!5016 = !DILocation(line: 263, column: 47, scope: !5009)
!5017 = !DILocation(line: 265, column: 2, scope: !5009)
!5018 = !DILocation(line: 265, column: 26, scope: !5009)
!5019 = !DILocation(line: 265, column: 30, scope: !5009)
!5020 = !DILocation(line: 266, column: 2, scope: !5009)
!5021 = !DILocation(line: 266, column: 27, scope: !5009)
!5022 = !DILocation(line: 267, column: 14, scope: !5009)
!5023 = !DILocation(line: 267, column: 21, scope: !5009)
!5024 = !DILocation(line: 267, column: 28, scope: !5009)
!5025 = !DILocation(line: 267, column: 35, scope: !5009)
!5026 = !DILocation(line: 267, column: 41, scope: !5009)
!5027 = !DILocation(line: 267, column: 4, scope: !5009)
!5028 = !DILocation(line: 267, column: 48, scope: !5009)
!5029 = !DILocation(line: 269, column: 25, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 269, column: 6)
!5031 = !DILocation(line: 269, column: 31, scope: !5030)
!5032 = !DILocation(line: 269, column: 6, scope: !5030)
!5033 = !DILocation(line: 269, column: 6, scope: !5009)
!5034 = !DILocation(line: 270, column: 3, scope: !5030)
!5035 = !DILocation(line: 271, column: 41, scope: !5009)
!5036 = !DILocation(line: 271, column: 48, scope: !5009)
!5037 = !DILocation(line: 271, column: 54, scope: !5009)
!5038 = !DILocation(line: 272, column: 5, scope: !5009)
!5039 = !DILocation(line: 271, column: 16, scope: !5009)
!5040 = !DILocation(line: 273, column: 9, scope: !5009)
!5041 = !DILocation(line: 273, column: 16, scope: !5009)
!5042 = !DILocation(line: 271, column: 9, scope: !5009)
!5043 = !DILocation(line: 271, column: 2, scope: !5009)
!5044 = !DILocation(line: 274, column: 1, scope: !5009)
!5045 = distinct !DISubprogram(name: "sb_dqinfo", scope: !4578, file: !4578, line: 122, type: !5046, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5048)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!4043, !420, !142}
!5048 = !{!5049, !5050}
!5049 = !DILocalVariable(name: "sb", arg: 1, scope: !5045, file: !4578, line: 122, type: !420)
!5050 = !DILocalVariable(name: "type", arg: 2, scope: !5045, file: !4578, line: 122, type: !142)
!5051 = !DILocation(line: 122, column: 64, scope: !5045)
!5052 = !DILocation(line: 122, column: 72, scope: !5045)
!5053 = !DILocation(line: 124, column: 18, scope: !5045)
!5054 = !DILocation(line: 124, column: 9, scope: !5045)
!5055 = !DILocation(line: 124, column: 23, scope: !5045)
!5056 = !DILocation(line: 124, column: 30, scope: !5045)
!5057 = !DILocation(line: 124, column: 28, scope: !5045)
!5058 = !DILocation(line: 124, column: 2, scope: !5045)
!5059 = distinct !DISubprogram(name: "v2_stoqb", scope: !3, file: !3, line: 47, type: !5060, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5062)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!613, !613}
!5062 = !{!5063}
!5063 = !DILocalVariable(name: "space", arg: 1, scope: !5059, file: !3, line: 47, type: !613)
!5064 = !DILocation(line: 47, column: 40, scope: !5059)
!5065 = !DILocation(line: 49, column: 10, scope: !5059)
!5066 = !DILocation(line: 49, column: 16, scope: !5059)
!5067 = !DILocation(line: 49, column: 34, scope: !5059)
!5068 = !DILocation(line: 49, column: 39, scope: !5059)
!5069 = !DILocation(line: 49, column: 2, scope: !5059)
!5070 = !DISubprogram(name: "from_kqid", scope: !40, file: !40, line: 79, type: !5071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!5073, !1472, !592}
!5073 = !DIDerivedType(tag: DW_TAG_typedef, name: "qid_t", file: !40, line: 65, baseType: !281)
!5074 = !DISubprogram(name: "qtree_entry_unused", scope: !3933, file: !3933, line: 46, type: !5075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!142, !4045, !189}
!5077 = distinct !DISubprogram(name: "v2_qbtos", scope: !3, file: !3, line: 52, type: !5060, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5078)
!5078 = !{!5079}
!5079 = !DILocalVariable(name: "blocks", arg: 1, scope: !5077, file: !3, line: 52, type: !613)
!5080 = !DILocation(line: 52, column: 40, scope: !5077)
!5081 = !DILocation(line: 54, column: 9, scope: !5077)
!5082 = !DILocation(line: 54, column: 16, scope: !5077)
!5083 = !DILocation(line: 54, column: 2, scope: !5077)
!5084 = !DISubprogram(name: "memcmp", scope: !5085, file: !5085, line: 196, type: !5086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5085 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!142, !1817, !1817, !237}
!5088 = !DISubprogram(name: "qid_eq", scope: !40, file: !40, line: 77, type: !5089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!1389, !592, !592}
!5091 = distinct !DISubprogram(name: "make_kqid", scope: !40, file: !40, line: 97, type: !5092, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5094)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!592, !1472, !39, !5073}
!5094 = !{!5095, !5096, !5097, !5098}
!5095 = !DILocalVariable(name: "from", arg: 1, scope: !5091, file: !40, line: 97, type: !1472)
!5096 = !DILocalVariable(name: "type", arg: 2, scope: !5091, file: !40, line: 98, type: !39)
!5097 = !DILocalVariable(name: "qid", arg: 3, scope: !5091, file: !40, line: 98, type: !5073)
!5098 = !DILocalVariable(name: "kqid", scope: !5091, file: !40, line: 100, type: !592)
!5099 = !DILocation(line: 97, column: 60, scope: !5091)
!5100 = !DILocation(line: 98, column: 25, scope: !5091)
!5101 = !DILocation(line: 98, column: 37, scope: !5091)
!5102 = !DILocation(line: 100, column: 14, scope: !5091)
!5103 = !DILocation(line: 102, column: 14, scope: !5091)
!5104 = !DILocation(line: 102, column: 7, scope: !5091)
!5105 = !DILocation(line: 102, column: 12, scope: !5091)
!5106 = !DILocation(line: 103, column: 10, scope: !5091)
!5107 = !DILocation(line: 103, column: 2, scope: !5091)
!5108 = !DILocation(line: 105, column: 8, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5091, file: !40, line: 103, column: 16)
!5110 = !DILocation(line: 105, column: 14, scope: !5109)
!5111 = !DILocation(line: 105, column: 24, scope: !5109)
!5112 = !DILocation(line: 105, column: 30, scope: !5109)
!5113 = !DILocation(line: 106, column: 3, scope: !5109)
!5114 = !DILocation(line: 108, column: 8, scope: !5109)
!5115 = !DILocation(line: 108, column: 14, scope: !5109)
!5116 = !DILocation(line: 108, column: 24, scope: !5109)
!5117 = !DILocation(line: 108, column: 30, scope: !5109)
!5118 = !DILocation(line: 109, column: 3, scope: !5109)
!5119 = !DILocation(line: 111, column: 8, scope: !5109)
!5120 = !DILocation(line: 111, column: 17, scope: !5109)
!5121 = !DILocation(line: 111, column: 30, scope: !5109)
!5122 = !DILocation(line: 111, column: 36, scope: !5109)
!5123 = !DILocation(line: 112, column: 3, scope: !5109)
!5124 = !DILocation(line: 114, column: 3, scope: !5109)
!5125 = !DILocation(line: 114, column: 3, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5109, file: !40, line: 114, column: 3)
!5127 = !DILocation(line: 114, column: 3, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5126, file: !40, line: 114, column: 3)
!5129 = !DILocation(line: 114, column: 3, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5126, file: !40, line: 114, column: 3)
!5131 = !{i64 2153319923, i64 2153319952, i64 2153319998, i64 2153320056, i64 2153320110, i64 2153320164, i64 2153320219, i64 2153320250}
!5132 = !DILocation(line: 115, column: 2, scope: !5109)
!5133 = !DILocation(line: 116, column: 2, scope: !5091)
!5134 = distinct !DISubprogram(name: "make_kuid", scope: !276, file: !276, line: 143, type: !5135, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5137)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!275, !1472, !280}
!5137 = !{!5138, !5139}
!5138 = !DILocalVariable(name: "from", arg: 1, scope: !5134, file: !276, line: 143, type: !1472)
!5139 = !DILocalVariable(name: "uid", arg: 2, scope: !5134, file: !276, line: 143, type: !280)
!5140 = !DILocation(line: 143, column: 55, scope: !5134)
!5141 = !DILocation(line: 143, column: 67, scope: !5134)
!5142 = !DILocation(line: 145, column: 9, scope: !5134)
!5143 = !DILocation(line: 145, column: 2, scope: !5134)
!5144 = distinct !DISubprogram(name: "make_kgid", scope: !276, file: !276, line: 148, type: !5145, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5147)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!284, !1472, !288}
!5147 = !{!5148, !5149}
!5148 = !DILocalVariable(name: "from", arg: 1, scope: !5144, file: !276, line: 148, type: !1472)
!5149 = !DILocalVariable(name: "gid", arg: 2, scope: !5144, file: !276, line: 148, type: !288)
!5150 = !DILocation(line: 148, column: 55, scope: !5144)
!5151 = !DILocation(line: 148, column: 67, scope: !5144)
!5152 = !DILocation(line: 150, column: 9, scope: !5144)
!5153 = !DILocation(line: 150, column: 2, scope: !5144)
!5154 = distinct !DISubprogram(name: "make_kprojid", scope: !601, file: !601, line: 65, type: !5155, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5157)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!600, !1472, !605}
!5157 = !{!5158, !5159}
!5158 = !DILocalVariable(name: "from", arg: 1, scope: !5154, file: !601, line: 65, type: !1472)
!5159 = !DILocalVariable(name: "projid", arg: 2, scope: !5154, file: !601, line: 65, type: !605)
!5160 = !DILocation(line: 65, column: 61, scope: !5154)
!5161 = !DILocation(line: 65, column: 76, scope: !5154)
!5162 = !DILocation(line: 67, column: 9, scope: !5154)
!5163 = !DILocation(line: 67, column: 2, scope: !5154)
!5164 = distinct !DISubprogram(name: "v2r1_mem2diskdqb", scope: !3, file: !3, line: 296, type: !3937, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5165)
!5165 = !{!5166, !5167, !5168, !5182, !5183}
!5166 = !DILocalVariable(name: "dp", arg: 1, scope: !5164, file: !3, line: 296, type: !82)
!5167 = !DILocalVariable(name: "dquot", arg: 2, scope: !5164, file: !3, line: 296, type: !560)
!5168 = !DILocalVariable(name: "d", scope: !5164, file: !3, line: 298, type: !5169)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v2r1_disk_dqblk", file: !3882, line: 50, size: 576, elements: !5171)
!5171 = !{!5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_id", scope: !5170, file: !3882, line: 51, baseType: !3848, size: 32)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_pad", scope: !5170, file: !3882, line: 52, baseType: !3848, size: 32, offset: 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !5170, file: !3882, line: 53, baseType: !3849, size: 64, offset: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !5170, file: !3882, line: 54, baseType: !3849, size: 64, offset: 128)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !5170, file: !3882, line: 55, baseType: !3849, size: 64, offset: 192)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !5170, file: !3882, line: 56, baseType: !3849, size: 64, offset: 256)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !5170, file: !3882, line: 57, baseType: !3849, size: 64, offset: 320)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !5170, file: !3882, line: 58, baseType: !3849, size: 64, offset: 384)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !5170, file: !3882, line: 59, baseType: !3849, size: 64, offset: 448)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !5170, file: !3882, line: 60, baseType: !3849, size: 64, offset: 512)
!5182 = !DILocalVariable(name: "m", scope: !5164, file: !3, line: 299, type: !4882)
!5183 = !DILocalVariable(name: "info", scope: !5164, file: !3, line: 300, type: !4045)
!5184 = !DILocation(line: 296, column: 36, scope: !5164)
!5185 = !DILocation(line: 296, column: 54, scope: !5164)
!5186 = !DILocation(line: 298, column: 2, scope: !5164)
!5187 = !DILocation(line: 298, column: 26, scope: !5164)
!5188 = !DILocation(line: 298, column: 30, scope: !5164)
!5189 = !DILocation(line: 299, column: 2, scope: !5164)
!5190 = !DILocation(line: 299, column: 20, scope: !5164)
!5191 = !DILocation(line: 299, column: 25, scope: !5164)
!5192 = !DILocation(line: 299, column: 32, scope: !5164)
!5193 = !DILocation(line: 300, column: 2, scope: !5164)
!5194 = !DILocation(line: 300, column: 27, scope: !5164)
!5195 = !DILocation(line: 301, column: 14, scope: !5164)
!5196 = !DILocation(line: 301, column: 21, scope: !5164)
!5197 = !DILocation(line: 301, column: 28, scope: !5164)
!5198 = !DILocation(line: 301, column: 35, scope: !5164)
!5199 = !DILocation(line: 301, column: 41, scope: !5164)
!5200 = !DILocation(line: 301, column: 4, scope: !5164)
!5201 = !DILocation(line: 301, column: 48, scope: !5164)
!5202 = !DILocation(line: 303, column: 22, scope: !5164)
!5203 = !DILocation(line: 303, column: 2, scope: !5164)
!5204 = !DILocation(line: 303, column: 5, scope: !5164)
!5205 = !DILocation(line: 303, column: 20, scope: !5164)
!5206 = !DILocation(line: 304, column: 22, scope: !5164)
!5207 = !DILocation(line: 304, column: 2, scope: !5164)
!5208 = !DILocation(line: 304, column: 5, scope: !5164)
!5209 = !DILocation(line: 304, column: 20, scope: !5164)
!5210 = !DILocation(line: 305, column: 21, scope: !5164)
!5211 = !DILocation(line: 305, column: 2, scope: !5164)
!5212 = !DILocation(line: 305, column: 5, scope: !5164)
!5213 = !DILocation(line: 305, column: 19, scope: !5164)
!5214 = !DILocation(line: 306, column: 17, scope: !5164)
!5215 = !DILocation(line: 306, column: 2, scope: !5164)
!5216 = !DILocation(line: 306, column: 5, scope: !5164)
!5217 = !DILocation(line: 306, column: 15, scope: !5164)
!5218 = !DILocation(line: 307, column: 22, scope: !5164)
!5219 = !DILocation(line: 307, column: 2, scope: !5164)
!5220 = !DILocation(line: 307, column: 5, scope: !5164)
!5221 = !DILocation(line: 307, column: 20, scope: !5164)
!5222 = !DILocation(line: 308, column: 22, scope: !5164)
!5223 = !DILocation(line: 308, column: 2, scope: !5164)
!5224 = !DILocation(line: 308, column: 5, scope: !5164)
!5225 = !DILocation(line: 308, column: 20, scope: !5164)
!5226 = !DILocation(line: 309, column: 20, scope: !5164)
!5227 = !DILocation(line: 309, column: 2, scope: !5164)
!5228 = !DILocation(line: 309, column: 5, scope: !5164)
!5229 = !DILocation(line: 309, column: 18, scope: !5164)
!5230 = !DILocation(line: 310, column: 17, scope: !5164)
!5231 = !DILocation(line: 310, column: 2, scope: !5164)
!5232 = !DILocation(line: 310, column: 5, scope: !5164)
!5233 = !DILocation(line: 310, column: 15, scope: !5164)
!5234 = !DILocation(line: 311, column: 14, scope: !5164)
!5235 = !DILocation(line: 311, column: 2, scope: !5164)
!5236 = !DILocation(line: 311, column: 5, scope: !5164)
!5237 = !DILocation(line: 311, column: 12, scope: !5164)
!5238 = !DILocation(line: 312, column: 2, scope: !5164)
!5239 = !DILocation(line: 312, column: 5, scope: !5164)
!5240 = !DILocation(line: 312, column: 13, scope: !5164)
!5241 = !DILocation(line: 313, column: 25, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 313, column: 6)
!5243 = !DILocation(line: 313, column: 31, scope: !5242)
!5244 = !DILocation(line: 313, column: 6, scope: !5242)
!5245 = !DILocation(line: 313, column: 6, scope: !5164)
!5246 = !DILocation(line: 314, column: 3, scope: !5242)
!5247 = !DILocation(line: 314, column: 6, scope: !5242)
!5248 = !DILocation(line: 314, column: 16, scope: !5242)
!5249 = !DILocation(line: 315, column: 1, scope: !5164)
!5250 = distinct !DISubprogram(name: "v2r1_disk2memdqb", scope: !3, file: !3, line: 276, type: !3941, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5251)
!5251 = !{!5252, !5253, !5254, !5255, !5256}
!5252 = !DILocalVariable(name: "dquot", arg: 1, scope: !5250, file: !3, line: 276, type: !560)
!5253 = !DILocalVariable(name: "dp", arg: 2, scope: !5250, file: !3, line: 276, type: !82)
!5254 = !DILocalVariable(name: "d", scope: !5250, file: !3, line: 278, type: !5169)
!5255 = !DILocalVariable(name: "empty", scope: !5250, file: !3, line: 278, type: !5170)
!5256 = !DILocalVariable(name: "m", scope: !5250, file: !3, line: 279, type: !4882)
!5257 = !DILocation(line: 276, column: 44, scope: !5250)
!5258 = !DILocation(line: 276, column: 57, scope: !5250)
!5259 = !DILocation(line: 278, column: 2, scope: !5250)
!5260 = !DILocation(line: 278, column: 26, scope: !5250)
!5261 = !DILocation(line: 278, column: 30, scope: !5250)
!5262 = !DILocation(line: 278, column: 34, scope: !5250)
!5263 = !DILocation(line: 279, column: 2, scope: !5250)
!5264 = !DILocation(line: 279, column: 20, scope: !5250)
!5265 = !DILocation(line: 279, column: 25, scope: !5250)
!5266 = !DILocation(line: 279, column: 32, scope: !5250)
!5267 = !DILocation(line: 281, column: 22, scope: !5250)
!5268 = !DILocation(line: 281, column: 2, scope: !5250)
!5269 = !DILocation(line: 281, column: 5, scope: !5250)
!5270 = !DILocation(line: 281, column: 20, scope: !5250)
!5271 = !DILocation(line: 282, column: 22, scope: !5250)
!5272 = !DILocation(line: 282, column: 2, scope: !5250)
!5273 = !DILocation(line: 282, column: 5, scope: !5250)
!5274 = !DILocation(line: 282, column: 20, scope: !5250)
!5275 = !DILocation(line: 283, column: 21, scope: !5250)
!5276 = !DILocation(line: 283, column: 2, scope: !5250)
!5277 = !DILocation(line: 283, column: 5, scope: !5250)
!5278 = !DILocation(line: 283, column: 19, scope: !5250)
!5279 = !DILocation(line: 284, column: 17, scope: !5250)
!5280 = !DILocation(line: 284, column: 2, scope: !5250)
!5281 = !DILocation(line: 284, column: 5, scope: !5250)
!5282 = !DILocation(line: 284, column: 15, scope: !5250)
!5283 = !DILocation(line: 285, column: 31, scope: !5250)
!5284 = !DILocation(line: 285, column: 22, scope: !5250)
!5285 = !DILocation(line: 285, column: 2, scope: !5250)
!5286 = !DILocation(line: 285, column: 5, scope: !5250)
!5287 = !DILocation(line: 285, column: 20, scope: !5250)
!5288 = !DILocation(line: 286, column: 31, scope: !5250)
!5289 = !DILocation(line: 286, column: 22, scope: !5250)
!5290 = !DILocation(line: 286, column: 2, scope: !5250)
!5291 = !DILocation(line: 286, column: 5, scope: !5250)
!5292 = !DILocation(line: 286, column: 20, scope: !5250)
!5293 = !DILocation(line: 287, column: 20, scope: !5250)
!5294 = !DILocation(line: 287, column: 2, scope: !5250)
!5295 = !DILocation(line: 287, column: 5, scope: !5250)
!5296 = !DILocation(line: 287, column: 18, scope: !5250)
!5297 = !DILocation(line: 288, column: 17, scope: !5250)
!5298 = !DILocation(line: 288, column: 2, scope: !5250)
!5299 = !DILocation(line: 288, column: 5, scope: !5250)
!5300 = !DILocation(line: 288, column: 15, scope: !5250)
!5301 = !DILocation(line: 290, column: 2, scope: !5250)
!5302 = !DILocation(line: 291, column: 8, scope: !5250)
!5303 = !DILocation(line: 291, column: 18, scope: !5250)
!5304 = !DILocation(line: 292, column: 22, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 292, column: 6)
!5306 = !DILocation(line: 292, column: 7, scope: !5305)
!5307 = !DILocation(line: 292, column: 6, scope: !5250)
!5308 = !DILocation(line: 293, column: 3, scope: !5305)
!5309 = !DILocation(line: 293, column: 6, scope: !5305)
!5310 = !DILocation(line: 293, column: 16, scope: !5305)
!5311 = !DILocation(line: 294, column: 1, scope: !5250)
!5312 = distinct !DISubprogram(name: "v2r1_is_id", scope: !3, file: !3, line: 317, type: !3945, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5313)
!5313 = !{!5314, !5315, !5316, !5317}
!5314 = !DILocalVariable(name: "dp", arg: 1, scope: !5312, file: !3, line: 317, type: !82)
!5315 = !DILocalVariable(name: "dquot", arg: 2, scope: !5312, file: !3, line: 317, type: !560)
!5316 = !DILocalVariable(name: "d", scope: !5312, file: !3, line: 319, type: !5169)
!5317 = !DILocalVariable(name: "info", scope: !5312, file: !3, line: 320, type: !4045)
!5318 = !DILocation(line: 317, column: 29, scope: !5312)
!5319 = !DILocation(line: 317, column: 47, scope: !5312)
!5320 = !DILocation(line: 319, column: 2, scope: !5312)
!5321 = !DILocation(line: 319, column: 26, scope: !5312)
!5322 = !DILocation(line: 319, column: 30, scope: !5312)
!5323 = !DILocation(line: 320, column: 2, scope: !5312)
!5324 = !DILocation(line: 320, column: 27, scope: !5312)
!5325 = !DILocation(line: 321, column: 14, scope: !5312)
!5326 = !DILocation(line: 321, column: 21, scope: !5312)
!5327 = !DILocation(line: 321, column: 28, scope: !5312)
!5328 = !DILocation(line: 321, column: 35, scope: !5312)
!5329 = !DILocation(line: 321, column: 41, scope: !5312)
!5330 = !DILocation(line: 321, column: 4, scope: !5312)
!5331 = !DILocation(line: 321, column: 48, scope: !5312)
!5332 = !DILocation(line: 323, column: 25, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 323, column: 6)
!5334 = !DILocation(line: 323, column: 31, scope: !5333)
!5335 = !DILocation(line: 323, column: 6, scope: !5333)
!5336 = !DILocation(line: 323, column: 6, scope: !5312)
!5337 = !DILocation(line: 324, column: 3, scope: !5333)
!5338 = !DILocation(line: 325, column: 41, scope: !5312)
!5339 = !DILocation(line: 325, column: 48, scope: !5312)
!5340 = !DILocation(line: 325, column: 54, scope: !5312)
!5341 = !DILocation(line: 326, column: 5, scope: !5312)
!5342 = !DILocation(line: 325, column: 16, scope: !5312)
!5343 = !DILocation(line: 327, column: 9, scope: !5312)
!5344 = !DILocation(line: 327, column: 16, scope: !5312)
!5345 = !DILocation(line: 325, column: 9, scope: !5312)
!5346 = !DILocation(line: 325, column: 2, scope: !5312)
!5347 = !DILocation(line: 328, column: 1, scope: !5312)
!5348 = !DISubprogram(name: "down_write", scope: !782, file: !782, line: 187, type: !4591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5349 = distinct !DISubprogram(name: "spin_lock", scope: !5350, file: !5350, line: 349, type: !5351, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5354)
!5350 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5351 = !DISubroutineType(types: !5352)
!5352 = !{null, !5353}
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!5354 = !{!5355}
!5355 = !DILocalVariable(name: "lock", arg: 1, scope: !5349, file: !5350, line: 349, type: !5353)
!5356 = !DILocation(line: 349, column: 51, scope: !5349)
!5357 = !DILocation(line: 351, column: 2, scope: !5349)
!5358 = !DILocation(line: 352, column: 1, scope: !5349)
!5359 = distinct !DISubprogram(name: "spin_unlock", scope: !5350, file: !5350, line: 389, type: !5351, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5360)
!5360 = !{!5361}
!5361 = !DILocalVariable(name: "lock", arg: 1, scope: !5359, file: !5350, line: 389, type: !5353)
!5362 = !DILocation(line: 389, column: 53, scope: !5359)
!5363 = !DILocation(line: 391, column: 2, scope: !5359)
!5364 = !DILocation(line: 392, column: 1, scope: !5359)
!5365 = !DISubprogram(name: "up_write", scope: !782, file: !782, line: 203, type: !4591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5366 = !DISubprogram(name: "_raw_spin_lock", scope: !5367, file: !5367, line: 22, type: !5368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5367 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5368 = !DISubroutineType(types: !5369)
!5369 = !{null, !5370}
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!5371 = !DISubprogram(name: "_raw_spin_unlock", scope: !5367, file: !5367, line: 39, type: !5368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5372 = !DISubprogram(name: "qtree_read_dquot", scope: !3933, file: !3933, line: 43, type: !5373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!142, !4045, !560}
!5375 = !DISubprogram(name: "qtree_write_dquot", scope: !3933, file: !3933, line: 42, type: !5373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5376 = !DISubprogram(name: "qtree_release_dquot", scope: !3933, file: !3933, line: 45, type: !5373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5377 = !DISubprogram(name: "qtree_get_next_id", scope: !3933, file: !3933, line: 57, type: !5378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{!142, !4045, !681}
!5380 = !DISubprogram(name: "register_quota_format", scope: !40, file: !40, line: 529, type: !5381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!142, !828}
