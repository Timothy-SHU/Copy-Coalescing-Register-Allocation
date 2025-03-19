; ModuleID = 'fs/statfs.c'
source_filename = "fs/statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vfs_get_fsid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad vfs_get_fsid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vfs_statfs: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad vfs_statfs ; .previous"

%struct.kstatfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i64, i64, i64, [4 x i64] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.28, %struct.list_head, %struct.list_head, %union.anon.29 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.24, ptr }
%union.anon.24 = type { i64 }
%struct.lockref = type { %union.anon.26 }
%union.anon.26 = type { i64 }
%union.anon.28 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.29 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.atomic64_t = type { i64 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.fd = type { ptr, i32 }
%struct.file = type { %union.anon.19, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.20, %struct.qspinlock }
%union.anon.20 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.22, i64, i64, %union.anon.23 }
%union.anon.22 = type { i64 }
%union.anon.23 = type { i64 }
%struct.compat_statfs64 = type <{ i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }>
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i64, i64, i64, [4 x i64] }
%struct.statfs64 = type { i64, i64, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i64, i64, i64, [4 x i64] }
%struct.ustat = type { i32, i64, [6 x i8], [6 x i8] }
%struct.compat_statfs = type { i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.compat_ustat = type { i32, i32, [6 x i8], [6 x i8] }

@__UNIQUE_ID___addressable_vfs_get_fsid318 = internal global ptr @vfs_get_fsid, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_vfs_statfs319 = internal global ptr @vfs_statfs, section ".discard.addressable", align 8, !dbg !5949
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5951
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_vfs_get_fsid318, ptr @__UNIQUE_ID___addressable_vfs_statfs319], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vfs_get_fsid(ptr noundef %dentry, ptr noundef %fsid) #0 align 16 !dbg !5966 {
entry:
  %retval = alloca i32, align 4
  %dentry.addr = alloca ptr, align 8
  %fsid.addr = alloca ptr, align 8
  %st = alloca %struct.kstatfs, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5971, metadata !DIExpression()), !dbg !5975
  store ptr %fsid, ptr %fsid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsid.addr, metadata !5972, metadata !DIExpression()), !dbg !5976
  call void @llvm.lifetime.start.p0(i64 120, ptr %st) #12, !dbg !5977
  call void @llvm.dbg.declare(metadata ptr %st, metadata !5973, metadata !DIExpression()), !dbg !5978
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !5979
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5974, metadata !DIExpression()), !dbg !5980
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5981
  %call = call i32 @statfs_by_dentry(ptr noundef %0, ptr noundef %st) #13, !dbg !5982
  store i32 %call, ptr %error, align 4, !dbg !5983
  %1 = load i32, ptr %error, align 4, !dbg !5984
  %tobool = icmp ne i32 %1, 0, !dbg !5984
  br i1 %tobool, label %if.then, label %if.end, !dbg !5986

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !5987
  store i32 %2, ptr %retval, align 4, !dbg !5988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5988

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fsid.addr, align 8, !dbg !5989
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %st, i32 0, i32 7, !dbg !5990
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 8 %f_fsid, i64 8, i1 false), !dbg !5990
  store i32 0, ptr %retval, align 4, !dbg !5991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5991

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !5992
  call void @llvm.lifetime.end.p0(i64 120, ptr %st) #12, !dbg !5992
  %4 = load i32, ptr %retval, align 4, !dbg !5992
  ret i32 %4, !dbg !5992
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @statfs_by_dentry(ptr noundef %dentry, ptr noundef %buf) #0 align 16 !dbg !5993 {
entry:
  %retval = alloca i32, align 4
  %dentry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5995, metadata !DIExpression()), !dbg !5998
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5996, metadata !DIExpression()), !dbg !5999
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #12, !dbg !6000
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5997, metadata !DIExpression()), !dbg !6001
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6002
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !6004
  %1 = load ptr, ptr %d_sb, align 8, !dbg !6004
  %s_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 6, !dbg !6005
  %2 = load ptr, ptr %s_op, align 16, !dbg !6005
  %statfs = getelementptr inbounds %struct.super_operations, ptr %2, i32 0, i32 13, !dbg !6006
  %3 = load ptr, ptr %statfs, align 8, !dbg !6006
  %tobool = icmp ne ptr %3, null, !dbg !6002
  br i1 %tobool, label %if.end, label %if.then, !dbg !6007

if.then:                                          ; preds = %entry
  store i32 -38, ptr %retval, align 4, !dbg !6008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6008

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !6009
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 120, i1 false), !dbg !6010
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !6011
  %call = call i32 @security_sb_statfs(ptr noundef %5) #13, !dbg !6012
  store i32 %call, ptr %retval1, align 4, !dbg !6013
  %6 = load i32, ptr %retval1, align 4, !dbg !6014
  %tobool2 = icmp ne i32 %6, 0, !dbg !6014
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6016

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %retval1, align 4, !dbg !6017
  store i32 %7, ptr %retval, align 4, !dbg !6018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6018

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %dentry.addr, align 8, !dbg !6019
  %d_sb5 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 9, !dbg !6020
  %9 = load ptr, ptr %d_sb5, align 8, !dbg !6020
  %s_op6 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 6, !dbg !6021
  %10 = load ptr, ptr %s_op6, align 16, !dbg !6021
  %statfs7 = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 13, !dbg !6022
  %11 = load ptr, ptr %statfs7, align 8, !dbg !6022
  %12 = load ptr, ptr %dentry.addr, align 8, !dbg !6023
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !6024
  %call8 = call i32 %11(ptr noundef %12, ptr noundef %13) #13, !dbg !6019
  store i32 %call8, ptr %retval1, align 4, !dbg !6025
  %14 = load i32, ptr %retval1, align 4, !dbg !6026
  %cmp = icmp eq i32 %14, 0, !dbg !6028
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !6029

land.lhs.true:                                    ; preds = %if.end4
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !6030
  %f_frsize = getelementptr inbounds %struct.kstatfs, ptr %15, i32 0, i32 9, !dbg !6031
  %16 = load i64, ptr %f_frsize, align 8, !dbg !6031
  %cmp9 = icmp eq i64 %16, 0, !dbg !6032
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !6033

if.then10:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !6034
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %17, i32 0, i32 1, !dbg !6035
  %18 = load i64, ptr %f_bsize, align 8, !dbg !6035
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !6036
  %f_frsize11 = getelementptr inbounds %struct.kstatfs, ptr %19, i32 0, i32 9, !dbg !6037
  store i64 %18, ptr %f_frsize11, align 8, !dbg !6038
  br label %if.end12, !dbg !6036

if.end12:                                         ; preds = %if.then10, %land.lhs.true, %if.end4
  %20 = load i32, ptr %retval1, align 4, !dbg !6039
  store i32 %20, ptr %retval, align 4, !dbg !6040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6040

cleanup:                                          ; preds = %if.end12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #12, !dbg !6041
  %21 = load i32, ptr %retval, align 4, !dbg !6041
  ret i32 %21, !dbg !6041
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vfs_statfs(ptr noundef %path, ptr noundef %buf) #0 align 16 !dbg !6042 {
entry:
  %path.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6046, metadata !DIExpression()), !dbg !6049
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6047, metadata !DIExpression()), !dbg !6050
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6048, metadata !DIExpression()), !dbg !6052
  %0 = load ptr, ptr %path.addr, align 8, !dbg !6053
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !6054
  %1 = load ptr, ptr %dentry, align 8, !dbg !6054
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6055
  %call = call i32 @statfs_by_dentry(ptr noundef %1, ptr noundef %2) #13, !dbg !6056
  store i32 %call, ptr %error, align 4, !dbg !6057
  %3 = load i32, ptr %error, align 4, !dbg !6058
  %tobool = icmp ne i32 %3, 0, !dbg !6058
  br i1 %tobool, label %if.end, label %if.then, !dbg !6060

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %path.addr, align 8, !dbg !6061
  %mnt = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 0, !dbg !6062
  %5 = load ptr, ptr %mnt, align 8, !dbg !6062
  %call1 = call i32 @calculate_f_flags(ptr noundef %5) #13, !dbg !6063
  %conv = sext i32 %call1 to i64, !dbg !6063
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !6064
  %f_flags = getelementptr inbounds %struct.kstatfs, ptr %6, i32 0, i32 10, !dbg !6065
  store i64 %conv, ptr %f_flags, align 8, !dbg !6066
  br label %if.end, !dbg !6064

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %error, align 4, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6068
  ret i32 %7, !dbg !6069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @calculate_f_flags(ptr noundef %mnt) #0 align 16 !dbg !6070 {
entry:
  %mnt.addr = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !6074, metadata !DIExpression()), !dbg !6075
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !6076
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 2, !dbg !6077
  %1 = load i32, ptr %mnt_flags, align 8, !dbg !6077
  %call = call i32 @flags_by_mnt(i32 noundef %1) #13, !dbg !6078
  %or = or i32 32, %call, !dbg !6079
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !6080
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 1, !dbg !6081
  %3 = load ptr, ptr %mnt_sb, align 8, !dbg !6081
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10, !dbg !6082
  %4 = load i64, ptr %s_flags, align 16, !dbg !6082
  %conv = trunc i64 %4 to i32, !dbg !6080
  %call1 = call i32 @flags_by_sb(i32 noundef %conv) #13, !dbg !6083
  %or2 = or i32 %or, %call1, !dbg !6084
  ret i32 %or2, !dbg !6085
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @user_statfs(ptr noundef %pathname, ptr noundef %st) #0 align 16 !dbg !6086 {
entry:
  %pathname.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %error = alloca i32, align 4
  %lookup_flags = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !6090, metadata !DIExpression()), !dbg !6096
  store ptr %st, ptr %st.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %st.addr, metadata !6091, metadata !DIExpression()), !dbg !6097
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #12, !dbg !6098
  call void @llvm.dbg.declare(metadata ptr %path, metadata !6092, metadata !DIExpression()), !dbg !6099
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6100
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6093, metadata !DIExpression()), !dbg !6101
  call void @llvm.lifetime.start.p0(i64 4, ptr %lookup_flags) #12, !dbg !6102
  call void @llvm.dbg.declare(metadata ptr %lookup_flags, metadata !6094, metadata !DIExpression()), !dbg !6103
  store i32 5, ptr %lookup_flags, align 4, !dbg !6103
  br label %retry, !dbg !6102

retry:                                            ; preds = %if.then3, %entry
  call void @llvm.dbg.label(metadata !6095), !dbg !6104
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !6105
  %1 = load i32, ptr %lookup_flags, align 4, !dbg !6106
  %call = call i32 @user_path_at(i32 noundef -100, ptr noundef %0, i32 noundef %1, ptr noundef %path) #13, !dbg !6107
  store i32 %call, ptr %error, align 4, !dbg !6108
  %2 = load i32, ptr %error, align 4, !dbg !6109
  %tobool = icmp ne i32 %2, 0, !dbg !6109
  br i1 %tobool, label %if.end4, label %if.then, !dbg !6111

if.then:                                          ; preds = %retry
  %3 = load ptr, ptr %st.addr, align 8, !dbg !6112
  %call1 = call i32 @vfs_statfs(ptr noundef %path, ptr noundef %3) #13, !dbg !6114
  store i32 %call1, ptr %error, align 4, !dbg !6115
  call void @path_put(ptr noundef %path) #13, !dbg !6116
  %4 = load i32, ptr %error, align 4, !dbg !6117
  %conv = sext i32 %4 to i64, !dbg !6117
  %5 = load i32, ptr %lookup_flags, align 4, !dbg !6119
  %call2 = call zeroext i1 @retry_estale(i64 noundef %conv, i32 noundef %5) #13, !dbg !6120
  br i1 %call2, label %if.then3, label %if.end, !dbg !6121

if.then3:                                         ; preds = %if.then
  %6 = load i32, ptr %lookup_flags, align 4, !dbg !6122
  %or = or i32 %6, 32, !dbg !6122
  store i32 %or, ptr %lookup_flags, align 4, !dbg !6122
  br label %retry, !dbg !6124

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !6125

if.end4:                                          ; preds = %if.end, %retry
  %7 = load i32, ptr %error, align 4, !dbg !6126
  call void @llvm.lifetime.end.p0(i64 4, ptr %lookup_flags) #12, !dbg !6127
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6127
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #12, !dbg !6127
  ret i32 %7, !dbg !6128
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_path_at(i32 noundef %dfd, ptr noundef %name, i32 noundef %flags, ptr noundef %path) #4 align 16 !dbg !6129 {
entry:
  %dfd.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  store i32 %dfd, ptr %dfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dfd.addr, metadata !6134, metadata !DIExpression()), !dbg !6138
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6135, metadata !DIExpression()), !dbg !6139
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6136, metadata !DIExpression()), !dbg !6140
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6137, metadata !DIExpression()), !dbg !6141
  %0 = load i32, ptr %dfd.addr, align 4, !dbg !6142
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6143
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6144
  %3 = load ptr, ptr %path.addr, align 8, !dbg !6145
  %call = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null) #13, !dbg !6146
  ret i32 %call, !dbg !6147
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6148 dso_local void @path_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @retry_estale(i64 noundef %error, i32 noundef %flags) #4 align 16 !dbg !6151 {
entry:
  %error.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6156, metadata !DIExpression()), !dbg !6158
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6157, metadata !DIExpression()), !dbg !6159
  %0 = load i64, ptr %error.addr, align 8, !dbg !6160
  %cmp = icmp eq i64 %0, -116, !dbg !6161
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6162

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6163
  %and = and i32 %1, 32, !dbg !6164
  %tobool = icmp ne i32 %and, 0, !dbg !6165
  %lnot = xor i1 %tobool, true, !dbg !6165
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6166
  ret i1 %2, !dbg !6167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fd_statfs(i32 noundef %fd, ptr noundef %st) #0 align 16 !dbg !6168 {
entry:
  %fd.addr = alloca i32, align 4
  %st.addr = alloca ptr, align 8
  %f = alloca %struct.fd, align 8
  %error = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6172, metadata !DIExpression()), !dbg !6181
  store ptr %st, ptr %st.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %st.addr, metadata !6173, metadata !DIExpression()), !dbg !6182
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #12, !dbg !6183
  call void @llvm.dbg.declare(metadata ptr %f, metadata !6174, metadata !DIExpression()), !dbg !6184
  %0 = load i32, ptr %fd.addr, align 4, !dbg !6185
  %call = call { ptr, i32 } @fdget_raw(i32 noundef %0) #13, !dbg !6186
  %1 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !6186
  %2 = extractvalue { ptr, i32 } %call, 0, !dbg !6186
  store ptr %2, ptr %1, align 8, !dbg !6186
  %3 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !6186
  %4 = extractvalue { ptr, i32 } %call, 1, !dbg !6186
  store i32 %4, ptr %3, align 8, !dbg !6186
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6187
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6180, metadata !DIExpression()), !dbg !6188
  store i32 -9, ptr %error, align 4, !dbg !6188
  %file = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !6189
  %5 = load ptr, ptr %file, align 8, !dbg !6189
  %tobool = icmp ne ptr %5, null, !dbg !6191
  br i1 %tobool, label %if.then, label %if.end, !dbg !6192

if.then:                                          ; preds = %entry
  %file1 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !6193
  %6 = load ptr, ptr %file1, align 8, !dbg !6193
  %f_path = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 10, !dbg !6195
  %7 = load ptr, ptr %st.addr, align 8, !dbg !6196
  %call2 = call i32 @vfs_statfs(ptr noundef %f_path, ptr noundef %7) #13, !dbg !6197
  store i32 %call2, ptr %error, align 4, !dbg !6198
  %8 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !6199
  %9 = load ptr, ptr %8, align 8, !dbg !6199
  %10 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !6199
  %11 = load i32, ptr %10, align 8, !dbg !6199
  call void @fdput(ptr %9, i32 %11) #13, !dbg !6199
  br label %if.end, !dbg !6200

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %error, align 4, !dbg !6201
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6202
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #12, !dbg !6202
  ret i32 %12, !dbg !6203
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @fdget_raw(i32 noundef %fd) #4 align 16 !dbg !6204 {
entry:
  %retval = alloca %struct.fd, align 8
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6208, metadata !DIExpression()), !dbg !6209
  %0 = load i32, ptr %fd.addr, align 4, !dbg !6210
  %call = call i64 @__fdget_raw(i32 noundef %0) #13, !dbg !6211
  %call1 = call { ptr, i32 } @__to_fd(i64 noundef %call) #13, !dbg !6212
  %1 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 0, !dbg !6212
  %2 = extractvalue { ptr, i32 } %call1, 0, !dbg !6212
  store ptr %2, ptr %1, align 8, !dbg !6212
  %3 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 1, !dbg !6212
  %4 = extractvalue { ptr, i32 } %call1, 1, !dbg !6212
  store i32 %4, ptr %3, align 8, !dbg !6212
  %5 = load { ptr, i32 }, ptr %retval, align 8, !dbg !6213
  ret { ptr, i32 } %5, !dbg !6213
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fdput(ptr %fd.coerce0, i32 %fd.coerce1) #4 align 16 !dbg !6214 {
entry:
  %fd = alloca %struct.fd, align 8
  %0 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 0
  store ptr %fd.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 1
  store i32 %fd.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !6218, metadata !DIExpression()), !dbg !6219
  %flags = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 1, !dbg !6220
  %2 = load i32, ptr %flags, align 8, !dbg !6220
  %and = and i32 %2, 1, !dbg !6222
  %tobool = icmp ne i32 %and, 0, !dbg !6222
  br i1 %tobool, label %if.then, label %if.end, !dbg !6223

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 0, !dbg !6224
  %3 = load ptr, ptr %file, align 8, !dbg !6224
  call void @fput(ptr noundef %3) #13, !dbg !6225
  br label %if.end, !dbg !6225

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_statfs(ptr noundef %regs) #0 align 16 !dbg !6227 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6233, metadata !DIExpression()), !dbg !6234
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6234
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6234
  %1 = load i64, ptr %di, align 8, !dbg !6234
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6234
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6234
  %3 = load i64, ptr %si, align 8, !dbg !6234
  %call = call i64 @__se_sys_statfs(i64 noundef %1, i64 noundef %3) #13, !dbg !6234
  ret i64 %call, !dbg !6234
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_statfs(i64 noundef %pathname, i64 noundef %buf) #0 align 16 !dbg !6235 {
entry:
  %pathname.addr = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !6239, metadata !DIExpression()), !dbg !6242
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6240, metadata !DIExpression()), !dbg !6242
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6242
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6241, metadata !DIExpression()), !dbg !6242
  %0 = load i64, ptr %pathname.addr, align 8, !dbg !6242
  %1 = inttoptr i64 %0 to ptr, !dbg !6242
  %2 = load i64, ptr %buf.addr, align 8, !dbg !6242
  %3 = inttoptr i64 %2 to ptr, !dbg !6242
  %call = call i64 @__do_sys_statfs(ptr noundef %1, ptr noundef %3) #13, !dbg !6242
  store i64 %call, ptr %ret, align 8, !dbg !6242
  br label %do.body, !dbg !6242

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6243

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6243

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !6242
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6242
  ret i64 %4, !dbg !6242
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_statfs(ptr noundef %regs) #0 align 16 !dbg !6245 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6247, metadata !DIExpression()), !dbg !6248
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6248
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6248
  %1 = load i64, ptr %bx, align 8, !dbg !6248
  %conv = trunc i64 %1 to i32, !dbg !6248
  %conv1 = zext i32 %conv to i64, !dbg !6248
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6248
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6248
  %3 = load i64, ptr %cx, align 8, !dbg !6248
  %conv2 = trunc i64 %3 to i32, !dbg !6248
  %conv3 = zext i32 %conv2 to i64, !dbg !6248
  %call = call i64 @__se_sys_statfs(i64 noundef %conv1, i64 noundef %conv3) #13, !dbg !6248
  ret i64 %call, !dbg !6248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_statfs64(ptr noundef %regs) #0 align 16 !dbg !6249 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6251, metadata !DIExpression()), !dbg !6252
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6252
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6252
  %1 = load i64, ptr %di, align 8, !dbg !6252
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6252
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6252
  %3 = load i64, ptr %si, align 8, !dbg !6252
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6252
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6252
  %5 = load i64, ptr %dx, align 8, !dbg !6252
  %call = call i64 @__se_sys_statfs64(i64 noundef %1, i64 noundef %3, i64 noundef %5) #13, !dbg !6252
  ret i64 %call, !dbg !6252
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_statfs64(i64 noundef %pathname, i64 noundef %sz, i64 noundef %buf) #0 align 16 !dbg !6253 {
entry:
  %pathname.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !6257, metadata !DIExpression()), !dbg !6261
  store i64 %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !6258, metadata !DIExpression()), !dbg !6261
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6259, metadata !DIExpression()), !dbg !6261
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6260, metadata !DIExpression()), !dbg !6261
  %0 = load i64, ptr %pathname.addr, align 8, !dbg !6261
  %1 = inttoptr i64 %0 to ptr, !dbg !6261
  %2 = load i64, ptr %sz.addr, align 8, !dbg !6261
  %3 = load i64, ptr %buf.addr, align 8, !dbg !6261
  %4 = inttoptr i64 %3 to ptr, !dbg !6261
  %call = call i64 @__do_sys_statfs64(ptr noundef %1, i64 noundef %2, ptr noundef %4) #13, !dbg !6261
  store i64 %call, ptr %ret, align 8, !dbg !6261
  br label %do.body, !dbg !6261

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6262

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6262

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %ret, align 8, !dbg !6261
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6261
  ret i64 %5, !dbg !6261
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_statfs64(ptr noundef %regs) #0 align 16 !dbg !6264 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6267
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6267
  %1 = load i64, ptr %bx, align 8, !dbg !6267
  %conv = trunc i64 %1 to i32, !dbg !6267
  %conv1 = zext i32 %conv to i64, !dbg !6267
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6267
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6267
  %3 = load i64, ptr %cx, align 8, !dbg !6267
  %conv2 = trunc i64 %3 to i32, !dbg !6267
  %conv3 = zext i32 %conv2 to i64, !dbg !6267
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6267
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6267
  %5 = load i64, ptr %dx, align 8, !dbg !6267
  %conv4 = trunc i64 %5 to i32, !dbg !6267
  %conv5 = zext i32 %conv4 to i64, !dbg !6267
  %call = call i64 @__se_sys_statfs64(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #13, !dbg !6267
  ret i64 %call, !dbg !6267
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_fstatfs(ptr noundef %regs) #0 align 16 !dbg !6268 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6270, metadata !DIExpression()), !dbg !6271
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6271
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6271
  %1 = load i64, ptr %di, align 8, !dbg !6271
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6271
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6271
  %3 = load i64, ptr %si, align 8, !dbg !6271
  %call = call i64 @__se_sys_fstatfs(i64 noundef %1, i64 noundef %3) #13, !dbg !6271
  ret i64 %call, !dbg !6271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_fstatfs(i64 noundef %fd, i64 noundef %buf) #0 align 16 !dbg !6272 {
entry:
  %fd.addr = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6274, metadata !DIExpression()), !dbg !6277
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6275, metadata !DIExpression()), !dbg !6277
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6277
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6276, metadata !DIExpression()), !dbg !6277
  %0 = load i64, ptr %fd.addr, align 8, !dbg !6277
  %conv = trunc i64 %0 to i32, !dbg !6277
  %1 = load i64, ptr %buf.addr, align 8, !dbg !6277
  %2 = inttoptr i64 %1 to ptr, !dbg !6277
  %call = call i64 @__do_sys_fstatfs(i32 noundef %conv, ptr noundef %2) #13, !dbg !6277
  store i64 %call, ptr %ret, align 8, !dbg !6277
  br label %do.body, !dbg !6277

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6278

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6278

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6277
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6277
  ret i64 %3, !dbg !6277
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_fstatfs(ptr noundef %regs) #0 align 16 !dbg !6280 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6282, metadata !DIExpression()), !dbg !6283
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6283
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6283
  %1 = load i64, ptr %bx, align 8, !dbg !6283
  %conv = trunc i64 %1 to i32, !dbg !6283
  %conv1 = zext i32 %conv to i64, !dbg !6283
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6283
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6283
  %3 = load i64, ptr %cx, align 8, !dbg !6283
  %conv2 = trunc i64 %3 to i32, !dbg !6283
  %conv3 = zext i32 %conv2 to i64, !dbg !6283
  %call = call i64 @__se_sys_fstatfs(i64 noundef %conv1, i64 noundef %conv3) #13, !dbg !6283
  ret i64 %call, !dbg !6283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_fstatfs64(ptr noundef %regs) #0 align 16 !dbg !6284 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6286, metadata !DIExpression()), !dbg !6287
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6287
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6287
  %1 = load i64, ptr %di, align 8, !dbg !6287
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6287
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6287
  %3 = load i64, ptr %si, align 8, !dbg !6287
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6287
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6287
  %5 = load i64, ptr %dx, align 8, !dbg !6287
  %call = call i64 @__se_sys_fstatfs64(i64 noundef %1, i64 noundef %3, i64 noundef %5) #13, !dbg !6287
  ret i64 %call, !dbg !6287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_fstatfs64(i64 noundef %fd, i64 noundef %sz, i64 noundef %buf) #0 align 16 !dbg !6288 {
entry:
  %fd.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6290, metadata !DIExpression()), !dbg !6294
  store i64 %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !6291, metadata !DIExpression()), !dbg !6294
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6292, metadata !DIExpression()), !dbg !6294
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6293, metadata !DIExpression()), !dbg !6294
  %0 = load i64, ptr %fd.addr, align 8, !dbg !6294
  %conv = trunc i64 %0 to i32, !dbg !6294
  %1 = load i64, ptr %sz.addr, align 8, !dbg !6294
  %2 = load i64, ptr %buf.addr, align 8, !dbg !6294
  %3 = inttoptr i64 %2 to ptr, !dbg !6294
  %call = call i64 @__do_sys_fstatfs64(i32 noundef %conv, i64 noundef %1, ptr noundef %3) #13, !dbg !6294
  store i64 %call, ptr %ret, align 8, !dbg !6294
  br label %do.body, !dbg !6294

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6295

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6295

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !6294
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6294
  ret i64 %4, !dbg !6294
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_fstatfs64(ptr noundef %regs) #0 align 16 !dbg !6297 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6299, metadata !DIExpression()), !dbg !6300
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6300
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6300
  %1 = load i64, ptr %bx, align 8, !dbg !6300
  %conv = trunc i64 %1 to i32, !dbg !6300
  %conv1 = zext i32 %conv to i64, !dbg !6300
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6300
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6300
  %3 = load i64, ptr %cx, align 8, !dbg !6300
  %conv2 = trunc i64 %3 to i32, !dbg !6300
  %conv3 = zext i32 %conv2 to i64, !dbg !6300
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6300
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6300
  %5 = load i64, ptr %dx, align 8, !dbg !6300
  %conv4 = trunc i64 %5 to i32, !dbg !6300
  %conv5 = zext i32 %conv4 to i64, !dbg !6300
  %call = call i64 @__se_sys_fstatfs64(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #13, !dbg !6300
  ret i64 %call, !dbg !6300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_ustat(ptr noundef %regs) #0 align 16 !dbg !6301 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6304
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6304
  %1 = load i64, ptr %di, align 8, !dbg !6304
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6304
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6304
  %3 = load i64, ptr %si, align 8, !dbg !6304
  %call = call i64 @__se_sys_ustat(i64 noundef %1, i64 noundef %3) #13, !dbg !6304
  ret i64 %call, !dbg !6304
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_ustat(i64 noundef %dev, i64 noundef %ubuf) #0 align 16 !dbg !6305 {
entry:
  %dev.addr = alloca i64, align 8
  %ubuf.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6307, metadata !DIExpression()), !dbg !6310
  store i64 %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !6308, metadata !DIExpression()), !dbg !6310
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6310
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6309, metadata !DIExpression()), !dbg !6310
  %0 = load i64, ptr %dev.addr, align 8, !dbg !6310
  %conv = trunc i64 %0 to i32, !dbg !6310
  %1 = load i64, ptr %ubuf.addr, align 8, !dbg !6310
  %2 = inttoptr i64 %1 to ptr, !dbg !6310
  %call = call i64 @__do_sys_ustat(i32 noundef %conv, ptr noundef %2) #13, !dbg !6310
  store i64 %call, ptr %ret, align 8, !dbg !6310
  br label %do.body, !dbg !6310

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6311

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6311

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6310
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6310
  ret i64 %3, !dbg !6310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_ustat(ptr noundef %regs) #0 align 16 !dbg !6313 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6316
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6316
  %1 = load i64, ptr %bx, align 8, !dbg !6316
  %conv = trunc i64 %1 to i32, !dbg !6316
  %conv1 = zext i32 %conv to i64, !dbg !6316
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6316
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6316
  %3 = load i64, ptr %cx, align 8, !dbg !6316
  %conv2 = trunc i64 %3 to i32, !dbg !6316
  %conv3 = zext i32 %conv2 to i64, !dbg !6316
  %call = call i64 @__se_sys_ustat(i64 noundef %conv1, i64 noundef %conv3) #13, !dbg !6316
  ret i64 %call, !dbg !6316
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_statfs(ptr noundef %regs) #0 align 16 !dbg !6317 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6319, metadata !DIExpression()), !dbg !6320
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6320
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6320
  %1 = load i64, ptr %bx, align 8, !dbg !6320
  %conv = trunc i64 %1 to i32, !dbg !6320
  %conv1 = zext i32 %conv to i64, !dbg !6320
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6320
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6320
  %3 = load i64, ptr %cx, align 8, !dbg !6320
  %conv2 = trunc i64 %3 to i32, !dbg !6320
  %conv3 = zext i32 %conv2 to i64, !dbg !6320
  %call = call i64 @__se_compat_sys_statfs(i64 noundef %conv1, i64 noundef %conv3) #13, !dbg !6320
  ret i64 %call, !dbg !6320
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_statfs(i64 noundef %pathname, i64 noundef %buf) #0 align 16 !dbg !6321 {
entry:
  %pathname.addr = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  store i64 %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !6323, metadata !DIExpression()), !dbg !6325
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6324, metadata !DIExpression()), !dbg !6325
  %0 = load i64, ptr %pathname.addr, align 8, !dbg !6325
  %1 = inttoptr i64 %0 to ptr, !dbg !6325
  %2 = load i64, ptr %buf.addr, align 8, !dbg !6325
  %3 = inttoptr i64 %2 to ptr, !dbg !6325
  %call = call i64 @__do_compat_sys_statfs(ptr noundef %1, ptr noundef %3) #13, !dbg !6325
  ret i64 %call, !dbg !6325
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_fstatfs(ptr noundef %regs) #0 align 16 !dbg !6326 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6328, metadata !DIExpression()), !dbg !6329
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6329
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6329
  %1 = load i64, ptr %bx, align 8, !dbg !6329
  %conv = trunc i64 %1 to i32, !dbg !6329
  %conv1 = zext i32 %conv to i64, !dbg !6329
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6329
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6329
  %3 = load i64, ptr %cx, align 8, !dbg !6329
  %conv2 = trunc i64 %3 to i32, !dbg !6329
  %conv3 = zext i32 %conv2 to i64, !dbg !6329
  %call = call i64 @__se_compat_sys_fstatfs(i64 noundef %conv1, i64 noundef %conv3) #13, !dbg !6329
  ret i64 %call, !dbg !6329
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_fstatfs(i64 noundef %fd, i64 noundef %buf) #0 align 16 !dbg !6330 {
entry:
  %fd.addr = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6332, metadata !DIExpression()), !dbg !6334
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6333, metadata !DIExpression()), !dbg !6334
  %0 = load i64, ptr %fd.addr, align 8, !dbg !6334
  %conv = trunc i64 %0 to i32, !dbg !6334
  %1 = load i64, ptr %buf.addr, align 8, !dbg !6334
  %2 = inttoptr i64 %1 to ptr, !dbg !6334
  %call = call i64 @__do_compat_sys_fstatfs(i32 noundef %conv, ptr noundef %2) #13, !dbg !6334
  ret i64 %call, !dbg !6334
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kcompat_sys_statfs64(ptr noundef %pathname, i32 noundef %sz, ptr noundef %buf) #0 align 16 !dbg !6335 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca ptr, align 8
  %sz.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %tmp = alloca %struct.kstatfs, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !6339, metadata !DIExpression()), !dbg !6344
  store i32 %sz, ptr %sz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !6340, metadata !DIExpression()), !dbg !6345
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6341, metadata !DIExpression()), !dbg !6346
  call void @llvm.lifetime.start.p0(i64 120, ptr %tmp) #12, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6342, metadata !DIExpression()), !dbg !6348
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6343, metadata !DIExpression()), !dbg !6350
  %0 = load i32, ptr %sz.addr, align 4, !dbg !6351
  %conv = zext i32 %0 to i64, !dbg !6351
  %cmp = icmp ne i64 %conv, 84, !dbg !6353
  br i1 %cmp, label %if.then, label %if.end, !dbg !6354

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6355

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pathname.addr, align 8, !dbg !6356
  %call = call i32 @user_statfs(ptr noundef %1, ptr noundef %tmp) #13, !dbg !6357
  store i32 %call, ptr %error, align 4, !dbg !6358
  %2 = load i32, ptr %error, align 4, !dbg !6359
  %tobool = icmp ne i32 %2, 0, !dbg !6359
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !6361

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6362
  %call3 = call i32 @put_compat_statfs64(ptr noundef %3, ptr noundef %tmp) #13, !dbg !6363
  store i32 %call3, ptr %error, align 4, !dbg !6364
  br label %if.end4, !dbg !6365

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %error, align 4, !dbg !6366
  store i32 %4, ptr %retval, align 4, !dbg !6367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6367

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 120, ptr %tmp) #12, !dbg !6368
  %5 = load i32, ptr %retval, align 4, !dbg !6368
  ret i32 %5, !dbg !6368
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_compat_statfs64(ptr noundef %ubuf, ptr noundef %kbuf) #0 align 16 !dbg !6369 {
entry:
  %retval = alloca i32, align 4
  %ubuf.addr = alloca ptr, align 8
  %kbuf.addr = alloca ptr, align 8
  %buf = alloca %struct.compat_statfs64, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !6373, metadata !DIExpression()), !dbg !6376
  store ptr %kbuf, ptr %kbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kbuf.addr, metadata !6374, metadata !DIExpression()), !dbg !6377
  call void @llvm.lifetime.start.p0(i64 84, ptr %buf) #12, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6375, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %kbuf.addr, align 8, !dbg !6380
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 1, !dbg !6382
  %1 = load i64, ptr %f_bsize, align 8, !dbg !6382
  %2 = load ptr, ptr %kbuf.addr, align 8, !dbg !6383
  %f_frsize = getelementptr inbounds %struct.kstatfs, ptr %2, i32 0, i32 9, !dbg !6384
  %3 = load i64, ptr %f_frsize, align 8, !dbg !6384
  %or = or i64 %1, %3, !dbg !6385
  %and = and i64 %or, -4294967296, !dbg !6386
  %tobool = icmp ne i64 %and, 0, !dbg !6386
  br i1 %tobool, label %if.then, label %if.end, !dbg !6387

if.then:                                          ; preds = %entry
  store i32 -75, ptr %retval, align 4, !dbg !6388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6388

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 4 %buf, i8 0, i64 84, i1 false), !dbg !6389
  %4 = load ptr, ptr %kbuf.addr, align 8, !dbg !6390
  %f_type = getelementptr inbounds %struct.kstatfs, ptr %4, i32 0, i32 0, !dbg !6391
  %5 = load i64, ptr %f_type, align 8, !dbg !6391
  %conv = trunc i64 %5 to i32, !dbg !6390
  %f_type1 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 0, !dbg !6392
  store i32 %conv, ptr %f_type1, align 4, !dbg !6393
  %6 = load ptr, ptr %kbuf.addr, align 8, !dbg !6394
  %f_bsize2 = getelementptr inbounds %struct.kstatfs, ptr %6, i32 0, i32 1, !dbg !6395
  %7 = load i64, ptr %f_bsize2, align 8, !dbg !6395
  %conv3 = trunc i64 %7 to i32, !dbg !6394
  %f_bsize4 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 1, !dbg !6396
  store i32 %conv3, ptr %f_bsize4, align 4, !dbg !6397
  %8 = load ptr, ptr %kbuf.addr, align 8, !dbg !6398
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %8, i32 0, i32 2, !dbg !6399
  %9 = load i64, ptr %f_blocks, align 8, !dbg !6399
  %f_blocks5 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 2, !dbg !6400
  store i64 %9, ptr %f_blocks5, align 4, !dbg !6401
  %10 = load ptr, ptr %kbuf.addr, align 8, !dbg !6402
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %10, i32 0, i32 3, !dbg !6403
  %11 = load i64, ptr %f_bfree, align 8, !dbg !6403
  %f_bfree6 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 3, !dbg !6404
  store i64 %11, ptr %f_bfree6, align 4, !dbg !6405
  %12 = load ptr, ptr %kbuf.addr, align 8, !dbg !6406
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %12, i32 0, i32 4, !dbg !6407
  %13 = load i64, ptr %f_bavail, align 8, !dbg !6407
  %f_bavail7 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 4, !dbg !6408
  store i64 %13, ptr %f_bavail7, align 4, !dbg !6409
  %14 = load ptr, ptr %kbuf.addr, align 8, !dbg !6410
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %14, i32 0, i32 5, !dbg !6411
  %15 = load i64, ptr %f_files, align 8, !dbg !6411
  %f_files8 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 5, !dbg !6412
  store i64 %15, ptr %f_files8, align 4, !dbg !6413
  %16 = load ptr, ptr %kbuf.addr, align 8, !dbg !6414
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %16, i32 0, i32 6, !dbg !6415
  %17 = load i64, ptr %f_ffree, align 8, !dbg !6415
  %f_ffree9 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 6, !dbg !6416
  store i64 %17, ptr %f_ffree9, align 4, !dbg !6417
  %18 = load ptr, ptr %kbuf.addr, align 8, !dbg !6418
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %18, i32 0, i32 8, !dbg !6419
  %19 = load i64, ptr %f_namelen, align 8, !dbg !6419
  %conv10 = trunc i64 %19 to i32, !dbg !6418
  %f_namelen11 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 8, !dbg !6420
  store i32 %conv10, ptr %f_namelen11, align 4, !dbg !6421
  %20 = load ptr, ptr %kbuf.addr, align 8, !dbg !6422
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %20, i32 0, i32 7, !dbg !6423
  %val = getelementptr inbounds %struct.__kernel_fsid_t, ptr %f_fsid, i32 0, i32 0, !dbg !6424
  %arrayidx = getelementptr [2 x i32], ptr %val, i64 0, i64 0, !dbg !6422
  %21 = load i32, ptr %arrayidx, align 8, !dbg !6422
  %f_fsid12 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 7, !dbg !6425
  %val13 = getelementptr inbounds %struct.__kernel_fsid_t, ptr %f_fsid12, i32 0, i32 0, !dbg !6426
  %arrayidx14 = getelementptr [2 x i32], ptr %val13, i64 0, i64 0, !dbg !6427
  store i32 %21, ptr %arrayidx14, align 4, !dbg !6428
  %22 = load ptr, ptr %kbuf.addr, align 8, !dbg !6429
  %f_fsid15 = getelementptr inbounds %struct.kstatfs, ptr %22, i32 0, i32 7, !dbg !6430
  %val16 = getelementptr inbounds %struct.__kernel_fsid_t, ptr %f_fsid15, i32 0, i32 0, !dbg !6431
  %arrayidx17 = getelementptr [2 x i32], ptr %val16, i64 0, i64 1, !dbg !6429
  %23 = load i32, ptr %arrayidx17, align 4, !dbg !6429
  %f_fsid18 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 7, !dbg !6432
  %val19 = getelementptr inbounds %struct.__kernel_fsid_t, ptr %f_fsid18, i32 0, i32 0, !dbg !6433
  %arrayidx20 = getelementptr [2 x i32], ptr %val19, i64 0, i64 1, !dbg !6434
  store i32 %23, ptr %arrayidx20, align 4, !dbg !6435
  %24 = load ptr, ptr %kbuf.addr, align 8, !dbg !6436
  %f_frsize21 = getelementptr inbounds %struct.kstatfs, ptr %24, i32 0, i32 9, !dbg !6437
  %25 = load i64, ptr %f_frsize21, align 8, !dbg !6437
  %conv22 = trunc i64 %25 to i32, !dbg !6436
  %f_frsize23 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 9, !dbg !6438
  store i32 %conv22, ptr %f_frsize23, align 4, !dbg !6439
  %26 = load ptr, ptr %kbuf.addr, align 8, !dbg !6440
  %f_flags = getelementptr inbounds %struct.kstatfs, ptr %26, i32 0, i32 10, !dbg !6441
  %27 = load i64, ptr %f_flags, align 8, !dbg !6441
  %conv24 = trunc i64 %27 to i32, !dbg !6440
  %f_flags25 = getelementptr inbounds %struct.compat_statfs64, ptr %buf, i32 0, i32 10, !dbg !6442
  store i32 %conv24, ptr %f_flags25, align 4, !dbg !6443
  %28 = load ptr, ptr %ubuf.addr, align 8, !dbg !6444
  %call = call i64 @copy_to_user(ptr noundef %28, ptr noundef %buf, i64 noundef 84) #13, !dbg !6446
  %tobool26 = icmp ne i64 %call, 0, !dbg !6446
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !6447

if.then27:                                        ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !6448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6448

if.end28:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6449

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 84, ptr %buf) #12, !dbg !6450
  %29 = load i32, ptr %retval, align 4, !dbg !6450
  ret i32 %29, !dbg !6450
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_statfs64(ptr noundef %regs) #0 align 16 !dbg !6451 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6453, metadata !DIExpression()), !dbg !6454
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6454
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6454
  %1 = load i64, ptr %bx, align 8, !dbg !6454
  %conv = trunc i64 %1 to i32, !dbg !6454
  %conv1 = zext i32 %conv to i64, !dbg !6454
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6454
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6454
  %3 = load i64, ptr %cx, align 8, !dbg !6454
  %conv2 = trunc i64 %3 to i32, !dbg !6454
  %conv3 = zext i32 %conv2 to i64, !dbg !6454
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6454
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6454
  %5 = load i64, ptr %dx, align 8, !dbg !6454
  %conv4 = trunc i64 %5 to i32, !dbg !6454
  %conv5 = zext i32 %conv4 to i64, !dbg !6454
  %call = call i64 @__se_compat_sys_statfs64(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #13, !dbg !6454
  ret i64 %call, !dbg !6454
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_statfs64(i64 noundef %pathname, i64 noundef %sz, i64 noundef %buf) #0 align 16 !dbg !6455 {
entry:
  %pathname.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  store i64 %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !6457, metadata !DIExpression()), !dbg !6460
  store i64 %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !6458, metadata !DIExpression()), !dbg !6460
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6459, metadata !DIExpression()), !dbg !6460
  %0 = load i64, ptr %pathname.addr, align 8, !dbg !6460
  %1 = inttoptr i64 %0 to ptr, !dbg !6460
  %2 = load i64, ptr %sz.addr, align 8, !dbg !6460
  %conv = trunc i64 %2 to i32, !dbg !6460
  %3 = load i64, ptr %buf.addr, align 8, !dbg !6460
  %4 = inttoptr i64 %3 to ptr, !dbg !6460
  %call = call i64 @__do_compat_sys_statfs64(ptr noundef %1, i32 noundef %conv, ptr noundef %4) #13, !dbg !6460
  ret i64 %call, !dbg !6460
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kcompat_sys_fstatfs64(i32 noundef %fd, i32 noundef %sz, ptr noundef %buf) #0 align 16 !dbg !6461 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %sz.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %tmp = alloca %struct.kstatfs, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6465, metadata !DIExpression()), !dbg !6470
  store i32 %sz, ptr %sz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !6466, metadata !DIExpression()), !dbg !6471
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6467, metadata !DIExpression()), !dbg !6472
  call void @llvm.lifetime.start.p0(i64 120, ptr %tmp) #12, !dbg !6473
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6468, metadata !DIExpression()), !dbg !6474
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6475
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6469, metadata !DIExpression()), !dbg !6476
  %0 = load i32, ptr %sz.addr, align 4, !dbg !6477
  %conv = zext i32 %0 to i64, !dbg !6477
  %cmp = icmp ne i64 %conv, 84, !dbg !6479
  br i1 %cmp, label %if.then, label %if.end, !dbg !6480

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6481

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %fd.addr, align 4, !dbg !6482
  %call = call i32 @fd_statfs(i32 noundef %1, ptr noundef %tmp) #13, !dbg !6483
  store i32 %call, ptr %error, align 4, !dbg !6484
  %2 = load i32, ptr %error, align 4, !dbg !6485
  %tobool = icmp ne i32 %2, 0, !dbg !6485
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !6487

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6488
  %call3 = call i32 @put_compat_statfs64(ptr noundef %3, ptr noundef %tmp) #13, !dbg !6489
  store i32 %call3, ptr %error, align 4, !dbg !6490
  br label %if.end4, !dbg !6491

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %error, align 4, !dbg !6492
  store i32 %4, ptr %retval, align 4, !dbg !6493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6493

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6494
  call void @llvm.lifetime.end.p0(i64 120, ptr %tmp) #12, !dbg !6494
  %5 = load i32, ptr %retval, align 4, !dbg !6494
  ret i32 %5, !dbg !6494
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_fstatfs64(ptr noundef %regs) #0 align 16 !dbg !6495 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6497, metadata !DIExpression()), !dbg !6498
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6498
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6498
  %1 = load i64, ptr %bx, align 8, !dbg !6498
  %conv = trunc i64 %1 to i32, !dbg !6498
  %conv1 = zext i32 %conv to i64, !dbg !6498
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6498
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6498
  %3 = load i64, ptr %cx, align 8, !dbg !6498
  %conv2 = trunc i64 %3 to i32, !dbg !6498
  %conv3 = zext i32 %conv2 to i64, !dbg !6498
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6498
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6498
  %5 = load i64, ptr %dx, align 8, !dbg !6498
  %conv4 = trunc i64 %5 to i32, !dbg !6498
  %conv5 = zext i32 %conv4 to i64, !dbg !6498
  %call = call i64 @__se_compat_sys_fstatfs64(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #13, !dbg !6498
  ret i64 %call, !dbg !6498
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_fstatfs64(i64 noundef %fd, i64 noundef %sz, i64 noundef %buf) #0 align 16 !dbg !6499 {
entry:
  %fd.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6501, metadata !DIExpression()), !dbg !6504
  store i64 %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !6502, metadata !DIExpression()), !dbg !6504
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6503, metadata !DIExpression()), !dbg !6504
  %0 = load i64, ptr %fd.addr, align 8, !dbg !6504
  %conv = trunc i64 %0 to i32, !dbg !6504
  %1 = load i64, ptr %sz.addr, align 8, !dbg !6504
  %conv1 = trunc i64 %1 to i32, !dbg !6504
  %2 = load i64, ptr %buf.addr, align 8, !dbg !6504
  %3 = inttoptr i64 %2 to ptr, !dbg !6504
  %call = call i64 @__do_compat_sys_fstatfs64(i32 noundef %conv, i32 noundef %conv1, ptr noundef %3) #13, !dbg !6504
  ret i64 %call, !dbg !6504
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_ustat(ptr noundef %regs) #0 align 16 !dbg !6505 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6507, metadata !DIExpression()), !dbg !6508
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6508
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6508
  %1 = load i64, ptr %bx, align 8, !dbg !6508
  %conv = trunc i64 %1 to i32, !dbg !6508
  %conv1 = zext i32 %conv to i64, !dbg !6508
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6508
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6508
  %3 = load i64, ptr %cx, align 8, !dbg !6508
  %conv2 = trunc i64 %3 to i32, !dbg !6508
  %conv3 = zext i32 %conv2 to i64, !dbg !6508
  %call = call i64 @__se_compat_sys_ustat(i64 noundef %conv1, i64 noundef %conv3) #13, !dbg !6508
  ret i64 %call, !dbg !6508
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_ustat(i64 noundef %dev, i64 noundef %u) #0 align 16 !dbg !6509 {
entry:
  %dev.addr = alloca i64, align 8
  %u.addr = alloca i64, align 8
  store i64 %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6511, metadata !DIExpression()), !dbg !6513
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !6512, metadata !DIExpression()), !dbg !6513
  %0 = load i64, ptr %dev.addr, align 8, !dbg !6513
  %conv = trunc i64 %0 to i32, !dbg !6513
  %1 = load i64, ptr %u.addr, align 8, !dbg !6513
  %2 = inttoptr i64 %1 to ptr, !dbg !6513
  %call = call i64 @__do_compat_sys_ustat(i32 noundef %conv, ptr noundef %2) #13, !dbg !6513
  ret i64 %call, !dbg !6513
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6514 dso_local i32 @security_sb_statfs(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @flags_by_mnt(i32 noundef %mnt_flags) #0 align 16 !dbg !6516 {
entry:
  %mnt_flags.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store i32 %mnt_flags, ptr %mnt_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mnt_flags.addr, metadata !6518, metadata !DIExpression()), !dbg !6520
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #12, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6519, metadata !DIExpression()), !dbg !6522
  store i32 0, ptr %flags, align 4, !dbg !6522
  %0 = load i32, ptr %mnt_flags.addr, align 4, !dbg !6523
  %and = and i32 %0, 64, !dbg !6525
  %tobool = icmp ne i32 %and, 0, !dbg !6525
  br i1 %tobool, label %if.then, label %if.end, !dbg !6526

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %flags, align 4, !dbg !6527
  %or = or i32 %1, 1, !dbg !6527
  store i32 %or, ptr %flags, align 4, !dbg !6527
  br label %if.end, !dbg !6528

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %mnt_flags.addr, align 4, !dbg !6529
  %and1 = and i32 %2, 1, !dbg !6531
  %tobool2 = icmp ne i32 %and1, 0, !dbg !6531
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6532

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %flags, align 4, !dbg !6533
  %or4 = or i32 %3, 2, !dbg !6533
  store i32 %or4, ptr %flags, align 4, !dbg !6533
  br label %if.end5, !dbg !6534

if.end5:                                          ; preds = %if.then3, %if.end
  %4 = load i32, ptr %mnt_flags.addr, align 4, !dbg !6535
  %and6 = and i32 %4, 2, !dbg !6537
  %tobool7 = icmp ne i32 %and6, 0, !dbg !6537
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6538

if.then8:                                         ; preds = %if.end5
  %5 = load i32, ptr %flags, align 4, !dbg !6539
  %or9 = or i32 %5, 4, !dbg !6539
  store i32 %or9, ptr %flags, align 4, !dbg !6539
  br label %if.end10, !dbg !6540

if.end10:                                         ; preds = %if.then8, %if.end5
  %6 = load i32, ptr %mnt_flags.addr, align 4, !dbg !6541
  %and11 = and i32 %6, 4, !dbg !6543
  %tobool12 = icmp ne i32 %and11, 0, !dbg !6543
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6544

if.then13:                                        ; preds = %if.end10
  %7 = load i32, ptr %flags, align 4, !dbg !6545
  %or14 = or i32 %7, 8, !dbg !6545
  store i32 %or14, ptr %flags, align 4, !dbg !6545
  br label %if.end15, !dbg !6546

if.end15:                                         ; preds = %if.then13, %if.end10
  %8 = load i32, ptr %mnt_flags.addr, align 4, !dbg !6547
  %and16 = and i32 %8, 8, !dbg !6549
  %tobool17 = icmp ne i32 %and16, 0, !dbg !6549
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !6550

if.then18:                                        ; preds = %if.end15
  %9 = load i32, ptr %flags, align 4, !dbg !6551
  %or19 = or i32 %9, 1024, !dbg !6551
  store i32 %or19, ptr %flags, align 4, !dbg !6551
  br label %if.end20, !dbg !6552

if.end20:                                         ; preds = %if.then18, %if.end15
  %10 = load i32, ptr %mnt_flags.addr, align 4, !dbg !6553
  %and21 = and i32 %10, 16, !dbg !6555
  %tobool22 = icmp ne i32 %and21, 0, !dbg !6555
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !6556

if.then23:                                        ; preds = %if.end20
  %11 = load i32, ptr %flags, align 4, !dbg !6557
  %or24 = or i32 %11, 2048, !dbg !6557
  store i32 %or24, ptr %flags, align 4, !dbg !6557
  br label %if.end25, !dbg !6558

if.end25:                                         ; preds = %if.then23, %if.end20
  %12 = load i32, ptr %mnt_flags.addr, align 4, !dbg !6559
  %and26 = and i32 %12, 32, !dbg !6561
  %tobool27 = icmp ne i32 %and26, 0, !dbg !6561
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !6562

if.then28:                                        ; preds = %if.end25
  %13 = load i32, ptr %flags, align 4, !dbg !6563
  %or29 = or i32 %13, 4096, !dbg !6563
  store i32 %or29, ptr %flags, align 4, !dbg !6563
  br label %if.end30, !dbg !6564

if.end30:                                         ; preds = %if.then28, %if.end25
  %14 = load i32, ptr %mnt_flags.addr, align 4, !dbg !6565
  %and31 = and i32 %14, 128, !dbg !6567
  %tobool32 = icmp ne i32 %and31, 0, !dbg !6567
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !6568

if.then33:                                        ; preds = %if.end30
  %15 = load i32, ptr %flags, align 4, !dbg !6569
  %or34 = or i32 %15, 8192, !dbg !6569
  store i32 %or34, ptr %flags, align 4, !dbg !6569
  br label %if.end35, !dbg !6570

if.end35:                                         ; preds = %if.then33, %if.end30
  %16 = load i32, ptr %flags, align 4, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #12, !dbg !6572
  ret i32 %16, !dbg !6573
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @flags_by_sb(i32 noundef %s_flags) #0 align 16 !dbg !6574 {
entry:
  %s_flags.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store i32 %s_flags, ptr %s_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s_flags.addr, metadata !6576, metadata !DIExpression()), !dbg !6578
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #12, !dbg !6579
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6577, metadata !DIExpression()), !dbg !6580
  store i32 0, ptr %flags, align 4, !dbg !6580
  %0 = load i32, ptr %s_flags.addr, align 4, !dbg !6581
  %conv = sext i32 %0 to i64, !dbg !6581
  %and = and i64 %conv, 16, !dbg !6583
  %tobool = icmp ne i64 %and, 0, !dbg !6583
  br i1 %tobool, label %if.then, label %if.end, !dbg !6584

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %flags, align 4, !dbg !6585
  %or = or i32 %1, 16, !dbg !6585
  store i32 %or, ptr %flags, align 4, !dbg !6585
  br label %if.end, !dbg !6586

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %s_flags.addr, align 4, !dbg !6587
  %conv1 = sext i32 %2 to i64, !dbg !6587
  %and2 = and i64 %conv1, 64, !dbg !6589
  %tobool3 = icmp ne i64 %and2, 0, !dbg !6589
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !6590

if.then4:                                         ; preds = %if.end
  %3 = load i32, ptr %flags, align 4, !dbg !6591
  %or5 = or i32 %3, 64, !dbg !6591
  store i32 %or5, ptr %flags, align 4, !dbg !6591
  br label %if.end6, !dbg !6592

if.end6:                                          ; preds = %if.then4, %if.end
  %4 = load i32, ptr %s_flags.addr, align 4, !dbg !6593
  %conv7 = sext i32 %4 to i64, !dbg !6593
  %and8 = and i64 %conv7, 1, !dbg !6595
  %tobool9 = icmp ne i64 %and8, 0, !dbg !6595
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !6596

if.then10:                                        ; preds = %if.end6
  %5 = load i32, ptr %flags, align 4, !dbg !6597
  %or11 = or i32 %5, 1, !dbg !6597
  store i32 %or11, ptr %flags, align 4, !dbg !6597
  br label %if.end12, !dbg !6598

if.end12:                                         ; preds = %if.then10, %if.end6
  %6 = load i32, ptr %flags, align 4, !dbg !6599
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #12, !dbg !6600
  ret i32 %6, !dbg !6601
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6602 dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @__to_fd(i64 noundef %v) #4 align 16 !dbg !6605 {
entry:
  %retval = alloca %struct.fd, align 8
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6609, metadata !DIExpression()), !dbg !6610
  %file = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 0, !dbg !6611
  %0 = load i64, ptr %v.addr, align 8, !dbg !6612
  %and = and i64 %0, -4, !dbg !6613
  %1 = inttoptr i64 %and to ptr, !dbg !6614
  store ptr %1, ptr %file, align 8, !dbg !6611
  %flags = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 1, !dbg !6611
  %2 = load i64, ptr %v.addr, align 8, !dbg !6615
  %and1 = and i64 %2, 3, !dbg !6616
  %conv = trunc i64 %and1 to i32, !dbg !6615
  store i32 %conv, ptr %flags, align 8, !dbg !6611
  %3 = load { ptr, i32 }, ptr %retval, align 8, !dbg !6617
  ret { ptr, i32 } %3, !dbg !6617
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6618 dso_local i64 @__fdget_raw(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6621 dso_local void @fput(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_statfs(ptr noundef %pathname, ptr noundef %buf) #4 align 16 !dbg !6622 {
entry:
  %pathname.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %st = alloca %struct.kstatfs, align 8
  %error = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !6626, metadata !DIExpression()), !dbg !6630
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6627, metadata !DIExpression()), !dbg !6630
  call void @llvm.lifetime.start.p0(i64 120, ptr %st) #12, !dbg !6631
  call void @llvm.dbg.declare(metadata ptr %st, metadata !6628, metadata !DIExpression()), !dbg !6632
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6633
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6629, metadata !DIExpression()), !dbg !6634
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !6635
  %call = call i32 @user_statfs(ptr noundef %0, ptr noundef %st) #13, !dbg !6636
  store i32 %call, ptr %error, align 4, !dbg !6634
  %1 = load i32, ptr %error, align 4, !dbg !6637
  %tobool = icmp ne i32 %1, 0, !dbg !6637
  br i1 %tobool, label %if.end, label %if.then, !dbg !6639

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6640
  %call1 = call i32 @do_statfs_native(ptr noundef %st, ptr noundef %2) #13, !dbg !6641
  store i32 %call1, ptr %error, align 4, !dbg !6642
  br label %if.end, !dbg !6643

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %error, align 4, !dbg !6644
  %conv = sext i32 %3 to i64, !dbg !6644
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6645
  call void @llvm.lifetime.end.p0(i64 120, ptr %st) #12, !dbg !6645
  ret i64 %conv, !dbg !6646
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_statfs_native(ptr noundef %st, ptr noundef %p) #0 align 16 !dbg !6647 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %buf = alloca %struct.statfs, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %st, ptr %st.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %st.addr, metadata !6651, metadata !DIExpression()), !dbg !6654
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6652, metadata !DIExpression()), !dbg !6655
  call void @llvm.lifetime.start.p0(i64 120, ptr %buf) #12, !dbg !6656
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6653, metadata !DIExpression()), !dbg !6657
  %0 = load ptr, ptr %st.addr, align 8, !dbg !6658
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buf, ptr align 8 %0, i64 120, i1 false), !dbg !6660
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6661
  %call = call i64 @copy_to_user(ptr noundef %1, ptr noundef %buf, i64 noundef 120) #13, !dbg !6663
  %tobool = icmp ne i64 %call, 0, !dbg !6663
  br i1 %tobool, label %if.then, label %if.end, !dbg !6664

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6665

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6666

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 120, ptr %buf) #12, !dbg !6667
  %2 = load i32, ptr %retval, align 4, !dbg !6667
  ret i32 %2, !dbg !6667
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #7 align 16 !dbg !6668 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6673, metadata !DIExpression()), !dbg !6676
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6674, metadata !DIExpression()), !dbg !6677
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6675, metadata !DIExpression()), !dbg !6678
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6679
  %1 = load i64, ptr %n.addr, align 8, !dbg !6681
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #13, !dbg !6682
  br i1 %call, label %if.then, label %if.end, !dbg !6683

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6684
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6685
  %4 = load i64, ptr %n.addr, align 8, !dbg !6686
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #13, !dbg !6687
  store i64 %call1, ptr %n.addr, align 8, !dbg !6688
  br label %if.end, !dbg !6689

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6690
  ret i64 %5, !dbg !6691
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #7 align 16 !dbg !6692 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6696, metadata !DIExpression()), !dbg !6706
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6697, metadata !DIExpression()), !dbg !6707
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6698, metadata !DIExpression()), !dbg !6708
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #12, !dbg !6709
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6699, metadata !DIExpression()), !dbg !6710
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6711
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6712
  %conv = trunc i64 %1 to i32, !dbg !6712
  store i32 %conv, ptr %sz, align 4, !dbg !6710
  %2 = load i32, ptr %sz, align 4, !dbg !6713
  %cmp = icmp sge i32 %2, 0, !dbg !6713
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6713

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6713
  %conv2 = sext i32 %3 to i64, !dbg !6713
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6713
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6713
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6715
  %lnot = xor i1 %5, true, !dbg !6713
  %lnot5 = xor i1 %lnot, true, !dbg !6713
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6713
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6713
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6713
  %tobool = icmp ne i64 %expval, 0, !dbg !6713
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6716

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6717
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6720
  br i1 %7, label %if.else, label %if.then7, !dbg !6721

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6722
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6723
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #13, !dbg !6724
  br label %if.end11, !dbg !6724

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6725, !range !6727, !noundef !724
  %tobool8 = trunc i8 %10 to i1, !dbg !6725
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6728

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #13, !dbg !6729, !srcloc !6730
  br label %if.end, !dbg !6729

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #13, !dbg !6731, !srcloc !6732
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6733

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6734
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6700, metadata !DIExpression()), !dbg !6734
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6734
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6734
  %lnot15 = xor i1 %cmp13, true, !dbg !6734
  %lnot17 = xor i1 %lnot15, true, !dbg !6734
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6734
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6734
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6735
  %tobool19 = icmp ne i32 %12, 0, !dbg !6735
  %lnot20 = xor i1 %tobool19, true, !dbg !6735
  %lnot22 = xor i1 %lnot20, true, !dbg !6735
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6735
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6735
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6735
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6735
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6734

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6735

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6736
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6703, metadata !DIExpression()), !dbg !6736
  store i32 2307, ptr %__flags, align 4, !dbg !6736
  br label %do.body28, !dbg !6736

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6737

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6737

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6736

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6739
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #12, !dbg !6739, !srcloc !6741
  br label %do.cond30, !dbg !6739

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6739

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6736

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6742

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6742

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6735
  br label %do.cond35, !dbg !6736

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6736

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6736

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6734
  %tobool38 = icmp ne i32 %14, 0, !dbg !6734
  %lnot39 = xor i1 %tobool38, true, !dbg !6734
  %lnot41 = xor i1 %lnot39, true, !dbg !6734
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6734
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6734
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6734
  store i64 %expval44, ptr %tmp, align 8, !dbg !6735
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6744
  %15 = load i64, ptr %tmp, align 8, !dbg !6734
  %tobool45 = icmp ne i64 %15, 0, !dbg !6744
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6745

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6746

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6747
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6748
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6749, !range !6727, !noundef !724
  %tobool48 = trunc i8 %18 to i1, !dbg !6749
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #13, !dbg !6750
  store i1 true, ptr %retval, align 1, !dbg !6751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6751

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #12, !dbg !6752
  %19 = load i1, ptr %retval, align 1, !dbg !6752
  ret i1 %19, !dbg !6752
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6753 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !6754 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6758, metadata !DIExpression()), !dbg !6760
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6759, metadata !DIExpression()), !dbg !6761
  %0 = load i32, ptr %size.addr, align 4, !dbg !6762
  %1 = load i64, ptr %count.addr, align 8, !dbg !6764
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #13, !dbg !6765
  ret void, !dbg !6766
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6767 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6768 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !6769 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6773, metadata !DIExpression()), !dbg !6776
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6774, metadata !DIExpression()), !dbg !6777
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6775, metadata !DIExpression()), !dbg !6778
  ret void, !dbg !6779
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6780 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_statfs64(ptr noundef %pathname, i64 noundef %sz, ptr noundef %buf) #4 align 16 !dbg !6781 {
entry:
  %retval = alloca i64, align 8
  %pathname.addr = alloca ptr, align 8
  %sz.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %st = alloca %struct.kstatfs, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !6785, metadata !DIExpression()), !dbg !6790
  store i64 %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !6786, metadata !DIExpression()), !dbg !6790
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6787, metadata !DIExpression()), !dbg !6790
  call void @llvm.lifetime.start.p0(i64 120, ptr %st) #12, !dbg !6791
  call void @llvm.dbg.declare(metadata ptr %st, metadata !6788, metadata !DIExpression()), !dbg !6792
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6793
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6789, metadata !DIExpression()), !dbg !6794
  %0 = load i64, ptr %sz.addr, align 8, !dbg !6795
  %cmp = icmp ne i64 %0, 120, !dbg !6797
  br i1 %cmp, label %if.then, label %if.end, !dbg !6798

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6799

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pathname.addr, align 8, !dbg !6800
  %call = call i32 @user_statfs(ptr noundef %1, ptr noundef %st) #13, !dbg !6801
  store i32 %call, ptr %error, align 4, !dbg !6802
  %2 = load i32, ptr %error, align 4, !dbg !6803
  %tobool = icmp ne i32 %2, 0, !dbg !6803
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !6805

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6806
  %call2 = call i32 @do_statfs64(ptr noundef %st, ptr noundef %3) #13, !dbg !6807
  store i32 %call2, ptr %error, align 4, !dbg !6808
  br label %if.end3, !dbg !6809

if.end3:                                          ; preds = %if.then1, %if.end
  %4 = load i32, ptr %error, align 4, !dbg !6810
  %conv = sext i32 %4 to i64, !dbg !6810
  store i64 %conv, ptr %retval, align 8, !dbg !6811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6811

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6812
  call void @llvm.lifetime.end.p0(i64 120, ptr %st) #12, !dbg !6812
  %5 = load i64, ptr %retval, align 8, !dbg !6812
  ret i64 %5, !dbg !6812
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_statfs64(ptr noundef %st, ptr noundef %p) #0 align 16 !dbg !6813 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %buf = alloca %struct.statfs64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %st, ptr %st.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %st.addr, metadata !6817, metadata !DIExpression()), !dbg !6820
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6818, metadata !DIExpression()), !dbg !6821
  call void @llvm.lifetime.start.p0(i64 120, ptr %buf) #12, !dbg !6822
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6819, metadata !DIExpression()), !dbg !6823
  %0 = load ptr, ptr %st.addr, align 8, !dbg !6824
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buf, ptr align 8 %0, i64 120, i1 false), !dbg !6826
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6827
  %call = call i64 @copy_to_user(ptr noundef %1, ptr noundef %buf, i64 noundef 120) #13, !dbg !6829
  %tobool = icmp ne i64 %call, 0, !dbg !6829
  br i1 %tobool, label %if.then, label %if.end, !dbg !6830

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6831

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6832

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 120, ptr %buf) #12, !dbg !6833
  %2 = load i32, ptr %retval, align 4, !dbg !6833
  ret i32 %2, !dbg !6833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_fstatfs(i32 noundef %fd, ptr noundef %buf) #4 align 16 !dbg !6834 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %st = alloca %struct.kstatfs, align 8
  %error = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6838, metadata !DIExpression()), !dbg !6842
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6839, metadata !DIExpression()), !dbg !6842
  call void @llvm.lifetime.start.p0(i64 120, ptr %st) #12, !dbg !6843
  call void @llvm.dbg.declare(metadata ptr %st, metadata !6840, metadata !DIExpression()), !dbg !6844
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6845
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6841, metadata !DIExpression()), !dbg !6846
  %0 = load i32, ptr %fd.addr, align 4, !dbg !6847
  %call = call i32 @fd_statfs(i32 noundef %0, ptr noundef %st) #13, !dbg !6848
  store i32 %call, ptr %error, align 4, !dbg !6846
  %1 = load i32, ptr %error, align 4, !dbg !6849
  %tobool = icmp ne i32 %1, 0, !dbg !6849
  br i1 %tobool, label %if.end, label %if.then, !dbg !6851

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6852
  %call1 = call i32 @do_statfs_native(ptr noundef %st, ptr noundef %2) #13, !dbg !6853
  store i32 %call1, ptr %error, align 4, !dbg !6854
  br label %if.end, !dbg !6855

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %error, align 4, !dbg !6856
  %conv = sext i32 %3 to i64, !dbg !6856
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6857
  call void @llvm.lifetime.end.p0(i64 120, ptr %st) #12, !dbg !6857
  ret i64 %conv, !dbg !6858
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_fstatfs64(i32 noundef %fd, i64 noundef %sz, ptr noundef %buf) #4 align 16 !dbg !6859 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %sz.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %st = alloca %struct.kstatfs, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6863, metadata !DIExpression()), !dbg !6868
  store i64 %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !6864, metadata !DIExpression()), !dbg !6868
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6865, metadata !DIExpression()), !dbg !6868
  call void @llvm.lifetime.start.p0(i64 120, ptr %st) #12, !dbg !6869
  call void @llvm.dbg.declare(metadata ptr %st, metadata !6866, metadata !DIExpression()), !dbg !6870
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6871
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6867, metadata !DIExpression()), !dbg !6872
  %0 = load i64, ptr %sz.addr, align 8, !dbg !6873
  %cmp = icmp ne i64 %0, 120, !dbg !6875
  br i1 %cmp, label %if.then, label %if.end, !dbg !6876

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6877

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %fd.addr, align 4, !dbg !6878
  %call = call i32 @fd_statfs(i32 noundef %1, ptr noundef %st) #13, !dbg !6879
  store i32 %call, ptr %error, align 4, !dbg !6880
  %2 = load i32, ptr %error, align 4, !dbg !6881
  %tobool = icmp ne i32 %2, 0, !dbg !6881
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !6883

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6884
  %call2 = call i32 @do_statfs64(ptr noundef %st, ptr noundef %3) #13, !dbg !6885
  store i32 %call2, ptr %error, align 4, !dbg !6886
  br label %if.end3, !dbg !6887

if.end3:                                          ; preds = %if.then1, %if.end
  %4 = load i32, ptr %error, align 4, !dbg !6888
  %conv = sext i32 %4 to i64, !dbg !6888
  store i64 %conv, ptr %retval, align 8, !dbg !6889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6889

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6890
  call void @llvm.lifetime.end.p0(i64 120, ptr %st) #12, !dbg !6890
  %5 = load i64, ptr %retval, align 8, !dbg !6890
  ret i64 %5, !dbg !6890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_ustat(i32 noundef %dev, ptr noundef %ubuf) #4 align 16 !dbg !6891 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca i32, align 4
  %ubuf.addr = alloca ptr, align 8
  %tmp = alloca %struct.ustat, align 8
  %sbuf = alloca %struct.kstatfs, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6895, metadata !DIExpression()), !dbg !6900
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !6896, metadata !DIExpression()), !dbg !6900
  call void @llvm.lifetime.start.p0(i64 32, ptr %tmp) #12, !dbg !6901
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6897, metadata !DIExpression()), !dbg !6902
  call void @llvm.lifetime.start.p0(i64 120, ptr %sbuf) #12, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %sbuf, metadata !6898, metadata !DIExpression()), !dbg !6904
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6899, metadata !DIExpression()), !dbg !6906
  %0 = load i32, ptr %dev.addr, align 4, !dbg !6907
  %call = call i32 @new_decode_dev(i32 noundef %0) #13, !dbg !6908
  %call1 = call i32 @vfs_ustat(i32 noundef %call, ptr noundef %sbuf) #13, !dbg !6909
  store i32 %call1, ptr %err, align 4, !dbg !6906
  %1 = load i32, ptr %err, align 4, !dbg !6910
  %tobool = icmp ne i32 %1, 0, !dbg !6910
  br i1 %tobool, label %if.then, label %if.end, !dbg !6912

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !6913
  %conv = sext i32 %2 to i64, !dbg !6913
  store i64 %conv, ptr %retval, align 8, !dbg !6914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6914

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %tmp, i8 0, i64 32, i1 false), !dbg !6915
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %sbuf, i32 0, i32 3, !dbg !6916
  %3 = load i64, ptr %f_bfree, align 8, !dbg !6916
  %conv2 = trunc i64 %3 to i32, !dbg !6917
  %f_tfree = getelementptr inbounds %struct.ustat, ptr %tmp, i32 0, i32 0, !dbg !6918
  store i32 %conv2, ptr %f_tfree, align 8, !dbg !6919
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %sbuf, i32 0, i32 6, !dbg !6920
  %4 = load i64, ptr %f_ffree, align 8, !dbg !6920
  %f_tinode = getelementptr inbounds %struct.ustat, ptr %tmp, i32 0, i32 1, !dbg !6922
  store i64 %4, ptr %f_tinode, align 8, !dbg !6923
  %5 = load ptr, ptr %ubuf.addr, align 8, !dbg !6924
  %call3 = call i64 @copy_to_user(ptr noundef %5, ptr noundef %tmp, i64 noundef 32) #13, !dbg !6925
  %tobool4 = icmp ne i64 %call3, 0, !dbg !6925
  %6 = zext i1 %tobool4 to i64, !dbg !6925
  %cond = select i1 %tobool4, i32 -14, i32 0, !dbg !6925
  %conv5 = sext i32 %cond to i64, !dbg !6925
  store i64 %conv5, ptr %retval, align 8, !dbg !6926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6926

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !6927
  call void @llvm.lifetime.end.p0(i64 120, ptr %sbuf) #12, !dbg !6927
  call void @llvm.lifetime.end.p0(i64 32, ptr %tmp) #12, !dbg !6927
  %7 = load i64, ptr %retval, align 8, !dbg !6927
  ret i64 %7, !dbg !6927
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vfs_ustat(i32 noundef %dev, ptr noundef %sbuf) #0 align 16 !dbg !6928 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca i32, align 4
  %sbuf.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6932, metadata !DIExpression()), !dbg !6936
  store ptr %sbuf, ptr %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbuf.addr, metadata !6933, metadata !DIExpression()), !dbg !6937
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12, !dbg !6938
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6934, metadata !DIExpression()), !dbg !6939
  %0 = load i32, ptr %dev.addr, align 4, !dbg !6940
  %call = call ptr @user_get_super(i32 noundef %0, i1 noundef zeroext false) #13, !dbg !6941
  store ptr %call, ptr %s, align 8, !dbg !6939
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !6942
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6935, metadata !DIExpression()), !dbg !6943
  %1 = load ptr, ptr %s, align 8, !dbg !6944
  %tobool = icmp ne ptr %1, null, !dbg !6944
  br i1 %tobool, label %if.end, label %if.then, !dbg !6946

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6947

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s, align 8, !dbg !6948
  %s_root = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 13, !dbg !6949
  %3 = load ptr, ptr %s_root, align 8, !dbg !6949
  %4 = load ptr, ptr %sbuf.addr, align 8, !dbg !6950
  %call1 = call i32 @statfs_by_dentry(ptr noundef %3, ptr noundef %4) #13, !dbg !6951
  store i32 %call1, ptr %err, align 4, !dbg !6952
  %5 = load ptr, ptr %s, align 8, !dbg !6953
  call void @drop_super(ptr noundef %5) #13, !dbg !6954
  %6 = load i32, ptr %err, align 4, !dbg !6955
  store i32 %6, ptr %retval, align 4, !dbg !6956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6956

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !6957
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12, !dbg !6957
  %7 = load i32, ptr %retval, align 4, !dbg !6957
  ret i32 %7, !dbg !6957
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @new_decode_dev(i32 noundef %dev) #7 align 16 !dbg !6958 {
entry:
  %dev.addr = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6963, metadata !DIExpression()), !dbg !6966
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #12, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %major, metadata !6964, metadata !DIExpression()), !dbg !6968
  %0 = load i32, ptr %dev.addr, align 4, !dbg !6969
  %and = and i32 %0, 1048320, !dbg !6970
  %shr = lshr i32 %and, 8, !dbg !6971
  store i32 %shr, ptr %major, align 4, !dbg !6968
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #12, !dbg !6972
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !6965, metadata !DIExpression()), !dbg !6973
  %1 = load i32, ptr %dev.addr, align 4, !dbg !6974
  %and1 = and i32 %1, 255, !dbg !6975
  %2 = load i32, ptr %dev.addr, align 4, !dbg !6976
  %shr2 = lshr i32 %2, 12, !dbg !6977
  %and3 = and i32 %shr2, 1048320, !dbg !6978
  %or = or i32 %and1, %and3, !dbg !6979
  store i32 %or, ptr %minor, align 4, !dbg !6973
  %3 = load i32, ptr %major, align 4, !dbg !6980
  %shl = shl i32 %3, 20, !dbg !6980
  %4 = load i32, ptr %minor, align 4, !dbg !6980
  %or4 = or i32 %shl, %4, !dbg !6980
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #12, !dbg !6981
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #12, !dbg !6981
  ret i32 %or4, !dbg !6982
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6983 dso_local ptr @user_get_super(i32 noundef, i1 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6987 dso_local void @drop_super(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_statfs(ptr noundef %pathname, ptr noundef %buf) #4 align 16 !dbg !6988 {
entry:
  %pathname.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tmp = alloca %struct.kstatfs, align 8
  %error = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !6992, metadata !DIExpression()), !dbg !6996
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6993, metadata !DIExpression()), !dbg !6996
  call void @llvm.lifetime.start.p0(i64 120, ptr %tmp) #12, !dbg !6997
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6994, metadata !DIExpression()), !dbg !6998
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6999
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6995, metadata !DIExpression()), !dbg !7000
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !7001
  %call = call i32 @user_statfs(ptr noundef %0, ptr noundef %tmp) #13, !dbg !7002
  store i32 %call, ptr %error, align 4, !dbg !7000
  %1 = load i32, ptr %error, align 4, !dbg !7003
  %tobool = icmp ne i32 %1, 0, !dbg !7003
  br i1 %tobool, label %if.end, label %if.then, !dbg !7005

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !7006
  %call1 = call i32 @put_compat_statfs(ptr noundef %2, ptr noundef %tmp) #13, !dbg !7007
  store i32 %call1, ptr %error, align 4, !dbg !7008
  br label %if.end, !dbg !7009

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %error, align 4, !dbg !7010
  %conv = sext i32 %3 to i64, !dbg !7010
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !7011
  call void @llvm.lifetime.end.p0(i64 120, ptr %tmp) #12, !dbg !7011
  ret i64 %conv, !dbg !7012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_compat_statfs(ptr noundef %ubuf, ptr noundef %kbuf) #0 align 16 !dbg !7013 {
entry:
  %retval = alloca i32, align 4
  %ubuf.addr = alloca ptr, align 8
  %kbuf.addr = alloca ptr, align 8
  %buf = alloca %struct.compat_statfs, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !7017, metadata !DIExpression()), !dbg !7020
  store ptr %kbuf, ptr %kbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kbuf.addr, metadata !7018, metadata !DIExpression()), !dbg !7021
  call void @llvm.lifetime.start.p0(i64 64, ptr %buf) #12, !dbg !7022
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !7019, metadata !DIExpression()), !dbg !7023
  %0 = load ptr, ptr %kbuf.addr, align 8, !dbg !7024
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 2, !dbg !7028
  %1 = load i64, ptr %f_blocks, align 8, !dbg !7028
  %2 = load ptr, ptr %kbuf.addr, align 8, !dbg !7029
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %2, i32 0, i32 3, !dbg !7030
  %3 = load i64, ptr %f_bfree, align 8, !dbg !7030
  %or = or i64 %1, %3, !dbg !7031
  %4 = load ptr, ptr %kbuf.addr, align 8, !dbg !7032
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %4, i32 0, i32 4, !dbg !7033
  %5 = load i64, ptr %f_bavail, align 8, !dbg !7033
  %or1 = or i64 %or, %5, !dbg !7034
  %6 = load ptr, ptr %kbuf.addr, align 8, !dbg !7035
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %6, i32 0, i32 1, !dbg !7036
  %7 = load i64, ptr %f_bsize, align 8, !dbg !7036
  %or2 = or i64 %or1, %7, !dbg !7037
  %8 = load ptr, ptr %kbuf.addr, align 8, !dbg !7038
  %f_frsize = getelementptr inbounds %struct.kstatfs, ptr %8, i32 0, i32 9, !dbg !7039
  %9 = load i64, ptr %f_frsize, align 8, !dbg !7039
  %or3 = or i64 %or2, %9, !dbg !7040
  %and = and i64 %or3, -4294967296, !dbg !7041
  %tobool = icmp ne i64 %and, 0, !dbg !7041
  br i1 %tobool, label %if.then, label %if.end, !dbg !7042

if.then:                                          ; preds = %entry
  store i32 -75, ptr %retval, align 4, !dbg !7043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7043

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %kbuf.addr, align 8, !dbg !7044
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %10, i32 0, i32 5, !dbg !7046
  %11 = load i64, ptr %f_files, align 8, !dbg !7046
  %cmp = icmp ne i64 %11, -1, !dbg !7047
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !7048

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %kbuf.addr, align 8, !dbg !7049
  %f_files4 = getelementptr inbounds %struct.kstatfs, ptr %12, i32 0, i32 5, !dbg !7050
  %13 = load i64, ptr %f_files4, align 8, !dbg !7050
  %and5 = and i64 %13, -4294967296, !dbg !7051
  %tobool6 = icmp ne i64 %and5, 0, !dbg !7051
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !7052

if.then7:                                         ; preds = %land.lhs.true
  store i32 -75, ptr %retval, align 4, !dbg !7053
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7053

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %14 = load ptr, ptr %kbuf.addr, align 8, !dbg !7054
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %14, i32 0, i32 6, !dbg !7056
  %15 = load i64, ptr %f_ffree, align 8, !dbg !7056
  %cmp9 = icmp ne i64 %15, -1, !dbg !7057
  br i1 %cmp9, label %land.lhs.true10, label %if.end15, !dbg !7058

land.lhs.true10:                                  ; preds = %if.end8
  %16 = load ptr, ptr %kbuf.addr, align 8, !dbg !7059
  %f_ffree11 = getelementptr inbounds %struct.kstatfs, ptr %16, i32 0, i32 6, !dbg !7060
  %17 = load i64, ptr %f_ffree11, align 8, !dbg !7060
  %and12 = and i64 %17, -4294967296, !dbg !7061
  %tobool13 = icmp ne i64 %and12, 0, !dbg !7061
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !7062

if.then14:                                        ; preds = %land.lhs.true10
  store i32 -75, ptr %retval, align 4, !dbg !7063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7063

if.end15:                                         ; preds = %land.lhs.true10, %if.end8
  call void @llvm.memset.p0.i64(ptr align 4 %buf, i8 0, i64 64, i1 false), !dbg !7064
  %18 = load ptr, ptr %kbuf.addr, align 8, !dbg !7065
  %f_type = getelementptr inbounds %struct.kstatfs, ptr %18, i32 0, i32 0, !dbg !7066
  %19 = load i64, ptr %f_type, align 8, !dbg !7066
  %conv = trunc i64 %19 to i32, !dbg !7065
  %f_type16 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 0, !dbg !7067
  store i32 %conv, ptr %f_type16, align 4, !dbg !7068
  %20 = load ptr, ptr %kbuf.addr, align 8, !dbg !7069
  %f_bsize17 = getelementptr inbounds %struct.kstatfs, ptr %20, i32 0, i32 1, !dbg !7070
  %21 = load i64, ptr %f_bsize17, align 8, !dbg !7070
  %conv18 = trunc i64 %21 to i32, !dbg !7069
  %f_bsize19 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 1, !dbg !7071
  store i32 %conv18, ptr %f_bsize19, align 4, !dbg !7072
  %22 = load ptr, ptr %kbuf.addr, align 8, !dbg !7073
  %f_blocks20 = getelementptr inbounds %struct.kstatfs, ptr %22, i32 0, i32 2, !dbg !7074
  %23 = load i64, ptr %f_blocks20, align 8, !dbg !7074
  %conv21 = trunc i64 %23 to i32, !dbg !7073
  %f_blocks22 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 2, !dbg !7075
  store i32 %conv21, ptr %f_blocks22, align 4, !dbg !7076
  %24 = load ptr, ptr %kbuf.addr, align 8, !dbg !7077
  %f_bfree23 = getelementptr inbounds %struct.kstatfs, ptr %24, i32 0, i32 3, !dbg !7078
  %25 = load i64, ptr %f_bfree23, align 8, !dbg !7078
  %conv24 = trunc i64 %25 to i32, !dbg !7077
  %f_bfree25 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 3, !dbg !7079
  store i32 %conv24, ptr %f_bfree25, align 4, !dbg !7080
  %26 = load ptr, ptr %kbuf.addr, align 8, !dbg !7081
  %f_bavail26 = getelementptr inbounds %struct.kstatfs, ptr %26, i32 0, i32 4, !dbg !7082
  %27 = load i64, ptr %f_bavail26, align 8, !dbg !7082
  %conv27 = trunc i64 %27 to i32, !dbg !7081
  %f_bavail28 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 4, !dbg !7083
  store i32 %conv27, ptr %f_bavail28, align 4, !dbg !7084
  %28 = load ptr, ptr %kbuf.addr, align 8, !dbg !7085
  %f_files29 = getelementptr inbounds %struct.kstatfs, ptr %28, i32 0, i32 5, !dbg !7086
  %29 = load i64, ptr %f_files29, align 8, !dbg !7086
  %conv30 = trunc i64 %29 to i32, !dbg !7085
  %f_files31 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 5, !dbg !7087
  store i32 %conv30, ptr %f_files31, align 4, !dbg !7088
  %30 = load ptr, ptr %kbuf.addr, align 8, !dbg !7089
  %f_ffree32 = getelementptr inbounds %struct.kstatfs, ptr %30, i32 0, i32 6, !dbg !7090
  %31 = load i64, ptr %f_ffree32, align 8, !dbg !7090
  %conv33 = trunc i64 %31 to i32, !dbg !7089
  %f_ffree34 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 6, !dbg !7091
  store i32 %conv33, ptr %f_ffree34, align 4, !dbg !7092
  %32 = load ptr, ptr %kbuf.addr, align 8, !dbg !7093
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %32, i32 0, i32 8, !dbg !7094
  %33 = load i64, ptr %f_namelen, align 8, !dbg !7094
  %conv35 = trunc i64 %33 to i32, !dbg !7093
  %f_namelen36 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 8, !dbg !7095
  store i32 %conv35, ptr %f_namelen36, align 4, !dbg !7096
  %34 = load ptr, ptr %kbuf.addr, align 8, !dbg !7097
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %34, i32 0, i32 7, !dbg !7098
  %val = getelementptr inbounds %struct.__kernel_fsid_t, ptr %f_fsid, i32 0, i32 0, !dbg !7099
  %arrayidx = getelementptr [2 x i32], ptr %val, i64 0, i64 0, !dbg !7097
  %35 = load i32, ptr %arrayidx, align 8, !dbg !7097
  %f_fsid37 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 7, !dbg !7100
  %val38 = getelementptr inbounds %struct.__kernel_fsid_t, ptr %f_fsid37, i32 0, i32 0, !dbg !7101
  %arrayidx39 = getelementptr [2 x i32], ptr %val38, i64 0, i64 0, !dbg !7102
  store i32 %35, ptr %arrayidx39, align 4, !dbg !7103
  %36 = load ptr, ptr %kbuf.addr, align 8, !dbg !7104
  %f_fsid40 = getelementptr inbounds %struct.kstatfs, ptr %36, i32 0, i32 7, !dbg !7105
  %val41 = getelementptr inbounds %struct.__kernel_fsid_t, ptr %f_fsid40, i32 0, i32 0, !dbg !7106
  %arrayidx42 = getelementptr [2 x i32], ptr %val41, i64 0, i64 1, !dbg !7104
  %37 = load i32, ptr %arrayidx42, align 4, !dbg !7104
  %f_fsid43 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 7, !dbg !7107
  %val44 = getelementptr inbounds %struct.__kernel_fsid_t, ptr %f_fsid43, i32 0, i32 0, !dbg !7108
  %arrayidx45 = getelementptr [2 x i32], ptr %val44, i64 0, i64 1, !dbg !7109
  store i32 %37, ptr %arrayidx45, align 4, !dbg !7110
  %38 = load ptr, ptr %kbuf.addr, align 8, !dbg !7111
  %f_frsize46 = getelementptr inbounds %struct.kstatfs, ptr %38, i32 0, i32 9, !dbg !7112
  %39 = load i64, ptr %f_frsize46, align 8, !dbg !7112
  %conv47 = trunc i64 %39 to i32, !dbg !7111
  %f_frsize48 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 9, !dbg !7113
  store i32 %conv47, ptr %f_frsize48, align 4, !dbg !7114
  %40 = load ptr, ptr %kbuf.addr, align 8, !dbg !7115
  %f_flags = getelementptr inbounds %struct.kstatfs, ptr %40, i32 0, i32 10, !dbg !7116
  %41 = load i64, ptr %f_flags, align 8, !dbg !7116
  %conv49 = trunc i64 %41 to i32, !dbg !7115
  %f_flags50 = getelementptr inbounds %struct.compat_statfs, ptr %buf, i32 0, i32 10, !dbg !7117
  store i32 %conv49, ptr %f_flags50, align 4, !dbg !7118
  %42 = load ptr, ptr %ubuf.addr, align 8, !dbg !7119
  %call = call i64 @copy_to_user(ptr noundef %42, ptr noundef %buf, i64 noundef 64) #13, !dbg !7121
  %tobool51 = icmp ne i64 %call, 0, !dbg !7121
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !7122

if.then52:                                        ; preds = %if.end15
  store i32 -14, ptr %retval, align 4, !dbg !7123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7123

if.end53:                                         ; preds = %if.end15
  store i32 0, ptr %retval, align 4, !dbg !7124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7124

cleanup:                                          ; preds = %if.end53, %if.then52, %if.then14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %buf) #12, !dbg !7125
  %43 = load i32, ptr %retval, align 4, !dbg !7125
  ret i32 %43, !dbg !7125
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_fstatfs(i32 noundef %fd, ptr noundef %buf) #4 align 16 !dbg !7126 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %tmp = alloca %struct.kstatfs, align 8
  %error = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7130, metadata !DIExpression()), !dbg !7134
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7131, metadata !DIExpression()), !dbg !7134
  call void @llvm.lifetime.start.p0(i64 120, ptr %tmp) #12, !dbg !7135
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !7132, metadata !DIExpression()), !dbg !7136
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !7137
  call void @llvm.dbg.declare(metadata ptr %error, metadata !7133, metadata !DIExpression()), !dbg !7138
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7139
  %call = call i32 @fd_statfs(i32 noundef %0, ptr noundef %tmp) #13, !dbg !7140
  store i32 %call, ptr %error, align 4, !dbg !7138
  %1 = load i32, ptr %error, align 4, !dbg !7141
  %tobool = icmp ne i32 %1, 0, !dbg !7141
  br i1 %tobool, label %if.end, label %if.then, !dbg !7143

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !7144
  %call1 = call i32 @put_compat_statfs(ptr noundef %2, ptr noundef %tmp) #13, !dbg !7145
  store i32 %call1, ptr %error, align 4, !dbg !7146
  br label %if.end, !dbg !7147

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %error, align 4, !dbg !7148
  %conv = sext i32 %3 to i64, !dbg !7148
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !7149
  call void @llvm.lifetime.end.p0(i64 120, ptr %tmp) #12, !dbg !7149
  ret i64 %conv, !dbg !7150
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_statfs64(ptr noundef %pathname, i32 noundef %sz, ptr noundef %buf) #4 align 16 !dbg !7151 {
entry:
  %pathname.addr = alloca ptr, align 8
  %sz.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !7155, metadata !DIExpression()), !dbg !7158
  store i32 %sz, ptr %sz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !7156, metadata !DIExpression()), !dbg !7158
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7157, metadata !DIExpression()), !dbg !7158
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !7159
  %1 = load i32, ptr %sz.addr, align 4, !dbg !7160
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !7161
  %call = call i32 @kcompat_sys_statfs64(ptr noundef %0, i32 noundef %1, ptr noundef %2) #13, !dbg !7162
  %conv = sext i32 %call to i64, !dbg !7162
  ret i64 %conv, !dbg !7163
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_fstatfs64(i32 noundef %fd, i32 noundef %sz, ptr noundef %buf) #4 align 16 !dbg !7164 {
entry:
  %fd.addr = alloca i32, align 4
  %sz.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7168, metadata !DIExpression()), !dbg !7171
  store i32 %sz, ptr %sz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !7169, metadata !DIExpression()), !dbg !7171
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7170, metadata !DIExpression()), !dbg !7171
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7172
  %1 = load i32, ptr %sz.addr, align 4, !dbg !7173
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !7174
  %call = call i32 @kcompat_sys_fstatfs64(i32 noundef %0, i32 noundef %1, ptr noundef %2) #13, !dbg !7175
  %conv = sext i32 %call to i64, !dbg !7175
  ret i64 %conv, !dbg !7176
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_ustat(i32 noundef %dev, ptr noundef %u) #4 align 16 !dbg !7177 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca i32, align 4
  %u.addr = alloca ptr, align 8
  %tmp = alloca %struct.compat_ustat, align 4
  %sbuf = alloca %struct.kstatfs, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7181, metadata !DIExpression()), !dbg !7186
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !7182, metadata !DIExpression()), !dbg !7186
  call void @llvm.lifetime.start.p0(i64 20, ptr %tmp) #12, !dbg !7187
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !7183, metadata !DIExpression()), !dbg !7188
  call void @llvm.lifetime.start.p0(i64 120, ptr %sbuf) #12, !dbg !7189
  call void @llvm.dbg.declare(metadata ptr %sbuf, metadata !7184, metadata !DIExpression()), !dbg !7190
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !7191
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7185, metadata !DIExpression()), !dbg !7192
  %0 = load i32, ptr %dev.addr, align 4, !dbg !7193
  %call = call i32 @new_decode_dev(i32 noundef %0) #13, !dbg !7194
  %call1 = call i32 @vfs_ustat(i32 noundef %call, ptr noundef %sbuf) #13, !dbg !7195
  store i32 %call1, ptr %err, align 4, !dbg !7192
  %1 = load i32, ptr %err, align 4, !dbg !7196
  %tobool = icmp ne i32 %1, 0, !dbg !7196
  br i1 %tobool, label %if.then, label %if.end, !dbg !7198

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !7199
  %conv = sext i32 %2 to i64, !dbg !7199
  store i64 %conv, ptr %retval, align 8, !dbg !7200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7200

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 4 %tmp, i8 0, i64 20, i1 false), !dbg !7201
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %sbuf, i32 0, i32 3, !dbg !7202
  %3 = load i64, ptr %f_bfree, align 8, !dbg !7202
  %conv2 = trunc i64 %3 to i32, !dbg !7203
  %f_tfree = getelementptr inbounds %struct.compat_ustat, ptr %tmp, i32 0, i32 0, !dbg !7204
  store i32 %conv2, ptr %f_tfree, align 4, !dbg !7205
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %sbuf, i32 0, i32 6, !dbg !7206
  %4 = load i64, ptr %f_ffree, align 8, !dbg !7206
  %conv3 = trunc i64 %4 to i32, !dbg !7207
  %f_tinode = getelementptr inbounds %struct.compat_ustat, ptr %tmp, i32 0, i32 1, !dbg !7208
  store i32 %conv3, ptr %f_tinode, align 4, !dbg !7209
  %5 = load ptr, ptr %u.addr, align 8, !dbg !7210
  %call4 = call i64 @copy_to_user(ptr noundef %5, ptr noundef %tmp, i64 noundef 20) #13, !dbg !7212
  %tobool5 = icmp ne i64 %call4, 0, !dbg !7212
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !7213

if.then6:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !7214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7214

if.end7:                                          ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !7215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7215

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !7216
  call void @llvm.lifetime.end.p0(i64 120, ptr %sbuf) #12, !dbg !7216
  call void @llvm.lifetime.end.p0(i64 20, ptr %tmp) #12, !dbg !7216
  %6 = load i64, ptr %retval, align 8, !dbg !7216
  ret i64 %6, !dbg !7216
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5957, !5958, !5959, !5960, !5961, !5962, !5963, !5964}
!llvm.ident = !{!5965}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vfs_get_fsid318", scope: !2, file: !3, line: 84, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.statfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/statfs\22 -D KBUILD_BASENAME=\22statfs\22 -D KBUILD_MODNAME=\22statfs\22 -D __KBUILD_MODNAME=kmod_statfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/statfs.ll fs/statfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !267, globals: !5948, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/statfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "763f6396b6f17404fd96f755b9533753")
!4 = !{!5, !11, !107, !113, !129, !136, !144, !151, !158, !164, !175, !181, !187, !194, !202, !209, !218, !223, !228, !234, !243, !251, !256, !262}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !7, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !19, !21, !23, !27, !28, !44, !102, !103}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !22, size: 32, offset: 128)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !24, size: 16, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !31)
!31 = !DISubroutineType(types: !32)
!32 = !{!22, !33, !22, !20, !34, !40}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 61, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !37, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !25, line: 52, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !37, line: 88, baseType: !43)
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !47)
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !12, line: 118, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !25, line: 174, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 172, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !50, file: !25, line: 173, baseType: !22, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !46, file: !12, line: 119, baseType: !54, size: 192, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !55, line: 37, size: 192, elements: !57)
!57 = !{!58, !96}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !56, file: !55, line: 38, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !60, line: 29, baseType: !61)
!60 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !60, line: 17, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !60, line: 18, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 18, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !64, file: !60, line: 19, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !68, line: 14, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !67, file: !68, line: 15, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 44, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !72, line: 14, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 15, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 15, size: 32, elements: !77)
!77 = !{!78, !79, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !72, line: 16, baseType: !49, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 24, baseType: !80, size: 16)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 24, size: 16, elements: !81)
!81 = !{!82, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !80, file: !72, line: 25, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !72, line: 26, baseType: !83, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 28, size: 32, elements: !91)
!91 = !{!92, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !72, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !26)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !72, line: 30, baseType: !93, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !56, file: !55, line: 39, baseType: !97, size: 128, offset: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !25, line: 190, size: 128, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !25, line: 191, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !25, line: 191, baseType: !100, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !20, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !20, size: 64, offset: 448)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !108, line: 16, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "TT_NONE", value: 0)
!111 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!112 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !114, line: 1325, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!116 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!117 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!118 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!119 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!120 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!121 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!122 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!123 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!124 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!125 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!126 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!127 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!128 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !130, line: 15, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!131 = !{!132, !133, !134, !135}
!132 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!133 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!134 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!135 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !137, line: 68, baseType: !7, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!138 = !{!139, !140, !141, !142, !143}
!139 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!140 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!141 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!142 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!143 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !145, line: 51, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!148 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!149 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!150 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !152, line: 312, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!155 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!156 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!157 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !159, line: 26, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!162 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!163 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !165, line: 253, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174}
!167 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!168 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!169 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!170 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!171 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!172 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!173 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!174 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !165, line: 158, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178, !179, !180}
!177 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!178 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!179 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!180 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !182, line: 45, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!185 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!186 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !188, line: 487, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!189 = !{!190, !191, !192, !193}
!190 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!191 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!192 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!193 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !195, line: 620, baseType: !7, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!196 = !{!197, !198, !199, !200, !201}
!197 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!198 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!199 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!200 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!201 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !195, line: 597, baseType: !22, size: 32, elements: !203)
!203 = !{!204, !205, !206, !207, !208}
!204 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!205 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!206 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!207 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!208 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !188, line: 547, baseType: !7, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217}
!211 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!212 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!213 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!214 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!215 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!216 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!217 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !188, line: 564, baseType: !7, size: 32, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!221 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!222 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !188, line: 577, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!226 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!227 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !188, line: 503, baseType: !7, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!231 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!232 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!233 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !235, line: 593, baseType: !22, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!238 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!239 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !244, line: 9, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!245 = !{!246, !247, !248, !249, !250}
!246 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!247 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!248 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!249 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!250 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !252, line: 2052, baseType: !7, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!253 = !{!254, !255}
!254 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!255 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !257, line: 54, baseType: !7, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!258 = !{!259, !260, !261}
!259 = !DIEnumerator(name: "USRQUOTA", value: 0)
!260 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!261 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 10, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!264 = !{!265, !266}
!265 = !DIEnumerator(name: "false", value: 0)
!266 = !DIEnumerator(name: "true", value: 1)
!267 = !{!20, !7, !268, !16, !5864, !22, !35, !5881, !5896, !39, !5904, !5922, !5923, !5939}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !252, line: 994, size: 1856, align: 64, elements: !270)
!270 = !{!271, !290, !291, !293, !302, !315, !316, !317, !5844, !5845, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !252, line: 995, baseType: !272, size: 128)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !252, line: 995, size: 128, elements: !273)
!273 = !{!274, !280, !289}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !272, file: !252, line: 996, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !276, line: 60, size: 64, elements: !277)
!276 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !276, line: 61, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !272, file: !252, line: 997, baseType: !281, size: 128, align: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !282)
!282 = !{!283, !285}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !25, line: 233, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !281, file: !25, line: 234, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !284}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !272, file: !252, line: 998, baseType: !7, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !269, file: !252, line: 1005, baseType: !59, size: 32, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !269, file: !252, line: 1006, baseType: !292, size: 32, offset: 160)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !269, file: !252, line: 1007, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !295, line: 13, baseType: !296)
!295 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !297, file: !25, line: 180, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !269, file: !252, line: 1008, baseType: !303, size: 256, offset: 256)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !304, line: 66, size: 256, elements: !305)
!304 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!305 = !{!306, !307, !309, !314}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !303, file: !304, line: 67, baseType: !294, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !303, file: !304, line: 68, baseType: !308, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !303, file: !304, line: 70, baseType: !310, size: 32, offset: 96)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !311, line: 15, size: 32, elements: !312)
!311 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !310, file: !311, line: 20, baseType: !49, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !303, file: !304, line: 72, baseType: !97, size: 128, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !269, file: !252, line: 1009, baseType: !41, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !269, file: !252, line: 1010, baseType: !7, size: 32, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !269, file: !252, line: 1011, baseType: !318, size: 256, offset: 640)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !252, line: 948, size: 256, elements: !319)
!319 = !{!320, !343, !5840, !5841, !5842, !5843}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !318, file: !252, line: 949, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !322, line: 34, baseType: !323)
!322 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !322, line: 25, size: 64, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !323, file: !322, line: 26, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !327, line: 27, baseType: !328)
!327 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !327, line: 13, size: 64, elements: !329)
!329 = !{!330, !342}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !327, line: 14, baseType: !331, size: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !327, line: 14, size: 32, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !331, file: !327, line: 15, baseType: !49, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !327, line: 16, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !327, line: 16, size: 32, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !335, file: !327, line: 18, baseType: !83, size: 8)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !335, file: !327, line: 19, baseType: !339, size: 24, offset: 8)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 3)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !328, file: !327, line: 26, baseType: !71, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !318, file: !252, line: 950, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !244, line: 59, size: 768, elements: !346)
!346 = !{!347, !353, !354, !355, !368, !369, !370, !371}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !345, file: !244, line: 61, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !349, line: 113, baseType: !350)
!349 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !349, line: 111, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !350, file: !349, line: 112, baseType: !49, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !345, file: !244, line: 62, baseType: !7, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !345, file: !244, line: 63, baseType: !59, size: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !345, file: !244, line: 65, baseType: !356, size: 256, offset: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 256, elements: !366)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !357, file: !25, line: 195, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !25, line: 199, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !361, file: !25, line: 199, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!366 = !{!367}
!367 = !DISubrange(count: 4)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !345, file: !244, line: 66, baseType: !357, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !345, file: !244, line: 68, baseType: !54, size: 192, offset: 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !345, file: !244, line: 69, baseType: !281, size: 128, align: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !345, file: !244, line: 70, baseType: !372, offset: 768)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, elements: !1154)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !244, line: 54, size: 128, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !373, file: !244, line: 55, baseType: !22, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !373, file: !244, line: 56, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !379, line: 26, size: 1152, elements: !380)
!379 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!380 = !{!381, !395, !396, !397, !5829, !5830, !5831, !5832, !5835, !5836, !5837, !5838, !5839}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !378, file: !379, line: 27, baseType: !382, size: 192)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !383, line: 19, size: 192, elements: !384)
!383 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!384 = !{!385, !393, !394}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !382, file: !383, line: 20, baseType: !386, size: 128)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !387, line: 296, size: 128, elements: !388)
!387 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!388 = !{!389, !390, !392}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !386, file: !387, line: 297, baseType: !59, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !386, file: !387, line: 299, baseType: !391, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !386, file: !387, line: 300, baseType: !20, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !382, file: !383, line: 21, baseType: !7, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !382, file: !383, line: 22, baseType: !7, size: 32, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !378, file: !379, line: 28, baseType: !281, size: 128, align: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !378, file: !379, line: 29, baseType: !7, size: 32, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !378, file: !379, line: 30, baseType: !398, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !400, line: 746, size: 58368, elements: !401)
!400 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!401 = !{!402, !412, !413, !414, !415, !416, !417, !418, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !494, !505, !605, !609, !612, !643, !644, !645, !646, !657, !659, !660, !661, !662, !663, !664, !675, !676, !679, !680, !681, !682, !683, !684, !685, !686, !693, !694, !701, !702, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1240, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1255, !1256, !1257, !1258, !1260, !1261, !1262, !1263, !1264, !1265, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1289, !1295, !1365, !1366, !1367, !1368, !1372, !1375, !1382, !1387, !1390, !1393, !1396, !5093, !5291, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5329, !5330, !5331, !5340, !5348, !5349, !5350, !5351, !5352, !5357, !5358, !5359, !5362, !5363, !5366, !5369, !5372, !5380, !5383, !5384, !5470, !5471, !5472, !5473, !5474, !5480, !5481, !5482, !5483, !5484, !5485, !5489, !5503, !5504, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5547, !5548, !5554, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5566, !5638, !5640, !5641, !5642, !5643, !5644, !5645, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5662, !5663, !5664}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !399, file: !400, line: 752, baseType: !403, size: 192)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !404, line: 56, size: 192, elements: !405)
!404 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!405 = !{!406, !407, !408, !411}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !404, line: 57, baseType: !39, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !403, file: !404, line: 58, baseType: !39, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !403, file: !404, line: 59, baseType: !409, size: 32, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !403, file: !404, line: 61, baseType: !409, size: 32, offset: 160)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !399, file: !400, line: 754, baseType: !7, size: 32, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !399, file: !400, line: 767, baseType: !20, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !399, file: !400, line: 768, baseType: !348, size: 32, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !400, line: 770, baseType: !7, size: 32, offset: 352)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !399, file: !400, line: 771, baseType: !7, size: 32, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !399, file: !400, line: 774, baseType: !22, size: 32, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !399, file: !400, line: 775, baseType: !419, size: 128, offset: 448)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !420, line: 58, size: 128, elements: !421)
!420 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!421 = !{!422, !423, !428, !429}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !419, file: !420, line: 59, baseType: !275, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !420, line: 60, baseType: !424, size: 32, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !420, line: 60, size: 32, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !424, file: !420, line: 61, baseType: !7, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !424, file: !420, line: 62, baseType: !49, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !419, file: !420, line: 65, baseType: !93, size: 16, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !419, file: !420, line: 65, baseType: !93, size: 16, offset: 112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !399, file: !400, line: 776, baseType: !7, size: 32, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !399, file: !400, line: 777, baseType: !39, size: 64, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !399, file: !400, line: 778, baseType: !398, size: 64, offset: 704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !399, file: !400, line: 787, baseType: !22, size: 32, offset: 768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !399, file: !400, line: 788, baseType: !22, size: 32, offset: 800)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !399, file: !400, line: 790, baseType: !22, size: 32, offset: 832)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !399, file: !400, line: 792, baseType: !22, size: 32, offset: 864)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !399, file: !400, line: 793, baseType: !22, size: 32, offset: 896)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !399, file: !400, line: 794, baseType: !22, size: 32, offset: 928)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !399, file: !400, line: 795, baseType: !7, size: 32, offset: 960)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !399, file: !400, line: 797, baseType: !441, size: 2048, offset: 1024)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !400, line: 551, size: 2048, elements: !442)
!442 = !{!443, !448, !456, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !473, !476, !477, !478}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !441, file: !400, line: 553, baseType: !444, size: 128)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !400, line: 411, size: 128, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !444, file: !400, line: 412, baseType: !39, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !444, file: !400, line: 413, baseType: !409, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !441, file: !400, line: 554, baseType: !449, size: 192, align: 64, offset: 128)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !450, line: 5, size: 192, align: 64, elements: !451)
!450 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!451 = !{!452, !453, !455}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !449, file: !450, line: 6, baseType: !39, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !449, file: !450, line: 7, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !449, file: !450, line: 8, baseType: !454, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !441, file: !400, line: 555, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !459)
!459 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !441, file: !400, line: 556, baseType: !457, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !441, file: !400, line: 558, baseType: !97, size: 128, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !441, file: !400, line: 559, baseType: !7, size: 32, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !441, file: !400, line: 561, baseType: !457, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !441, file: !400, line: 562, baseType: !457, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !441, file: !400, line: 563, baseType: !457, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !441, file: !400, line: 564, baseType: !457, size: 64, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !441, file: !400, line: 565, baseType: !300, size: 64, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !441, file: !400, line: 566, baseType: !457, size: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !441, file: !400, line: 568, baseType: !457, size: 64, offset: 1024)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !441, file: !400, line: 571, baseType: !22, size: 32, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !441, file: !400, line: 572, baseType: !472, size: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !441, file: !400, line: 574, baseType: !474, size: 64, offset: 1216)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !400, line: 49, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !441, file: !400, line: 576, baseType: !474, size: 64, offset: 1280)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !441, file: !400, line: 578, baseType: !39, size: 64, offset: 1344)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !441, file: !400, line: 588, baseType: !479, size: 512, align: 512, offset: 1536)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !400, line: 497, size: 512, align: 512, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488, !489}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !479, file: !400, line: 498, baseType: !457, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !479, file: !400, line: 499, baseType: !457, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !479, file: !400, line: 500, baseType: !457, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !479, file: !400, line: 501, baseType: !409, size: 32, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !479, file: !400, line: 502, baseType: !409, size: 32, offset: 224)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !479, file: !400, line: 503, baseType: !39, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !479, file: !400, line: 504, baseType: !39, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !479, file: !400, line: 505, baseType: !39, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !479, file: !400, line: 506, baseType: !490, size: 64, align: 64, offset: 448)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !400, line: 445, size: 64, align: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !490, file: !400, line: 446, baseType: !7, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !490, file: !400, line: 447, baseType: !7, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !399, file: !400, line: 798, baseType: !495, size: 384, offset: 3072)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !400, line: 592, size: 384, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !495, file: !400, line: 593, baseType: !97, size: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !495, file: !400, line: 594, baseType: !39, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !495, file: !400, line: 595, baseType: !39, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !495, file: !400, line: 596, baseType: !7, size: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !495, file: !400, line: 597, baseType: !26, size: 16, offset: 288)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !495, file: !400, line: 598, baseType: !26, size: 16, offset: 304)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !495, file: !400, line: 600, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !399, file: !400, line: 799, baseType: !506, size: 1792, offset: 3456)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !400, line: 610, size: 1792, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !602, !603}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !506, file: !400, line: 611, baseType: !449, size: 192, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !506, file: !400, line: 618, baseType: !457, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !506, file: !400, line: 619, baseType: !457, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !506, file: !400, line: 620, baseType: !457, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !506, file: !400, line: 621, baseType: !457, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !506, file: !400, line: 622, baseType: !457, size: 64, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !506, file: !400, line: 629, baseType: !300, size: 64, offset: 512)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !506, file: !400, line: 630, baseType: !457, size: 64, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !400, line: 631, baseType: !7, size: 32, offset: 640)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !506, file: !400, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !506, file: !400, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !506, file: !400, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !506, file: !400, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !506, file: !400, line: 662, baseType: !522, size: 512, offset: 704)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !523)
!523 = !{!524, !532, !533, !538, !598, !599, !600, !601}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !522, file: !6, line: 119, baseType: !525, size: 256)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !526, line: 9, size: 256, elements: !527)
!526 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !525, file: !526, line: 10, baseType: !449, size: 192, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !525, file: !526, line: 11, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !531, line: 29, baseType: !300)
!531 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !522, file: !6, line: 120, baseType: !530, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !522, file: !6, line: 121, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!5, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !522, file: !6, line: 122, baseType: !539, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !541)
!541 = !{!542, !567, !568, !571, !581, !582, !593, !597}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !540, file: !6, line: 160, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !544, file: !6, line: 216, baseType: !308, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !544, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !544, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !544, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !544, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !544, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !544, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !544, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !544, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !544, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !544, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !544, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !544, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !544, file: !6, line: 235, baseType: !530, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !544, file: !6, line: 236, baseType: !537, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !544, file: !6, line: 237, baseType: !530, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !544, file: !6, line: 238, baseType: !537, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !544, file: !6, line: 239, baseType: !564, size: 4096, align: 512, offset: 512)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 4096, align: 512, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 8)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !540, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !540, file: !6, line: 162, baseType: !569, size: 32, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !540, file: !6, line: 163, baseType: !572, size: 32, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !573, line: 274, baseType: !574)
!573 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !573, line: 274, size: 32, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !574, file: !573, line: 274, baseType: !577, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !573, line: 69, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !573, line: 64, size: 32, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !578, file: !573, line: 65, baseType: !7, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !540, file: !6, line: 164, baseType: !537, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !540, file: !6, line: 165, baseType: !583, size: 128, offset: 256)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !526, line: 14, size: 128, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !583, file: !526, line: 15, baseType: !586, size: 128)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !450, line: 26, size: 128, elements: !587)
!587 = !{!588, !592}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !586, file: !450, line: 27, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !450, line: 12, size: 64, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !589, file: !450, line: 13, baseType: !454, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !586, file: !450, line: 28, baseType: !454, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !540, file: !6, line: 166, baseType: !594, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!530}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !540, file: !6, line: 167, baseType: !530, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !522, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !522, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !522, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !522, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !506, file: !400, line: 671, baseType: !522, size: 512, offset: 1216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !506, file: !400, line: 679, baseType: !604, size: 64, offset: 1728)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !399, file: !400, line: 800, baseType: !606, size: 64, offset: 5248)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !400, line: 800, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !399, file: !400, line: 809, baseType: !610, size: 64, offset: 5312)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !400, line: 70, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !399, file: !400, line: 825, baseType: !613, size: 2048, align: 512, offset: 5632)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !400, line: 509, size: 2048, align: 512, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !613, file: !400, line: 511, baseType: !457, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !613, file: !400, line: 512, baseType: !457, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !613, file: !400, line: 513, baseType: !457, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !613, file: !400, line: 514, baseType: !457, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !613, file: !400, line: 515, baseType: !457, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !613, file: !400, line: 516, baseType: !457, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !613, file: !400, line: 518, baseType: !457, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !613, file: !400, line: 519, baseType: !457, size: 64, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !613, file: !400, line: 520, baseType: !300, size: 64, offset: 512)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !613, file: !400, line: 522, baseType: !457, size: 64, offset: 576)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !613, file: !400, line: 523, baseType: !457, size: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !613, file: !400, line: 524, baseType: !300, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !613, file: !400, line: 526, baseType: !300, size: 64, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !613, file: !400, line: 527, baseType: !457, size: 64, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !613, file: !400, line: 529, baseType: !457, size: 64, offset: 896)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !613, file: !400, line: 530, baseType: !457, size: 64, offset: 960)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !613, file: !400, line: 531, baseType: !457, size: 64, offset: 1024)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !613, file: !400, line: 532, baseType: !457, size: 64, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !613, file: !400, line: 533, baseType: !457, size: 64, offset: 1152)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !613, file: !400, line: 535, baseType: !457, size: 64, offset: 1216)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !613, file: !400, line: 536, baseType: !457, size: 64, offset: 1280)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !613, file: !400, line: 537, baseType: !457, size: 64, offset: 1344)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !613, file: !400, line: 538, baseType: !457, size: 64, offset: 1408)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !613, file: !400, line: 539, baseType: !457, size: 64, offset: 1472)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !613, file: !400, line: 540, baseType: !457, size: 64, offset: 1536)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !613, file: !400, line: 541, baseType: !457, size: 64, offset: 1600)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !613, file: !400, line: 542, baseType: !457, size: 64, offset: 1664)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !613, file: !400, line: 543, baseType: !457, size: 64, offset: 1728)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !399, file: !400, line: 833, baseType: !7, size: 32, offset: 7680)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !399, file: !400, line: 836, baseType: !7, size: 32, offset: 7712)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !399, file: !400, line: 837, baseType: !22, size: 32, offset: 7744)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !399, file: !400, line: 838, baseType: !647, size: 64, offset: 7808)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !650, line: 19, baseType: !651)
!650 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !650, line: 19, size: 64, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !651, file: !650, line: 19, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 1)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !399, file: !400, line: 839, baseType: !658, size: 64, offset: 7872)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !399, file: !400, line: 840, baseType: !649, size: 64, offset: 7936)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !399, file: !400, line: 841, baseType: !20, size: 64, offset: 8000)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !399, file: !400, line: 843, baseType: !26, size: 16, offset: 8064)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !399, file: !400, line: 845, baseType: !26, size: 16, offset: 8080)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !399, file: !400, line: 848, baseType: !22, size: 32, offset: 8096)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !399, file: !400, line: 849, baseType: !665, size: 32, offset: 8128)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !400, line: 718, size: 32, elements: !666)
!666 = !{!667, !674}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !665, file: !400, line: 724, baseType: !668, size: 32)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !400, line: 719, size: 32, elements: !669)
!669 = !{!670, !671, !672, !673}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !668, file: !400, line: 720, baseType: !83, size: 8)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !668, file: !400, line: 721, baseType: !83, size: 8, offset: 8)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !668, file: !400, line: 722, baseType: !83, size: 8, offset: 16)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !668, file: !400, line: 723, baseType: !83, size: 8, offset: 24)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !665, file: !400, line: 725, baseType: !409, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !399, file: !400, line: 850, baseType: !97, size: 128, offset: 8192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !399, file: !400, line: 851, baseType: !677, size: 64, offset: 8320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !400, line: 60, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !399, file: !400, line: 855, baseType: !39, size: 64, offset: 8384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !399, file: !400, line: 856, baseType: !83, size: 8, offset: 8448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !399, file: !400, line: 857, baseType: !83, size: 8, offset: 8456)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !399, file: !400, line: 858, baseType: !22, size: 32, offset: 8480)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !399, file: !400, line: 859, baseType: !97, size: 128, offset: 8512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !399, file: !400, line: 860, baseType: !22, size: 32, offset: 8640)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !399, file: !400, line: 861, baseType: !97, size: 128, offset: 8704)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !399, file: !400, line: 873, baseType: !687, size: 256, offset: 8832)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !400, line: 376, size: 256, elements: !688)
!688 = !{!689, !690, !691, !692}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !687, file: !400, line: 381, baseType: !39, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !687, file: !400, line: 384, baseType: !459, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !687, file: !400, line: 389, baseType: !459, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !687, file: !400, line: 392, baseType: !459, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !399, file: !400, line: 875, baseType: !97, size: 128, offset: 9088)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !399, file: !400, line: 877, baseType: !695, size: 320, offset: 9216)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !696, line: 86, size: 320, elements: !697)
!696 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!697 = !{!698, !699, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !695, file: !696, line: 87, baseType: !22, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !695, file: !696, line: 88, baseType: !97, size: 128, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !695, file: !696, line: 89, baseType: !97, size: 128, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !399, file: !400, line: 878, baseType: !449, size: 192, align: 64, offset: 9536)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !399, file: !400, line: 881, baseType: !703, size: 64, offset: 9728)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !114, line: 733, size: 10240, elements: !705)
!705 = !{!706, !1152}
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !114, line: 734, baseType: !707, size: 10240)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !114, line: 734, size: 10240, elements: !708)
!708 = !{!709, !713, !727, !731, !732, !733, !734, !735, !736, !745, !746, !747, !753, !754, !755, !756, !757, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !794, !806, !809, !858, !859, !860, !863, !1138, !1139, !1142, !1143, !1144, !1150, !1151}
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !114, line: 739, baseType: !710, size: 512, align: 512)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !114, line: 739, size: 512, align: 512, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !710, file: !114, line: 747, baseType: !49, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !707, file: !114, line: 750, baseType: !714, size: 128, offset: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !715, line: 218, size: 128, elements: !716)
!715 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!716 = !{!717, !725, !726}
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !714, file: !715, line: 219, baseType: !718, size: 32)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !714, file: !715, line: 219, size: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !718, file: !715, line: 220, baseType: !59, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !718, file: !715, line: 221, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !715, line: 197, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 197, elements: !724)
!724 = !{}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !714, file: !715, line: 223, baseType: !7, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !714, file: !715, line: 224, baseType: !20, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !707, file: !114, line: 752, baseType: !728, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!39, !268, !39, !39, !39, !39}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !707, file: !114, line: 756, baseType: !39, size: 64, offset: 704)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !707, file: !114, line: 757, baseType: !39, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !707, file: !114, line: 760, baseType: !39, size: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !707, file: !114, line: 761, baseType: !39, size: 64, offset: 896)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !707, file: !114, line: 763, baseType: !39, size: 64, offset: 960)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !707, file: !114, line: 764, baseType: !737, size: 64, offset: 1024)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !739, line: 299, baseType: !740)
!739 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 299, size: 64, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !740, file: !739, line: 299, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !744, line: 18, baseType: !39)
!744 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!745 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !707, file: !114, line: 773, baseType: !49, size: 32, offset: 1088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !707, file: !114, line: 785, baseType: !49, size: 32, offset: 1120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !707, file: !114, line: 795, baseType: !748, size: 64, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !114, line: 726, size: 128, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !749, file: !114, line: 727, baseType: !457, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !749, file: !114, line: 728, baseType: !22, size: 32, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !707, file: !114, line: 801, baseType: !39, size: 64, offset: 1216)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !707, file: !114, line: 804, baseType: !294, size: 64, offset: 1280)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !707, file: !114, line: 806, baseType: !22, size: 32, offset: 1344)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !707, file: !114, line: 808, baseType: !59, size: 32, offset: 1376)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !707, file: !114, line: 823, baseType: !758, size: 320, offset: 1408)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !759, line: 48, size: 320, elements: !760)
!759 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!760 = !{!761, !762, !763, !764, !765}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !758, file: !759, line: 49, baseType: !294, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !758, file: !759, line: 55, baseType: !294, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !758, file: !759, line: 57, baseType: !310, size: 32, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !758, file: !759, line: 59, baseType: !308, size: 32, offset: 160)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !758, file: !759, line: 60, baseType: !97, size: 128, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !707, file: !114, line: 825, baseType: !97, size: 128, offset: 1728)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !707, file: !114, line: 845, baseType: !22, size: 32, offset: 1856)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !707, file: !114, line: 849, baseType: !39, size: 64, offset: 1920)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !707, file: !114, line: 850, baseType: !39, size: 64, offset: 1984)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !707, file: !114, line: 852, baseType: !39, size: 64, offset: 2048)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !707, file: !114, line: 853, baseType: !39, size: 64, offset: 2112)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !707, file: !114, line: 854, baseType: !296, size: 64, offset: 2176)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !707, file: !114, line: 855, baseType: !39, size: 64, offset: 2240)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !707, file: !114, line: 856, baseType: !39, size: 64, offset: 2304)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !707, file: !114, line: 857, baseType: !39, size: 64, offset: 2368)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !707, file: !114, line: 858, baseType: !39, size: 64, offset: 2432)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !707, file: !114, line: 865, baseType: !577, size: 32, offset: 2496)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !707, file: !114, line: 867, baseType: !59, size: 32, offset: 2528)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !707, file: !114, line: 869, baseType: !39, size: 64, offset: 2560)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !707, file: !114, line: 869, baseType: !39, size: 64, offset: 2624)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !707, file: !114, line: 869, baseType: !39, size: 64, offset: 2688)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !707, file: !114, line: 869, baseType: !39, size: 64, offset: 2752)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !707, file: !114, line: 870, baseType: !39, size: 64, offset: 2816)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !707, file: !114, line: 870, baseType: !39, size: 64, offset: 2880)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !707, file: !114, line: 870, baseType: !39, size: 64, offset: 2944)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !707, file: !114, line: 871, baseType: !39, size: 64, offset: 3008)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !707, file: !114, line: 871, baseType: !39, size: 64, offset: 3072)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !707, file: !114, line: 871, baseType: !39, size: 64, offset: 3136)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !707, file: !114, line: 871, baseType: !39, size: 64, offset: 3200)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !707, file: !114, line: 873, baseType: !791, size: 3328, offset: 3264)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 52)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !707, file: !114, line: 875, baseType: !795, size: 1280, offset: 6592)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 1280, elements: !366)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !797, line: 22, size: 320, elements: !798)
!797 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!798 = !{!799, !800, !801, !802}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !796, file: !797, line: 23, baseType: !308, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !796, file: !797, line: 24, baseType: !300, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !796, file: !797, line: 26, baseType: !97, size: 128, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !796, file: !797, line: 28, baseType: !803, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !707, file: !114, line: 877, baseType: !807, size: 64, offset: 7872)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !114, line: 877, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !707, file: !114, line: 880, baseType: !810, size: 1088, offset: 7936)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !811, line: 72, baseType: !812)
!811 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !811, line: 23, size: 1088, elements: !813)
!813 = !{!814, !815, !816, !817, !818, !821, !822, !823, !824, !852, !853, !854}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !812, file: !811, line: 28, baseType: !457, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !812, file: !811, line: 38, baseType: !296, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !812, file: !811, line: 40, baseType: !39, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !812, file: !811, line: 43, baseType: !758, size: 320, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !812, file: !811, line: 44, baseType: !819, size: 64, offset: 512)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !811, line: 44, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !811, line: 48, baseType: !39, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !812, file: !811, line: 59, baseType: !303, size: 256, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !812, file: !811, line: 60, baseType: !20, size: 64, offset: 896)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !812, file: !811, line: 61, baseType: !825, size: 64, offset: 960)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !828, line: 13, size: 1216, elements: !829)
!828 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!829 = !{!830, !831, !832, !833, !834, !835, !836, !839, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !827, file: !828, line: 14, baseType: !20, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !827, file: !828, line: 15, baseType: !39, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !827, file: !828, line: 17, baseType: !39, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !827, file: !828, line: 17, baseType: !39, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !827, file: !828, line: 18, baseType: !39, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !827, file: !828, line: 18, baseType: !39, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !827, file: !828, line: 19, baseType: !837, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !827, file: !828, line: 21, baseType: !840, size: 64, offset: 448)
!840 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !827, file: !828, line: 23, baseType: !840, size: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !827, file: !828, line: 24, baseType: !840, size: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !827, file: !828, line: 25, baseType: !840, size: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !827, file: !828, line: 26, baseType: !840, size: 64, offset: 704)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !827, file: !828, line: 27, baseType: !840, size: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !827, file: !828, line: 28, baseType: !840, size: 64, offset: 832)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !827, file: !828, line: 29, baseType: !840, size: 64, offset: 896)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !827, file: !828, line: 30, baseType: !840, size: 64, offset: 960)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !827, file: !828, line: 31, baseType: !840, size: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !827, file: !828, line: 32, baseType: !840, size: 64, offset: 1088)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !827, file: !828, line: 33, baseType: !840, size: 64, offset: 1152)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !812, file: !811, line: 63, baseType: !49, size: 32, offset: 1024)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !812, file: !811, line: 69, baseType: !93, size: 16, offset: 1056)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !812, file: !811, line: 70, baseType: !855, size: 16, offset: 1072)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !857)
!857 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !114, line: 882, baseType: !39, size: 64, offset: 9024)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !707, file: !114, line: 885, baseType: !59, size: 32, offset: 9088)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !707, file: !114, line: 886, baseType: !861, size: 64, offset: 9152)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !114, line: 732, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !707, file: !114, line: 901, baseType: !864, size: 64, offset: 9216)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !866, line: 68, size: 4800, elements: !867)
!866 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!867 = !{!868, !890, !891, !892, !893, !894, !902, !909, !920, !921, !924, !925, !1036, !1037, !1049, !1119, !1120, !1134, !1136}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !865, file: !866, line: 69, baseType: !869, size: 576)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !866, line: 23, size: 576, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !869, file: !866, line: 24, baseType: !409, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !866, line: 25, baseType: !873, size: 512, offset: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !869, file: !866, line: 25, size: 512, elements: !874)
!874 = !{!875, !884}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !873, file: !866, line: 26, baseType: !876, size: 480)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 480, elements: !882)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !866, line: 17, size: 96, elements: !878)
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !877, file: !866, line: 18, baseType: !409, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !877, file: !866, line: 19, baseType: !409, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !877, file: !866, line: 20, baseType: !409, size: 32, offset: 64)
!882 = !{!883}
!883 = !DISubrange(count: 5)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !866, line: 27, baseType: !885, size: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !866, line: 27, size: 128, elements: !886)
!886 = !{!887, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !885, file: !866, line: 28, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !885, file: !866, line: 29, baseType: !888, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !865, file: !866, line: 70, baseType: !869, size: 576, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !865, file: !866, line: 71, baseType: !869, size: 576, offset: 1152)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !865, file: !866, line: 72, baseType: !864, size: 64, offset: 1728)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !865, file: !866, line: 73, baseType: !22, size: 32, offset: 1792)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !865, file: !866, line: 74, baseType: !895, size: 32, offset: 1824)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !896, line: 23, baseType: !897)
!896 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !896, line: 21, size: 32, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !897, file: !896, line: 22, baseType: !900, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !865, file: !866, line: 75, baseType: !903, size: 32, offset: 1856)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !896, line: 28, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !896, line: 26, size: 32, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !904, file: !896, line: 27, baseType: !907, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !865, file: !866, line: 76, baseType: !910, size: 192, offset: 1920)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !911, line: 9, size: 192, elements: !912)
!911 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!912 = !{!913, !914, !918, !919}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !910, file: !911, line: 10, baseType: !294, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !910, file: !911, line: 11, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !911, line: 7, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !910, file: !911, line: 12, baseType: !7, size: 32, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !910, file: !911, line: 13, baseType: !348, size: 32, offset: 160)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !865, file: !866, line: 77, baseType: !39, size: 64, offset: 2112)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !865, file: !866, line: 80, baseType: !922, size: 8, offset: 2176)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !923)
!923 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !865, file: !866, line: 88, baseType: !97, size: 128, offset: 2240)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !865, file: !866, line: 89, baseType: !926, size: 64, offset: 2368)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !928, line: 195, size: 1728, elements: !929)
!928 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!929 = !{!930, !931, !934, !939, !940, !943, !944, !951, !952, !953, !954, !957, !958, !959, !960, !961, !1000, !1021}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !927, file: !928, line: 196, baseType: !348, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !927, file: !928, line: 197, baseType: !932, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !928, line: 28, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !804)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !928, line: 198, baseType: !935, size: 192, offset: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !928, line: 198, size: 192, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !935, file: !928, line: 199, baseType: !97, size: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !935, file: !928, line: 200, baseType: !449, size: 192, align: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !927, file: !928, line: 205, baseType: !758, size: 320, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !927, file: !928, line: 206, baseType: !941, size: 64, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !928, line: 206, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !927, file: !928, line: 207, baseType: !20, size: 64, offset: 640)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !928, line: 208, baseType: !945, size: 64, offset: 704)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !928, line: 208, size: 64, elements: !946)
!946 = !{!947, !950}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !945, file: !928, line: 209, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !949, line: 8, baseType: !301)
!949 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!950 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !945, file: !928, line: 210, baseType: !948, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !927, file: !928, line: 212, baseType: !948, size: 64, offset: 768)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !927, file: !928, line: 213, baseType: !895, size: 32, offset: 832)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !927, file: !928, line: 214, baseType: !903, size: 32, offset: 864)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !927, file: !928, line: 215, baseType: !955, size: 32, offset: 896)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !928, line: 31, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !409)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !927, file: !928, line: 216, baseType: !26, size: 16, offset: 928)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !927, file: !928, line: 217, baseType: !26, size: 16, offset: 944)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !927, file: !928, line: 221, baseType: !857, size: 16, offset: 960)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !927, file: !928, line: 228, baseType: !39, size: 64, offset: 1024)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !928, line: 245, baseType: !962, size: 320, offset: 1088)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !928, line: 245, size: 320, elements: !963)
!963 = !{!964, !991}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !962, file: !928, line: 246, baseType: !965, size: 320)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !928, line: 114, size: 320, elements: !966)
!966 = !{!967, !968, !980, !983, !990}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !965, file: !928, line: 116, baseType: !39, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !928, line: 117, baseType: !969, size: 64, offset: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !928, line: 117, size: 64, elements: !970)
!970 = !{!971, !979}
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !928, line: 118, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !928, line: 118, size: 64, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !972, file: !928, line: 120, baseType: !93, size: 16)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !972, file: !928, line: 121, baseType: !976, size: 48, offset: 16)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 6)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !969, file: !928, line: 127, baseType: !39, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !965, file: !928, line: 129, baseType: !981, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !928, line: 102, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !965, file: !928, line: 130, baseType: !984, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !928, line: 108, size: 192, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !985, file: !928, line: 109, baseType: !281, size: 128, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !985, file: !928, line: 110, baseType: !348, size: 32, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !985, file: !928, line: 111, baseType: !922, size: 8, offset: 160)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !965, file: !928, line: 131, baseType: !16, size: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !928, line: 247, baseType: !992, size: 320)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !928, line: 247, size: 320, elements: !993)
!993 = !{!994, !995, !996, !997, !998}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !992, file: !928, line: 248, baseType: !39, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !992, file: !928, line: 249, baseType: !39, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !992, file: !928, line: 250, baseType: !981, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !992, file: !928, line: 251, baseType: !984, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !992, file: !928, line: 252, baseType: !999, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !928, line: 260, baseType: !1001, size: 256, offset: 1408)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !928, line: 260, size: 256, elements: !1002)
!1002 = !{!1003, !1009}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1001, file: !928, line: 261, baseType: !1004, size: 256)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !928, line: 134, size: 256, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1004, file: !928, line: 135, baseType: !20, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1004, file: !928, line: 136, baseType: !1008, size: 256)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !366)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !928, line: 262, baseType: !1010, size: 256)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !928, line: 262, size: 256, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1010, file: !928, line: 264, baseType: !97, size: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1010, file: !928, line: 265, baseType: !1014, size: 128, offset: 128)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1015, line: 22, size: 128, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1016 = !{!1017, !1020}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1014, file: !1015, line: 23, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1015, line: 23, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1014, file: !1015, line: 24, baseType: !39, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !927, file: !928, line: 280, baseType: !1022, size: 64, offset: 1664)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !928, line: 176, size: 192, elements: !1024)
!1024 = !{!1025, !1034, !1035}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1023, file: !928, line: 177, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !928, line: 171, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!22, !926, !1030, !1032, !926}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1023, file: !928, line: 178, baseType: !926, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1023, file: !928, line: 179, baseType: !981, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !865, file: !866, line: 90, baseType: !758, size: 320, offset: 2432)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !865, file: !866, line: 97, baseType: !1038, size: 256, offset: 2752)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1039, line: 98, size: 256, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1038, file: !1039, line: 99, baseType: !294, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1038, file: !1039, line: 100, baseType: !97, size: 128, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1038, file: !1039, line: 101, baseType: !1044, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1039, line: 21, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !865, file: !866, line: 99, baseType: !1050, size: 768, offset: 3008)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !1051)
!1051 = !{!1052, !1057}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1050, file: !12, line: 200, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!22, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1050, file: !12, line: 201, baseType: !1058, size: 704, offset: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !1059)
!1059 = !{!1060, !1118}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1058, file: !12, line: 195, baseType: !1061, size: 640)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !1062)
!1062 = !{!1063, !1075, !1087, !1088, !1108, !1109, !1111, !1117}
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !12, line: 174, baseType: !1064, size: 192)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1061, file: !12, line: 174, size: 192, elements: !1065)
!1065 = !{!1066, !1074}
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !12, line: 175, baseType: !1067, size: 192)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1064, file: !12, line: 175, size: 192, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1067, file: !12, line: 176, baseType: !33, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1067, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1067, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1067, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1067, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1064, file: !12, line: 182, baseType: !281, size: 128, align: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1061, file: !12, line: 184, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1078, line: 26, size: 256, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1077, file: !1078, line: 27, baseType: !7, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1077, file: !1078, line: 28, baseType: !1082, size: 192, offset: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1083, line: 43, size: 192, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1082, file: !1083, line: 44, baseType: !308, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1082, file: !1083, line: 45, baseType: !97, size: 128, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1061, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1061, file: !12, line: 186, baseType: !1089, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !1091)
!1091 = !{!1092, !1093, !1097, !1104}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1090, file: !12, line: 205, baseType: !1050, size: 768)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1090, file: !12, line: 206, baseType: !1094, size: 64, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!1056, !1089}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1090, file: !12, line: 207, baseType: !1098, size: 64, offset: 832)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !1101, !1102, !1103}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1090, file: !12, line: 209, baseType: !1105, size: 64, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!22, !1101, !33}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1061, file: !12, line: 187, baseType: !1056, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1061, file: !12, line: 188, baseType: !1110, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1061, file: !12, line: 189, baseType: !1112, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1113, file: !12, line: 158, baseType: !449, size: 192, align: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1113, file: !12, line: 159, baseType: !1101, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1061, file: !12, line: 190, baseType: !357, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1058, file: !12, line: 196, baseType: !589, size: 64, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !865, file: !866, line: 100, baseType: !1101, size: 64, offset: 3776)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !865, file: !866, line: 102, baseType: !1121, size: 64, offset: 3840)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !866, line: 107, size: 1152, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1132}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1122, file: !866, line: 108, baseType: !361, size: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1122, file: !866, line: 109, baseType: !864, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1122, file: !866, line: 110, baseType: !895, size: 32, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1122, file: !866, line: 111, baseType: !49, size: 32, offset: 224)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1122, file: !866, line: 112, baseType: !1129, size: 640, offset: 256)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 640, elements: !1130)
!1130 = !{!1131}
!1131 = !DISubrange(count: 10)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1122, file: !866, line: 113, baseType: !1133, size: 256, offset: 896)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 256, elements: !366)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !865, file: !866, line: 103, baseType: !1135, size: 640, offset: 3904)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 640, elements: !1130)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !865, file: !866, line: 104, baseType: !1137, size: 256, offset: 4544)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 256, elements: !366)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !707, file: !114, line: 904, baseType: !268, size: 64, offset: 9280)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !707, file: !114, line: 906, baseType: !1140, size: 64, offset: 9344)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !114, line: 906, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !707, file: !114, line: 930, baseType: !49, size: 32, offset: 9408)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !707, file: !114, line: 933, baseType: !49, size: 32, offset: 9440)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !707, file: !114, line: 935, baseType: !1145, size: 64, offset: 9472)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !145, line: 103, size: 64, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1145, file: !145, line: 104, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !145, line: 101, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !707, file: !114, line: 940, baseType: !294, size: 64, offset: 9536)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !707, file: !114, line: 942, baseType: !1038, size: 256, offset: 9600)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !704, file: !114, line: 986, baseType: !1153, offset: 10240)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1154)
!1154 = !{!1155}
!1155 = !DISubrange(count: -1)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !399, file: !400, line: 882, baseType: !703, size: 64, offset: 9792)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !399, file: !400, line: 884, baseType: !22, size: 32, offset: 9856)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !399, file: !400, line: 885, baseType: !22, size: 32, offset: 9888)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !399, file: !400, line: 886, baseType: !22, size: 32, offset: 9920)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !399, file: !400, line: 888, baseType: !22, size: 32, offset: 9952)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !399, file: !400, line: 890, baseType: !39, size: 64, offset: 9984)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !399, file: !400, line: 893, baseType: !7, size: 32, offset: 10048)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !399, file: !400, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !399, file: !400, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !399, file: !400, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !399, file: !400, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !399, file: !400, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !399, file: !400, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !399, file: !400, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !399, file: !400, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !399, file: !400, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !399, file: !400, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !399, file: !400, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !399, file: !400, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !399, file: !400, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !399, file: !400, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !399, file: !400, line: 969, baseType: !39, size: 64, offset: 10176)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !399, file: !400, line: 971, baseType: !1179, size: 448, offset: 10240)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !108, line: 25, size: 448, elements: !1180)
!1180 = !{!1181, !1182, !1187}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1179, file: !108, line: 26, baseType: !39, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1179, file: !108, line: 27, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!840, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !108, line: 28, baseType: !1188, size: 320, offset: 128)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !108, line: 28, size: 320, elements: !1189)
!1189 = !{!1190, !1200, !1225}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1188, file: !108, line: 37, baseType: !1191, size: 320)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !108, line: 30, size: 320, elements: !1192)
!1192 = !{!1193, !1195, !1196, !1197, !1198, !1199}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1191, file: !108, line: 31, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1191, file: !108, line: 32, baseType: !409, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !108, line: 33, baseType: !409, size: 32, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1191, file: !108, line: 34, baseType: !409, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1191, file: !108, line: 35, baseType: !457, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1191, file: !108, line: 36, baseType: !1194, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1188, file: !108, line: 47, baseType: !1201, size: 192)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !108, line: 39, size: 192, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1224}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1201, file: !108, line: 40, baseType: !569, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1201, file: !108, line: 41, baseType: !107, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !108, line: 42, baseType: !1206, size: 64, offset: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !108, line: 42, size: 64, elements: !1207)
!1207 = !{!1208, !1216}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1206, file: !108, line: 43, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1211, line: 7, size: 128, elements: !1212)
!1211 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1212 = !{!1213, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1210, file: !1211, line: 8, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1210, file: !1211, line: 9, baseType: !43, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1206, file: !108, line: 44, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1219, line: 7, size: 64, elements: !1220)
!1219 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1220 = !{!1221, !1223}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1218, file: !1219, line: 8, baseType: !1222, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1219, line: 5, baseType: !804)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1218, file: !1219, line: 9, baseType: !804, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1201, file: !108, line: 46, baseType: !457, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1188, file: !108, line: 55, baseType: !1226, size: 256)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !108, line: 49, size: 256, elements: !1227)
!1227 = !{!1228, !1236, !1237, !1238, !1239}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1226, file: !108, line: 50, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1231, line: 36, size: 64, elements: !1232)
!1231 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1230, file: !1231, line: 37, baseType: !22, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1230, file: !1231, line: 38, baseType: !857, size: 16, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1230, file: !1231, line: 39, baseType: !857, size: 16, offset: 48)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1226, file: !108, line: 51, baseType: !22, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1226, file: !108, line: 52, baseType: !22, size: 32, offset: 96)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1226, file: !108, line: 53, baseType: !39, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1226, file: !108, line: 54, baseType: !39, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !399, file: !400, line: 973, baseType: !1241, size: 32, offset: 10688)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !399, file: !400, line: 974, baseType: !1241, size: 32, offset: 10720)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !399, file: !400, line: 978, baseType: !39, size: 64, offset: 10752)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !399, file: !400, line: 987, baseType: !398, size: 64, offset: 10816)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !399, file: !400, line: 990, baseType: !398, size: 64, offset: 10880)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !399, file: !400, line: 995, baseType: !97, size: 128, offset: 10944)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !399, file: !400, line: 996, baseType: !97, size: 128, offset: 11072)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !399, file: !400, line: 997, baseType: !398, size: 64, offset: 11200)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !399, file: !400, line: 1005, baseType: !97, size: 128, offset: 11264)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !399, file: !400, line: 1006, baseType: !97, size: 128, offset: 11392)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !399, file: !400, line: 1009, baseType: !344, size: 64, offset: 11520)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !399, file: !400, line: 1010, baseType: !1254, size: 512, offset: 11584)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 512, elements: !366)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !399, file: !400, line: 1011, baseType: !97, size: 128, offset: 12096)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !399, file: !400, line: 1012, baseType: !97, size: 128, offset: 12224)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !399, file: !400, line: 1014, baseType: !1076, size: 64, offset: 12352)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !399, file: !400, line: 1017, baseType: !1259, size: 64, offset: 12416)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !399, file: !400, line: 1020, baseType: !1259, size: 64, offset: 12480)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !399, file: !400, line: 1023, baseType: !20, size: 64, offset: 12544)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !399, file: !400, line: 1025, baseType: !457, size: 64, offset: 12608)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !399, file: !400, line: 1026, baseType: !457, size: 64, offset: 12672)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !399, file: !400, line: 1031, baseType: !457, size: 64, offset: 12736)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !399, file: !400, line: 1032, baseType: !1266, size: 192, offset: 12800)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !400, line: 324, size: 192, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1266, file: !400, line: 326, baseType: !457, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1266, file: !400, line: 327, baseType: !457, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1266, file: !400, line: 328, baseType: !308, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !399, file: !400, line: 1041, baseType: !39, size: 64, offset: 12992)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !399, file: !400, line: 1042, baseType: !39, size: 64, offset: 13056)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !399, file: !400, line: 1045, baseType: !457, size: 64, offset: 13120)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !399, file: !400, line: 1048, baseType: !457, size: 64, offset: 13184)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !399, file: !400, line: 1051, baseType: !39, size: 64, offset: 13248)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !399, file: !400, line: 1052, baseType: !39, size: 64, offset: 13312)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !399, file: !400, line: 1055, baseType: !1278, size: 640, offset: 13376)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1279, line: 132, size: 640, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1280 = !{!1281, !1287, !1288}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1278, file: !1279, line: 133, baseType: !1282, size: 576)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 576, elements: !340)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1279, line: 117, size: 192, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1283, file: !1279, line: 118, baseType: !457, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1283, file: !1279, line: 119, baseType: !583, size: 128, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1278, file: !1279, line: 134, baseType: !7, size: 32, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1278, file: !1279, line: 135, baseType: !7, size: 32, offset: 608)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !399, file: !400, line: 1058, baseType: !1290, size: 448, offset: 14016)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1279, line: 144, size: 448, elements: !1291)
!1291 = !{!1292, !1293, !1294}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1290, file: !1279, line: 145, baseType: !281, size: 128, align: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1290, file: !1279, line: 146, baseType: !303, size: 256, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1290, file: !1279, line: 147, baseType: !7, size: 32, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !399, file: !400, line: 1064, baseType: !1296, size: 64, offset: 14464)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1299, line: 110, size: 1472, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1350, !1351, !1352, !1360}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1298, file: !1299, line: 111, baseType: !294, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1298, file: !1299, line: 112, baseType: !895, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1298, file: !1299, line: 113, baseType: !903, size: 32, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1298, file: !1299, line: 114, baseType: !895, size: 32, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1298, file: !1299, line: 115, baseType: !903, size: 32, offset: 160)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1298, file: !1299, line: 116, baseType: !895, size: 32, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1298, file: !1299, line: 117, baseType: !903, size: 32, offset: 224)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1298, file: !1299, line: 118, baseType: !895, size: 32, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1298, file: !1299, line: 119, baseType: !903, size: 32, offset: 288)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1298, file: !1299, line: 120, baseType: !7, size: 32, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1298, file: !1299, line: 121, baseType: !1312, size: 64, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1313, line: 24, baseType: !1314)
!1313 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1313, line: 24, size: 64, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1314, file: !1313, line: 24, baseType: !457, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1298, file: !1299, line: 122, baseType: !1312, size: 64, offset: 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1298, file: !1299, line: 123, baseType: !1312, size: 64, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1298, file: !1299, line: 124, baseType: !1312, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1298, file: !1299, line: 125, baseType: !1312, size: 64, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1298, file: !1299, line: 127, baseType: !87, size: 8, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1298, file: !1299, line: 129, baseType: !926, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1298, file: !1299, line: 130, baseType: !926, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1298, file: !1299, line: 131, baseType: !926, size: 64, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1298, file: !1299, line: 132, baseType: !926, size: 64, offset: 960)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1298, file: !1299, line: 135, baseType: !20, size: 64, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1298, file: !1299, line: 137, baseType: !1328, size: 64, offset: 1088)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1330, line: 14, size: 1088, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1329, file: !1330, line: 15, baseType: !348, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1329, file: !1330, line: 17, baseType: !796, size: 320, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1329, file: !1330, line: 19, baseType: !39, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1329, file: !1330, line: 20, baseType: !294, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1329, file: !1330, line: 23, baseType: !361, size: 128, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1329, file: !1330, line: 24, baseType: !895, size: 32, offset: 640)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1329, file: !1330, line: 29, baseType: !294, size: 64, offset: 704)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1329, file: !1330, line: 36, baseType: !1340, size: 320, offset: 768)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1341, line: 15, size: 320, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1340, file: !1341, line: 16, baseType: !308, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1340, file: !1341, line: 18, baseType: !22, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1340, file: !1341, line: 19, baseType: !22, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1340, file: !1341, line: 20, baseType: !22, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1340, file: !1341, line: 21, baseType: !22, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1340, file: !1341, line: 22, baseType: !39, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1340, file: !1341, line: 23, baseType: !39, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1298, file: !1299, line: 138, baseType: !864, size: 64, offset: 1152)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1298, file: !1299, line: 139, baseType: !1121, size: 64, offset: 1216)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1298, file: !1299, line: 140, baseType: !1353, size: 64, offset: 1280)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1299, line: 25, size: 64, elements: !1355)
!1355 = !{!1356, !1357, !1358}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1354, file: !1299, line: 26, baseType: !49, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1354, file: !1299, line: 27, baseType: !22, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1354, file: !1299, line: 28, baseType: !1359, offset: 64)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, elements: !1154)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1299, line: 142, baseType: !1361, size: 128, offset: 1344)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !1299, line: 142, size: 128, elements: !1362)
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1361, file: !1299, line: 143, baseType: !22, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1361, file: !1299, line: 144, baseType: !281, size: 128, align: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !399, file: !400, line: 1067, baseType: !1296, size: 64, offset: 14528)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !399, file: !400, line: 1070, baseType: !1296, size: 64, offset: 14592)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !399, file: !400, line: 1074, baseType: !926, size: 64, offset: 14656)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !399, file: !400, line: 1084, baseType: !1369, size: 128, offset: 14720)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 16)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !399, file: !400, line: 1086, baseType: !1373, size: 64, offset: 14848)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !400, line: 55, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !399, file: !400, line: 1089, baseType: !1376, size: 64, offset: 14912)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1377, line: 12, size: 64, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1376, file: !1377, line: 13, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1377, line: 8, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !399, file: !400, line: 1090, baseType: !1383, size: 128, offset: 14976)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1384, line: 13, size: 128, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1383, file: !1384, line: 14, baseType: !97, size: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !399, file: !400, line: 1097, baseType: !1388, size: 64, offset: 15104)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !400, line: 50, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !399, file: !400, line: 1100, baseType: !1391, size: 64, offset: 15168)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !400, line: 1100, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !399, file: !400, line: 1103, baseType: !1394, size: 64, offset: 15232)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !400, line: 53, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !399, file: !400, line: 1107, baseType: !1397, size: 64, offset: 15296)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1399, line: 31, size: 576, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1400 = !{!1401, !1402, !1405, !1408, !1411, !1412, !1415, !1418, !1419}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1398, file: !1399, line: 32, baseType: !348, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1398, file: !1399, line: 33, baseType: !1403, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1399, line: 9, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1398, file: !1399, line: 34, baseType: !1406, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1399, line: 10, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1398, file: !1399, line: 35, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1399, line: 8, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1398, file: !1399, line: 36, baseType: !377, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1398, file: !1399, line: 37, baseType: !1413, size: 64, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !928, line: 34, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1398, file: !1399, line: 38, baseType: !1416, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1399, line: 38, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1398, file: !1399, line: 39, baseType: !1416, size: 64, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1398, file: !1399, line: 40, baseType: !1420, size: 64, offset: 512)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1422, line: 771, size: 384, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1423 = !{!1424, !1425, !1426, !1427}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1421, file: !1422, line: 772, baseType: !910, size: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1421, file: !1422, line: 773, baseType: !864, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1421, file: !1422, line: 774, baseType: !1121, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1421, file: !1422, line: 775, baseType: !1428, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1430, line: 209, size: 4736, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1431 = !{!1432, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1429, file: !1430, line: 215, baseType: !1433, size: 896)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1434, size: 896, elements: !4902)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1430, line: 152, size: 1600, elements: !1436)
!1436 = !{!1437, !4953, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5071}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1435, file: !1430, line: 154, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1430, line: 389, size: 7872, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !4867, !4873, !4874, !4878, !4879, !4880, !4881, !4882, !4883, !4899, !4900, !4904, !4905, !4906, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4940, !4943, !4944, !4951}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1439, file: !1430, line: 391, baseType: !1435, size: 1600)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !1430, line: 393, baseType: !39, size: 64, offset: 1600)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1439, file: !1430, line: 401, baseType: !22, size: 32, offset: 1664)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1439, file: !1430, line: 404, baseType: !22, size: 32, offset: 1696)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1439, file: !1430, line: 417, baseType: !22, size: 32, offset: 1728)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1439, file: !1430, line: 418, baseType: !22, size: 32, offset: 1760)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1439, file: !1430, line: 419, baseType: !22, size: 32, offset: 1792)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1439, file: !1430, line: 432, baseType: !22, size: 32, offset: 1824)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1439, file: !1430, line: 433, baseType: !22, size: 32, offset: 1856)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1439, file: !1430, line: 434, baseType: !22, size: 32, offset: 1888)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1439, file: !1430, line: 436, baseType: !22, size: 32, offset: 1920)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1439, file: !1430, line: 439, baseType: !7, size: 32, offset: 1952)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1439, file: !1430, line: 441, baseType: !1454, size: 64, offset: 1984)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1456, line: 190, size: 1152, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !4859, !4860, !4861, !4862, !4863, !4866}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1455, file: !1456, line: 191, baseType: !49, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1455, file: !1456, line: 192, baseType: !49, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1455, file: !1456, line: 202, baseType: !1454, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1455, file: !1456, line: 203, baseType: !16, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1455, file: !1456, line: 205, baseType: !449, size: 192, align: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1455, file: !1456, line: 207, baseType: !837, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1455, file: !1456, line: 208, baseType: !7, size: 32, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !1456, line: 209, baseType: !1466, size: 256, offset: 512)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !1456, line: 209, size: 256, elements: !1467)
!1467 = !{!1468, !1477, !1481}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1466, file: !1456, line: 210, baseType: !1469, size: 256)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1456, line: 153, size: 256, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1476}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1469, file: !1456, line: 154, baseType: !39, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1469, file: !1456, line: 156, baseType: !589, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1469, file: !1456, line: 162, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1456, line: 162, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1469, file: !1456, line: 167, baseType: !39, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1466, file: !1456, line: 211, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1456, line: 170, size: 64, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1478, file: !1456, line: 171, baseType: !1454, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1466, file: !1456, line: 212, baseType: !1482, size: 256)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1456, line: 174, size: 256, elements: !1483)
!1483 = !{!1484, !4854, !4857, !4858}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1482, file: !1456, line: 175, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1456, line: 271, size: 768, elements: !1488)
!1488 = !{!1489, !4831, !4835, !4836, !4837, !4838, !4839, !4843, !4844, !4845, !4846, !4850}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1487, file: !1456, line: 276, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!22, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1456, line: 251, size: 1216, elements: !1495)
!1495 = !{!1496, !1497, !1498, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1494, file: !1456, line: 253, baseType: !1454, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1494, file: !1456, line: 254, baseType: !268, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1494, file: !1456, line: 255, baseType: !1499, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1501, line: 17, size: 960, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1532, !1533, !1536}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1500, file: !1501, line: 18, baseType: !999, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1500, file: !1501, line: 19, baseType: !35, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1500, file: !1501, line: 20, baseType: !35, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1500, file: !1501, line: 21, baseType: !35, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1500, file: !1501, line: 22, baseType: !35, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1500, file: !1501, line: 23, baseType: !41, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1500, file: !1501, line: 24, baseType: !41, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1500, file: !1501, line: 25, baseType: !303, size: 256, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1500, file: !1501, line: 26, baseType: !1512, size: 64, offset: 704)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1501, line: 32, size: 256, elements: !1515)
!1515 = !{!1516, !1520, !1524, !1528}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1514, file: !1501, line: 33, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!20, !1499, !40}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1514, file: !1501, line: 34, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1499, !20}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1514, file: !1501, line: 35, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!20, !1499, !20, !40}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1514, file: !1501, line: 36, baseType: !1529, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!22, !1499, !20}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1500, file: !1501, line: 27, baseType: !22, size: 32, offset: 768)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1500, file: !1501, line: 28, baseType: !1534, size: 64, offset: 832)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1500, file: !1501, line: 29, baseType: !20, size: 64, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1494, file: !1456, line: 256, baseType: !20, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1494, file: !1456, line: 259, baseType: !303, size: 256, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1494, file: !1456, line: 260, baseType: !303, size: 256, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1494, file: !1456, line: 261, baseType: !22, size: 32, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1494, file: !1456, line: 262, baseType: !97, size: 128, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1494, file: !1456, line: 263, baseType: !999, size: 64, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1494, file: !1456, line: 265, baseType: !35, size: 64, offset: 1024)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1494, file: !1456, line: 266, baseType: !922, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1494, file: !1456, line: 267, baseType: !922, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1494, file: !1456, line: 268, baseType: !1547, size: 64, offset: 1152)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1550, line: 563, size: 1024, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1551 = !{!1552, !1608, !1609, !1613, !1617, !1621, !4797, !4801, !4805, !4809, !4810, !4811, !4815, !4819, !4823, !4827}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1549, file: !1550, line: 564, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !114, line: 625, size: 1344, elements: !1558)
!1558 = !{!1559, !1568, !1569, !1575, !1582, !1583, !1588, !1589, !1594, !1595, !1598, !1599, !1600, !1601, !1602, !1603, !1606}
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !114, line: 628, baseType: !1560, size: 128)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1557, file: !114, line: 628, size: 128, elements: !1561)
!1561 = !{!1562, !1567}
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !114, line: 629, baseType: !1563, size: 128)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !114, line: 629, size: 128, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1563, file: !114, line: 631, baseType: !39, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1563, file: !114, line: 632, baseType: !39, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1560, file: !114, line: 635, baseType: !281, size: 128, align: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1557, file: !114, line: 639, baseType: !703, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1557, file: !114, line: 640, baseType: !1570, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !739, line: 297, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !739, line: 297, size: 64, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1571, file: !739, line: 297, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !744, line: 19, baseType: !39)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !114, line: 646, baseType: !1576, size: 64, offset: 256)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1557, file: !114, line: 646, size: 64, elements: !1577)
!1577 = !{!1578, !1581}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1576, file: !114, line: 647, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1580)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !114, line: 542, baseType: !39)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1576, file: !114, line: 648, baseType: !1580, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1557, file: !114, line: 666, baseType: !22, size: 32, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1557, file: !114, line: 667, baseType: !1584, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !114, line: 579, size: 320, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1585, file: !114, line: 580, baseType: !758, size: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1557, file: !114, line: 670, baseType: !922, size: 8, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1557, file: !114, line: 681, baseType: !1590, size: 256, offset: 512)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !114, line: 678, size: 256, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1590, file: !114, line: 679, baseType: !449, size: 192, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1590, file: !114, line: 680, baseType: !39, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1557, file: !114, line: 689, baseType: !97, size: 128, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1557, file: !114, line: 691, baseType: !1596, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !114, line: 691, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1557, file: !114, line: 694, baseType: !1547, size: 64, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1557, file: !114, line: 697, baseType: !39, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1557, file: !114, line: 699, baseType: !268, size: 64, offset: 1088)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1557, file: !114, line: 700, baseType: !20, size: 64, offset: 1152)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1557, file: !114, line: 711, baseType: !294, size: 64, offset: 1216)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1557, file: !114, line: 717, baseType: !1604, size: 64, offset: 1280)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !114, line: 717, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1557, file: !114, line: 722, baseType: !1607, offset: 1344)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !114, line: 570, elements: !724)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1549, file: !1550, line: 569, baseType: !1553, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1549, file: !1550, line: 571, baseType: !1610, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!22, !1556, !39}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1549, file: !1550, line: 572, baseType: !1614, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!22, !1556}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1549, file: !1550, line: 578, baseType: !1618, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!22, !1556, !39, !39, !39}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1549, file: !1550, line: 580, baseType: !1622, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !114, line: 1184, baseType: !7)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1550, line: 512, size: 896, elements: !1628)
!1628 = !{!1629, !1637, !1638, !1645, !1652, !1662, !4790, !4791, !4793, !4795}
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !1550, line: 513, baseType: !1630, size: 320)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1627, file: !1550, line: 513, size: 320, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1630, file: !1550, line: 514, baseType: !1556, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1630, file: !1550, line: 515, baseType: !391, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1630, file: !1550, line: 516, baseType: !39, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1630, file: !1550, line: 517, baseType: !39, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1630, file: !1550, line: 518, baseType: !39, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1627, file: !1550, line: 520, baseType: !113, size: 32, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1627, file: !1550, line: 522, baseType: !1639, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !744, line: 22, baseType: !1641)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !744, line: 22, size: 64, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1641, file: !744, line: 22, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !744, line: 15, baseType: !39)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1627, file: !1550, line: 524, baseType: !1646, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !739, line: 372, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 372, size: 64, elements: !1649)
!1649 = !{!1650}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1648, file: !739, line: 372, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !744, line: 16, baseType: !39)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !1550, line: 527, baseType: !1653, size: 64, offset: 512)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !1550, line: 527, size: 64, elements: !1654)
!1654 = !{!1655, !1661}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1653, file: !1550, line: 528, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !744, line: 21, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !744, line: 21, size: 64, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1657, file: !744, line: 21, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !744, line: 14, baseType: !39)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1653, file: !1550, line: 529, baseType: !1640, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1627, file: !1550, line: 534, baseType: !1663, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !114, line: 74, size: 512, align: 128, elements: !1665)
!1665 = !{!1666, !1667, !4784, !4789}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1664, file: !114, line: 75, baseType: !39, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !114, line: 83, baseType: !1668, size: 320, offset: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1664, file: !114, line: 83, size: 320, elements: !1669)
!1669 = !{!1670, !4690, !4704, !4708, !4783}
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !114, line: 84, baseType: !1671, size: 320)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !114, line: 84, size: 320, elements: !1672)
!1672 = !{!1673, !1684, !4684, !4689}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !114, line: 90, baseType: !1674, size: 128)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !114, line: 90, size: 128, elements: !1675)
!1675 = !{!1676, !1677, !1682, !1683}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1674, file: !114, line: 91, baseType: !97, size: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !114, line: 94, baseType: !1678, size: 128)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !114, line: 94, size: 128, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1678, file: !114, line: 96, baseType: !20, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1678, file: !114, line: 98, baseType: !7, size: 32, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1674, file: !114, line: 102, baseType: !97, size: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1674, file: !114, line: 103, baseType: !97, size: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1671, file: !114, line: 106, baseType: !1685, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !252, line: 472, size: 1536, align: 64, elements: !1687)
!1687 = !{!1688, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4678, !4679, !4680, !4681, !4682, !4683}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1686, file: !252, line: 473, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !252, line: 641, size: 4800, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697, !1698, !1701, !1702, !4240, !4241, !4242, !4243, !4244, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4500, !4503, !4504, !4505, !4514, !4515, !4516, !4517}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1690, file: !252, line: 642, baseType: !24, size: 16)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1690, file: !252, line: 643, baseType: !26, size: 16, offset: 16)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1690, file: !252, line: 644, baseType: !895, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1690, file: !252, line: 645, baseType: !97, size: 128, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1690, file: !252, line: 646, baseType: !903, size: 32, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1690, file: !252, line: 647, baseType: !7, size: 32, offset: 224)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1690, file: !252, line: 650, baseType: !1699, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !252, line: 607, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1690, file: !252, line: 651, baseType: !1699, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1690, file: !252, line: 654, baseType: !1703, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !252, line: 1966, size: 2048, align: 512, elements: !1706)
!1706 = !{!1707, !4074, !4084, !4088, !4092, !4096, !4100, !4104, !4108, !4112, !4116, !4117, !4121, !4125, !4162, !4191, !4195, !4201, !4205, !4209, !4213, !4217, !4221, !4227, !4231}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1705, file: !252, line: 1967, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1711, !1689, !1711, !7}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1713, line: 82, size: 1536, elements: !1714)
!1713 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1714 = !{!1715, !1716, !1721, !1729, !1730, !1745, !1746, !1750, !1763, !4057, !4058, !4059, !4060, !4066, !4067, !4068}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1712, file: !1713, line: 84, baseType: !7, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1712, file: !1713, line: 85, baseType: !1717, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !573, line: 275, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !573, line: 275, size: 32, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1718, file: !573, line: 275, baseType: !577, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1712, file: !1713, line: 86, baseType: !1722, size: 128, offset: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1723, line: 38, size: 128, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1724 = !{!1725, !1727}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1722, file: !1723, line: 39, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1722, file: !1723, line: 39, baseType: !1728, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1712, file: !1713, line: 87, baseType: !1711, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1712, file: !1713, line: 88, baseType: !1731, size: 128, offset: 256)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1713, line: 49, size: 128, elements: !1732)
!1732 = !{!1733, !1742}
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1713, line: 50, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1713, line: 50, size: 64, elements: !1735)
!1735 = !{!1736, !1741}
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !1713, line: 51, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1734, file: !1713, line: 51, size: 64, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1737, file: !1713, line: 52, baseType: !409, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1737, file: !1713, line: 52, baseType: !409, size: 32, offset: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1734, file: !1713, line: 54, baseType: !457, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1731, file: !1713, line: 56, baseType: !1743, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1712, file: !1713, line: 89, baseType: !1689, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1712, file: !1713, line: 91, baseType: !1747, size: 256, offset: 448)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1712, file: !1713, line: 94, baseType: !1751, size: 64, offset: 704)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1752, line: 25, size: 64, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1753 = !{!1754}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !1752, line: 26, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !1752, line: 26, size: 64, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1755, file: !1752, line: 28, baseType: !458, size: 64, align: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !1752, line: 30, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !1752, line: 30, size: 64, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1759, file: !1752, line: 31, baseType: !59, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1759, file: !1752, line: 32, baseType: !22, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1712, file: !1713, line: 95, baseType: !1764, size: 64, offset: 768)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1713, line: 128, size: 1024, align: 512, elements: !1767)
!1767 = !{!1768, !1772, !1773, !1780, !1786, !1790, !1794, !1798, !1799, !1803, !1807, !4047, !4051}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1766, file: !1713, line: 129, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!22, !1711, !7}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1766, file: !1713, line: 130, baseType: !1769, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1766, file: !1713, line: 131, baseType: !1774, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!22, !1777, !1779}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1766, file: !1713, line: 132, baseType: !1781, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!22, !1777, !7, !16, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1766, file: !1713, line: 134, baseType: !1787, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!22, !1777}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1766, file: !1713, line: 135, baseType: !1791, size: 64, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!22, !1711}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1766, file: !1713, line: 136, baseType: !1795, size: 64, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1711}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1766, file: !1713, line: 137, baseType: !1795, size: 64, offset: 448)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1766, file: !1713, line: 138, baseType: !1800, size: 64, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !1711, !1689}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1766, file: !1713, line: 139, baseType: !1804, size: 64, offset: 576)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!999, !1711, !999, !22}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1766, file: !1713, line: 140, baseType: !1808, size: 64, offset: 640)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1811, !4046}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1813, line: 70, size: 256, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1814 = !{!1815, !1816, !4042, !4043}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1812, file: !1813, line: 71, baseType: !1711, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1812, file: !1813, line: 72, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !252, line: 1190, size: 10752, elements: !1819)
!1819 = !{!1820, !1821, !1824, !1825, !1826, !1827, !3591, !3744, !3784, !3874, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3891, !3895, !3896, !3899, !3902, !3905, !3908, !3909, !3910, !3951, !3973, !3974, !3975, !3976, !3977, !3978, !3981, !3983, !3990, !3991, !3992, !3993, !3994, !4009, !4010, !4011, !4012, !4015, !4016, !4017, !4018, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1818, file: !252, line: 1191, baseType: !97, size: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1818, file: !252, line: 1192, baseType: !1822, size: 32, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1823)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !409)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1818, file: !252, line: 1193, baseType: !87, size: 8, offset: 160)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1818, file: !252, line: 1194, baseType: !39, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1818, file: !252, line: 1195, baseType: !41, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1818, file: !252, line: 1196, baseType: !1828, size: 64, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !252, line: 2366, size: 576, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1839, !1843, !1847, !1851, !3579, !3580, !3581, !3583, !3584, !3585, !3587, !3588, !3589, !3590}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1829, file: !252, line: 2367, baseType: !16, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1829, file: !252, line: 2368, baseType: !22, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1829, file: !252, line: 2376, baseType: !1834, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!22, !1837}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1813, line: 21, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1829, file: !252, line: 2377, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1842)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !252, line: 75, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1829, file: !252, line: 2378, baseType: !1844, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1711, !1828, !22, !16, !20}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1829, file: !252, line: 2380, baseType: !1848, size: 64, offset: 320)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1817}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1829, file: !252, line: 2381, baseType: !1852, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !152, line: 402, size: 9216, align: 512, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1861, !2041, !2067, !2068, !2069, !2070, !2074, !2077, !2078, !2079, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2147, !2151, !2171, !2188, !2189, !2190, !2191, !2200, !2223, !2224, !2227, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2241, !2242, !2341, !2349, !2350, !2351, !2353, !3557, !3558, !3567, !3568, !3569, !3570, !3572, !3573, !3574, !3575, !3576, !3577, !3578}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1853, file: !152, line: 403, baseType: !151, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1853, file: !152, line: 406, baseType: !97, size: 128, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1853, file: !152, line: 409, baseType: !1858, size: 448, offset: 192)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1859)
!1859 = !{!1860}
!1860 = !DISubrange(count: 56)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1853, file: !152, line: 417, baseType: !1862, size: 768, offset: 640)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !152, line: 45, size: 768, elements: !1863)
!1863 = !{!1864, !2035, !2036, !2037, !2040}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1862, file: !152, line: 46, baseType: !1865, size: 512)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1866, line: 64, size: 512, elements: !1867)
!1866 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1867 = !{!1868, !1869, !1870, !1872, !1916, !2024, !2025, !2030, !2031, !2032, !2033, !2034}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1865, file: !1866, line: 65, baseType: !16, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1865, file: !1866, line: 66, baseType: !97, size: 128, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1865, file: !1866, line: 67, baseType: !1871, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1865, file: !1866, line: 68, baseType: !1873, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1866, line: 168, size: 768, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1874, file: !1866, line: 169, baseType: !97, size: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1874, file: !1866, line: 170, baseType: !59, size: 32, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1874, file: !1866, line: 171, baseType: !1865, size: 512, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1874, file: !1866, line: 172, baseType: !1880, size: 64, offset: 704)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1866, line: 133, size: 192, elements: !1883)
!1883 = !{!1884, !1891, !1896}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1882, file: !1866, line: 134, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!22, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1882, file: !1866, line: 135, baseType: !1892, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!16, !1889}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1882, file: !1866, line: 136, baseType: !1897, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!22, !1889, !1901}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1866, line: 125, size: 20736, elements: !1903)
!1903 = !{!1904, !1906, !1910, !1911, !1915}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1902, file: !1866, line: 126, baseType: !1905, size: 192)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 192, elements: !340)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1902, file: !1866, line: 127, baseType: !1907, size: 4096, offset: 192)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 4096, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1902, file: !1866, line: 128, baseType: !22, size: 32, offset: 4288)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1902, file: !1866, line: 129, baseType: !1912, size: 16384, offset: 4320)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1913)
!1913 = !{!1914}
!1914 = !DISubrange(count: 2048)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1902, file: !1866, line: 130, baseType: !22, size: 32, offset: 20704)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1865, file: !1866, line: 69, baseType: !1917, size: 64, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1866, line: 116, size: 384, elements: !1920)
!1920 = !{!1921, !1925, !1947, !1985, !2016, !2020}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1919, file: !1866, line: 117, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !1871}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1919, file: !1866, line: 118, baseType: !1926, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1929, line: 254, size: 128, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1930 = !{!1931, !1943}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1928, file: !1929, line: 255, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1935, !1871, !1938, !999}
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !1937)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !840)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1929, line: 30, size: 128, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1939, file: !1929, line: 31, baseType: !16, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1939, file: !1929, line: 32, baseType: !24, size: 16, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1928, file: !1929, line: 256, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1935, !1871, !1938, !16, !35}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1919, file: !1866, line: 119, baseType: !1948, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1929, line: 84, size: 320, elements: !1952)
!1952 = !{!1953, !1954, !1958, !1981, !1983}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1951, file: !1929, line: 85, baseType: !16, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1951, file: !1929, line: 86, baseType: !1955, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!24, !1871, !1938, !22}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1951, file: !1929, line: 88, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!24, !1871, !1962, !22}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1929, line: 175, size: 512, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968, !1972, !1976, !1977}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1963, file: !1929, line: 176, baseType: !1939, size: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1963, file: !1929, line: 177, baseType: !35, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1963, file: !1929, line: 178, baseType: !20, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1963, file: !1929, line: 179, baseType: !1969, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1685}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1963, file: !1929, line: 180, baseType: !1973, size: 64, offset: 320)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!1935, !268, !1871, !1962, !999, !41, !35}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1963, file: !1929, line: 182, baseType: !1973, size: 64, offset: 384)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1963, file: !1929, line: 184, baseType: !1978, size: 64, offset: 448)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!22, !268, !1871, !1962, !1556}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1951, file: !1929, line: 90, baseType: !1982, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1951, file: !1929, line: 91, baseType: !1984, size: 64, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1919, file: !1866, line: 120, baseType: !1986, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1989, !1889}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !159, line: 39, size: 384, elements: !1992)
!1992 = !{!1993, !1994, !1998, !2002, !2008, !2012}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1991, file: !159, line: 40, baseType: !158, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1991, file: !159, line: 41, baseType: !1995, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!922}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1991, file: !159, line: 42, baseType: !1999, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!20}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1991, file: !159, line: 43, baseType: !2003, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!837, !2006}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !159, line: 19, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1991, file: !159, line: 44, baseType: !2009, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!837}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1991, file: !159, line: 45, baseType: !2013, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !20}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1919, file: !1866, line: 121, baseType: !2017, size: 64, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!837, !1889}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1919, file: !1866, line: 122, baseType: !2021, size: 64, offset: 320)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !1889, !1102, !1103}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1865, file: !1866, line: 70, baseType: !1454, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1865, file: !1866, line: 71, baseType: !2026, size: 32, offset: 448)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2027, line: 19, size: 32, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2028 = !{!2029}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2026, file: !2027, line: 20, baseType: !348, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1865, file: !1866, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1865, file: !1866, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1865, file: !1866, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1865, file: !1866, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1865, file: !1866, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1862, file: !152, line: 47, baseType: !1852, size: 64, offset: 512)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1862, file: !152, line: 48, baseType: !1871, size: 64, offset: 576)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1862, file: !152, line: 49, baseType: !2038, size: 64, offset: 640)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !152, line: 49, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1862, file: !152, line: 50, baseType: !1076, size: 64, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1853, file: !152, line: 418, baseType: !2042, size: 64, offset: 1408)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !152, line: 53, size: 448, elements: !2044)
!2044 = !{!2045, !2046, !2051, !2055, !2059, !2063}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2043, file: !152, line: 54, baseType: !1939, size: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2043, file: !152, line: 55, baseType: !2047, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!1935, !2042, !2050, !999}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2043, file: !152, line: 57, baseType: !2052, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!1935, !2042, !2050, !16, !35}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2043, file: !152, line: 59, baseType: !2056, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !1852, !16}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2043, file: !152, line: 60, baseType: !2060, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!22, !1852}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2043, file: !152, line: 61, baseType: !2064, size: 64, offset: 384)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !1852}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1853, file: !152, line: 419, baseType: !16, size: 64, offset: 1472)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1853, file: !152, line: 420, baseType: !16, size: 64, offset: 1536)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1853, file: !152, line: 421, baseType: !1871, size: 64, offset: 1600)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1853, file: !152, line: 424, baseType: !2071, size: 64, offset: 1664)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2073)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !152, line: 424, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1853, file: !152, line: 425, baseType: !2075, size: 64, offset: 1728)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1853, file: !152, line: 426, baseType: !7, size: 32, offset: 1792)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1853, file: !152, line: 435, baseType: !303, size: 256, offset: 1856)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1853, file: !152, line: 437, baseType: !2080, size: 64, offset: 2112)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2082, line: 69, size: 320, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2083 = !{!2084, !2085, !2086, !2103, !2105, !2109, !2110}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2081, file: !2082, line: 70, baseType: !16, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2081, file: !2082, line: 71, baseType: !1852, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2081, file: !2082, line: 72, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2082, line: 47, size: 256, elements: !2090)
!2090 = !{!2091, !2092, !2098, !2102}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !2082, line: 49, baseType: !7, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2089, file: !2082, line: 51, baseType: !2093, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!22, !16, !2096}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2089, file: !2082, line: 53, baseType: !2099, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!22, !999, !2096}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2089, file: !2082, line: 55, baseType: !2013, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2081, file: !2082, line: 73, baseType: !2104, size: 16, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2081, file: !2082, line: 74, baseType: !2106, size: 8, offset: 208)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2107)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2108)
!2108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2081, file: !2082, line: 75, baseType: !83, size: 8, offset: 216)
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !2081, file: !2082, line: 76, baseType: !2111, size: 64, offset: 256)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2081, file: !2082, line: 76, size: 64, elements: !2112)
!2112 = !{!2113, !2114, !2121}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2111, file: !2082, line: 77, baseType: !20, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2111, file: !2082, line: 78, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2082, line: 86, size: 128, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2117, file: !2082, line: 87, baseType: !7, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2117, file: !2082, line: 88, baseType: !999, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2111, file: !2082, line: 79, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2082, line: 92, size: 256, elements: !2125)
!2125 = !{!2126, !2127, !2128, !2130, !2131}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2124, file: !2082, line: 94, baseType: !7, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2124, file: !2082, line: 95, baseType: !7, size: 32, offset: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2124, file: !2082, line: 96, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2124, file: !2082, line: 97, baseType: !2087, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2124, file: !2082, line: 98, baseType: !20, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1853, file: !152, line: 438, baseType: !7, size: 32, offset: 2176)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1853, file: !152, line: 441, baseType: !7, size: 32, offset: 2208)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1853, file: !152, line: 442, baseType: !2071, size: 64, offset: 2240)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1853, file: !152, line: 443, baseType: !2075, size: 64, offset: 2304)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1853, file: !152, line: 444, baseType: !922, size: 8, offset: 2368)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1853, file: !152, line: 451, baseType: !922, size: 8, offset: 2376)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1853, file: !152, line: 454, baseType: !7, size: 32, offset: 2400)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1853, file: !152, line: 455, baseType: !2140, size: 64, offset: 2432)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2142, line: 23, size: 96, elements: !2143)
!2142 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2143 = !{!2144, !2145, !2146}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2141, file: !2142, line: 24, baseType: !22, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2141, file: !2142, line: 24, baseType: !22, size: 32, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2141, file: !2142, line: 24, baseType: !22, size: 32, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1853, file: !152, line: 458, baseType: !2148, size: 64, offset: 2496)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!22}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1853, file: !152, line: 460, baseType: !2152, size: 4032, align: 512, offset: 2560)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2153, size: 4032, elements: !2169)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !152, line: 362, size: 576, elements: !2154)
!2154 = !{!2155, !2156, !2157}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2153, file: !152, line: 363, baseType: !20, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2153, file: !152, line: 364, baseType: !7, size: 32, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2153, file: !152, line: 367, baseType: !2158, size: 448, offset: 128)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !152, line: 319, size: 448, elements: !2159)
!2159 = !{!2160, !2161}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2158, file: !152, line: 320, baseType: !1852, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2158, file: !152, line: 321, baseType: !2162, size: 384, offset: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2163, line: 40, size: 384, elements: !2164)
!2163 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2164 = !{!2165}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2162, file: !2163, line: 41, baseType: !2166, size: 384, align: 64)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 384, align: 64, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 2)
!2169 = !{!2170}
!2170 = !DISubrange(count: 7)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1853, file: !152, line: 463, baseType: !2172, size: 192, offset: 6592)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2173, line: 8, size: 192, elements: !2174)
!2173 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2174 = !{!2175, !2176, !2177}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2172, file: !2173, line: 10, baseType: !7, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2172, file: !2173, line: 11, baseType: !1259, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2172, file: !2173, line: 12, baseType: !2178, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2180, line: 59, size: 48, elements: !2181)
!2180 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2179, file: !2180, line: 60, baseType: !855, size: 16)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2179, file: !2180, line: 61, baseType: !855, size: 16, offset: 16)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2179, file: !2180, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2179, file: !2180, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2179, file: !2180, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2179, file: !2180, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1853, file: !152, line: 465, baseType: !39, size: 64, offset: 6784)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1853, file: !152, line: 469, baseType: !7, size: 32, offset: 6848)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1853, file: !152, line: 470, baseType: !97, size: 128, offset: 6912)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1853, file: !152, line: 471, baseType: !2192, size: 64, offset: 7040)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2194, line: 33, size: 96, elements: !2195)
!2194 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2195 = !{!2196, !2197, !2198, !2199}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2193, file: !2194, line: 37, baseType: !22, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2193, file: !2194, line: 43, baseType: !22, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2193, file: !2194, line: 45, baseType: !26, size: 16, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2193, file: !2194, line: 47, baseType: !26, size: 16, offset: 80)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1853, file: !152, line: 476, baseType: !2201, size: 64, offset: 7104)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !152, line: 378, size: 256, elements: !2203)
!2203 = !{!2204, !2220, !2221, !2222}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2202, file: !152, line: 379, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2207, line: 204, baseType: !2208)
!2207 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2207, line: 197, size: 192, elements: !2209)
!2209 = !{!2210, !2212, !2213, !2214, !2216, !2218}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2208, file: !2207, line: 198, baseType: !2211, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2207, line: 21, baseType: !410)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2208, file: !2207, line: 199, baseType: !87, size: 8, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2208, file: !2207, line: 200, baseType: !87, size: 8, offset: 40)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2208, file: !2207, line: 201, baseType: !2215, size: 16, offset: 48)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2207, line: 17, baseType: !94)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2208, file: !2207, line: 202, baseType: !2217, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2207, line: 16, baseType: !458)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2208, file: !2207, line: 203, baseType: !2219, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2207, line: 22, baseType: !458)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2202, file: !152, line: 380, baseType: !7, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2202, file: !152, line: 381, baseType: !999, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2202, file: !152, line: 382, baseType: !999, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1853, file: !152, line: 477, baseType: !2202, size: 256, offset: 7168)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1853, file: !152, line: 480, baseType: !2225, size: 64, offset: 7424)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !152, line: 480, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1853, file: !152, line: 483, baseType: !2228, size: 64, offset: 7488)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !152, line: 483, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1853, file: !152, line: 488, baseType: !999, size: 64, offset: 7552)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1853, file: !152, line: 492, baseType: !20, size: 64, offset: 7616)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1853, file: !152, line: 493, baseType: !7, size: 32, offset: 7680)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1853, file: !152, line: 495, baseType: !20, size: 64, offset: 7744)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1853, file: !152, line: 496, baseType: !7, size: 32, offset: 7808)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1853, file: !152, line: 499, baseType: !7, size: 32, offset: 7840)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1853, file: !152, line: 500, baseType: !2237, size: 64, offset: 7872)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2239, line: 45, baseType: !2240)
!2239 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1853, file: !152, line: 503, baseType: !7, size: 32, offset: 7936)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1853, file: !152, line: 504, baseType: !2243, size: 64, offset: 8000)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2246, line: 96, size: 192, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2247 = !{!2248, !2249, !2302, !2305}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2245, file: !2246, line: 97, baseType: !7, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2245, file: !2246, line: 98, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2246, line: 24, size: 3072, elements: !2252)
!2252 = !{!2253, !2255, !2256, !2257, !2258, !2271, !2272, !2273, !2274, !2286, !2287, !2288, !2299, !2300, !2301}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2251, file: !2246, line: 26, baseType: !2254, size: 128)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 128, elements: !2167)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2251, file: !2246, line: 27, baseType: !2254, size: 128, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2251, file: !2246, line: 28, baseType: !22, size: 32, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2251, file: !2246, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2251, file: !2246, line: 32, baseType: !2259, size: 960, offset: 576)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2260, line: 206, size: 960, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2261 = !{!2262, !2263, !2266, !2268, !2269, !2270}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2259, file: !2260, line: 207, baseType: !284, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2259, file: !2260, line: 208, baseType: !2264, size: 256, offset: 64)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2265, size: 256, elements: !366)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2259, file: !2260, line: 209, baseType: !2267, size: 256, offset: 320)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !366)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2259, file: !2260, line: 213, baseType: !840, size: 64, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2259, file: !2260, line: 215, baseType: !1137, size: 256, offset: 640)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2259, file: !2260, line: 216, baseType: !83, size: 8, offset: 896)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2251, file: !2246, line: 33, baseType: !39, size: 64, offset: 1536)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2251, file: !2246, line: 34, baseType: !39, size: 64, offset: 1600)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2251, file: !2246, line: 35, baseType: !922, size: 8, offset: 1664)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2251, file: !2246, line: 36, baseType: !2275, size: 320, offset: 1728)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2276, line: 11, size: 320, elements: !2277)
!2276 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2277 = !{!2278, !2279, !2280, !2285}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2275, file: !2276, line: 16, baseType: !361, size: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2275, file: !2276, line: 17, baseType: !39, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2275, file: !2276, line: 18, baseType: !2281, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !2284}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2275, file: !2276, line: 19, baseType: !409, size: 32, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2251, file: !2246, line: 37, baseType: !1038, size: 256, offset: 2048)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2251, file: !2246, line: 38, baseType: !281, size: 128, align: 64, offset: 2304)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2251, file: !2246, line: 39, baseType: !2289, size: 64, offset: 2432)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2246, line: 49, size: 768, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2290, file: !2246, line: 50, baseType: !59, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2290, file: !2246, line: 51, baseType: !2267, size: 256, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2290, file: !2246, line: 53, baseType: !2267, size: 256, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2290, file: !2246, line: 54, baseType: !39, size: 64, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2290, file: !2246, line: 55, baseType: !2289, size: 64, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2290, file: !2246, line: 56, baseType: !22, size: 32, offset: 704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2290, file: !2246, line: 57, baseType: !22, size: 32, offset: 736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2251, file: !2246, line: 40, baseType: !39, size: 64, offset: 2496)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2251, file: !2246, line: 42, baseType: !22, size: 32, offset: 2560)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2251, file: !2246, line: 43, baseType: !2244, size: 64, offset: 2624)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2245, file: !2246, line: 99, baseType: !2303, offset: 128)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2304, line: 211, elements: !724)
!2304 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2245, file: !2246, line: 100, baseType: !2306, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2246, line: 63, size: 3008, elements: !2308)
!2308 = !{!2309, !2310, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2340}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2307, file: !2246, line: 64, baseType: !2289, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2307, file: !2246, line: 65, baseType: !2311, size: 192, offset: 64)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2289, size: 192, elements: !340)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2307, file: !2246, line: 67, baseType: !22, size: 32, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2307, file: !2246, line: 68, baseType: !303, size: 256, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2307, file: !2246, line: 69, baseType: !59, size: 32, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2307, file: !2246, line: 70, baseType: !303, size: 256, offset: 640)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2307, file: !2246, line: 71, baseType: !39, size: 64, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2307, file: !2246, line: 72, baseType: !39, size: 64, offset: 960)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2307, file: !2246, line: 73, baseType: !39, size: 64, offset: 1024)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2307, file: !2246, line: 74, baseType: !39, size: 64, offset: 1088)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2307, file: !2246, line: 75, baseType: !39, size: 64, offset: 1152)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2307, file: !2246, line: 76, baseType: !39, size: 64, offset: 1216)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2307, file: !2246, line: 77, baseType: !39, size: 64, offset: 1280)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2307, file: !2246, line: 78, baseType: !39, size: 64, offset: 1344)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2307, file: !2246, line: 79, baseType: !922, size: 8, offset: 1408)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2307, file: !2246, line: 80, baseType: !39, size: 64, offset: 1472)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2307, file: !2246, line: 81, baseType: !303, size: 256, offset: 1536)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2307, file: !2246, line: 82, baseType: !1077, size: 256, offset: 1792)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2307, file: !2246, line: 84, baseType: !49, size: 32, offset: 2048)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2307, file: !2246, line: 87, baseType: !39, size: 64, offset: 2112)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2307, file: !2246, line: 88, baseType: !39, size: 64, offset: 2176)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2307, file: !2246, line: 89, baseType: !2332, size: 704, offset: 2240)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1039, line: 111, size: 704, elements: !2333)
!2333 = !{!2334, !2335, !2336, !2339}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2332, file: !1039, line: 112, baseType: !1038, size: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2332, file: !1039, line: 113, baseType: !2275, size: 320, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2332, file: !1039, line: 116, baseType: !2337, size: 64, offset: 576)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1039, line: 18, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2332, file: !1039, line: 117, baseType: !22, size: 32, offset: 640)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2307, file: !2246, line: 90, baseType: !2244, size: 64, offset: 2944)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1853, file: !152, line: 515, baseType: !2342, size: 64, offset: 8064)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2344, line: 117, size: 128, elements: !2345)
!2344 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2345 = !{!2346, !2347, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2343, file: !2344, line: 118, baseType: !804, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2343, file: !2344, line: 119, baseType: !804, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2343, file: !2344, line: 120, baseType: !840, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1853, file: !152, line: 516, baseType: !7, size: 32, offset: 8128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1853, file: !152, line: 519, baseType: !7, size: 32, offset: 8160)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1853, file: !152, line: 520, baseType: !2352, size: 64, offset: 8192)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1853, file: !152, line: 523, baseType: !2354, size: 64, offset: 8256)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !165, line: 372, size: 1024, elements: !2357)
!2357 = !{!2358, !2359, !2399, !2459, !2540, !2541, !2544, !2549, !2550, !2551, !2552, !2554, !2557}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2356, file: !165, line: 373, baseType: !97, size: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2356, file: !165, line: 374, baseType: !2360, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !165, line: 291, size: 576, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2370, !2393, !2397, !2398}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2361, file: !165, line: 292, baseType: !16, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2361, file: !165, line: 293, baseType: !20, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2361, file: !165, line: 295, baseType: !20, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2361, file: !165, line: 297, baseType: !2367, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!22, !2355, !164, !20}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2361, file: !165, line: 299, baseType: !2371, size: 64, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !165, line: 275, size: 320, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2372, file: !165, line: 276, baseType: !16, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, scope: !2372, file: !165, line: 277, baseType: !2376, size: 256, offset: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2372, file: !165, line: 277, size: 256, elements: !2377)
!2377 = !{!2378, !2389}
!2378 = !DIDerivedType(tag: DW_TAG_member, scope: !2376, file: !165, line: 278, baseType: !2379, size: 256)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2376, file: !165, line: 278, size: 256, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2386, !2387, !2388}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2379, file: !165, line: 279, baseType: !16, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2379, file: !165, line: 280, baseType: !2240, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2379, file: !165, line: 281, baseType: !2240, size: 32, offset: 96)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2379, file: !165, line: 282, baseType: !2385, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2379, file: !165, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2379, file: !165, line: 284, baseType: !2240, size: 32, offset: 160)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2379, file: !165, line: 285, baseType: !2240, size: 32, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2376, file: !165, line: 287, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!22, !2355}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2361, file: !165, line: 300, baseType: !2394, size: 64, offset: 320)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!100, !2355}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2361, file: !165, line: 301, baseType: !97, size: 128, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2361, file: !165, line: 302, baseType: !2390, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2356, file: !165, line: 375, baseType: !2400, size: 64, offset: 192)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !165, line: 375, size: 64, elements: !2401)
!2401 = !{!2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2400, file: !165, line: 376, baseType: !16, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2400, file: !165, line: 378, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2239, line: 32, size: 640, elements: !2406)
!2406 = !{!2407, !2408, !2420, !2444, !2445, !2446, !2447, !2448, !2452}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2405, file: !2239, line: 33, baseType: !16, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2405, file: !2239, line: 34, baseType: !2409, size: 128, offset: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2344, line: 85, size: 128, elements: !2410)
!2410 = !{!2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2409, file: !2344, line: 86, baseType: !49, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2409, file: !2344, line: 101, baseType: !2413, size: 64, offset: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2409, file: !2344, line: 101, size: 64, elements: !2414)
!2414 = !{!2415, !2416, !2417}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2413, file: !2344, line: 102, baseType: !39, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2413, file: !2344, line: 103, baseType: !2342, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2413, file: !2344, line: 104, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2344, line: 104, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2405, file: !2239, line: 35, baseType: !2421, size: 64, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2423, line: 61, size: 128, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2422, file: !2423, line: 62, baseType: !20, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !2422, file: !2423, line: 63, baseType: !2427, size: 64, offset: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2422, file: !2423, line: 63, size: 64, elements: !2428)
!2428 = !{!2429, !2430, !2443}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2427, file: !2423, line: 65, baseType: !39, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2427, file: !2423, line: 66, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2433, line: 169, size: 192, elements: !2434)
!2433 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2434 = !{!2435, !2436, !2437}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2432, file: !2433, line: 170, baseType: !2431, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2432, file: !2433, line: 171, baseType: !1852, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2432, file: !2433, line: 172, baseType: !2438, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2423, line: 32, size: 64, elements: !2440)
!2440 = !{!2441, !2442}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2439, file: !2423, line: 33, baseType: !804, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2439, file: !2423, line: 34, baseType: !804, size: 32, offset: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2427, file: !2423, line: 67, baseType: !2438, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2405, file: !2239, line: 36, baseType: !20, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2405, file: !2239, line: 37, baseType: !20, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2405, file: !2239, line: 38, baseType: !20, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2405, file: !2239, line: 39, baseType: !2148, size: 64, offset: 448)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2405, file: !2239, line: 40, baseType: !2449, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2405, file: !2239, line: 41, baseType: !2453, size: 64, offset: 576)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2239, line: 26, size: 192, elements: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2454, file: !2239, line: 27, baseType: !20, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2454, file: !2239, line: 28, baseType: !20, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2454, file: !2239, line: 29, baseType: !22, size: 32, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2356, file: !165, line: 380, baseType: !2460, size: 256, offset: 256)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !165, line: 148, size: 256, elements: !2461)
!2461 = !{!2462, !2463, !2464}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2460, file: !165, line: 149, baseType: !361, size: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2460, file: !165, line: 150, baseType: !22, size: 32, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2460, file: !165, line: 151, baseType: !2465, size: 64, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !165, line: 141, size: 256, elements: !2467)
!2467 = !{!2468, !2537, !2538, !2539}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2466, file: !165, line: 142, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !165, line: 138, baseType: !2470)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!175, !2473, !22, !2536}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !165, line: 93, size: 67776, elements: !2475)
!2475 = !{!2476, !2479, !2482, !2485, !2486, !2487, !2488, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2516, !2519, !2520, !2521, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2474, file: !165, line: 94, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !165, line: 13, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2474, file: !165, line: 95, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !165, line: 15, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2474, file: !165, line: 96, baseType: !2483, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !165, line: 14, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2474, file: !165, line: 97, baseType: !20, size: 64, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2474, file: !165, line: 98, baseType: !22, size: 32, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2474, file: !165, line: 99, baseType: !303, size: 256, offset: 320)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2474, file: !165, line: 100, baseType: !2489, size: 64, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2492, line: 10, flags: DIFlagFwdDecl)
!2492 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2474, file: !165, line: 101, baseType: !39, size: 64, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2474, file: !165, line: 102, baseType: !20, size: 64, offset: 704)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2474, file: !165, line: 103, baseType: !7, size: 32, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2474, file: !165, line: 104, baseType: !999, size: 64, offset: 832)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2474, file: !165, line: 105, baseType: !7, size: 32, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2474, file: !165, line: 106, baseType: !840, size: 64, offset: 960)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2474, file: !165, line: 109, baseType: !2500, size: 33088, offset: 1024)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2501, line: 14, size: 33088, elements: !2502)
!2501 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2502 = !{!2503, !2507, !2514, !2515}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2500, file: !2501, line: 15, baseType: !2504, size: 32768)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !2505)
!2505 = !{!2506}
!2506 = !DISubrange(count: 4096)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2500, file: !2501, line: 16, baseType: !2508, size: 192, offset: 32768)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2509, line: 18, size: 192, elements: !2510)
!2509 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2510 = !{!2511, !2512, !2513}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2508, file: !2509, line: 19, baseType: !999, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2508, file: !2509, line: 20, baseType: !35, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2508, file: !2509, line: 21, baseType: !35, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2500, file: !2501, line: 17, baseType: !35, size: 64, offset: 32960)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2500, file: !2501, line: 18, baseType: !22, size: 32, offset: 33024)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2474, file: !165, line: 111, baseType: !2517, size: 64, offset: 34112)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !650, line: 913, baseType: !2518)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 64, elements: !655)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2474, file: !165, line: 114, baseType: !922, size: 8, offset: 34176)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2474, file: !165, line: 117, baseType: !2500, size: 33088, offset: 34240)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2474, file: !165, line: 118, baseType: !2522, size: 64, offset: 67328)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !165, line: 79, size: 64, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2523, file: !165, line: 80, baseType: !26, size: 16)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2523, file: !165, line: 81, baseType: !87, size: 8, offset: 16)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2523, file: !165, line: 82, baseType: !87, size: 8, offset: 24)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2523, file: !165, line: 83, baseType: !22, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2474, file: !165, line: 119, baseType: !39, size: 64, offset: 67392)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2474, file: !165, line: 120, baseType: !22, size: 32, offset: 67456)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2474, file: !165, line: 121, baseType: !22, size: 32, offset: 67488)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2474, file: !165, line: 122, baseType: !22, size: 32, offset: 67520)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2474, file: !165, line: 123, baseType: !457, size: 64, offset: 67584)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2474, file: !165, line: 125, baseType: !41, size: 64, offset: 67648)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2474, file: !165, line: 126, baseType: !840, size: 64, offset: 67712)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2466, file: !165, line: 143, baseType: !2469, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2466, file: !165, line: 144, baseType: !2469, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2466, file: !165, line: 145, baseType: !2469, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2356, file: !165, line: 381, baseType: !999, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2356, file: !165, line: 382, baseType: !2542, size: 64, offset: 576)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !235, line: 821, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, scope: !2356, file: !165, line: 387, baseType: !2545, size: 64, offset: 640)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !165, line: 387, size: 64, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2545, file: !165, line: 388, baseType: !20, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2545, file: !165, line: 389, baseType: !49, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2356, file: !165, line: 391, baseType: !20, size: 64, offset: 704)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2356, file: !165, line: 394, baseType: !22, size: 32, offset: 768)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2356, file: !165, line: 397, baseType: !22, size: 32, offset: 800)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2356, file: !165, line: 398, baseType: !2553, size: 64, offset: 832)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2356, file: !165, line: 399, baseType: !2555, size: 64, offset: 896)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !165, line: 399, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2356, file: !165, line: 401, baseType: !2558, size: 64, offset: 960)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!22, !2355, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !235, line: 671, size: 8512, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !3100, !3101, !3102, !3103, !3109, !3110, !3111, !3112, !3113, !3197, !3198, !3199, !3200, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3320, !3321, !3322, !3323, !3324, !3325, !3340, !3341, !3342, !3343, !3344, !3350, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3367, !3538, !3539, !3540, !3541, !3554, !3555, !3556}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2562, file: !235, line: 678, baseType: !97, size: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2562, file: !235, line: 684, baseType: !97, size: 128, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2562, file: !235, line: 685, baseType: !97, size: 128, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2562, file: !235, line: 689, baseType: !449, size: 192, align: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2562, file: !235, line: 690, baseType: !457, size: 64, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2562, file: !235, line: 696, baseType: !97, size: 128, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2562, file: !235, line: 698, baseType: !361, size: 128, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2562, file: !235, line: 699, baseType: !97, size: 128, offset: 896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2562, file: !235, line: 700, baseType: !22, size: 32, offset: 1024)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2562, file: !235, line: 703, baseType: !22, size: 32, offset: 1056)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2562, file: !235, line: 705, baseType: !22, size: 32, offset: 1088)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2562, file: !235, line: 707, baseType: !7, size: 32, offset: 1120)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2562, file: !235, line: 708, baseType: !2561, size: 64, offset: 1152)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2562, file: !235, line: 714, baseType: !2578, size: 64, offset: 1216)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !235, line: 302, size: 2432, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !3006, !3007, !3008, !3009, !3010, !3014, !3015, !3019, !3023, !3024, !3028, !3032, !3033, !3034, !3038, !3042, !3046, !3047, !3048, !3052, !3056, !3060, !3065, !3066, !3086, !3090, !3091, !3092, !3096}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2579, file: !235, line: 303, baseType: !97, size: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2579, file: !235, line: 305, baseType: !1852, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2579, file: !235, line: 306, baseType: !2584, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !188, line: 705, size: 5824, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2592, !2593, !2646, !2716, !2717, !2718, !2719, !2720, !2727, !2819, !2832, !2842, !2846, !2848, !2849, !2850, !2854, !2861, !2862, !2865, !2868, !2872, !2875, !2876, !2877, !2878, !2879, !2880, !2910, !2911, !2912, !2915, !2918, !2927, !2928, !2929, !2930, !2931, !2932}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2585, file: !188, line: 706, baseType: !1865, size: 512)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2585, file: !188, line: 707, baseType: !2584, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2585, file: !188, line: 709, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !188, line: 37, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2585, file: !188, line: 711, baseType: !16, size: 64, offset: 640)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2585, file: !188, line: 712, baseType: !2594, size: 64, offset: 704)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2596)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !188, line: 89, size: 384, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2606, !2611, !2615}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2596, file: !188, line: 90, baseType: !16, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2596, file: !188, line: 91, baseType: !1948, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2596, file: !188, line: 92, baseType: !2601, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!22, !2604, !1901}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2585)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2596, file: !188, line: 93, baseType: !2607, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!999, !2604, !2610, !1102, !1103}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2596, file: !188, line: 95, baseType: !2612, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !2584}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2596, file: !188, line: 97, baseType: !2616, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2618)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !195, line: 286, size: 1472, elements: !2619)
!2619 = !{!2620, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2618, file: !195, line: 287, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!22, !2584}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2618, file: !195, line: 288, baseType: !2612, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2618, file: !195, line: 289, baseType: !2621, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2618, file: !195, line: 290, baseType: !2621, size: 64, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2618, file: !195, line: 291, baseType: !2621, size: 64, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2618, file: !195, line: 292, baseType: !2621, size: 64, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2618, file: !195, line: 293, baseType: !2621, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2618, file: !195, line: 294, baseType: !2621, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2618, file: !195, line: 295, baseType: !2621, size: 64, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2618, file: !195, line: 296, baseType: !2621, size: 64, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2618, file: !195, line: 297, baseType: !2621, size: 64, offset: 640)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2618, file: !195, line: 298, baseType: !2621, size: 64, offset: 704)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2618, file: !195, line: 299, baseType: !2621, size: 64, offset: 768)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2618, file: !195, line: 300, baseType: !2621, size: 64, offset: 832)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2618, file: !195, line: 301, baseType: !2621, size: 64, offset: 896)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2618, file: !195, line: 302, baseType: !2621, size: 64, offset: 960)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2618, file: !195, line: 303, baseType: !2621, size: 64, offset: 1024)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2618, file: !195, line: 304, baseType: !2621, size: 64, offset: 1088)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2618, file: !195, line: 305, baseType: !2621, size: 64, offset: 1152)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2618, file: !195, line: 306, baseType: !2621, size: 64, offset: 1216)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2618, file: !195, line: 307, baseType: !2621, size: 64, offset: 1280)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2618, file: !195, line: 308, baseType: !2621, size: 64, offset: 1344)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2618, file: !195, line: 309, baseType: !2621, size: 64, offset: 1408)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2585, file: !188, line: 714, baseType: !2647, size: 64, offset: 768)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2649)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2650, line: 80, size: 1344, elements: !2651)
!2650 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2715}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2649, file: !2650, line: 81, baseType: !16, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2649, file: !2650, line: 82, baseType: !16, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2649, file: !2650, line: 83, baseType: !1948, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2649, file: !2650, line: 84, baseType: !1948, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2649, file: !2650, line: 85, baseType: !1948, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2649, file: !2650, line: 87, baseType: !2658, size: 64, offset: 320)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!22, !2584, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !182, line: 96, size: 1152, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669, !2670, !2674, !2678, !2679, !2680, !2681, !2682, !2690, !2691, !2692, !2693, !2694, !2695}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2662, file: !182, line: 97, baseType: !16, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2662, file: !182, line: 98, baseType: !2647, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2662, file: !182, line: 100, baseType: !1852, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2662, file: !182, line: 101, baseType: !16, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2662, file: !182, line: 103, baseType: !922, size: 8, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2662, file: !182, line: 104, baseType: !181, size: 32, offset: 288)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2662, file: !182, line: 106, baseType: !2671, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !182, line: 106, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2662, file: !182, line: 107, baseType: !2675, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2677)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !182, line: 107, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2662, file: !182, line: 109, baseType: !2621, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2662, file: !182, line: 110, baseType: !2612, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2662, file: !182, line: 111, baseType: !2621, size: 64, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2662, file: !182, line: 112, baseType: !2612, size: 64, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2662, file: !182, line: 113, baseType: !2683, size: 64, offset: 704)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!22, !2584, !2686}
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !195, line: 60, baseType: !2687)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !195, line: 58, size: 32, elements: !2688)
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2687, file: !195, line: 59, baseType: !22, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2662, file: !182, line: 114, baseType: !2621, size: 64, offset: 768)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2662, file: !182, line: 115, baseType: !1948, size: 64, offset: 832)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2662, file: !182, line: 116, baseType: !1948, size: 64, offset: 896)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2662, file: !182, line: 118, baseType: !2616, size: 64, offset: 960)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2662, file: !182, line: 119, baseType: !2612, size: 64, offset: 1024)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2662, file: !182, line: 121, baseType: !2696, size: 64, offset: 1088)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !182, line: 121, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2649, file: !2650, line: 88, baseType: !2601, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2649, file: !2650, line: 89, baseType: !2621, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2649, file: !2650, line: 90, baseType: !2612, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2649, file: !2650, line: 91, baseType: !2612, size: 64, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2649, file: !2650, line: 92, baseType: !2612, size: 64, offset: 640)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2649, file: !2650, line: 94, baseType: !2621, size: 64, offset: 704)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2649, file: !2650, line: 95, baseType: !2621, size: 64, offset: 768)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2649, file: !2650, line: 97, baseType: !2683, size: 64, offset: 832)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2649, file: !2650, line: 98, baseType: !2621, size: 64, offset: 896)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2649, file: !2650, line: 100, baseType: !2621, size: 64, offset: 960)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2649, file: !2650, line: 102, baseType: !2621, size: 64, offset: 1024)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2649, file: !2650, line: 103, baseType: !2612, size: 64, offset: 1088)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2649, file: !2650, line: 105, baseType: !2616, size: 64, offset: 1152)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2649, file: !2650, line: 107, baseType: !2712, size: 64, offset: 1216)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2714)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2650, line: 107, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2649, file: !2650, line: 109, baseType: !922, size: 8, offset: 1280)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2585, file: !188, line: 715, baseType: !2661, size: 64, offset: 832)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2585, file: !188, line: 717, baseType: !20, size: 64, offset: 896)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2585, file: !188, line: 719, baseType: !20, size: 64, offset: 960)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2585, file: !188, line: 721, baseType: !303, size: 256, offset: 1024)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2585, file: !188, line: 725, baseType: !2721, size: 448, offset: 1280)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !188, line: 517, size: 448, elements: !2722)
!2722 = !{!2723, !2724, !2725, !2726}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2721, file: !188, line: 518, baseType: !97, size: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2721, file: !188, line: 519, baseType: !97, size: 128, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2721, file: !188, line: 520, baseType: !97, size: 128, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2721, file: !188, line: 521, baseType: !187, size: 32, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2585, file: !188, line: 726, baseType: !2728, size: 2496, offset: 1728)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !195, line: 663, size: 2496, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2812, !2816}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2728, file: !195, line: 664, baseType: !2686, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2728, file: !195, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2728, file: !195, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2728, file: !195, line: 667, baseType: !922, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2728, file: !195, line: 668, baseType: !922, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2728, file: !195, line: 669, baseType: !922, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2728, file: !195, line: 670, baseType: !922, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2728, file: !195, line: 671, baseType: !922, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2728, file: !195, line: 672, baseType: !922, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2728, file: !195, line: 673, baseType: !922, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2728, file: !195, line: 674, baseType: !922, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2728, file: !195, line: 675, baseType: !409, size: 32, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2728, file: !195, line: 676, baseType: !59, size: 32, offset: 96)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2728, file: !195, line: 678, baseType: !97, size: 128, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2728, file: !195, line: 679, baseType: !1077, size: 256, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2728, file: !195, line: 680, baseType: !2746, size: 64, offset: 512)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2748, line: 43, size: 1536, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2749 = !{!2750, !2751, !2752, !2753, !2754, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2747, file: !2748, line: 44, baseType: !16, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2747, file: !2748, line: 45, baseType: !22, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2747, file: !2748, line: 46, baseType: !97, size: 128, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2747, file: !2748, line: 47, baseType: !59, size: 32, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2747, file: !2748, line: 48, baseType: !2755, size: 64, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !195, line: 629, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2747, file: !2748, line: 49, baseType: !2275, size: 320, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2747, file: !2748, line: 50, baseType: !39, size: 64, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2747, file: !2748, line: 51, baseType: !530, size: 64, offset: 768)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2747, file: !2748, line: 52, baseType: !530, size: 64, offset: 832)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2747, file: !2748, line: 53, baseType: !530, size: 64, offset: 896)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2747, file: !2748, line: 54, baseType: !530, size: 64, offset: 960)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2747, file: !2748, line: 55, baseType: !530, size: 64, offset: 1024)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2747, file: !2748, line: 56, baseType: !39, size: 64, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2747, file: !2748, line: 57, baseType: !39, size: 64, offset: 1152)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2747, file: !2748, line: 58, baseType: !39, size: 64, offset: 1216)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2747, file: !2748, line: 59, baseType: !39, size: 64, offset: 1280)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2747, file: !2748, line: 60, baseType: !39, size: 64, offset: 1344)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2747, file: !2748, line: 61, baseType: !2584, size: 64, offset: 1408)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2747, file: !2748, line: 62, baseType: !922, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2747, file: !2748, line: 63, baseType: !922, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2728, file: !195, line: 681, baseType: !922, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2728, file: !195, line: 682, baseType: !922, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2728, file: !195, line: 683, baseType: !922, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2728, file: !195, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2728, file: !195, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2728, file: !195, line: 690, baseType: !522, size: 512, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2728, file: !195, line: 691, baseType: !457, size: 64, offset: 1152)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2728, file: !195, line: 692, baseType: !1038, size: 256, offset: 1216)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2728, file: !195, line: 693, baseType: !54, size: 192, offset: 1472)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2728, file: !195, line: 694, baseType: !2755, size: 64, offset: 1664)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2728, file: !195, line: 695, baseType: !49, size: 32, offset: 1728)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2728, file: !195, line: 696, baseType: !49, size: 32, offset: 1760)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2728, file: !195, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2728, file: !195, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2728, file: !195, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2728, file: !195, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2728, file: !195, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2728, file: !195, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2728, file: !195, line: 703, baseType: !922, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2728, file: !195, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2728, file: !195, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2728, file: !195, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2728, file: !195, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2728, file: !195, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2728, file: !195, line: 709, baseType: !7, size: 32, offset: 1824)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2728, file: !195, line: 710, baseType: !194, size: 32, offset: 1856)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2728, file: !195, line: 711, baseType: !202, size: 32, offset: 1888)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2728, file: !195, line: 712, baseType: !202, size: 32, offset: 1920)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2728, file: !195, line: 713, baseType: !22, size: 32, offset: 1952)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2728, file: !195, line: 714, baseType: !22, size: 32, offset: 1984)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2728, file: !195, line: 715, baseType: !457, size: 64, offset: 2048)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2728, file: !195, line: 716, baseType: !457, size: 64, offset: 2112)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2728, file: !195, line: 717, baseType: !457, size: 64, offset: 2176)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2728, file: !195, line: 718, baseType: !457, size: 64, offset: 2240)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2728, file: !195, line: 720, baseType: !2807, size: 64, offset: 2304)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !195, line: 632, size: 64, elements: !2809)
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2808, file: !195, line: 633, baseType: !59, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2808, file: !195, line: 634, baseType: !7, size: 32, offset: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2728, file: !195, line: 721, baseType: !2813, size: 64, offset: 2368)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !2584, !804}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2728, file: !195, line: 722, baseType: !2817, size: 64, offset: 2432)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !195, line: 722, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2585, file: !188, line: 727, baseType: !2820, size: 64, offset: 4224)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !195, line: 742, size: 1792, elements: !2822)
!2822 = !{!2823, !2824, !2825, !2829, !2830, !2831}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2821, file: !195, line: 743, baseType: !2618, size: 1472)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2821, file: !195, line: 744, baseType: !2621, size: 64, offset: 1472)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2821, file: !195, line: 745, baseType: !2826, size: 64, offset: 1536)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !2584, !922}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2821, file: !195, line: 746, baseType: !2621, size: 64, offset: 1600)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2821, file: !195, line: 747, baseType: !2612, size: 64, offset: 1664)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2821, file: !195, line: 748, baseType: !2612, size: 64, offset: 1728)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2585, file: !188, line: 736, baseType: !2833, size: 128, offset: 4288)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !188, line: 529, size: 128, elements: !2834)
!2834 = !{!2835, !2839}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2833, file: !188, line: 531, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2838, line: 13, flags: DIFlagFwdDecl)
!2838 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2833, file: !188, line: 532, baseType: !2840, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !188, line: 49, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2585, file: !188, line: 738, baseType: !2843, size: 64, offset: 4416)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2845)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !188, line: 738, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2585, file: !188, line: 740, baseType: !2847, size: 64, offset: 4480)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2585, file: !188, line: 741, baseType: !457, size: 64, offset: 4544)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2585, file: !188, line: 746, baseType: !457, size: 64, offset: 4608)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2585, file: !188, line: 747, baseType: !2851, size: 64, offset: 4672)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2853)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !188, line: 747, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2585, file: !188, line: 749, baseType: !2855, size: 64, offset: 4736)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !188, line: 428, size: 128, elements: !2857)
!2857 = !{!2858, !2859, !2860}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2856, file: !188, line: 433, baseType: !7, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2856, file: !188, line: 434, baseType: !7, size: 32, offset: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2856, file: !188, line: 435, baseType: !39, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2585, file: !188, line: 751, baseType: !97, size: 128, offset: 4800)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2585, file: !188, line: 762, baseType: !2863, size: 64, offset: 4928)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !188, line: 762, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2585, file: !188, line: 770, baseType: !2866, offset: 4992)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2867, line: 5, elements: !724)
!2867 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2585, file: !188, line: 772, baseType: !2869, size: 64, offset: 4992)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2871, line: 18, flags: DIFlagFwdDecl)
!2871 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2585, file: !188, line: 773, baseType: !2873, size: 64, offset: 5056)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2650, line: 22, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2585, file: !188, line: 776, baseType: !22, size: 32, offset: 5120)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2585, file: !188, line: 778, baseType: !1822, size: 32, offset: 5152)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2585, file: !188, line: 779, baseType: !409, size: 32, offset: 5184)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2585, file: !188, line: 781, baseType: !59, size: 32, offset: 5216)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2585, file: !188, line: 782, baseType: !97, size: 128, offset: 5248)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2585, file: !188, line: 784, baseType: !2881, size: 64, offset: 5376)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2884, line: 52, size: 768, elements: !2885)
!2884 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2885 = !{!2886, !2887, !2888, !2889, !2890, !2894, !2898, !2899, !2900, !2901, !2905, !2909}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2883, file: !2884, line: 53, baseType: !16, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2883, file: !2884, line: 55, baseType: !1948, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2883, file: !2884, line: 56, baseType: !1948, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2883, file: !2884, line: 58, baseType: !2601, size: 64, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2883, file: !2884, line: 59, baseType: !2891, size: 64, offset: 256)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!999, !2604, !2610}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2883, file: !2884, line: 61, baseType: !2895, size: 64, offset: 320)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !2881}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2883, file: !2884, line: 62, baseType: !2612, size: 64, offset: 384)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2883, file: !2884, line: 64, baseType: !2621, size: 64, offset: 448)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2883, file: !2884, line: 66, baseType: !1989, size: 64, offset: 512)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2883, file: !2884, line: 67, baseType: !2902, size: 64, offset: 576)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!837, !2604}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2883, file: !2884, line: 69, baseType: !2906, size: 64, offset: 640)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{null, !2604, !1102, !1103}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2883, file: !2884, line: 71, baseType: !2616, size: 64, offset: 704)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2585, file: !188, line: 785, baseType: !1948, size: 64, offset: 5440)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2585, file: !188, line: 787, baseType: !2612, size: 64, offset: 5504)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2585, file: !188, line: 788, baseType: !2913, size: 64, offset: 5568)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !188, line: 46, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2585, file: !188, line: 789, baseType: !2916, size: 64, offset: 5632)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !188, line: 48, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2585, file: !188, line: 791, baseType: !2919, size: 64, offset: 5696)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !188, line: 597, size: 128, elements: !2921)
!2921 = !{!2922, !2923, !2924, !2925, !2926}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2920, file: !188, line: 598, baseType: !209, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2920, file: !188, line: 599, baseType: !218, size: 32, offset: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2920, file: !188, line: 600, baseType: !223, size: 32, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2920, file: !188, line: 601, baseType: !922, size: 8, offset: 96)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2920, file: !188, line: 602, baseType: !922, size: 8, offset: 104)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2585, file: !188, line: 793, baseType: !228, size: 32, offset: 5760)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2585, file: !188, line: 795, baseType: !922, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2585, file: !188, line: 796, baseType: !922, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2585, file: !188, line: 797, baseType: !922, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2585, file: !188, line: 798, baseType: !922, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2585, file: !188, line: 799, baseType: !922, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2579, file: !235, line: 307, baseType: !2584, size: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2579, file: !235, line: 308, baseType: !1948, size: 64, offset: 320)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2579, file: !235, line: 309, baseType: !1948, size: 64, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2579, file: !235, line: 310, baseType: !16, size: 64, offset: 448)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2579, file: !235, line: 311, baseType: !22, size: 32, offset: 512)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2579, file: !235, line: 316, baseType: !22, size: 32, offset: 544)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2579, file: !235, line: 318, baseType: !1259, size: 64, offset: 576)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2579, file: !235, line: 319, baseType: !2941, size: 64, offset: 640)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !235, line: 977, size: 1856, elements: !2943)
!2943 = !{!2944, !2996, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !2942, file: !235, line: 978, baseType: !2945, size: 896)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !235, line: 873, size: 896, elements: !2946)
!2946 = !{!2947, !2948, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2945, file: !235, line: 874, baseType: !2578, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2945, file: !235, line: 875, baseType: !2949, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !235, line: 912, size: 1792, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2955, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2950, file: !235, line: 917, baseType: !308, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2950, file: !235, line: 923, baseType: !303, size: 256, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !2950, file: !235, line: 925, baseType: !97, size: 128, offset: 320)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2950, file: !235, line: 926, baseType: !2956, size: 128, offset: 448)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !235, line: 901, size: 128, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !2956, file: !235, line: 902, baseType: !589, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2956, file: !235, line: 903, baseType: !457, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2950, file: !235, line: 927, baseType: !2956, size: 128, offset: 576)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2950, file: !235, line: 928, baseType: !97, size: 128, offset: 704)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2950, file: !235, line: 930, baseType: !22, size: 32, offset: 832)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !2950, file: !235, line: 931, baseType: !22, size: 32, offset: 864)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2950, file: !235, line: 932, baseType: !22, size: 32, offset: 896)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !2950, file: !235, line: 934, baseType: !22, size: 32, offset: 928)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2950, file: !235, line: 935, baseType: !22, size: 32, offset: 960)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2950, file: !235, line: 936, baseType: !22, size: 32, offset: 992)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2950, file: !235, line: 937, baseType: !22, size: 32, offset: 1024)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2950, file: !235, line: 939, baseType: !348, size: 32, offset: 1056)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2950, file: !235, line: 940, baseType: !398, size: 64, offset: 1088)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2950, file: !235, line: 945, baseType: !457, size: 64, offset: 1152)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2950, file: !235, line: 946, baseType: !457, size: 64, offset: 1216)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !2950, file: !235, line: 947, baseType: !457, size: 64, offset: 1280)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2950, file: !235, line: 953, baseType: !2949, size: 64, offset: 1344)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2950, file: !235, line: 954, baseType: !457, size: 64, offset: 1408)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2950, file: !235, line: 955, baseType: !457, size: 64, offset: 1472)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2950, file: !235, line: 956, baseType: !22, size: 32, offset: 1536)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2950, file: !235, line: 958, baseType: !22, size: 32, offset: 1568)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2950, file: !235, line: 960, baseType: !281, size: 128, align: 64, offset: 1600)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2950, file: !235, line: 968, baseType: !2981, size: 64, offset: 1728)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !2982, line: 12, baseType: !2983)
!2982 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2982, line: 10, size: 64, elements: !2984)
!2984 = !{!2985}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2983, file: !2982, line: 11, baseType: !294, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !2945, file: !235, line: 877, baseType: !97, size: 128, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !2945, file: !235, line: 879, baseType: !97, size: 128, offset: 256)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !2945, file: !235, line: 880, baseType: !97, size: 128, offset: 384)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !2945, file: !235, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2945, file: !235, line: 885, baseType: !7, size: 32, offset: 544)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2945, file: !235, line: 886, baseType: !7, size: 32, offset: 576)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2945, file: !235, line: 888, baseType: !49, size: 32, offset: 608)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2945, file: !235, line: 889, baseType: !281, size: 128, align: 64, offset: 640)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !2945, file: !235, line: 891, baseType: !20, size: 64, offset: 768)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !2945, file: !235, line: 898, baseType: !22, size: 32, offset: 832)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !2942, file: !235, line: 979, baseType: !2997, size: 64, offset: 896)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !2942, file: !235, line: 981, baseType: !97, size: 128, offset: 960)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !2942, file: !235, line: 982, baseType: !22, size: 32, offset: 1088)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !2942, file: !235, line: 984, baseType: !22, size: 32, offset: 1120)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !2942, file: !235, line: 985, baseType: !22, size: 32, offset: 1152)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !2942, file: !235, line: 987, baseType: !308, size: 32, offset: 1184)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !2942, file: !235, line: 988, baseType: !522, size: 512, offset: 1216)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !2942, file: !235, line: 989, baseType: !530, size: 64, offset: 1728)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !2942, file: !235, line: 990, baseType: !7, size: 32, offset: 1792)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2579, file: !235, line: 320, baseType: !49, size: 32, offset: 704)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2579, file: !235, line: 321, baseType: !22, size: 32, offset: 736)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2579, file: !235, line: 322, baseType: !22, size: 32, offset: 768)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2579, file: !235, line: 325, baseType: !7, size: 32, offset: 800)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2579, file: !235, line: 331, baseType: !3011, size: 64, offset: 832)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2578}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2579, file: !235, line: 332, baseType: !3011, size: 64, offset: 896)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2579, file: !235, line: 350, baseType: !3016, size: 64, offset: 960)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!22, !2561}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2579, file: !235, line: 356, baseType: !3020, size: 64, offset: 1024)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !2561, !703}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2579, file: !235, line: 357, baseType: !3020, size: 64, offset: 1088)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2579, file: !235, line: 385, baseType: !3025, size: 64, offset: 1152)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!22, !2561, !22}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2579, file: !235, line: 386, baseType: !3029, size: 64, offset: 1216)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !2561, !22}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2579, file: !235, line: 406, baseType: !3029, size: 64, offset: 1280)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2579, file: !235, line: 407, baseType: !3029, size: 64, offset: 1344)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2579, file: !235, line: 415, baseType: !3035, size: 64, offset: 1408)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !2561}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2579, file: !235, line: 427, baseType: !3039, size: 64, offset: 1472)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !2578, !7}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2579, file: !235, line: 436, baseType: !3043, size: 64, offset: 1536)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!22, !2578}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2579, file: !235, line: 443, baseType: !3011, size: 64, offset: 1600)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2579, file: !235, line: 450, baseType: !3016, size: 64, offset: 1664)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2579, file: !235, line: 455, baseType: !3049, size: 64, offset: 1728)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !2997, !922}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2579, file: !235, line: 461, baseType: !3053, size: 64, offset: 1792)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3055, line: 325, flags: DIFlagFwdDecl)
!3055 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2579, file: !235, line: 469, baseType: !3057, size: 64, offset: 1856)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{null, !2997, !2997}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2579, file: !235, line: 476, baseType: !3061, size: 64, offset: 1920)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!20, !2561, !3064, !22, !922}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2579, file: !235, line: 483, baseType: !2013, size: 64, offset: 1984)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2579, file: !235, line: 494, baseType: !3067, size: 64, offset: 2048)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!840, !2561, !3070, !39}
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !235, line: 1014, size: 448, elements: !3072)
!3072 = !{!3073, !3074, !3077, !3078, !3079, !3080, !3085}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3071, file: !235, line: 1015, baseType: !2561, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3071, file: !235, line: 1016, baseType: !3075, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !235, line: 641, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3071, file: !235, line: 1017, baseType: !39, size: 64, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3071, file: !235, line: 1018, baseType: !39, size: 64, offset: 192)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3071, file: !235, line: 1019, baseType: !457, size: 64, offset: 256)
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !3071, file: !235, line: 1020, baseType: !3081, size: 64, offset: 320)
!3081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3071, file: !235, line: 1020, size: 64, elements: !3082)
!3082 = !{!3083, !3084}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3081, file: !235, line: 1021, baseType: !20, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3081, file: !235, line: 1022, baseType: !39, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3071, file: !235, line: 1024, baseType: !22, size: 32, offset: 384)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2579, file: !235, line: 506, baseType: !3087, size: 64, offset: 2112)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!22, !100}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2579, file: !235, line: 520, baseType: !3035, size: 64, offset: 2176)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2579, file: !235, line: 530, baseType: !3016, size: 64, offset: 2240)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2579, file: !235, line: 537, baseType: !3093, size: 64, offset: 2304)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!922, !2578, !22}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2579, file: !235, line: 542, baseType: !3097, size: 64, offset: 2368)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!22, !2561, !457}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2562, file: !235, line: 715, baseType: !20, size: 64, offset: 1280)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2562, file: !235, line: 717, baseType: !234, size: 32, offset: 1344)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2562, file: !235, line: 718, baseType: !7, size: 32, offset: 1376)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2562, file: !235, line: 719, baseType: !3104, size: 64, offset: 1408)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3105, line: 26, baseType: !3106)
!3105 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3105, line: 24, size: 64, elements: !3107)
!3107 = !{!3108}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3106, file: !3105, line: 25, baseType: !2981, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2562, file: !235, line: 720, baseType: !296, size: 64, offset: 1472)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2562, file: !235, line: 728, baseType: !457, size: 64, offset: 1536)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2562, file: !235, line: 729, baseType: !457, size: 64, offset: 1600)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2562, file: !235, line: 730, baseType: !457, size: 64, offset: 1664)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2562, file: !235, line: 732, baseType: !3114, size: 1088, offset: 1728)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3115, line: 385, size: 1088, elements: !3116)
!3115 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3116 = !{!3117, !3118, !3119, !3120, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3170, !3171, !3178, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3114, file: !3115, line: 390, baseType: !410, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3114, file: !3115, line: 395, baseType: !410, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3114, file: !3115, line: 400, baseType: !458, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3115, line: 402, baseType: !3121, size: 64, offset: 128)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3114, file: !3115, line: 402, size: 64, elements: !3122)
!3122 = !{!3123, !3124}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3121, file: !3115, line: 403, baseType: !458, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3121, file: !3115, line: 404, baseType: !458, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3114, file: !3115, line: 407, baseType: !458, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3114, file: !3115, line: 408, baseType: !458, size: 64, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3114, file: !3115, line: 410, baseType: !458, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3114, file: !3115, line: 411, baseType: !458, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3114, file: !3115, line: 412, baseType: !458, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3114, file: !3115, line: 413, baseType: !458, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3114, file: !3115, line: 414, baseType: !458, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3114, file: !3115, line: 415, baseType: !458, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3114, file: !3115, line: 416, baseType: !458, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3114, file: !3115, line: 417, baseType: !458, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3114, file: !3115, line: 418, baseType: !458, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3114, file: !3115, line: 419, baseType: !458, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3114, file: !3115, line: 420, baseType: !458, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3114, file: !3115, line: 421, baseType: !458, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3114, file: !3115, line: 422, baseType: !458, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3114, file: !3115, line: 423, baseType: !458, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3114, file: !3115, line: 424, baseType: !458, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3114, file: !3115, line: 435, baseType: !458, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3114, file: !3115, line: 436, baseType: !458, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3114, file: !3115, line: 437, baseType: !458, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3114, file: !3115, line: 439, baseType: !458, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3114, file: !3115, line: 440, baseType: !458, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3114, file: !3115, line: 442, baseType: !458, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3114, file: !3115, line: 443, baseType: !458, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3114, file: !3115, line: 444, baseType: !458, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3114, file: !3115, line: 445, baseType: !458, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3114, file: !3115, line: 446, baseType: !458, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3114, file: !3115, line: 447, baseType: !458, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3114, file: !3115, line: 448, baseType: !458, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3114, file: !3115, line: 449, baseType: !458, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3114, file: !3115, line: 450, baseType: !458, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3114, file: !3115, line: 451, baseType: !458, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3114, file: !3115, line: 452, baseType: !458, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3114, file: !3115, line: 453, baseType: !458, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3114, file: !3115, line: 454, baseType: !458, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3114, file: !3115, line: 455, baseType: !458, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3114, file: !3115, line: 456, baseType: !458, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3114, file: !3115, line: 457, baseType: !458, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3114, file: !3115, line: 458, baseType: !458, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3114, file: !3115, line: 459, baseType: !458, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3165 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3115, line: 461, baseType: !3166, size: 32, offset: 384)
!3166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3114, file: !3115, line: 461, size: 32, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3166, file: !3115, line: 462, baseType: !410, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3166, file: !3115, line: 463, baseType: !410, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3114, file: !3115, line: 466, baseType: !410, size: 32, offset: 416)
!3171 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3115, line: 467, baseType: !3172, size: 64, offset: 448)
!3172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3114, file: !3115, line: 467, size: 64, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3172, file: !3115, line: 468, baseType: !458, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3172, file: !3115, line: 469, baseType: !458, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3172, file: !3115, line: 470, baseType: !458, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3172, file: !3115, line: 471, baseType: !458, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3115, line: 473, baseType: !3179, size: 64, offset: 512)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3114, file: !3115, line: 473, size: 64, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3179, file: !3115, line: 474, baseType: !458, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3179, file: !3115, line: 475, baseType: !458, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3179, file: !3115, line: 476, baseType: !458, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3179, file: !3115, line: 477, baseType: !458, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3114, file: !3115, line: 479, baseType: !458, size: 64, offset: 576)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3114, file: !3115, line: 485, baseType: !458, size: 64, offset: 640)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3114, file: !3115, line: 490, baseType: !410, size: 32, offset: 704)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3114, file: !3115, line: 492, baseType: !805, size: 32, offset: 736)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3114, file: !3115, line: 501, baseType: !458, size: 64, offset: 768)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3114, file: !3115, line: 506, baseType: !410, size: 32, offset: 832)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3114, file: !3115, line: 507, baseType: !94, size: 16, offset: 864)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3114, file: !3115, line: 508, baseType: !94, size: 16, offset: 880)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3114, file: !3115, line: 509, baseType: !410, size: 32, offset: 896)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3114, file: !3115, line: 510, baseType: !410, size: 32, offset: 928)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3114, file: !3115, line: 518, baseType: !458, size: 64, offset: 960)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3114, file: !3115, line: 520, baseType: !458, size: 64, offset: 1024)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2562, file: !235, line: 733, baseType: !93, size: 16, offset: 2816)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2562, file: !235, line: 734, baseType: !93, size: 16, offset: 2832)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2562, file: !235, line: 735, baseType: !93, size: 16, offset: 2848)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2562, file: !235, line: 736, baseType: !3201, size: 1536, offset: 2880)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !235, line: 155, size: 1536, elements: !3202)
!3202 = !{!3203, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3287, !3288, !3289, !3290}
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !235, line: 157, baseType: !3204, size: 768)
!3204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3201, file: !235, line: 157, size: 768, elements: !3205)
!3205 = !{!3206, !3225, !3229, !3233, !3238, !3260}
!3206 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !235, line: 158, baseType: !3207, size: 768)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !235, line: 158, size: 768, elements: !3208)
!3208 = !{!3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3224}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3207, file: !235, line: 159, baseType: !457, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3207, file: !235, line: 160, baseType: !457, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3207, file: !235, line: 161, baseType: !39, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3207, file: !235, line: 162, baseType: !39, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3207, file: !235, line: 163, baseType: !22, size: 32, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3207, file: !235, line: 164, baseType: !22, size: 32, offset: 288)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3207, file: !235, line: 165, baseType: !22, size: 32, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3207, file: !235, line: 166, baseType: !22, size: 32, offset: 352)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3207, file: !235, line: 168, baseType: !3218, size: 192, offset: 384)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !235, line: 134, size: 192, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3223}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3218, file: !235, line: 135, baseType: !457, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3218, file: !235, line: 136, baseType: !7, size: 32, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3218, file: !235, line: 137, baseType: !22, size: 32, offset: 96)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3218, file: !235, line: 138, baseType: !22, size: 32, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3207, file: !235, line: 169, baseType: !3218, size: 192, offset: 576)
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !235, line: 171, baseType: !3226, size: 512)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !235, line: 171, size: 512, elements: !3227)
!3227 = !{!3228}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3226, file: !235, line: 172, baseType: !522, size: 512)
!3229 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !235, line: 174, baseType: !3230, size: 128)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !235, line: 174, size: 128, elements: !3231)
!3231 = !{!3232}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3230, file: !235, line: 176, baseType: !97, size: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !235, line: 178, baseType: !3234, size: 128)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !235, line: 178, size: 128, elements: !3235)
!3235 = !{!3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3234, file: !235, line: 179, baseType: !457, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3234, file: !235, line: 180, baseType: !457, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !235, line: 183, baseType: !3239, size: 320)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !235, line: 183, size: 320, elements: !3240)
!3240 = !{!3241, !3249}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3239, file: !235, line: 189, baseType: !3242, size: 192)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3243, line: 14, size: 192, elements: !3244)
!3243 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3244 = !{!3245, !3246, !3247, !3248}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3242, file: !3243, line: 15, baseType: !39, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3242, file: !3243, line: 16, baseType: !39, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3242, file: !3243, line: 17, baseType: !83, size: 8, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3242, file: !3243, line: 18, baseType: !83, size: 8, offset: 136)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3239, file: !235, line: 190, baseType: !3250, size: 128, offset: 192)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3251, line: 21, size: 128, elements: !3252)
!3251 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3252 = !{!3253, !3258}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3250, file: !3251, line: 22, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3251, line: 17, size: 64, elements: !3255)
!3255 = !{!3256}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3254, file: !3251, line: 18, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3250, file: !3251, line: 23, baseType: !3259, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !235, line: 193, baseType: !3261, size: 192)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !235, line: 193, size: 192, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3261, file: !235, line: 194, baseType: !83, size: 8)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3261, file: !235, line: 195, baseType: !83, size: 8, offset: 8)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3261, file: !235, line: 196, baseType: !93, size: 16, offset: 16)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3261, file: !235, line: 197, baseType: !457, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3261, file: !235, line: 198, baseType: !457, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3201, file: !235, line: 205, baseType: !398, size: 64, offset: 768)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3201, file: !235, line: 211, baseType: !20, size: 64, offset: 832)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3201, file: !235, line: 214, baseType: !39, size: 64, offset: 896)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3201, file: !235, line: 223, baseType: !22, size: 32, offset: 960)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3201, file: !235, line: 229, baseType: !3104, size: 64, offset: 1024)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3201, file: !235, line: 234, baseType: !457, size: 64, offset: 1088)
!3274 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !235, line: 236, baseType: !3275, size: 128, offset: 1152)
!3275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3201, file: !235, line: 236, size: 128, elements: !3276)
!3276 = !{!3277, !3282}
!3277 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !235, line: 237, baseType: !3278, size: 128)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3275, file: !235, line: 237, size: 128, elements: !3279)
!3279 = !{!3280, !3281}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3278, file: !235, line: 241, baseType: !457, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3278, file: !235, line: 249, baseType: !3104, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !235, line: 251, baseType: !3283, size: 128)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3275, file: !235, line: 251, size: 128, elements: !3284)
!3284 = !{!3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3283, file: !235, line: 252, baseType: !457, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3283, file: !235, line: 253, baseType: !457, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3201, file: !235, line: 261, baseType: !457, size: 64, offset: 1280)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3201, file: !235, line: 262, baseType: !457, size: 64, offset: 1344)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3201, file: !235, line: 268, baseType: !457, size: 64, offset: 1408)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3201, file: !235, line: 269, baseType: !457, size: 64, offset: 1472)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2562, file: !235, line: 738, baseType: !2949, size: 64, offset: 4416)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2562, file: !235, line: 744, baseType: !2997, size: 64, offset: 4480)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2562, file: !235, line: 745, baseType: !294, size: 64, offset: 4544)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2562, file: !235, line: 751, baseType: !296, size: 64, offset: 4608)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2562, file: !235, line: 752, baseType: !296, size: 64, offset: 4672)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2562, file: !235, line: 757, baseType: !303, size: 256, offset: 4736)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2562, file: !235, line: 758, baseType: !97, size: 128, offset: 4992)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2562, file: !235, line: 759, baseType: !2561, size: 64, offset: 5120)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2562, file: !235, line: 761, baseType: !22, size: 32, offset: 5184)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2562, file: !235, line: 762, baseType: !22, size: 32, offset: 5216)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2562, file: !235, line: 764, baseType: !97, size: 128, offset: 5248)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2562, file: !235, line: 765, baseType: !398, size: 64, offset: 5376)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2562, file: !235, line: 768, baseType: !303, size: 256, offset: 5440)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2562, file: !235, line: 769, baseType: !49, size: 32, offset: 5696)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2562, file: !235, line: 771, baseType: !3075, size: 64, offset: 5760)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2562, file: !235, line: 772, baseType: !97, size: 128, offset: 5824)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2562, file: !235, line: 773, baseType: !39, size: 64, offset: 5952)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2562, file: !235, line: 774, baseType: !22, size: 32, offset: 6016)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2562, file: !235, line: 777, baseType: !54, size: 192, offset: 6080)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2562, file: !235, line: 778, baseType: !3311, size: 64, offset: 6272)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !252, line: 1083, size: 384, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3312, file: !252, line: 1084, baseType: !321, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3312, file: !252, line: 1085, baseType: !22, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3312, file: !252, line: 1086, baseType: !22, size: 32, offset: 96)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3312, file: !252, line: 1087, baseType: !3311, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3312, file: !252, line: 1088, baseType: !268, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3312, file: !252, line: 1089, baseType: !281, size: 128, align: 64, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2562, file: !235, line: 781, baseType: !7, size: 32, offset: 6336)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2562, file: !235, line: 782, baseType: !7, size: 32, offset: 6368)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2562, file: !235, line: 783, baseType: !7, size: 32, offset: 6400)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2562, file: !235, line: 784, baseType: !7, size: 32, offset: 6432)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2562, file: !235, line: 785, baseType: !39, size: 64, offset: 6464)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2562, file: !235, line: 786, baseType: !3326, size: 256, offset: 6528)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3327, line: 17, size: 256, elements: !3328)
!3327 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3328 = !{!3329, !3330, !3335}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3326, file: !3327, line: 18, baseType: !419, size: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3326, file: !3327, line: 19, baseType: !3331, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !3334}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3326, file: !3327, line: 20, baseType: !3336, size: 64, offset: 192)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3337, line: 16, size: 64, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3338 = !{!3339}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3336, file: !3337, line: 17, baseType: !398, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2562, file: !235, line: 787, baseType: !281, size: 128, align: 64, offset: 6784)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2562, file: !235, line: 788, baseType: !7, size: 32, offset: 6912)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2562, file: !235, line: 789, baseType: !3336, size: 64, offset: 6976)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2562, file: !235, line: 791, baseType: !49, size: 32, offset: 7040)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2562, file: !235, line: 794, baseType: !3345, size: 192, offset: 7104)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !235, line: 579, size: 192, elements: !3346)
!3346 = !{!3347, !3348, !3349}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3345, file: !235, line: 580, baseType: !97, size: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3345, file: !235, line: 581, baseType: !308, size: 32, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3345, file: !235, line: 582, baseType: !7, size: 32, offset: 160)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2562, file: !235, line: 796, baseType: !3351, size: 64, offset: 7296)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !235, line: 585, size: 128, elements: !3353)
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3352, file: !235, line: 586, baseType: !39, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3352, file: !235, line: 587, baseType: !39, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2562, file: !235, line: 797, baseType: !39, size: 64, offset: 7360)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2562, file: !235, line: 800, baseType: !2561, size: 64, offset: 7424)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2562, file: !235, line: 802, baseType: !3035, size: 64, offset: 7488)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2562, file: !235, line: 803, baseType: !281, size: 128, align: 64, offset: 7552)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2562, file: !235, line: 805, baseType: !377, size: 64, offset: 7680)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2562, file: !235, line: 806, baseType: !457, size: 64, offset: 7744)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2562, file: !235, line: 808, baseType: !296, size: 64, offset: 7808)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2562, file: !235, line: 810, baseType: !3364, size: 64, offset: 7872)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!457}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2562, file: !235, line: 811, baseType: !3368, size: 64, offset: 7936)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !235, line: 605, baseType: !3369)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !2561, !3372, !3477}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !235, line: 1148, size: 2048, align: 512, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3384, !3385, !3386, !3391, !3392, !3399, !3420, !3442, !3452, !3470, !3471, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3373, file: !235, line: 1153, baseType: !457, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3373, file: !235, line: 1154, baseType: !457, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3373, file: !235, line: 1155, baseType: !457, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3373, file: !235, line: 1161, baseType: !457, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3373, file: !235, line: 1165, baseType: !3380, size: 64, offset: 256)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3373, file: !235, line: 1162, size: 64, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3380, file: !235, line: 1163, baseType: !409, size: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3380, file: !235, line: 1164, baseType: !409, size: 32, offset: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3373, file: !235, line: 1166, baseType: !457, size: 64, offset: 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3373, file: !235, line: 1167, baseType: !457, size: 64, offset: 384)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3373, file: !235, line: 1171, baseType: !3387, size: 64, offset: 448)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3373, file: !235, line: 1168, size: 64, elements: !3388)
!3388 = !{!3389, !3390}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3387, file: !235, line: 1169, baseType: !409, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3387, file: !235, line: 1170, baseType: !409, size: 32, offset: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3373, file: !235, line: 1177, baseType: !457, size: 64, offset: 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3373, file: !235, line: 1178, baseType: !3393, size: 64, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !235, line: 67, size: 64, elements: !3395)
!3395 = !{!3396, !3397}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3394, file: !235, line: 68, baseType: !458, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3394, file: !235, line: 69, baseType: !3398, offset: 64)
!3398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, elements: !1154)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3373, file: !235, line: 1179, baseType: !3400, size: 64, offset: 640)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !235, line: 93, size: 256, elements: !3402)
!3402 = !{!3403, !3419}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3401, file: !235, line: 94, baseType: !3404, size: 224)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !235, line: 83, size: 224, elements: !3405)
!3405 = !{!3406, !3412, !3417, !3418}
!3406 = !DIDerivedType(tag: DW_TAG_member, scope: !3404, file: !235, line: 84, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3404, file: !235, line: 84, size: 64, elements: !3408)
!3408 = !{!3409, !3411}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3407, file: !235, line: 85, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3407, file: !235, line: 86, baseType: !39, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3404, file: !235, line: 88, baseType: !3413, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !235, line: 80, baseType: !3414)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!39, !20, !837, !39, !39}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3404, file: !235, line: 89, baseType: !20, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3404, file: !235, line: 90, baseType: !409, size: 32, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3401, file: !235, line: 95, baseType: !409, size: 32, offset: 224)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3373, file: !235, line: 1180, baseType: !3421, size: 64, offset: 704)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !235, line: 123, size: 128, elements: !3423)
!3423 = !{!3424, !3425, !3426}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3422, file: !235, line: 124, baseType: !458, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3422, file: !235, line: 125, baseType: !458, size: 64, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3422, file: !235, line: 126, baseType: !3427, offset: 128)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3428, elements: !1154)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3115, line: 1415, size: 192, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3428, file: !3115, line: 1416, baseType: !458, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3428, file: !3115, line: 1417, baseType: !458, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3428, file: !3115, line: 1418, baseType: !458, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3428, file: !3115, line: 1419, baseType: !458, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3428, file: !3115, line: 1420, baseType: !458, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3428, file: !3115, line: 1421, baseType: !458, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3428, file: !3115, line: 1422, baseType: !458, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3428, file: !3115, line: 1423, baseType: !458, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3428, file: !3115, line: 1424, baseType: !458, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3428, file: !3115, line: 1425, baseType: !458, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3428, file: !3115, line: 1426, baseType: !458, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3428, file: !3115, line: 1427, baseType: !458, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3373, file: !235, line: 1181, baseType: !3443, size: 64, offset: 768)
!3443 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3115, line: 1430, size: 64, elements: !3444)
!3444 = !{!3445, !3446}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3443, file: !3115, line: 1431, baseType: !458, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3443, file: !3115, line: 1433, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3443, file: !3115, line: 1433, size: 64, elements: !3448)
!3448 = !{!3449, !3450, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3447, file: !3115, line: 1434, baseType: !410, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3447, file: !3115, line: 1435, baseType: !94, size: 16, offset: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3447, file: !3115, line: 1436, baseType: !94, size: 16, offset: 48)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3373, file: !235, line: 1182, baseType: !3453, size: 64, offset: 832)
!3453 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3115, line: 1267, size: 64, elements: !3454)
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3453, file: !3115, line: 1268, baseType: !458, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !3453, file: !3115, line: 1269, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3453, file: !3115, line: 1269, size: 64, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3457, file: !3115, line: 1270, baseType: !458, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3457, file: !3115, line: 1271, baseType: !458, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3457, file: !3115, line: 1272, baseType: !458, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3457, file: !3115, line: 1273, baseType: !458, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3457, file: !3115, line: 1274, baseType: !458, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3457, file: !3115, line: 1275, baseType: !458, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3457, file: !3115, line: 1276, baseType: !458, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3457, file: !3115, line: 1277, baseType: !458, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3457, file: !3115, line: 1278, baseType: !458, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3457, file: !3115, line: 1279, baseType: !458, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3457, file: !3115, line: 1280, baseType: !458, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3373, file: !235, line: 1183, baseType: !457, size: 64, offset: 896)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3373, file: !235, line: 1185, baseType: !3472, size: 128, offset: 960)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3473, line: 7, size: 128, elements: !3474)
!3473 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3474 = !{!3475, !3476}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3472, file: !3473, line: 8, baseType: !458, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3472, file: !3473, line: 9, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3479, line: 103, size: 1344, elements: !3480)
!3479 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3509, !3510, !3511}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3478, file: !3479, line: 109, baseType: !39, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3478, file: !3479, line: 110, baseType: !39, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3478, file: !3479, line: 111, baseType: !39, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3478, file: !3479, line: 112, baseType: !39, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3478, file: !3479, line: 113, baseType: !39, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3478, file: !3479, line: 114, baseType: !39, size: 64, offset: 320)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3478, file: !3479, line: 117, baseType: !39, size: 64, offset: 384)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3478, file: !3479, line: 118, baseType: !39, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3478, file: !3479, line: 119, baseType: !39, size: 64, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3478, file: !3479, line: 120, baseType: !39, size: 64, offset: 576)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3478, file: !3479, line: 121, baseType: !39, size: 64, offset: 640)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3478, file: !3479, line: 122, baseType: !39, size: 64, offset: 704)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3478, file: !3479, line: 123, baseType: !39, size: 64, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3478, file: !3479, line: 124, baseType: !39, size: 64, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3478, file: !3479, line: 125, baseType: !39, size: 64, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3478, file: !3479, line: 139, baseType: !39, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3478, file: !3479, line: 142, baseType: !39, size: 64, offset: 1024)
!3498 = !DIDerivedType(tag: DW_TAG_member, scope: !3478, file: !3479, line: 144, baseType: !3499, size: 64, offset: 1088)
!3499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3478, file: !3479, line: 144, size: 64, elements: !3500)
!3500 = !{!3501, !3502, !3503}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3499, file: !3479, line: 146, baseType: !93, size: 16)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3499, file: !3479, line: 148, baseType: !457, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3499, file: !3479, line: 150, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3479, line: 59, size: 64, elements: !3505)
!3505 = !{!3506, !3507, !3508}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3504, file: !3479, line: 61, baseType: !457, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3504, file: !3479, line: 63, baseType: !457, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3504, file: !3479, line: 65, baseType: !457, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3478, file: !3479, line: 153, baseType: !39, size: 64, offset: 1152)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3478, file: !3479, line: 154, baseType: !39, size: 64, offset: 1216)
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3478, file: !3479, line: 156, baseType: !3512, size: 64, offset: 1280)
!3512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3478, file: !3479, line: 156, size: 64, elements: !3513)
!3513 = !{!3514, !3515, !3516}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3512, file: !3479, line: 158, baseType: !93, size: 16)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3512, file: !3479, line: 160, baseType: !457, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3512, file: !3479, line: 162, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3479, line: 69, size: 64, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3517, file: !3479, line: 71, baseType: !457, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3517, file: !3479, line: 73, baseType: !457, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3517, file: !3479, line: 75, baseType: !457, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3517, file: !3479, line: 77, baseType: !457, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3517, file: !3479, line: 80, baseType: !457, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3517, file: !3479, line: 83, baseType: !457, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3517, file: !3479, line: 86, baseType: !457, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3517, file: !3479, line: 88, baseType: !457, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3517, file: !3479, line: 93, baseType: !457, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3517, file: !3479, line: 100, baseType: !457, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3373, file: !235, line: 1186, baseType: !3472, size: 128, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3373, file: !235, line: 1187, baseType: !457, size: 64, offset: 1216)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3373, file: !235, line: 1189, baseType: !457, size: 64, offset: 1280)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3373, file: !235, line: 1190, baseType: !457, size: 64, offset: 1344)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3373, file: !235, line: 1191, baseType: !457, size: 64, offset: 1408)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3373, file: !235, line: 1192, baseType: !457, size: 64, offset: 1472)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3373, file: !235, line: 1193, baseType: !457, size: 64, offset: 1536)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3373, file: !235, line: 1194, baseType: !457, size: 64, offset: 1600)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3373, file: !235, line: 1195, baseType: !457, size: 64, offset: 1664)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2562, file: !235, line: 812, baseType: !20, size: 64, offset: 8000)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2562, file: !235, line: 820, baseType: !2355, size: 64, offset: 8064)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2562, file: !235, line: 821, baseType: !2542, size: 64, offset: 8128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2562, file: !235, line: 828, baseType: !3542, size: 64, offset: 8192)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !235, line: 1046, size: 1664, elements: !3544)
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3543, file: !235, line: 1047, baseType: !1435, size: 1600)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3543, file: !235, line: 1048, baseType: !3547, size: 64, offset: 1600)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !235, line: 1039, size: 256, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3553}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3548, file: !235, line: 1040, baseType: !457, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3548, file: !235, line: 1041, baseType: !457, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3548, file: !235, line: 1042, baseType: !457, size: 64, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3548, file: !235, line: 1043, baseType: !22, size: 32, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2562, file: !235, line: 832, baseType: !20, size: 64, offset: 8256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2562, file: !235, line: 834, baseType: !97, size: 128, offset: 8320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2562, file: !235, line: 842, baseType: !410, size: 32, offset: 8448)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1853, file: !152, line: 524, baseType: !7, size: 32, offset: 8320)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1853, file: !152, line: 525, baseType: !3559, size: 64, offset: 8384)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3562, line: 28, size: 192, elements: !3563)
!3562 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3563 = !{!3564, !3565, !3566}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3561, file: !3562, line: 29, baseType: !16, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3561, file: !3562, line: 30, baseType: !16, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3561, file: !3562, line: 31, baseType: !39, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1853, file: !152, line: 526, baseType: !7, size: 32, offset: 8448)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1853, file: !152, line: 533, baseType: !20, size: 64, offset: 8512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1853, file: !152, line: 534, baseType: !7, size: 32, offset: 8576)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1853, file: !152, line: 535, baseType: !3571, size: 64, offset: 8640)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1853, file: !152, line: 536, baseType: !7, size: 32, offset: 8704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1853, file: !152, line: 539, baseType: !22, size: 32, offset: 8736)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1853, file: !152, line: 540, baseType: !2438, size: 64, offset: 8768)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1853, file: !152, line: 563, baseType: !97, size: 128, offset: 8832)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1853, file: !152, line: 565, baseType: !97, size: 128, offset: 8960)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1853, file: !152, line: 568, baseType: !2449, size: 64, offset: 9088)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1853, file: !152, line: 570, baseType: !49, size: 32, offset: 9152)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1829, file: !252, line: 2382, baseType: !1828, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1829, file: !252, line: 2383, baseType: !357, size: 64, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1829, file: !252, line: 2385, baseType: !3582, offset: 576)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2304, line: 206, elements: !724)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1829, file: !252, line: 2386, baseType: !3582, offset: 576)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1829, file: !252, line: 2387, baseType: !3582, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1829, file: !252, line: 2388, baseType: !3586, offset: 576)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3582, elements: !340)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1829, file: !252, line: 2390, baseType: !3582, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1829, file: !252, line: 2391, baseType: !3582, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1829, file: !252, line: 2392, baseType: !3582, offset: 576)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1829, file: !252, line: 2393, baseType: !3582, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1818, file: !252, line: 1197, baseType: !3592, size: 64, offset: 384)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3594)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !252, line: 2057, size: 1664, elements: !3595)
!3595 = !{!3596, !3600, !3604, !3605, !3609, !3615, !3619, !3620, !3621, !3625, !3629, !3633, !3634, !3635, !3660, !3664, !3665, !3669, !3670, !3671, !3672, !3676, !3680, !3727, !3742, !3743}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3594, file: !252, line: 2058, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!1689, !1817}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3594, file: !252, line: 2059, baseType: !3601, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !1689}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3594, file: !252, line: 2060, baseType: !3601, size: 64, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3594, file: !252, line: 2062, baseType: !3606, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !1689, !22}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3594, file: !252, line: 2063, baseType: !3610, size: 64, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!22, !1689, !3613}
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !252, line: 309, flags: DIFlagFwdDecl)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3594, file: !252, line: 2064, baseType: !3616, size: 64, offset: 320)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!22, !1689}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3594, file: !252, line: 2065, baseType: !3601, size: 64, offset: 384)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3594, file: !252, line: 2066, baseType: !1848, size: 64, offset: 448)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3594, file: !252, line: 2067, baseType: !3622, size: 64, offset: 512)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!22, !1817, !22}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3594, file: !252, line: 2068, baseType: !3626, size: 64, offset: 576)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!22, !1817, !251}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3594, file: !252, line: 2069, baseType: !3630, size: 64, offset: 640)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!22, !1817}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3594, file: !252, line: 2070, baseType: !3626, size: 64, offset: 704)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3594, file: !252, line: 2071, baseType: !3630, size: 64, offset: 768)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3594, file: !252, line: 2072, baseType: !3636, size: 64, offset: 832)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!22, !1711, !3639}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !3641, line: 9, size: 960, elements: !3642)
!3641 = !DIFile(filename: "./include/linux/statfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "109fd6e5d352fa5dbe7866d2f488a201")
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3656, !3657, !3658, !3659}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !3640, file: !3641, line: 10, baseType: !840, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !3640, file: !3641, line: 11, baseType: !840, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !3640, file: !3641, line: 12, baseType: !457, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !3640, file: !3641, line: 13, baseType: !457, size: 64, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !3640, file: !3641, line: 14, baseType: !457, size: 64, offset: 256)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !3640, file: !3641, line: 15, baseType: !457, size: 64, offset: 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !3640, file: !3641, line: 16, baseType: !457, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !3640, file: !3641, line: 17, baseType: !3651, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !37, line: 81, baseType: !3652)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 79, size: 64, elements: !3653)
!3653 = !{!3654}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3652, file: !37, line: 80, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !2167)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !3640, file: !3641, line: 18, baseType: !840, size: 64, offset: 512)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !3640, file: !3641, line: 19, baseType: !840, size: 64, offset: 576)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !3640, file: !3641, line: 20, baseType: !840, size: 64, offset: 640)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !3640, file: !3641, line: 21, baseType: !1137, size: 256, offset: 704)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3594, file: !252, line: 2073, baseType: !3661, size: 64, offset: 896)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!22, !1817, !1259, !999}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3594, file: !252, line: 2074, baseType: !1848, size: 64, offset: 960)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3594, file: !252, line: 2076, baseType: !3666, size: 64, offset: 1024)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!22, !1499, !1711}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3594, file: !252, line: 2077, baseType: !3666, size: 64, offset: 1088)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3594, file: !252, line: 2078, baseType: !3666, size: 64, offset: 1152)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3594, file: !252, line: 2079, baseType: !3666, size: 64, offset: 1216)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3594, file: !252, line: 2081, baseType: !3673, size: 64, offset: 1280)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!1935, !1817, !22, !999, !35, !41}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3594, file: !252, line: 2082, baseType: !3677, size: 64, offset: 1344)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!1935, !1817, !22, !16, !35, !41}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3594, file: !252, line: 2083, baseType: !3681, size: 64, offset: 1408)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!3684, !1689}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !257, line: 296, size: 1664, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3712, !3713, !3714}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3686, file: !257, line: 297, baseType: !361, size: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3686, file: !257, line: 298, baseType: !97, size: 128, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3686, file: !257, line: 299, baseType: !97, size: 128, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3686, file: !257, line: 300, baseType: !97, size: 128, offset: 384)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3686, file: !257, line: 301, baseType: !303, size: 256, offset: 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3686, file: !257, line: 302, baseType: !59, size: 32, offset: 768)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3686, file: !257, line: 303, baseType: !49, size: 32, offset: 800)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3686, file: !257, line: 304, baseType: !1817, size: 64, offset: 832)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3686, file: !257, line: 305, baseType: !3697, size: 64, offset: 896)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !257, line: 68, size: 64, elements: !3698)
!3698 = !{!3699, !3711}
!3699 = !DIDerivedType(tag: DW_TAG_member, scope: !3697, file: !257, line: 69, baseType: !3700, size: 32)
!3700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3697, file: !257, line: 69, size: 32, elements: !3701)
!3701 = !{!3702, !3703, !3704}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3700, file: !257, line: 70, baseType: !895, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3700, file: !257, line: 71, baseType: !903, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3700, file: !257, line: 72, baseType: !3705, size: 32)
!3705 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3706, line: 24, baseType: !3707)
!3706 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3706, line: 22, size: 32, elements: !3708)
!3708 = !{!3709}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3707, file: !3706, line: 23, baseType: !3710, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3706, line: 20, baseType: !901)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3697, file: !257, line: 74, baseType: !256, size: 32, offset: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3686, file: !257, line: 306, baseType: !41, size: 64, offset: 960)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3686, file: !257, line: 307, baseType: !39, size: 64, offset: 1024)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3686, file: !257, line: 308, baseType: !3715, size: 576, offset: 1088)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !257, line: 205, size: 576, elements: !3716)
!3716 = !{!3717, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3715, file: !257, line: 206, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !257, line: 66, baseType: !43)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3715, file: !257, line: 207, baseType: !3718, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3715, file: !257, line: 208, baseType: !3718, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3715, file: !257, line: 209, baseType: !3718, size: 64, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3715, file: !257, line: 210, baseType: !3718, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3715, file: !257, line: 211, baseType: !3718, size: 64, offset: 320)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3715, file: !257, line: 212, baseType: !3718, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3715, file: !257, line: 213, baseType: !948, size: 64, offset: 448)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3715, file: !257, line: 214, baseType: !948, size: 64, offset: 512)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3594, file: !252, line: 2085, baseType: !3728, size: 64, offset: 1472)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!840, !1817, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3733, line: 15, size: 256, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3734 = !{!3735, !3736, !3737, !3738, !3739}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3732, file: !3733, line: 16, baseType: !391, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3732, file: !3733, line: 19, baseType: !22, size: 32, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3732, file: !3733, line: 26, baseType: !39, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3732, file: !3733, line: 33, baseType: !39, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3732, file: !3733, line: 36, baseType: !3740, size: 64, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !3733, line: 36, flags: DIFlagFwdDecl)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3594, file: !252, line: 2087, baseType: !3728, size: 64, offset: 1536)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3594, file: !252, line: 2089, baseType: !1848, size: 64, offset: 1600)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1818, file: !252, line: 1198, baseType: !3745, size: 64, offset: 448)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3747)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !257, line: 324, size: 704, elements: !3748)
!3748 = !{!3749, !3753, !3757, !3761, !3762, !3763, !3764, !3765, !3770, !3775, !3779}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3747, file: !257, line: 325, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!22, !3685}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3747, file: !257, line: 326, baseType: !3754, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!3685, !1817, !22}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3747, file: !257, line: 327, baseType: !3758, size: 64, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{null, !3685}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3747, file: !257, line: 328, baseType: !3750, size: 64, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3747, file: !257, line: 329, baseType: !3750, size: 64, offset: 256)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3747, file: !257, line: 330, baseType: !3750, size: 64, offset: 320)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3747, file: !257, line: 331, baseType: !3622, size: 64, offset: 384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3747, file: !257, line: 334, baseType: !3766, size: 64, offset: 448)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!3769, !1689}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3747, file: !257, line: 335, baseType: !3771, size: 64, offset: 512)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!22, !1689, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3747, file: !257, line: 337, baseType: !3776, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!22, !1689, !3769}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3747, file: !257, line: 339, baseType: !3780, size: 64, offset: 640)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!22, !1817, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1818, file: !252, line: 1199, baseType: !3785, size: 64, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3787)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !257, line: 430, size: 704, elements: !3788)
!3788 = !{!3789, !3800, !3801, !3805, !3806, !3807, !3822, !3845, !3849, !3850, !3873}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3787, file: !257, line: 431, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!22, !1817, !22, !22, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3795)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3796, line: 8, size: 128, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3797 = !{!3798, !3799}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3795, file: !3796, line: 9, baseType: !1811, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3795, file: !3796, line: 10, baseType: !1711, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3787, file: !257, line: 432, baseType: !3622, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3787, file: !257, line: 433, baseType: !3802, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!22, !1817, !7}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3787, file: !257, line: 434, baseType: !3802, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3787, file: !257, line: 435, baseType: !3622, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3787, file: !257, line: 436, baseType: !3808, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!22, !1817, !22, !3811}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !257, line: 417, size: 256, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3812, file: !257, line: 418, baseType: !22, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3812, file: !257, line: 419, baseType: !7, size: 32, offset: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3812, file: !257, line: 420, baseType: !7, size: 32, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3812, file: !257, line: 422, baseType: !7, size: 32, offset: 96)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3812, file: !257, line: 423, baseType: !7, size: 32, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3812, file: !257, line: 424, baseType: !7, size: 32, offset: 160)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3812, file: !257, line: 425, baseType: !7, size: 32, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3812, file: !257, line: 426, baseType: !7, size: 32, offset: 224)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3787, file: !257, line: 437, baseType: !3823, size: 64, offset: 384)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!22, !1817, !3697, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !257, line: 345, size: 960, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3827, file: !257, line: 346, baseType: !22, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3827, file: !257, line: 347, baseType: !457, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3827, file: !257, line: 348, baseType: !457, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3827, file: !257, line: 349, baseType: !457, size: 64, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3827, file: !257, line: 350, baseType: !457, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3827, file: !257, line: 351, baseType: !457, size: 64, offset: 320)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3827, file: !257, line: 352, baseType: !457, size: 64, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3827, file: !257, line: 353, baseType: !300, size: 64, offset: 448)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3827, file: !257, line: 355, baseType: !300, size: 64, offset: 512)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3827, file: !257, line: 356, baseType: !22, size: 32, offset: 576)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3827, file: !257, line: 357, baseType: !22, size: 32, offset: 608)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3827, file: !257, line: 358, baseType: !457, size: 64, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3827, file: !257, line: 359, baseType: !457, size: 64, offset: 704)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3827, file: !257, line: 360, baseType: !457, size: 64, offset: 768)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3827, file: !257, line: 361, baseType: !300, size: 64, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3827, file: !257, line: 362, baseType: !22, size: 32, offset: 896)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3787, file: !257, line: 438, baseType: !3846, size: 64, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!22, !1817, !3783, !3826}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3787, file: !257, line: 440, baseType: !3823, size: 64, offset: 512)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3787, file: !257, line: 441, baseType: !3851, size: 64, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!22, !1817, !3854}
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !257, line: 411, size: 1408, elements: !3856)
!3856 = !{!3857, !3858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3855, file: !257, line: 412, baseType: !7, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3855, file: !257, line: 413, baseType: !3859, size: 1344, offset: 64)
!3859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3860, size: 1344, elements: !340)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !257, line: 397, size: 448, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3872}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3860, file: !257, line: 398, baseType: !7, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3860, file: !257, line: 399, baseType: !7, size: 32, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3860, file: !257, line: 401, baseType: !7, size: 32, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3860, file: !257, line: 402, baseType: !7, size: 32, offset: 96)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3860, file: !257, line: 403, baseType: !7, size: 32, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3860, file: !257, line: 404, baseType: !7, size: 32, offset: 160)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3860, file: !257, line: 405, baseType: !7, size: 32, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3860, file: !257, line: 406, baseType: !459, size: 64, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3860, file: !257, line: 407, baseType: !3871, size: 64, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !457)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3860, file: !257, line: 408, baseType: !3871, size: 64, offset: 384)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3787, file: !257, line: 442, baseType: !3802, size: 64, offset: 640)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1818, file: !252, line: 1200, baseType: !3875, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3877)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !252, line: 54, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1818, file: !252, line: 1201, baseType: !39, size: 64, offset: 640)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1818, file: !252, line: 1202, baseType: !39, size: 64, offset: 704)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1818, file: !252, line: 1203, baseType: !39, size: 64, offset: 768)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1818, file: !252, line: 1204, baseType: !1711, size: 64, offset: 832)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1818, file: !252, line: 1205, baseType: !758, size: 320, offset: 896)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1818, file: !252, line: 1206, baseType: !22, size: 32, offset: 1216)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1818, file: !252, line: 1207, baseType: !49, size: 32, offset: 1248)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1818, file: !252, line: 1209, baseType: !20, size: 64, offset: 1280)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1818, file: !252, line: 1211, baseType: !3887, size: 64, offset: 1344)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3890)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !252, line: 1211, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1818, file: !252, line: 1223, baseType: !3892, size: 64, offset: 1408)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1723, line: 34, size: 64, elements: !3893)
!3893 = !{!3894}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3892, file: !1723, line: 35, baseType: !1726, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1818, file: !252, line: 1224, baseType: !97, size: 128, offset: 1472)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1818, file: !252, line: 1225, baseType: !3897, size: 64, offset: 1600)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !252, line: 1225, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1818, file: !252, line: 1226, baseType: !3900, size: 64, offset: 1664)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !252, line: 1226, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1818, file: !252, line: 1227, baseType: !3903, size: 64, offset: 1728)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !252, line: 50, flags: DIFlagFwdDecl)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1818, file: !252, line: 1228, baseType: !3906, size: 64, offset: 1792)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !252, line: 1228, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1818, file: !252, line: 1229, baseType: !361, size: 128, offset: 1856)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1818, file: !252, line: 1230, baseType: !7, size: 32, offset: 1984)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1818, file: !252, line: 1231, baseType: !3911, size: 2496, offset: 2048)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !257, line: 521, size: 2496, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3917, !3949}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3911, file: !257, line: 522, baseType: !7, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3911, file: !257, line: 523, baseType: !758, size: 320, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3911, file: !257, line: 524, baseType: !3916, size: 192, offset: 384)
!3916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1689, size: 192, elements: !340)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3911, file: !257, line: 525, baseType: !3918, size: 1728, offset: 576)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3919, size: 1728, elements: !340)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !257, line: 222, size: 576, elements: !3920)
!3920 = !{!3921, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3919, file: !257, line: 223, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !257, line: 445, size: 256, elements: !3924)
!3924 = !{!3925, !3926, !3939, !3940}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3923, file: !257, line: 446, baseType: !22, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3923, file: !257, line: 447, baseType: !3927, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3929)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !257, line: 312, size: 512, elements: !3930)
!3930 = !{!3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3929, file: !257, line: 313, baseType: !3622, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3929, file: !257, line: 314, baseType: !3622, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3929, file: !257, line: 315, baseType: !3622, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3929, file: !257, line: 316, baseType: !3622, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3929, file: !257, line: 317, baseType: !3750, size: 64, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3929, file: !257, line: 318, baseType: !3750, size: 64, offset: 320)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3929, file: !257, line: 319, baseType: !3750, size: 64, offset: 384)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3929, file: !257, line: 320, baseType: !3780, size: 64, offset: 448)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3923, file: !257, line: 448, baseType: !1852, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3923, file: !257, line: 449, baseType: !3922, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3919, file: !257, line: 224, baseType: !22, size: 32, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3919, file: !257, line: 226, baseType: !97, size: 128, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3919, file: !257, line: 227, baseType: !39, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3919, file: !257, line: 228, baseType: !7, size: 32, offset: 320)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3919, file: !257, line: 229, baseType: !7, size: 32, offset: 352)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3919, file: !257, line: 230, baseType: !3718, size: 64, offset: 384)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3919, file: !257, line: 231, baseType: !3718, size: 64, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3919, file: !257, line: 232, baseType: !20, size: 64, offset: 512)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3911, file: !257, line: 526, baseType: !3950, size: 192, offset: 2304)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3927, size: 192, elements: !340)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1818, file: !252, line: 1233, baseType: !3952, size: 2368, offset: 4544)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !252, line: 1184, size: 2368, elements: !3953)
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3952, file: !252, line: 1185, baseType: !26, size: 16)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3952, file: !252, line: 1186, baseType: !26, size: 16, offset: 16)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3952, file: !252, line: 1187, baseType: !3957, size: 2304, offset: 64)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3958, size: 2304, elements: !340)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3959, line: 12, size: 768, elements: !3960)
!3959 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3960 = !{!3961, !3969, !3970, !3971, !3972}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3958, file: !3959, line: 13, baseType: !3962, size: 384)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3963, line: 17, size: 384, elements: !3964)
!3963 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3964 = !{!3965, !3966, !3967, !3968}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3962, file: !3963, line: 18, baseType: !22, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3962, file: !3963, line: 19, baseType: !22, size: 32, offset: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3962, file: !3963, line: 20, baseType: !54, size: 192, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3962, file: !3963, line: 22, baseType: !281, size: 128, align: 64, offset: 256)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3958, file: !3959, line: 14, baseType: !2129, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3958, file: !3959, line: 15, baseType: !3336, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3958, file: !3959, line: 16, baseType: !54, size: 192, offset: 512)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3958, file: !3959, line: 17, baseType: !49, size: 32, offset: 704)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1818, file: !252, line: 1240, baseType: !20, size: 64, offset: 6912)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1818, file: !252, line: 1243, baseType: !409, size: 32, offset: 6976)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1818, file: !252, line: 1245, baseType: !948, size: 64, offset: 7040)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1818, file: !252, line: 1246, baseType: !948, size: 64, offset: 7104)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1818, file: !252, line: 1248, baseType: !410, size: 32, offset: 7168)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1818, file: !252, line: 1249, baseType: !3979, size: 64, offset: 7232)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !252, line: 634, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1818, file: !252, line: 1252, baseType: !3982, size: 256, offset: 7296)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !1748)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1818, file: !252, line: 1253, baseType: !3984, size: 128, offset: 7552)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3985, line: 21, baseType: !3986)
!3985 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3985, line: 19, size: 128, elements: !3987)
!3987 = !{!3988}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3986, file: !3985, line: 20, baseType: !3989, size: 128)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !1370)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1818, file: !252, line: 1255, baseType: !7, size: 32, offset: 7680)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1818, file: !252, line: 1261, baseType: !303, size: 256, offset: 7744)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1818, file: !252, line: 1267, baseType: !16, size: 64, offset: 8000)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1818, file: !252, line: 1269, baseType: !1764, size: 64, offset: 8064)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1818, file: !252, line: 1271, baseType: !3995, size: 448, offset: 8128)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3733, line: 63, size: 448, elements: !3996)
!3996 = !{!3997, !4002, !4003, !4004, !4005, !4006, !4007}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3995, file: !3733, line: 64, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!39, !4001, !3731}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3995, file: !3733, line: 66, baseType: !3998, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3995, file: !3733, line: 69, baseType: !840, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3995, file: !3733, line: 70, baseType: !22, size: 32, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3995, file: !3733, line: 71, baseType: !7, size: 32, offset: 224)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3995, file: !3733, line: 74, baseType: !97, size: 128, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3995, file: !3733, line: 85, baseType: !4008, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1818, file: !252, line: 1274, baseType: !294, size: 64, offset: 8576)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1818, file: !252, line: 1280, baseType: !294, size: 64, offset: 8640)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1818, file: !252, line: 1283, baseType: !22, size: 32, offset: 8704)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1818, file: !252, line: 1286, baseType: !4013, size: 32, offset: 8736)
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4014, line: 8, baseType: !409)
!4014 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1818, file: !252, line: 1289, baseType: !2337, size: 64, offset: 8768)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1818, file: !252, line: 1290, baseType: !357, size: 64, offset: 8832)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1818, file: !252, line: 1297, baseType: !864, size: 64, offset: 8896)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1818, file: !252, line: 1304, baseType: !4019, size: 64, offset: 8960)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4020, line: 49, size: 64, elements: !4021)
!4020 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4021 = !{!4022}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4019, file: !4020, line: 50, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4020, line: 41, size: 512, align: 512, elements: !4025)
!4025 = !{!4026, !4027, !4032}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4024, file: !4020, line: 43, baseType: !59, size: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4024, file: !4020, line: 45, baseType: !4028, size: 192, offset: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4020, line: 29, size: 192, elements: !4029)
!4029 = !{!4030, !4031}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4028, file: !4020, line: 30, baseType: !97, size: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4028, file: !4020, line: 32, baseType: !840, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4024, file: !4020, line: 46, baseType: !840, size: 64, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1818, file: !252, line: 1305, baseType: !4019, size: 64, offset: 9024)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1818, file: !252, line: 1306, baseType: !281, size: 128, align: 64, offset: 9088)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1818, file: !252, line: 1307, baseType: !1038, size: 256, offset: 9216)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1818, file: !252, line: 1309, baseType: !303, size: 256, offset: 9472)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1818, file: !252, line: 1314, baseType: !22, size: 32, offset: 9728)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1818, file: !252, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1818, file: !252, line: 1318, baseType: !97, size: 128, offset: 10304)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1818, file: !252, line: 1320, baseType: !59, size: 32, offset: 10432)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1818, file: !252, line: 1321, baseType: !97, size: 128, offset: 10496)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1812, file: !1813, line: 73, baseType: !22, size: 32, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1812, file: !1813, line: 74, baseType: !4044, size: 64, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1313, line: 42, flags: DIFlagFwdDecl)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1766, file: !1713, line: 141, baseType: !4048, size: 64, offset: 704)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!22, !3793, !922}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1766, file: !1713, line: 142, baseType: !4052, size: 64, offset: 768)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!1711, !1711, !4055}
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1712, file: !1713, line: 96, baseType: !1817, size: 64, offset: 832)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1712, file: !1713, line: 97, baseType: !39, size: 64, offset: 896)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1712, file: !1713, line: 98, baseType: !20, size: 64, offset: 960)
!4060 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !1713, line: 100, baseType: !4061, size: 128, offset: 1024)
!4061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !1713, line: 100, size: 128, elements: !4062)
!4062 = !{!4063, !4064}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4061, file: !1713, line: 101, baseType: !97, size: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4061, file: !1713, line: 102, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1712, file: !1713, line: 104, baseType: !97, size: 128, offset: 1152)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1712, file: !1713, line: 105, baseType: !97, size: 128, offset: 1280)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1712, file: !1713, line: 113, baseType: !4069, size: 128, offset: 1408)
!4069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !1713, line: 109, size: 128, elements: !4070)
!4070 = !{!4071, !4072, !4073}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4069, file: !1713, line: 110, baseType: !361, size: 128)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4069, file: !1713, line: 111, baseType: !1722, size: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4069, file: !1713, line: 112, baseType: !281, size: 128, align: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1705, file: !252, line: 1968, baseType: !4075, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!16, !1711, !1689, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4080, line: 10, size: 128, elements: !4081)
!4080 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4081 = !{!4082, !4083}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4079, file: !4080, line: 11, baseType: !2013, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4079, file: !4080, line: 12, baseType: !20, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1705, file: !252, line: 1969, baseType: !4085, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!22, !4044, !1689, !22}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1705, file: !252, line: 1970, baseType: !4089, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!1699, !1689, !22, !922}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1705, file: !252, line: 1972, baseType: !4093, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!22, !1711, !999, !22}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1705, file: !252, line: 1974, baseType: !4097, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!22, !4044, !1689, !1711, !24, !922}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1705, file: !252, line: 1976, baseType: !4101, size: 64, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!22, !1711, !1689, !1711}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1705, file: !252, line: 1977, baseType: !4105, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!22, !1689, !1711}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1705, file: !252, line: 1978, baseType: !4109, size: 64, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!22, !4044, !1689, !1711, !16}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1705, file: !252, line: 1980, baseType: !4113, size: 64, offset: 576)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!22, !4044, !1689, !1711, !24}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1705, file: !252, line: 1982, baseType: !4105, size: 64, offset: 640)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1705, file: !252, line: 1983, baseType: !4118, size: 64, offset: 704)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!22, !4044, !1689, !1711, !24, !1822}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1705, file: !252, line: 1985, baseType: !4122, size: 64, offset: 768)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!22, !4044, !1689, !1711, !1689, !1711, !7}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1705, file: !252, line: 1987, baseType: !4126, size: 64, offset: 832)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!22, !4044, !1711, !4129}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !252, line: 226, size: 640, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4144, !4153, !4154, !4159, !4160, !4161}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4130, file: !252, line: 227, baseType: !7, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4130, file: !252, line: 228, baseType: !24, size: 16, offset: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !252, line: 241, baseType: !4135, size: 32, offset: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !252, line: 241, size: 32, elements: !4136)
!4136 = !{!4137, !4138}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4135, file: !252, line: 242, baseType: !895, size: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4135, file: !252, line: 243, baseType: !4139, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4140, line: 16, baseType: !4141)
!4140 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4140, line: 14, size: 32, elements: !4142)
!4142 = !{!4143}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4141, file: !4140, line: 15, baseType: !900, size: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !252, line: 245, baseType: !4145, size: 32, offset: 96)
!4145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !252, line: 245, size: 32, elements: !4146)
!4146 = !{!4147, !4148}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4145, file: !252, line: 246, baseType: !903, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4145, file: !252, line: 247, baseType: !4149, size: 32)
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4140, line: 20, baseType: !4150)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4140, line: 18, size: 32, elements: !4151)
!4151 = !{!4152}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4150, file: !4140, line: 19, baseType: !907, size: 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4130, file: !252, line: 249, baseType: !41, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4130, file: !252, line: 250, baseType: !4155, size: 128, offset: 192)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !949, line: 13, size: 128, elements: !4156)
!4156 = !{!4157, !4158}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4155, file: !949, line: 14, baseType: !948, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4155, file: !949, line: 15, baseType: !840, size: 64, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4130, file: !252, line: 251, baseType: !4155, size: 128, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4130, file: !252, line: 252, baseType: !4155, size: 128, offset: 448)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4130, file: !252, line: 259, baseType: !268, size: 64, offset: 576)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1705, file: !252, line: 1988, baseType: !4163, size: 64, offset: 896)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!22, !4044, !3793, !4166, !409, !7}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4168, line: 22, size: 1280, elements: !4169)
!4168 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4169 = !{!4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4167, file: !4168, line: 23, baseType: !409, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4167, file: !4168, line: 24, baseType: !24, size: 16, offset: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4167, file: !4168, line: 25, baseType: !7, size: 32, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4167, file: !4168, line: 26, baseType: !956, size: 32, offset: 96)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4167, file: !4168, line: 27, baseType: !457, size: 64, offset: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4167, file: !4168, line: 28, baseType: !457, size: 64, offset: 192)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4167, file: !4168, line: 41, baseType: !457, size: 64, offset: 256)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4167, file: !4168, line: 42, baseType: !1822, size: 32, offset: 320)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4167, file: !4168, line: 43, baseType: !1822, size: 32, offset: 352)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4167, file: !4168, line: 44, baseType: !895, size: 32, offset: 384)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4167, file: !4168, line: 45, baseType: !903, size: 32, offset: 416)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4167, file: !4168, line: 46, baseType: !41, size: 64, offset: 448)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4167, file: !4168, line: 47, baseType: !4155, size: 128, offset: 512)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4167, file: !4168, line: 48, baseType: !4155, size: 128, offset: 640)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4167, file: !4168, line: 49, baseType: !4155, size: 128, offset: 768)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4167, file: !4168, line: 50, baseType: !4155, size: 128, offset: 896)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4167, file: !4168, line: 51, baseType: !457, size: 64, offset: 1024)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4167, file: !4168, line: 52, baseType: !457, size: 64, offset: 1088)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4167, file: !4168, line: 53, baseType: !409, size: 32, offset: 1152)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4167, file: !4168, line: 54, baseType: !409, size: 32, offset: 1184)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4167, file: !4168, line: 55, baseType: !457, size: 64, offset: 1216)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1705, file: !252, line: 1990, baseType: !4192, size: 64, offset: 960)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!1935, !1711, !999, !35}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1705, file: !252, line: 1991, baseType: !4196, size: 64, offset: 1024)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!22, !1689, !4199, !457, !457}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !252, line: 55, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1705, file: !252, line: 1993, baseType: !4202, size: 64, offset: 1088)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!22, !1689, !22}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1705, file: !252, line: 1994, baseType: !4206, size: 64, offset: 1152)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!22, !1689, !1711, !268, !7, !24}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1705, file: !252, line: 1997, baseType: !4210, size: 64, offset: 1216)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!22, !4044, !1689, !268, !24}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1705, file: !252, line: 1999, baseType: !4214, size: 64, offset: 1280)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!1699, !4044, !1711, !22}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1705, file: !252, line: 2001, baseType: !4218, size: 64, offset: 1344)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!22, !4044, !1711, !1699, !22}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1705, file: !252, line: 2003, baseType: !4222, size: 64, offset: 1408)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!22, !4044, !1711, !4225}
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !252, line: 76, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1705, file: !252, line: 2005, baseType: !4228, size: 64, offset: 1472)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!22, !1711, !4225}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1705, file: !252, line: 2006, baseType: !4232, size: 64, offset: 1536)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!4235, !1689}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !252, line: 3192, size: 192, elements: !4237)
!4237 = !{!4238, !4239}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4236, file: !252, line: 3193, baseType: !386, size: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4236, file: !252, line: 3194, baseType: !409, size: 32, offset: 128)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1690, file: !252, line: 655, baseType: !1817, size: 64, offset: 448)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1690, file: !252, line: 656, baseType: !1685, size: 64, offset: 512)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1690, file: !252, line: 659, baseType: !20, size: 64, offset: 576)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1690, file: !252, line: 663, baseType: !39, size: 64, offset: 640)
!4244 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !252, line: 671, baseType: !4245, size: 32, offset: 704)
!4245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !252, line: 671, size: 32, elements: !4246)
!4246 = !{!4247, !4248}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4245, file: !252, line: 672, baseType: !2385, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4245, file: !252, line: 673, baseType: !7, size: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1690, file: !252, line: 675, baseType: !1822, size: 32, offset: 736)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1690, file: !252, line: 676, baseType: !41, size: 64, offset: 768)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1690, file: !252, line: 677, baseType: !4155, size: 128, offset: 832)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1690, file: !252, line: 678, baseType: !4155, size: 128, offset: 960)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1690, file: !252, line: 679, baseType: !4155, size: 128, offset: 1088)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1690, file: !252, line: 680, baseType: !59, size: 32, offset: 1216)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1690, file: !252, line: 681, baseType: !26, size: 16, offset: 1248)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1690, file: !252, line: 682, baseType: !83, size: 8, offset: 1264)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1690, file: !252, line: 683, baseType: !83, size: 8, offset: 1272)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1690, file: !252, line: 684, baseType: !3871, size: 64, offset: 1280)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1690, file: !252, line: 691, baseType: !39, size: 64, offset: 1344)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1690, file: !252, line: 692, baseType: !758, size: 320, offset: 1408)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1690, file: !252, line: 694, baseType: !39, size: 64, offset: 1728)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1690, file: !252, line: 695, baseType: !39, size: 64, offset: 1792)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1690, file: !252, line: 697, baseType: !361, size: 128, offset: 1856)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1690, file: !252, line: 698, baseType: !97, size: 128, offset: 1984)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1690, file: !252, line: 707, baseType: !97, size: 128, offset: 2112)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1690, file: !252, line: 708, baseType: !97, size: 128, offset: 2240)
!4267 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !252, line: 709, baseType: !4268, size: 128, offset: 2368)
!4268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !252, line: 709, size: 128, elements: !4269)
!4269 = !{!4270, !4271}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4268, file: !252, line: 710, baseType: !357, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4268, file: !252, line: 711, baseType: !281, size: 128, align: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1690, file: !252, line: 713, baseType: !296, size: 64, offset: 2496)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1690, file: !252, line: 714, baseType: !296, size: 64, offset: 2560)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1690, file: !252, line: 715, baseType: !49, size: 32, offset: 2624)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1690, file: !252, line: 716, baseType: !49, size: 32, offset: 2656)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1690, file: !252, line: 717, baseType: !49, size: 32, offset: 2688)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1690, file: !252, line: 719, baseType: !49, size: 32, offset: 2720)
!4278 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !252, line: 721, baseType: !4279, size: 64, offset: 2752)
!4279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !252, line: 721, size: 64, elements: !4280)
!4280 = !{!4281, !4499}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4279, file: !252, line: 722, baseType: !4282, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4284)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !252, line: 1914, size: 2112, elements: !4285)
!4285 = !{!4286, !4287, !4291, !4295, !4299, !4377, !4378, !4384, !4397, !4413, !4417, !4418, !4422, !4423, !4427, !4432, !4433, !4437, !4441, !4447, !4448, !4452, !4453, !4459, !4463, !4467, !4472, !4476, !4480, !4484, !4488, !4489, !4495}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4284, file: !252, line: 1915, baseType: !1852, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4284, file: !252, line: 1916, baseType: !4288, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!41, !268, !41, !22}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4284, file: !252, line: 1917, baseType: !4292, size: 64, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!1935, !268, !999, !35, !40}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4284, file: !252, line: 1918, baseType: !4296, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!1935, !268, !16, !35, !40}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4284, file: !252, line: 1919, baseType: !4300, size: 64, offset: 256)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!1935, !4303, !4325}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !252, line: 373, size: 384, elements: !4305)
!4305 = !{!4306, !4307, !4308, !4312, !4313, !4314, !4315}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4304, file: !252, line: 374, baseType: !268, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4304, file: !252, line: 375, baseType: !41, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4304, file: !252, line: 376, baseType: !4309, size: 64, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{null, !4303, !840}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4304, file: !252, line: 377, baseType: !20, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4304, file: !252, line: 378, baseType: !22, size: 32, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4304, file: !252, line: 379, baseType: !93, size: 16, offset: 288)
!4315 = !DIDerivedType(tag: DW_TAG_member, scope: !4304, file: !252, line: 380, baseType: !4316, size: 64, offset: 320)
!4316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4304, file: !252, line: 380, size: 64, elements: !4317)
!4317 = !{!4318, !4321}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4316, file: !252, line: 386, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !252, line: 386, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4316, file: !252, line: 395, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!1935, !20}
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !4327, line: 41, size: 320, elements: !4328)
!4327 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334, !4339, !4372}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !4326, file: !4327, line: 42, baseType: !83, size: 8)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !4326, file: !4327, line: 43, baseType: !922, size: 8, offset: 8)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !4326, file: !4327, line: 44, baseType: !922, size: 8, offset: 16)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !4326, file: !4327, line: 45, baseType: !922, size: 8, offset: 24)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !4326, file: !4327, line: 46, baseType: !922, size: 8, offset: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, scope: !4326, file: !4327, line: 47, baseType: !4335, size: 64, offset: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4326, file: !4327, line: 47, size: 64, elements: !4336)
!4336 = !{!4337, !4338}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !4335, file: !4327, line: 48, baseType: !35, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !4335, file: !4327, line: 49, baseType: !22, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, scope: !4326, file: !4327, line: 61, baseType: !4340, size: 128, offset: 128)
!4340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4326, file: !4327, line: 61, size: 128, elements: !4341)
!4341 = !{!4342, !4348}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !4340, file: !4327, line: 67, baseType: !4343, size: 128)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !4344, line: 17, size: 128, elements: !4345)
!4344 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!4345 = !{!4346, !4347}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !4343, file: !4344, line: 19, baseType: !20, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !4343, file: !4344, line: 20, baseType: !36, size: 64, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, scope: !4340, file: !4327, line: 68, baseType: !4349, size: 128)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4340, file: !4327, line: 68, size: 128, elements: !4350)
!4350 = !{!4351, !4371}
!4351 = !DIDerivedType(tag: DW_TAG_member, scope: !4349, file: !4327, line: 69, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4349, file: !4327, line: 69, size: 64, elements: !4353)
!4353 = !{!4354, !4357, !4364, !4368, !4370}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !4352, file: !4327, line: 71, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4343)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !4352, file: !4327, line: 72, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4360)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !4327, line: 17, size: 128, elements: !4361)
!4361 = !{!4362, !4363}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !4360, file: !4327, line: 18, baseType: !20, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !4360, file: !4327, line: 19, baseType: !35, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !4352, file: !4327, line: 73, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4367)
!4367 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !4327, line: 73, flags: DIFlagFwdDecl)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !4352, file: !4327, line: 74, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !4352, file: !4327, line: 75, baseType: !20, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4349, file: !4327, line: 77, baseType: !35, size: 64, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, scope: !4326, file: !4327, line: 80, baseType: !4373, size: 64, offset: 256)
!4373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4326, file: !4327, line: 80, size: 64, elements: !4374)
!4374 = !{!4375, !4376}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !4373, file: !4327, line: 81, baseType: !39, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !4373, file: !4327, line: 82, baseType: !41, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4284, file: !252, line: 1920, baseType: !4300, size: 64, offset: 320)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4284, file: !252, line: 1921, baseType: !4379, size: 64, offset: 384)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!22, !4303, !4382, !7}
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !252, line: 53, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4284, file: !252, line: 1923, baseType: !4385, size: 64, offset: 448)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!22, !268, !4388}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !252, line: 1858, size: 128, elements: !4390)
!4390 = !{!4391, !4396}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4389, file: !252, line: 1859, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !252, line: 1855, baseType: !4393)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!922, !4388, !16, !22, !41, !457, !7}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4389, file: !252, line: 1860, baseType: !41, size: 64, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4284, file: !252, line: 1924, baseType: !4398, size: 64, offset: 512)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!4401, !268, !4403}
!4401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4402, line: 59, baseType: !7)
!4402 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !4405, line: 37, size: 128, elements: !4406)
!4405 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!4406 = !{!4407, !4412}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !4404, file: !4405, line: 38, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !4405, line: 31, baseType: !4409)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{null, !268, !4065, !4403}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !4404, file: !4405, line: 39, baseType: !4401, size: 32, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4284, file: !252, line: 1925, baseType: !4414, size: 64, offset: 576)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!840, !268, !7, !39}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4284, file: !252, line: 1926, baseType: !4414, size: 64, offset: 640)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4284, file: !252, line: 1927, baseType: !4419, size: 64, offset: 704)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!22, !268, !1556}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4284, file: !252, line: 1928, baseType: !39, size: 64, offset: 768)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4284, file: !252, line: 1929, baseType: !4424, size: 64, offset: 832)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!22, !1689, !268}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4284, file: !252, line: 1930, baseType: !4428, size: 64, offset: 896)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!22, !268, !4431}
!4431 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !252, line: 1061, baseType: !20)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4284, file: !252, line: 1931, baseType: !4424, size: 64, offset: 960)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4284, file: !252, line: 1932, baseType: !4434, size: 64, offset: 1024)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!22, !268, !41, !41, !22}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4284, file: !252, line: 1933, baseType: !4438, size: 64, offset: 1088)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!22, !22, !268, !22}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4284, file: !252, line: 1934, baseType: !4442, size: 64, offset: 1152)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!22, !268, !22, !4445}
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !252, line: 1063, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4284, file: !252, line: 1935, baseType: !728, size: 64, offset: 1216)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4284, file: !252, line: 1936, baseType: !4449, size: 64, offset: 1280)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!22, !22}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4284, file: !252, line: 1937, baseType: !4442, size: 64, offset: 1344)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4284, file: !252, line: 1938, baseType: !4454, size: 64, offset: 1408)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!1935, !4457, !268, !40, !35, !7}
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !400, line: 59, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4284, file: !252, line: 1939, baseType: !4460, size: 64, offset: 1472)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!1935, !268, !40, !4457, !35, !7}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4284, file: !252, line: 1940, baseType: !4464, size: 64, offset: 1536)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !268}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4284, file: !252, line: 1941, baseType: !4468, size: 64, offset: 1600)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!22, !268, !22, !4471, !3064}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4284, file: !252, line: 1942, baseType: !4473, size: 64, offset: 1664)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!840, !268, !22, !41, !41}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4284, file: !252, line: 1944, baseType: !4477, size: 64, offset: 1728)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{null, !1499, !268}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4284, file: !252, line: 1948, baseType: !4481, size: 64, offset: 1792)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!1935, !268, !41, !268, !41, !35, !7}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4284, file: !252, line: 1950, baseType: !4485, size: 64, offset: 1856)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!41, !268, !41, !268, !41, !41, !7}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4284, file: !252, line: 1953, baseType: !4434, size: 64, offset: 1920)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4284, file: !252, line: 1954, baseType: !4490, size: 64, offset: 1984)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!22, !4493, !7}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !252, line: 1911, flags: DIFlagFwdDecl)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4284, file: !252, line: 1955, baseType: !4496, size: 64, offset: 2048)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!22, !4493, !4382, !7}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4279, file: !252, line: 723, baseType: !3601, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1690, file: !252, line: 725, baseType: !4501, size: 64, offset: 2816)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !252, line: 725, flags: DIFlagFwdDecl)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1690, file: !252, line: 726, baseType: !1686, size: 1536, align: 64, offset: 2880)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1690, file: !252, line: 727, baseType: !97, size: 128, offset: 4416)
!4505 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !252, line: 728, baseType: !4506, size: 64, offset: 4544)
!4506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !252, line: 728, size: 64, elements: !4507)
!4507 = !{!4508, !4509, !4512, !4513}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4506, file: !252, line: 729, baseType: !4457, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4506, file: !252, line: 730, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !252, line: 730, flags: DIFlagFwdDecl)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4506, file: !252, line: 731, baseType: !999, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4506, file: !252, line: 732, baseType: !7, size: 32)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1690, file: !252, line: 735, baseType: !410, size: 32, offset: 4608)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1690, file: !252, line: 738, baseType: !410, size: 32, offset: 4640)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1690, file: !252, line: 739, baseType: !3979, size: 64, offset: 4672)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1690, file: !252, line: 750, baseType: !20, size: 64, offset: 4736)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1686, file: !252, line: 474, baseType: !386, size: 128, offset: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1686, file: !252, line: 475, baseType: !758, size: 320, offset: 192)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1686, file: !252, line: 476, baseType: !391, size: 32, offset: 512)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1686, file: !252, line: 477, baseType: !49, size: 32, offset: 544)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1686, file: !252, line: 482, baseType: !586, size: 128, offset: 576)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1686, file: !252, line: 483, baseType: !39, size: 64, offset: 704)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1686, file: !252, line: 484, baseType: !39, size: 64, offset: 768)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1686, file: !252, line: 485, baseType: !4526, size: 64, offset: 832)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4528)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !252, line: 404, size: 1280, elements: !4529)
!4529 = !{!4530, !4534, !4604, !4608, !4612, !4618, !4623, !4627, !4632, !4636, !4640, !4644, !4645, !4649, !4653, !4657, !4662, !4666, !4673, !4674}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4528, file: !252, line: 405, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!22, !1663, !3613}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4528, file: !252, line: 406, baseType: !4535, size: 64, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!22, !268, !4538}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !114, line: 293, size: 1536, elements: !4540)
!4540 = !{!4541, !4571, !4585}
!4541 = !DIDerivedType(tag: DW_TAG_member, scope: !4539, file: !114, line: 295, baseType: !4542, size: 512)
!4542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4539, file: !114, line: 295, size: 512, elements: !4543)
!4543 = !{!4544, !4570}
!4544 = !DIDerivedType(tag: DW_TAG_member, scope: !4542, file: !114, line: 296, baseType: !4545, size: 448)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4542, file: !114, line: 296, size: 448, elements: !4546)
!4546 = !{!4547, !4548, !4557, !4558, !4559, !4568, !4569}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4545, file: !114, line: 298, baseType: !39, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, scope: !4545, file: !114, line: 299, baseType: !4549, size: 128, offset: 64)
!4549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4545, file: !114, line: 299, size: 128, elements: !4550)
!4550 = !{!4551, !4552}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4549, file: !114, line: 300, baseType: !97, size: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, scope: !4549, file: !114, line: 302, baseType: !4553, size: 128)
!4553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4549, file: !114, line: 302, size: 128, elements: !4554)
!4554 = !{!4555, !4556}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4553, file: !114, line: 303, baseType: !20, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4553, file: !114, line: 305, baseType: !7, size: 32, offset: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4545, file: !114, line: 310, baseType: !1685, size: 64, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4545, file: !114, line: 311, baseType: !39, size: 64, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_member, scope: !4545, file: !114, line: 312, baseType: !4560, size: 64, offset: 320)
!4560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4545, file: !114, line: 312, size: 64, elements: !4561)
!4561 = !{!4562, !4563}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4560, file: !114, line: 313, baseType: !20, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4560, file: !114, line: 314, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !114, line: 257, baseType: !4565)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 255, size: 64, elements: !4566)
!4566 = !{!4567}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4565, file: !114, line: 256, baseType: !39, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4545, file: !114, line: 316, baseType: !49, size: 32, offset: 384)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4545, file: !114, line: 317, baseType: !49, size: 32, offset: 416)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4542, file: !114, line: 323, baseType: !1664, size: 512, align: 128)
!4571 = !DIDerivedType(tag: DW_TAG_member, scope: !4539, file: !114, line: 325, baseType: !4572, size: 512, offset: 512)
!4572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4539, file: !114, line: 325, size: 512, elements: !4573)
!4573 = !{!4574, !4584}
!4574 = !DIDerivedType(tag: DW_TAG_member, scope: !4572, file: !114, line: 326, baseType: !4575, size: 320)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4572, file: !114, line: 326, size: 320, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580, !4581, !4582, !4583}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4575, file: !114, line: 327, baseType: !39, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4575, file: !114, line: 328, baseType: !39, size: 64, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4575, file: !114, line: 329, baseType: !39, size: 64, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4575, file: !114, line: 331, baseType: !49, size: 32, offset: 192)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4575, file: !114, line: 332, baseType: !49, size: 32, offset: 224)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4575, file: !114, line: 333, baseType: !49, size: 32, offset: 256)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4575, file: !114, line: 335, baseType: !7, size: 32, offset: 288)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4572, file: !114, line: 339, baseType: !1664, size: 512, align: 128)
!4585 = !DIDerivedType(tag: DW_TAG_member, scope: !4539, file: !114, line: 341, baseType: !4586, size: 512, offset: 1024)
!4586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4539, file: !114, line: 341, size: 512, elements: !4587)
!4587 = !{!4588, !4597, !4603}
!4588 = !DIDerivedType(tag: DW_TAG_member, scope: !4586, file: !114, line: 342, baseType: !4589, size: 384)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4586, file: !114, line: 342, size: 384, elements: !4590)
!4590 = !{!4591, !4592, !4593, !4594, !4595, !4596}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4589, file: !114, line: 343, baseType: !39, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4589, file: !114, line: 344, baseType: !39, size: 64, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4589, file: !114, line: 346, baseType: !20, size: 64, offset: 128)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4589, file: !114, line: 347, baseType: !20, size: 64, offset: 192)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4589, file: !114, line: 348, baseType: !20, size: 64, offset: 256)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4589, file: !114, line: 349, baseType: !20, size: 64, offset: 320)
!4597 = !DIDerivedType(tag: DW_TAG_member, scope: !4586, file: !114, line: 352, baseType: !4598, size: 256)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4586, file: !114, line: 352, size: 256, elements: !4599)
!4599 = !{!4600, !4601, !4602}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4598, file: !114, line: 353, baseType: !39, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4598, file: !114, line: 354, baseType: !39, size: 64, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4598, file: !114, line: 356, baseType: !97, size: 128, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4586, file: !114, line: 359, baseType: !1664, size: 512, align: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4528, file: !252, line: 409, baseType: !4605, size: 64, offset: 128)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!22, !1685, !3613}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4528, file: !252, line: 412, baseType: !4609, size: 64, offset: 192)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!922, !1685, !4538}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4528, file: !252, line: 414, baseType: !4613, size: 64, offset: 256)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !4616}
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !252, line: 310, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4528, file: !252, line: 416, baseType: !4619, size: 64, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!22, !268, !1685, !41, !7, !4622, !3064}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4528, file: !252, line: 419, baseType: !4624, size: 64, offset: 384)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!22, !268, !1685, !41, !7, !7, !1663, !20}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4528, file: !252, line: 424, baseType: !4628, size: 64, offset: 448)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!4631, !1685, !4631}
!4631 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !457)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4528, file: !252, line: 425, baseType: !4633, size: 64, offset: 512)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{null, !4538, !35, !35}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4528, file: !252, line: 426, baseType: !4637, size: 64, offset: 576)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!922, !4538, !391}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4528, file: !252, line: 427, baseType: !4641, size: 64, offset: 640)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{null, !4538}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4528, file: !252, line: 428, baseType: !4300, size: 64, offset: 704)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4528, file: !252, line: 433, baseType: !4646, size: 64, offset: 768)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!22, !1685, !4538, !4538, !129}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4528, file: !252, line: 435, baseType: !4650, size: 64, offset: 832)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!22, !4538}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4528, file: !252, line: 436, baseType: !4654, size: 64, offset: 896)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!922, !4538, !35, !35}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4528, file: !252, line: 438, baseType: !4658, size: 64, offset: 960)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{null, !4538, !4661, !4661}
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4528, file: !252, line: 439, baseType: !4663, size: 64, offset: 1024)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!22, !1685, !1663}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4528, file: !252, line: 442, baseType: !4667, size: 64, offset: 1088)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!22, !4670, !268, !4672}
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !252, line: 66, flags: DIFlagFwdDecl)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4528, file: !252, line: 444, baseType: !4464, size: 64, offset: 1152)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4528, file: !252, line: 445, baseType: !4675, size: 64, offset: 1216)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!22, !4303, !4325}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !252, line: 486, baseType: !39, size: 64, offset: 896)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1686, file: !252, line: 487, baseType: !758, size: 320, offset: 960)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1686, file: !252, line: 488, baseType: !4013, size: 32, offset: 1280)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1686, file: !252, line: 489, baseType: !59, size: 32, offset: 1312)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1686, file: !252, line: 490, baseType: !97, size: 128, offset: 1344)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1686, file: !252, line: 491, baseType: !20, size: 64, offset: 1472)
!4684 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !114, line: 107, baseType: !4685, size: 64, offset: 192)
!4685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !114, line: 107, size: 64, elements: !4686)
!4686 = !{!4687, !4688}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4685, file: !114, line: 108, baseType: !39, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4685, file: !114, line: 109, baseType: !39, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1671, file: !114, line: 117, baseType: !39, size: 64, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !114, line: 119, baseType: !4691, size: 320)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !114, line: 119, size: 320, elements: !4692)
!4692 = !{!4693, !4694, !4697, !4698, !4699}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4691, file: !114, line: 124, baseType: !39, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4691, file: !114, line: 125, baseType: !4695, size: 64, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !114, line: 125, flags: DIFlagFwdDecl)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4691, file: !114, line: 126, baseType: !39, size: 64, offset: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4691, file: !114, line: 127, baseType: !39, size: 64, offset: 192)
!4699 = !DIDerivedType(tag: DW_TAG_member, scope: !4691, file: !114, line: 128, baseType: !4700, size: 64, offset: 256)
!4700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4691, file: !114, line: 128, size: 64, elements: !4701)
!4701 = !{!4702, !4703}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4700, file: !114, line: 133, baseType: !39, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4700, file: !114, line: 138, baseType: !294, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !114, line: 141, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !114, line: 141, size: 64, elements: !4706)
!4706 = !{!4707}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4705, file: !114, line: 142, baseType: !39, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !114, line: 144, baseType: !4709, size: 128)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !114, line: 144, size: 128, elements: !4710)
!4710 = !{!4711, !4782}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4709, file: !114, line: 146, baseType: !4712, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !137, line: 126, size: 1216, elements: !4714)
!4714 = !{!4715, !4725, !4746, !4747, !4748, !4749, !4750, !4764, !4765, !4766}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4713, file: !137, line: 127, baseType: !4716, size: 384)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !137, line: 21, size: 384, elements: !4717)
!4717 = !{!4718, !4719, !4721, !4722, !4723, !4724}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4716, file: !137, line: 22, baseType: !39, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4716, file: !137, line: 23, baseType: !4720, size: 64, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4716, file: !137, line: 24, baseType: !4720, size: 64, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4716, file: !137, line: 25, baseType: !39, size: 64, offset: 192)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4716, file: !137, line: 26, baseType: !39, size: 64, offset: 256)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4716, file: !137, line: 27, baseType: !39, size: 64, offset: 320)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4713, file: !137, line: 128, baseType: !4726, size: 128, offset: 384)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4727, line: 105, size: 128, elements: !4728)
!4727 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4728 = !{!4729, !4730}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4726, file: !4727, line: 110, baseType: !39, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4726, file: !4727, line: 118, baseType: !4731, size: 64, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4727, line: 95, size: 448, elements: !4733)
!4733 = !{!4734, !4735, !4741, !4742, !4743, !4744, !4745}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4732, file: !4727, line: 96, baseType: !294, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4732, file: !4727, line: 97, baseType: !4736, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4727, line: 60, baseType: !4738)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{null, !4740}
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4732, file: !4727, line: 98, baseType: !4736, size: 64, offset: 128)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4732, file: !4727, line: 99, baseType: !922, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4732, file: !4727, line: 100, baseType: !922, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4732, file: !4727, line: 101, baseType: !281, size: 128, align: 64, offset: 256)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4732, file: !4727, line: 102, baseType: !4740, size: 64, offset: 384)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4713, file: !137, line: 129, baseType: !1077, size: 256, offset: 512)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4713, file: !137, line: 130, baseType: !136, size: 32, offset: 768)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4713, file: !137, line: 131, baseType: !7, size: 32, offset: 800)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4713, file: !137, line: 132, baseType: !39, size: 64, offset: 832)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4713, file: !137, line: 133, baseType: !4751, size: 64, offset: 896)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4753)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !137, line: 77, size: 192, elements: !4754)
!4754 = !{!4755, !4759, !4760}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4753, file: !137, line: 83, baseType: !4756, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{null, !1663}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4753, file: !137, line: 89, baseType: !1622, size: 64, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4753, file: !137, line: 100, baseType: !4761, size: 64, offset: 128)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!22, !4712, !39, !39, !22}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4713, file: !137, line: 134, baseType: !20, size: 64, offset: 960)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4713, file: !137, line: 135, baseType: !22, size: 32, offset: 1024)
!4766 = !DIDerivedType(tag: DW_TAG_member, scope: !4713, file: !137, line: 136, baseType: !4767, size: 128, offset: 1088)
!4767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4713, file: !137, line: 136, size: 128, elements: !4768)
!4768 = !{!4769, !4775}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4767, file: !137, line: 137, baseType: !4770, size: 128)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4771, line: 6, size: 128, elements: !4772)
!4771 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4772 = !{!4773, !4774}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4770, file: !4771, line: 7, baseType: !457, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4770, file: !4771, line: 8, baseType: !457, size: 64, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, scope: !4767, file: !137, line: 138, baseType: !4776)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4767, file: !137, line: 138, elements: !4777)
!4777 = !{!4778, !4780}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4776, file: !137, line: 138, baseType: !4779)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4776, file: !137, line: 138, elements: !724)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4776, file: !137, line: 138, baseType: !4781)
!4781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4770, elements: !1154)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4709, file: !114, line: 147, baseType: !20, size: 64, offset: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1668, file: !114, line: 161, baseType: !281, size: 128, align: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !114, line: 164, baseType: !4785, size: 32, offset: 384)
!4785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1664, file: !114, line: 164, size: 32, elements: !4786)
!4786 = !{!4787, !4788}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4785, file: !114, line: 169, baseType: !49, size: 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4785, file: !114, line: 177, baseType: !7, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1664, file: !114, line: 181, baseType: !49, size: 32, offset: 416)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1627, file: !1550, line: 535, baseType: !1663, size: 64, offset: 640)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1627, file: !1550, line: 541, baseType: !4792, size: 64, offset: 704)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1627, file: !1550, line: 545, baseType: !4794, size: 64, offset: 768)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1627, file: !1550, line: 549, baseType: !4796, size: 64, offset: 832)
!4796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !739, line: 520, baseType: !1663)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1549, file: !1550, line: 581, baseType: !4798, size: 64, offset: 384)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!1625, !1626, !7}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1549, file: !1550, line: 582, baseType: !4802, size: 64, offset: 448)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!1625, !1626, !39, !39}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1549, file: !1550, line: 584, baseType: !4806, size: 64, offset: 512)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!39, !1556}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1549, file: !1550, line: 588, baseType: !1622, size: 64, offset: 576)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1549, file: !1550, line: 591, baseType: !1622, size: 64, offset: 640)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1549, file: !1550, line: 597, baseType: !4812, size: 64, offset: 704)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!22, !1556, !39, !20, !22, !22}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1549, file: !1550, line: 603, baseType: !4816, size: 64, offset: 768)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!16, !1556}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1549, file: !1550, line: 613, baseType: !4820, size: 64, offset: 832)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!22, !1556, !1604}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1549, file: !1550, line: 625, baseType: !4824, size: 64, offset: 896)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!1604, !1556, !39}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1549, file: !1550, line: 633, baseType: !4828, size: 64, offset: 960)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!1663, !1556, !39}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1487, file: !1456, line: 277, baseType: !4832, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{null, !1493}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1487, file: !1456, line: 290, baseType: !1529, size: 64, offset: 128)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1487, file: !1456, line: 292, baseType: !1517, size: 64, offset: 192)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1487, file: !1456, line: 293, baseType: !1525, size: 64, offset: 256)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1487, file: !1456, line: 294, baseType: !1521, size: 64, offset: 320)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1487, file: !1456, line: 296, baseType: !4840, size: 64, offset: 384)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!1935, !1493, !999, !35, !41}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1487, file: !1456, line: 306, baseType: !35, size: 64, offset: 448)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1487, file: !1456, line: 313, baseType: !922, size: 8, offset: 512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1487, file: !1456, line: 314, baseType: !4840, size: 64, offset: 576)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1487, file: !1456, line: 317, baseType: !4847, size: 64, offset: 640)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!4401, !1493, !4403}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1487, file: !1456, line: 320, baseType: !4851, size: 64, offset: 704)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!22, !1493, !1556}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1482, file: !1456, line: 176, baseType: !4855, size: 64, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1456, line: 35, flags: DIFlagFwdDecl)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1482, file: !1456, line: 177, baseType: !41, size: 64, offset: 128)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1482, file: !1456, line: 178, baseType: !1454, size: 64, offset: 192)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1455, file: !1456, line: 215, baseType: !20, size: 64, offset: 768)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1455, file: !1456, line: 221, baseType: !457, size: 64, offset: 832)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !1456, line: 223, baseType: !26, size: 16, offset: 896)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1455, file: !1456, line: 224, baseType: !24, size: 16, offset: 912)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1455, file: !1456, line: 225, baseType: !4864, size: 64, offset: 960)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1456, line: 36, flags: DIFlagFwdDecl)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1455, file: !1456, line: 227, baseType: !281, size: 128, align: 64, offset: 1024)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1439, file: !1430, line: 442, baseType: !4868, size: 448, offset: 2048)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1430, line: 138, size: 448, elements: !4869)
!4869 = !{!4870, !4871, !4872}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4868, file: !1430, line: 140, baseType: !1454, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4868, file: !1430, line: 141, baseType: !39, size: 64, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4868, file: !1430, line: 142, baseType: !2275, size: 320, offset: 128)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1439, file: !1430, line: 443, baseType: !4868, size: 448, offset: 2496)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1439, file: !1430, line: 446, baseType: !4875, offset: 2944)
!4875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4868, elements: !4876)
!4876 = !{!4877}
!4877 = !DISubrange(count: 0)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1439, file: !1430, line: 455, baseType: !93, size: 16, offset: 2944)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1439, file: !1430, line: 456, baseType: !93, size: 16, offset: 2960)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1439, file: !1430, line: 457, baseType: !93, size: 16, offset: 2976)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1439, file: !1430, line: 458, baseType: !93, size: 16, offset: 2992)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1439, file: !1430, line: 461, baseType: !1433, size: 896, offset: 3008)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1439, file: !1430, line: 463, baseType: !4884, size: 64, offset: 3904)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1430, line: 537, size: 41664, elements: !4886)
!4886 = !{!4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4885, file: !1430, line: 538, baseType: !1474, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4885, file: !1430, line: 541, baseType: !7, size: 32, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4885, file: !1430, line: 544, baseType: !22, size: 32, offset: 96)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4885, file: !1430, line: 547, baseType: !97, size: 128, offset: 128)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4885, file: !1430, line: 548, baseType: !281, size: 128, align: 64, offset: 256)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4885, file: !1430, line: 555, baseType: !1439, size: 7872, offset: 384)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4885, file: !1430, line: 558, baseType: !1438, size: 64, offset: 8256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4885, file: !1430, line: 561, baseType: !49, size: 32, offset: 8320)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4885, file: !1430, line: 564, baseType: !7, size: 32, offset: 8352)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4885, file: !1430, line: 567, baseType: !2504, size: 32768, offset: 8384)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4885, file: !1430, line: 570, baseType: !4898, size: 512, offset: 41152)
!4898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1908)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1439, file: !1430, line: 469, baseType: !97, size: 128, offset: 3968)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1439, file: !1430, line: 478, baseType: !4901, size: 1792, offset: 4096)
!4901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1792, elements: !4902)
!4902 = !{!4903}
!4903 = !DISubrange(count: 14)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1439, file: !1430, line: 487, baseType: !1438, size: 64, offset: 5888)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1439, file: !1430, line: 488, baseType: !1438, size: 64, offset: 5952)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1439, file: !1430, line: 491, baseType: !4907, size: 64, offset: 6016)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1430, line: 327, size: 896, elements: !4909)
!4909 = !{!4910, !4913, !4923, !4924, !4925, !4926, !4927}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4908, file: !1430, line: 332, baseType: !4911)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4912, line: 64, elements: !724)
!4912 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4908, file: !1430, line: 333, baseType: !4914, size: 192)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1430, line: 299, size: 192, elements: !4915)
!4915 = !{!4916}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4914, file: !1430, line: 300, baseType: !4917, size: 192)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4918, line: 17, size: 192, elements: !4919)
!4918 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4919 = !{!4920, !4921, !4922}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4917, file: !4918, line: 18, baseType: !457, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4917, file: !4918, line: 19, baseType: !457, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4917, file: !4918, line: 20, baseType: !459, size: 64, offset: 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4908, file: !1430, line: 339, baseType: !4914, size: 192, offset: 192)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4908, file: !1430, line: 347, baseType: !4914, size: 192, offset: 384)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4908, file: !1430, line: 353, baseType: !4914, size: 192, offset: 576)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4908, file: !1430, line: 366, baseType: !1438, size: 64, offset: 768)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4908, file: !1430, line: 367, baseType: !1438, size: 64, offset: 832)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1439, file: !1430, line: 492, baseType: !97, size: 128, offset: 6080)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1439, file: !1430, line: 495, baseType: !4914, size: 192, offset: 6208)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1439, file: !1430, line: 496, baseType: !4914, size: 192, offset: 6400)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1439, file: !1430, line: 497, baseType: !1266, size: 192, offset: 6592)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1439, file: !1430, line: 503, baseType: !97, size: 128, offset: 6784)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1439, file: !1430, line: 504, baseType: !303, size: 256, offset: 6912)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1439, file: !1430, line: 507, baseType: !54, size: 192, offset: 7168)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1439, file: !1430, line: 510, baseType: !1038, size: 256, offset: 7360)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1439, file: !1430, line: 513, baseType: !4937, size: 64, offset: 7616)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4939, line: 214, elements: !724)
!4939 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1439, file: !1430, line: 516, baseType: !4941, offset: 7680)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4942, line: 76, elements: !724)
!4942 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1439, file: !1430, line: 519, baseType: !49, size: 32, offset: 7680)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1439, file: !1430, line: 522, baseType: !4945, size: 128, offset: 7712)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1430, line: 370, size: 128, elements: !4946)
!4946 = !{!4947, !4948, !4949, !4950}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4945, file: !1430, line: 372, baseType: !922, size: 8)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4945, file: !1430, line: 375, baseType: !22, size: 32, offset: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4945, file: !1430, line: 380, baseType: !22, size: 32, offset: 64)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4945, file: !1430, line: 386, baseType: !22, size: 32, offset: 96)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1439, file: !1430, line: 529, baseType: !4952, offset: 7872)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1438, elements: !1154)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1435, file: !1430, line: 157, baseType: !4954, size: 64, offset: 64)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1430, line: 669, size: 1984, elements: !4956)
!4956 = !{!4957, !4961, !4965, !4969, !4970, !4971, !4972, !4976, !4980, !4981, !4987, !4991, !4992, !4993, !4997, !5001, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5054, !5055}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4955, file: !1430, line: 670, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!1434, !1434}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4955, file: !1430, line: 671, baseType: !4962, size: 64, offset: 64)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!22, !1434}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4955, file: !1430, line: 672, baseType: !4966, size: 64, offset: 128)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{null, !1434}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4955, file: !1430, line: 673, baseType: !4966, size: 64, offset: 192)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4955, file: !1430, line: 674, baseType: !4966, size: 64, offset: 256)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4955, file: !1430, line: 675, baseType: !4966, size: 64, offset: 320)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4955, file: !1430, line: 676, baseType: !4973, size: 64, offset: 384)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{null, !1434, !22}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4955, file: !1430, line: 677, baseType: !4977, size: 64, offset: 448)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!22, !1499, !1434}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4955, file: !1430, line: 679, baseType: !4977, size: 64, offset: 512)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4955, file: !1430, line: 682, baseType: !4982, size: 64, offset: 576)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!22, !4985}
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1430, line: 30, flags: DIFlagFwdDecl)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4955, file: !1430, line: 683, baseType: !4988, size: 64, offset: 640)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{null, !4985}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4955, file: !1430, line: 684, baseType: !4988, size: 64, offset: 704)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4955, file: !1430, line: 685, baseType: !2449, size: 64, offset: 768)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4955, file: !1430, line: 686, baseType: !4994, size: 64, offset: 832)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!22, !398, !1428}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4955, file: !1430, line: 688, baseType: !4998, size: 64, offset: 896)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{null, !398, !1428}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4955, file: !1430, line: 689, baseType: !5002, size: 64, offset: 960)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{null, !398}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4955, file: !1430, line: 690, baseType: !5002, size: 64, offset: 1024)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4955, file: !1430, line: 691, baseType: !5002, size: 64, offset: 1088)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4955, file: !1430, line: 692, baseType: !4966, size: 64, offset: 1152)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4955, file: !1430, line: 694, baseType: !922, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4955, file: !1430, line: 707, baseType: !922, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4955, file: !1430, line: 719, baseType: !922, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4955, file: !1430, line: 722, baseType: !22, size: 32, offset: 1248)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4955, file: !1430, line: 723, baseType: !16, size: 64, offset: 1280)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4955, file: !1430, line: 726, baseType: !16, size: 64, offset: 1344)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4955, file: !1430, line: 729, baseType: !4884, size: 64, offset: 1408)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4955, file: !1430, line: 732, baseType: !382, size: 192, offset: 1472)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4955, file: !1430, line: 738, baseType: !97, size: 128, offset: 1664)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4955, file: !1430, line: 744, baseType: !5018, size: 64, offset: 1792)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1430, line: 580, size: 1728, elements: !5020)
!5020 = !{!5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5030, !5031, !5032, !5036, !5040, !5041, !5042, !5043, !5044, !5048, !5052, !5053}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5019, file: !1430, line: 586, baseType: !4898, size: 512)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5019, file: !1430, line: 587, baseType: !39, size: 64, offset: 512)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5019, file: !1430, line: 593, baseType: !35, size: 64, offset: 576)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5019, file: !1430, line: 596, baseType: !7, size: 32, offset: 640)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !5019, file: !1430, line: 604, baseType: !7, size: 32, offset: 672)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5019, file: !1430, line: 610, baseType: !4954, size: 64, offset: 704)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5019, file: !1430, line: 611, baseType: !97, size: 128, offset: 768)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !5019, file: !1430, line: 612, baseType: !5029, size: 64, offset: 896)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5019, file: !1430, line: 614, baseType: !1490, size: 64, offset: 960)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5019, file: !1430, line: 615, baseType: !4832, size: 64, offset: 1024)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !5019, file: !1430, line: 621, baseType: !5033, size: 64, offset: 1088)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!457, !1434, !5018}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !5019, file: !1430, line: 625, baseType: !5037, size: 64, offset: 1152)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!300, !1434, !5018}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5019, file: !1430, line: 628, baseType: !1529, size: 64, offset: 1216)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5019, file: !1430, line: 631, baseType: !1517, size: 64, offset: 1280)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5019, file: !1430, line: 632, baseType: !1525, size: 64, offset: 1344)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5019, file: !1430, line: 633, baseType: !1521, size: 64, offset: 1408)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !5019, file: !1430, line: 640, baseType: !5045, size: 64, offset: 1472)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!22, !1434, !5018, !457}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !5019, file: !1430, line: 645, baseType: !5049, size: 64, offset: 1536)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!22, !1434, !5018, !300}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5019, file: !1430, line: 654, baseType: !4840, size: 64, offset: 1600)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5019, file: !1430, line: 657, baseType: !4847, size: 64, offset: 1664)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4955, file: !1430, line: 745, baseType: !5018, size: 64, offset: 1856)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4955, file: !1430, line: 754, baseType: !7, size: 32, offset: 1920)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1435, file: !1430, line: 160, baseType: !4726, size: 128, offset: 128)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1435, file: !1430, line: 163, baseType: !97, size: 128, offset: 256)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1435, file: !1430, line: 164, baseType: !97, size: 128, offset: 384)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1435, file: !1430, line: 167, baseType: !97, size: 128, offset: 512)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1435, file: !1430, line: 173, baseType: !22, size: 32, offset: 640)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1430, line: 175, baseType: !7, size: 32, offset: 672)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1435, file: !1430, line: 183, baseType: !457, size: 64, offset: 704)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1435, file: !1430, line: 189, baseType: !49, size: 32, offset: 768)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1435, file: !1430, line: 192, baseType: !1038, size: 256, offset: 832)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1435, file: !1430, line: 193, baseType: !5066, size: 448, offset: 1088)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1039, line: 120, size: 448, elements: !5067)
!5067 = !{!5068, !5069, !5070}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5066, file: !1039, line: 121, baseType: !1038, size: 256)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5066, file: !1039, line: 122, baseType: !281, size: 128, align: 64, offset: 256)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5066, file: !1039, line: 125, baseType: !2337, size: 64, offset: 384)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1435, file: !1430, line: 199, baseType: !1434, size: 64, offset: 1536)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1429, file: !1430, line: 218, baseType: !348, size: 32, offset: 896)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1429, file: !1430, line: 226, baseType: !1428, size: 64, offset: 960)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1429, file: !1430, line: 229, baseType: !1438, size: 64, offset: 1024)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1429, file: !1430, line: 232, baseType: !22, size: 32, offset: 1088)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1429, file: !1430, line: 241, baseType: !97, size: 128, offset: 1152)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1429, file: !1430, line: 242, baseType: !97, size: 128, offset: 1280)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1429, file: !1430, line: 243, baseType: !97, size: 128, offset: 1408)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1429, file: !1430, line: 246, baseType: !97, size: 128, offset: 1536)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1429, file: !1430, line: 255, baseType: !4901, size: 1792, offset: 1664)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1429, file: !1430, line: 258, baseType: !97, size: 128, offset: 3456)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1429, file: !1430, line: 259, baseType: !97, size: 128, offset: 3584)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1429, file: !1430, line: 265, baseType: !361, size: 128, offset: 3712)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1429, file: !1430, line: 271, baseType: !97, size: 128, offset: 3840)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1429, file: !1430, line: 277, baseType: !97, size: 128, offset: 3968)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1429, file: !1430, line: 278, baseType: !97, size: 128, offset: 4096)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1429, file: !1430, line: 279, baseType: !97, size: 128, offset: 4224)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1429, file: !1430, line: 288, baseType: !1438, size: 64, offset: 4352)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1429, file: !1430, line: 289, baseType: !1438, size: 64, offset: 4416)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1429, file: !1430, line: 290, baseType: !1428, size: 64, offset: 4480)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1429, file: !1430, line: 293, baseType: !922, size: 8, offset: 4544)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1429, file: !1430, line: 296, baseType: !281, size: 128, align: 64, offset: 4608)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !399, file: !400, line: 1110, baseType: !5094, size: 64, offset: 15360)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5096, line: 93, size: 8768, elements: !5097)
!5096 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5097 = !{!5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5146, !5155, !5156, !5158, !5159, !5160, !5163, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5201, !5202, !5209, !5219, !5281, !5282, !5285, !5286, !5287, !5288, !5289, !5290}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5095, file: !5096, line: 94, baseType: !348, size: 32)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5095, file: !5096, line: 95, baseType: !49, size: 32, offset: 32)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5095, file: !5096, line: 96, baseType: !22, size: 32, offset: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5095, file: !5096, line: 97, baseType: !22, size: 32, offset: 96)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5095, file: !5096, line: 98, baseType: !97, size: 128, offset: 128)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5095, file: !5096, line: 100, baseType: !54, size: 192, offset: 256)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5095, file: !5096, line: 103, baseType: !398, size: 64, offset: 448)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5095, file: !5096, line: 106, baseType: !5106, size: 192, offset: 512)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5107, line: 32, size: 192, elements: !5108)
!5107 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5108 = !{!5109, !5110}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5106, file: !5107, line: 33, baseType: !97, size: 128)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5106, file: !5107, line: 34, baseType: !5111, size: 64, offset: 128)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5112, line: 25, baseType: !5113)
!5112 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5112, line: 23, size: 64, elements: !5114)
!5114 = !{!5115}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5113, file: !5112, line: 24, baseType: !654, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5095, file: !5096, line: 109, baseType: !357, size: 64, offset: 704)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5095, file: !5096, line: 112, baseType: !22, size: 32, offset: 768)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5095, file: !5096, line: 114, baseType: !22, size: 32, offset: 800)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5095, file: !5096, line: 115, baseType: !398, size: 64, offset: 832)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5095, file: !5096, line: 118, baseType: !22, size: 32, offset: 896)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5095, file: !5096, line: 119, baseType: !7, size: 32, offset: 928)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5095, file: !5096, line: 121, baseType: !5123, size: 64, offset: 960)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5096, line: 80, size: 448, elements: !5125)
!5125 = !{!5126, !5127, !5133}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5124, file: !5096, line: 81, baseType: !49, size: 32)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5124, file: !5096, line: 82, baseType: !5128, size: 128, offset: 64)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5096, line: 75, size: 128, elements: !5129)
!5129 = !{!5130, !5131}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5128, file: !5096, line: 76, baseType: !398, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5128, file: !5096, line: 77, baseType: !5132, size: 64, offset: 64)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5124, file: !5096, line: 83, baseType: !1077, size: 256, offset: 192)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5095, file: !5096, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5095, file: !5096, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5095, file: !5096, line: 138, baseType: !7, size: 32, offset: 1056)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5095, file: !5096, line: 139, baseType: !97, size: 128, offset: 1088)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5095, file: !5096, line: 142, baseType: !522, size: 512, offset: 1216)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5095, file: !5096, line: 143, baseType: !530, size: 64, offset: 1728)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5095, file: !5096, line: 150, baseType: !5141, size: 256, offset: 1792)
!5141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5142, size: 256, elements: !2167)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5096, line: 38, size: 128, elements: !5143)
!5143 = !{!5144, !5145}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5142, file: !5096, line: 39, baseType: !457, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5142, file: !5096, line: 40, baseType: !457, size: 64, offset: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5095, file: !5096, line: 156, baseType: !5147, size: 192, offset: 2048)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5096, line: 66, size: 192, elements: !5148)
!5148 = !{!5149}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5147, file: !5096, line: 67, baseType: !5150, size: 192)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5096, line: 47, size: 192, elements: !5151)
!5151 = !{!5152, !5153, !5154}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5150, file: !5096, line: 48, baseType: !296, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5150, file: !5096, line: 49, baseType: !296, size: 64, offset: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5150, file: !5096, line: 50, baseType: !296, size: 64, offset: 128)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5095, file: !5096, line: 160, baseType: !1278, size: 640, offset: 2240)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5095, file: !5096, line: 163, baseType: !5157, size: 256, offset: 2880)
!5157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 256, elements: !366)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5095, file: !5096, line: 169, baseType: !344, size: 64, offset: 3136)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5095, file: !5096, line: 172, baseType: !22, size: 32, offset: 3200)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5095, file: !5096, line: 174, baseType: !5161, size: 64, offset: 3264)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5096, line: 174, flags: DIFlagFwdDecl)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5095, file: !5096, line: 185, baseType: !5164, size: 64, offset: 3328)
!5164 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !573, line: 860, baseType: !5165)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 853, size: 64, elements: !5166)
!5166 = !{!5167, !5168}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5165, file: !573, line: 858, baseType: !1717, size: 32)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5165, file: !573, line: 859, baseType: !59, size: 32, offset: 32)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5095, file: !5096, line: 186, baseType: !457, size: 64, offset: 3392)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5095, file: !5096, line: 186, baseType: !457, size: 64, offset: 3456)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5095, file: !5096, line: 186, baseType: !457, size: 64, offset: 3520)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5095, file: !5096, line: 186, baseType: !457, size: 64, offset: 3584)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5095, file: !5096, line: 187, baseType: !457, size: 64, offset: 3648)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5095, file: !5096, line: 188, baseType: !457, size: 64, offset: 3712)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5095, file: !5096, line: 189, baseType: !1266, size: 192, offset: 3776)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5095, file: !5096, line: 190, baseType: !39, size: 64, offset: 3968)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5095, file: !5096, line: 190, baseType: !39, size: 64, offset: 4032)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5095, file: !5096, line: 190, baseType: !39, size: 64, offset: 4096)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5095, file: !5096, line: 190, baseType: !39, size: 64, offset: 4160)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5095, file: !5096, line: 191, baseType: !39, size: 64, offset: 4224)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5095, file: !5096, line: 191, baseType: !39, size: 64, offset: 4288)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5095, file: !5096, line: 191, baseType: !39, size: 64, offset: 4352)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5095, file: !5096, line: 191, baseType: !39, size: 64, offset: 4416)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5095, file: !5096, line: 192, baseType: !39, size: 64, offset: 4480)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5095, file: !5096, line: 192, baseType: !39, size: 64, offset: 4544)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5095, file: !5096, line: 192, baseType: !39, size: 64, offset: 4608)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5095, file: !5096, line: 192, baseType: !39, size: 64, offset: 4672)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5095, file: !5096, line: 193, baseType: !39, size: 64, offset: 4736)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5095, file: !5096, line: 193, baseType: !39, size: 64, offset: 4800)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5095, file: !5096, line: 194, baseType: !5191, size: 448, offset: 4864)
!5191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5192, line: 12, size: 448, elements: !5193)
!5192 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5193 = !{!5194, !5195, !5196, !5197, !5198, !5199, !5200}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5191, file: !5192, line: 15, baseType: !457, size: 64)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5191, file: !5192, line: 17, baseType: !457, size: 64, offset: 64)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5191, file: !5192, line: 19, baseType: !457, size: 64, offset: 128)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5191, file: !5192, line: 21, baseType: !457, size: 64, offset: 192)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5191, file: !5192, line: 29, baseType: !457, size: 64, offset: 256)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5191, file: !5192, line: 35, baseType: !457, size: 64, offset: 320)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5191, file: !5192, line: 44, baseType: !457, size: 64, offset: 384)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5095, file: !5096, line: 202, baseType: !459, size: 64, offset: 5312)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5095, file: !5096, line: 213, baseType: !5203, size: 2048, offset: 5376)
!5203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5204, size: 2048, elements: !1370)
!5204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5205, line: 43, size: 128, elements: !5206)
!5205 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5206 = !{!5207, !5208}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5204, file: !5205, line: 44, baseType: !38, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5204, file: !5205, line: 45, baseType: !38, size: 64, offset: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5095, file: !5096, line: 216, baseType: !5210, size: 448, offset: 7424)
!5210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5096, line: 30, size: 448, elements: !5211)
!5211 = !{!5212, !5213, !5214, !5215, !5216, !5217, !5218}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5210, file: !5096, line: 31, baseType: !22, size: 32)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5210, file: !5096, line: 32, baseType: !840, size: 64, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5210, file: !5096, line: 33, baseType: !39, size: 64, offset: 128)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5210, file: !5096, line: 34, baseType: !457, size: 64, offset: 192)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5210, file: !5096, line: 34, baseType: !457, size: 64, offset: 256)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5210, file: !5096, line: 35, baseType: !39, size: 64, offset: 320)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5210, file: !5096, line: 35, baseType: !39, size: 64, offset: 384)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5095, file: !5096, line: 219, baseType: !5220, size: 64, offset: 7872)
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5222, line: 41, size: 3456, elements: !5223)
!5222 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5223 = !{!5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5221, file: !5222, line: 47, baseType: !94, size: 16)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5221, file: !5222, line: 48, baseType: !410, size: 32, offset: 32)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5221, file: !5222, line: 54, baseType: !85, size: 8, offset: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5221, file: !5222, line: 55, baseType: !85, size: 8, offset: 72)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5221, file: !5222, line: 73, baseType: !458, size: 64, align: 64, offset: 128)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5221, file: !5222, line: 74, baseType: !458, size: 64, offset: 192)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5221, file: !5222, line: 81, baseType: !458, size: 64, offset: 256)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5221, file: !5222, line: 82, baseType: !458, size: 64, offset: 320)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5221, file: !5222, line: 85, baseType: !458, size: 64, offset: 384)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5221, file: !5222, line: 86, baseType: !458, size: 64, offset: 448)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5221, file: !5222, line: 94, baseType: !458, size: 64, offset: 512)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5221, file: !5222, line: 102, baseType: !458, size: 64, offset: 576)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5221, file: !5222, line: 107, baseType: !3982, size: 256, offset: 640)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5221, file: !5222, line: 108, baseType: !85, size: 8, align: 64, offset: 896)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5221, file: !5222, line: 110, baseType: !5239, size: 24, offset: 904)
!5239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !340)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5221, file: !5222, line: 111, baseType: !410, size: 32, align: 64, offset: 960)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5221, file: !5222, line: 113, baseType: !410, size: 32, offset: 992)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5221, file: !5222, line: 114, baseType: !410, size: 32, offset: 1024)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5221, file: !5222, line: 115, baseType: !410, size: 32, offset: 1056)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5221, file: !5222, line: 117, baseType: !410, size: 32, offset: 1088)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5221, file: !5222, line: 118, baseType: !458, size: 64, align: 64, offset: 1152)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5221, file: !5222, line: 120, baseType: !458, size: 64, offset: 1216)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5221, file: !5222, line: 121, baseType: !458, size: 64, offset: 1280)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5221, file: !5222, line: 122, baseType: !458, size: 64, offset: 1344)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5221, file: !5222, line: 123, baseType: !458, size: 64, offset: 1408)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5221, file: !5222, line: 133, baseType: !458, size: 64, offset: 1472)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5221, file: !5222, line: 137, baseType: !458, size: 64, offset: 1536)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5221, file: !5222, line: 142, baseType: !458, size: 64, offset: 1600)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5221, file: !5222, line: 143, baseType: !458, size: 64, offset: 1664)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5221, file: !5222, line: 146, baseType: !458, size: 64, offset: 1728)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5221, file: !5222, line: 147, baseType: !458, size: 64, offset: 1792)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5221, file: !5222, line: 148, baseType: !458, size: 64, offset: 1856)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5221, file: !5222, line: 149, baseType: !458, size: 64, offset: 1920)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5221, file: !5222, line: 154, baseType: !458, size: 64, offset: 1984)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5221, file: !5222, line: 155, baseType: !458, size: 64, offset: 2048)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5221, file: !5222, line: 156, baseType: !458, size: 64, offset: 2112)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5221, file: !5222, line: 158, baseType: !458, size: 64, offset: 2176)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5221, file: !5222, line: 159, baseType: !458, size: 64, offset: 2240)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5221, file: !5222, line: 162, baseType: !458, size: 64, offset: 2304)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5221, file: !5222, line: 163, baseType: !458, size: 64, offset: 2368)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5221, file: !5222, line: 164, baseType: !458, size: 64, offset: 2432)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5221, file: !5222, line: 167, baseType: !458, size: 64, offset: 2496)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5221, file: !5222, line: 168, baseType: !458, size: 64, offset: 2560)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5221, file: !5222, line: 171, baseType: !458, size: 64, offset: 2624)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5221, file: !5222, line: 172, baseType: !458, size: 64, offset: 2688)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5221, file: !5222, line: 175, baseType: !458, size: 64, offset: 2752)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5221, file: !5222, line: 178, baseType: !458, size: 64, offset: 2816)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5221, file: !5222, line: 179, baseType: !458, size: 64, offset: 2880)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5221, file: !5222, line: 182, baseType: !410, size: 32, offset: 2944)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5221, file: !5222, line: 186, baseType: !458, size: 64, align: 64, offset: 3008)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5221, file: !5222, line: 194, baseType: !458, size: 64, offset: 3072)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5221, file: !5222, line: 195, baseType: !458, size: 64, offset: 3136)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5221, file: !5222, line: 199, baseType: !458, size: 64, offset: 3200)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5221, file: !5222, line: 200, baseType: !458, size: 64, offset: 3264)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5221, file: !5222, line: 203, baseType: !458, size: 64, offset: 3328)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5221, file: !5222, line: 204, baseType: !458, size: 64, offset: 3392)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5095, file: !5096, line: 222, baseType: !7, size: 32, offset: 7936)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5095, file: !5096, line: 223, baseType: !5283, size: 64, offset: 8000)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5096, line: 223, flags: DIFlagFwdDecl)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5095, file: !5096, line: 230, baseType: !922, size: 8, offset: 8064)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5095, file: !5096, line: 231, baseType: !857, size: 16, offset: 8080)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5095, file: !5096, line: 232, baseType: !857, size: 16, offset: 8096)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5095, file: !5096, line: 234, baseType: !703, size: 64, offset: 8128)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5095, file: !5096, line: 237, baseType: !303, size: 256, offset: 8192)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5095, file: !5096, line: 243, baseType: !758, size: 320, offset: 8448)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !399, file: !400, line: 1111, baseType: !5292, size: 64, offset: 15424)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5096, line: 20, size: 16640, elements: !5294)
!5294 = !{!5295, !5296, !5297, !5298}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5293, file: !5096, line: 21, baseType: !59, size: 32)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5293, file: !5096, line: 22, baseType: !348, size: 32, offset: 32)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5293, file: !5096, line: 23, baseType: !54, size: 192, offset: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5293, file: !5096, line: 24, baseType: !5299, size: 16384, offset: 256)
!5299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5300, size: 16384, elements: !1908)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5107, line: 51, size: 256, elements: !5301)
!5301 = !{!5302}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5300, file: !5107, line: 52, baseType: !5303, size: 256)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5107, line: 37, size: 256, elements: !5304)
!5304 = !{!5305, !5312, !5313, !5317}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5303, file: !5107, line: 39, baseType: !5306, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5307, line: 83, baseType: !5308)
!5307 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5307, line: 82, baseType: !5310)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{null, !22}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5303, file: !5107, line: 40, baseType: !39, size: 64, offset: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5303, file: !5107, line: 46, baseType: !5314, size: 64, offset: 128)
!5314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5307, line: 86, baseType: !5315)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5307, line: 85, baseType: !2450)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5303, file: !5107, line: 48, baseType: !5111, size: 64, offset: 192)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !399, file: !400, line: 1112, baseType: !5111, size: 64, offset: 15488)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !399, file: !400, line: 1113, baseType: !5111, size: 64, offset: 15552)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !399, file: !400, line: 1115, baseType: !5111, size: 64, offset: 15616)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !399, file: !400, line: 1116, baseType: !5106, size: 192, offset: 15680)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !399, file: !400, line: 1117, baseType: !39, size: 64, offset: 15872)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !399, file: !400, line: 1118, baseType: !35, size: 64, offset: 15936)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !399, file: !400, line: 1119, baseType: !7, size: 32, offset: 16000)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !399, file: !400, line: 1121, baseType: !284, size: 64, offset: 16064)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !399, file: !400, line: 1125, baseType: !5327, size: 64, offset: 16128)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !400, line: 43, flags: DIFlagFwdDecl)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !399, file: !400, line: 1127, baseType: !895, size: 32, offset: 16192)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !399, file: !400, line: 1128, baseType: !7, size: 32, offset: 16224)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !399, file: !400, line: 1130, baseType: !5332, size: 128, offset: 16256)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5333, line: 37, size: 128, elements: !5334)
!5333 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5334 = !{!5335, !5336, !5337}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5332, file: !5333, line: 38, baseType: !22, size: 32)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5332, file: !5333, line: 39, baseType: !49, size: 32, offset: 32)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5332, file: !5333, line: 40, baseType: !5338, size: 64, offset: 64)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5333, line: 24, flags: DIFlagFwdDecl)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !399, file: !400, line: 1131, baseType: !5341, size: 256, offset: 16384)
!5341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5342, line: 12, size: 256, elements: !5343)
!5342 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5343 = !{!5344, !5345, !5346, !5347}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5341, file: !5342, line: 13, baseType: !999, size: 64)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5341, file: !5342, line: 14, baseType: !39, size: 64, offset: 64)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5341, file: !5342, line: 15, baseType: !39, size: 64, offset: 128)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5341, file: !5342, line: 16, baseType: !922, size: 8, offset: 192)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !399, file: !400, line: 1134, baseType: !457, size: 64, offset: 16640)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !399, file: !400, line: 1135, baseType: !457, size: 64, offset: 16704)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !399, file: !400, line: 1138, baseType: !59, size: 32, offset: 16768)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !399, file: !400, line: 1141, baseType: !308, size: 32, offset: 16800)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !399, file: !400, line: 1143, baseType: !5353, size: 64, offset: 16832)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !400, line: 735, size: 64, elements: !5354)
!5354 = !{!5355}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5353, file: !400, line: 736, baseType: !5356, size: 64)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !399, file: !400, line: 1147, baseType: !586, size: 128, offset: 16896)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !399, file: !400, line: 1149, baseType: !398, size: 64, offset: 17024)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !399, file: !400, line: 1151, baseType: !5360, size: 64, offset: 17088)
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5361 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !400, line: 1151, flags: DIFlagFwdDecl)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !399, file: !400, line: 1188, baseType: !20, size: 64, offset: 17152)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !399, file: !400, line: 1191, baseType: !5364, size: 64, offset: 17216)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !400, line: 44, flags: DIFlagFwdDecl)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !399, file: !400, line: 1194, baseType: !5367, size: 64, offset: 17280)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !400, line: 45, flags: DIFlagFwdDecl)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !399, file: !400, line: 1197, baseType: !5370, size: 64, offset: 17344)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !400, line: 61, flags: DIFlagFwdDecl)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !399, file: !400, line: 1199, baseType: !5373, size: 64, offset: 17408)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5375, line: 99, size: 128, elements: !5376)
!5375 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5376 = !{!5377, !5378, !5379}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5374, file: !5375, line: 100, baseType: !294, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5374, file: !5375, line: 101, baseType: !49, size: 32, offset: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5374, file: !5375, line: 103, baseType: !26, size: 16, offset: 96)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !399, file: !400, line: 1202, baseType: !5381, size: 64, offset: 17472)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !400, line: 48, flags: DIFlagFwdDecl)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !399, file: !400, line: 1205, baseType: !39, size: 64, offset: 17536)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !399, file: !400, line: 1206, baseType: !5385, size: 64, offset: 17600)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5107, line: 14, baseType: !5387)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5107, line: 12, size: 384, elements: !5388)
!5388 = !{!5389}
!5389 = !DIDerivedType(tag: DW_TAG_member, scope: !5387, file: !5107, line: 13, baseType: !5390, size: 384)
!5390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5387, file: !5107, line: 13, size: 384, elements: !5391)
!5391 = !{!5392, !5393, !5394, !5395}
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5390, file: !5107, line: 13, baseType: !22, size: 32)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5390, file: !5107, line: 13, baseType: !22, size: 32, offset: 32)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5390, file: !5107, line: 13, baseType: !22, size: 32, offset: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5390, file: !5107, line: 13, baseType: !5396, size: 256, offset: 128)
!5396 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5397, line: 37, size: 256, elements: !5398)
!5397 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5398 = !{!5399, !5404, !5417, !5423, !5432, !5459, !5464}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5396, file: !5397, line: 42, baseType: !5400, size: 64)
!5400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5396, file: !5397, line: 39, size: 64, elements: !5401)
!5401 = !{!5402, !5403}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5400, file: !5397, line: 40, baseType: !1242, size: 32)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5400, file: !5397, line: 41, baseType: !901, size: 32, offset: 32)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5396, file: !5397, line: 50, baseType: !5405, size: 192)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5396, file: !5397, line: 45, size: 192, elements: !5406)
!5406 = !{!5407, !5409, !5410, !5416}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5405, file: !5397, line: 46, baseType: !5408, size: 32)
!5408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5405, file: !5397, line: 47, baseType: !22, size: 32, offset: 32)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5405, file: !5397, line: 48, baseType: !5411, size: 64, offset: 64)
!5411 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5397, line: 11, baseType: !5412)
!5412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5397, line: 8, size: 64, elements: !5413)
!5413 = !{!5414, !5415}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5412, file: !5397, line: 9, baseType: !22, size: 32)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5412, file: !5397, line: 10, baseType: !20, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5405, file: !5397, line: 49, baseType: !22, size: 32, offset: 128)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5396, file: !5397, line: 57, baseType: !5418, size: 128)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5396, file: !5397, line: 53, size: 128, elements: !5419)
!5419 = !{!5420, !5421, !5422}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5418, file: !5397, line: 54, baseType: !1242, size: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5418, file: !5397, line: 55, baseType: !901, size: 32, offset: 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5418, file: !5397, line: 56, baseType: !5411, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5396, file: !5397, line: 66, baseType: !5424, size: 256)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5396, file: !5397, line: 60, size: 256, elements: !5425)
!5425 = !{!5426, !5427, !5428, !5429, !5431}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5424, file: !5397, line: 61, baseType: !1242, size: 32)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5424, file: !5397, line: 62, baseType: !901, size: 32, offset: 32)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5424, file: !5397, line: 63, baseType: !22, size: 32, offset: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5424, file: !5397, line: 64, baseType: !5430, size: 64, offset: 128)
!5430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !1937)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5424, file: !5397, line: 65, baseType: !5430, size: 64, offset: 192)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5396, file: !5397, line: 105, baseType: !5433, size: 256)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5396, file: !5397, line: 69, size: 256, elements: !5434)
!5434 = !{!5435, !5436}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5433, file: !5397, line: 70, baseType: !20, size: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, scope: !5433, file: !5397, line: 79, baseType: !5437, size: 192, offset: 64)
!5437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5433, file: !5397, line: 79, size: 192, elements: !5438)
!5438 = !{!5439, !5440, !5441, !5448, !5453}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5437, file: !5397, line: 81, baseType: !22, size: 32)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5437, file: !5397, line: 86, baseType: !857, size: 16)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5437, file: !5397, line: 92, baseType: !5442, size: 192)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5437, file: !5397, line: 88, size: 192, elements: !5443)
!5443 = !{!5444, !5446, !5447}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5442, file: !5397, line: 89, baseType: !5445, size: 64)
!5445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !565)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5442, file: !5397, line: 90, baseType: !20, size: 64, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5442, file: !5397, line: 91, baseType: !20, size: 64, offset: 128)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5437, file: !5397, line: 97, baseType: !5449, size: 96)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5437, file: !5397, line: 94, size: 96, elements: !5450)
!5450 = !{!5451, !5452}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5449, file: !5397, line: 95, baseType: !5445, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5449, file: !5397, line: 96, baseType: !410, size: 32, offset: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5437, file: !5397, line: 103, baseType: !5454, size: 128)
!5454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5437, file: !5397, line: 99, size: 128, elements: !5455)
!5455 = !{!5456, !5457, !5458}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5454, file: !5397, line: 100, baseType: !39, size: 64)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5454, file: !5397, line: 101, baseType: !410, size: 32, offset: 64)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5454, file: !5397, line: 102, baseType: !410, size: 32, offset: 96)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5396, file: !5397, line: 111, baseType: !5460, size: 128)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5396, file: !5397, line: 108, size: 128, elements: !5461)
!5461 = !{!5462, !5463}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5460, file: !5397, line: 109, baseType: !840, size: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5460, file: !5397, line: 110, baseType: !22, size: 32, offset: 64)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5396, file: !5397, line: 118, baseType: !5465, size: 128)
!5465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5396, file: !5397, line: 114, size: 128, elements: !5466)
!5466 = !{!5467, !5468, !5469}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5465, file: !5397, line: 115, baseType: !20, size: 64)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5465, file: !5397, line: 116, baseType: !22, size: 32, offset: 64)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5465, file: !5397, line: 117, baseType: !7, size: 32, offset: 96)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !399, file: !400, line: 1208, baseType: !5191, size: 448, offset: 17664)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !399, file: !400, line: 1215, baseType: !457, size: 64, offset: 18112)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !399, file: !400, line: 1217, baseType: !457, size: 64, offset: 18176)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !399, file: !400, line: 1219, baseType: !457, size: 64, offset: 18240)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !399, file: !400, line: 1223, baseType: !5475, size: 64, offset: 18304)
!5475 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5476, line: 99, baseType: !5477)
!5476 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5476, line: 99, size: 64, elements: !5478)
!5478 = !{!5479}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5477, file: !5476, line: 99, baseType: !654, size: 64)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !399, file: !400, line: 1225, baseType: !1717, size: 32, offset: 18368)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !399, file: !400, line: 1226, baseType: !22, size: 32, offset: 18400)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !399, file: !400, line: 1227, baseType: !22, size: 32, offset: 18432)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !399, file: !400, line: 1231, baseType: !1428, size: 64, offset: 18496)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !399, file: !400, line: 1233, baseType: !97, size: 128, offset: 18560)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !399, file: !400, line: 1240, baseType: !5486, size: 64, offset: 18688)
!5486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5487, size: 64)
!5487 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !5488, line: 60, flags: DIFlagFwdDecl)
!5488 = !DIFile(filename: "./include/linux/syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dab99c2b3f99363182fad69da25bf5f3")
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !399, file: !400, line: 1242, baseType: !5490, size: 64, offset: 18752)
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5492, line: 392, size: 96, elements: !5493)
!5492 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5493 = !{!5494, !5500, !5502}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5491, file: !5492, line: 393, baseType: !5495, size: 32)
!5495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5492, line: 388, size: 32, elements: !5496)
!5496 = !{!5497}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5495, file: !5492, line: 389, baseType: !5498, size: 32)
!5498 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !5499, line: 46, baseType: !409)
!5499 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5491, file: !5492, line: 394, baseType: !5501, size: 32, offset: 32)
!5501 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !5499, line: 42, baseType: !804)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5491, file: !5492, line: 395, baseType: !5498, size: 32, offset: 64)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !399, file: !400, line: 1244, baseType: !97, size: 128, offset: 18816)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !399, file: !400, line: 1245, baseType: !5505, size: 64, offset: 18944)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !400, line: 51, flags: DIFlagFwdDecl)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !399, file: !400, line: 1246, baseType: !303, size: 256, offset: 19008)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !399, file: !400, line: 1247, baseType: !7, size: 32, offset: 19264)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !399, file: !400, line: 1250, baseType: !2949, size: 64, offset: 19328)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !399, file: !400, line: 1251, baseType: !303, size: 256, offset: 19392)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !399, file: !400, line: 1252, baseType: !97, size: 128, offset: 19648)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !399, file: !400, line: 1259, baseType: !1604, size: 64, offset: 19776)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !399, file: !400, line: 1260, baseType: !857, size: 16, offset: 19840)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !399, file: !400, line: 1261, baseType: !857, size: 16, offset: 19856)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !399, file: !400, line: 1314, baseType: !5516, size: 64, offset: 19904)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5518, line: 62, size: 256, align: 256, elements: !5519)
!5518 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5519 = !{!5520, !5521, !5522, !5523, !5524, !5525, !5526}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5517, file: !5518, line: 75, baseType: !410, size: 32)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5517, file: !5518, line: 90, baseType: !410, size: 32, offset: 32)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5517, file: !5518, line: 112, baseType: !458, size: 64, offset: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5517, file: !5518, line: 132, baseType: !410, size: 32, offset: 128)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5517, file: !5518, line: 140, baseType: !410, size: 32, offset: 160)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5517, file: !5518, line: 149, baseType: !410, size: 32, offset: 192)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5517, file: !5518, line: 154, baseType: !5527, offset: 224)
!5527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !1154)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !399, file: !400, line: 1315, baseType: !409, size: 32, offset: 19968)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !399, file: !400, line: 1316, baseType: !409, size: 32, offset: 20000)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !399, file: !400, line: 1321, baseType: !39, size: 64, offset: 20032)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !399, file: !400, line: 1325, baseType: !22, size: 32, offset: 20096)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !399, file: !400, line: 1326, baseType: !22, size: 32, offset: 20128)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !399, file: !400, line: 1327, baseType: !22, size: 32, offset: 20160)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !399, file: !400, line: 1328, baseType: !22, size: 32, offset: 20192)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !399, file: !400, line: 1329, baseType: !281, size: 128, align: 64, offset: 20224)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !399, file: !400, line: 1332, baseType: !5537, size: 128, offset: 20352)
!5537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5538, line: 51, size: 128, elements: !5539)
!5538 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5539 = !{!5540, !5545, !5546}
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5537, file: !5538, line: 60, baseType: !5541, size: 64)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5542, line: 7, size: 64, elements: !5543)
!5542 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5543 = !{!5544}
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5541, file: !5542, line: 12, baseType: !651, size: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5537, file: !5538, line: 63, baseType: !922, size: 8, offset: 64)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5537, file: !5538, line: 70, baseType: !922, size: 8, offset: 72)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !399, file: !400, line: 1335, baseType: !4457, size: 64, offset: 20480)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !399, file: !400, line: 1337, baseType: !5549, size: 128, offset: 20544)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5538, line: 39, size: 128, elements: !5550)
!5550 = !{!5551, !5552, !5553}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5549, file: !5538, line: 40, baseType: !1663, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5549, file: !5538, line: 42, baseType: !410, size: 32, offset: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5549, file: !5538, line: 43, baseType: !410, size: 32, offset: 96)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !399, file: !400, line: 1340, baseType: !5555, size: 64, offset: 20672)
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5556, size: 64)
!5556 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !400, line: 69, flags: DIFlagFwdDecl)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !399, file: !400, line: 1351, baseType: !22, size: 32, offset: 20736)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !399, file: !400, line: 1352, baseType: !22, size: 32, offset: 20768)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !399, file: !400, line: 1354, baseType: !39, size: 64, offset: 20800)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !399, file: !400, line: 1364, baseType: !457, size: 64, offset: 20864)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !399, file: !400, line: 1365, baseType: !457, size: 64, offset: 20928)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !399, file: !400, line: 1412, baseType: !39, size: 64, offset: 20992)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !399, file: !400, line: 1453, baseType: !5564, size: 64, offset: 21056)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5565 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !400, line: 1453, flags: DIFlagFwdDecl)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !399, file: !400, line: 1457, baseType: !5567, size: 64, offset: 21120)
!5567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !145, line: 61, size: 576, elements: !5569)
!5569 = !{!5570, !5571, !5590, !5593, !5594, !5627, !5637}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5568, file: !145, line: 62, baseType: !144, size: 32)
!5571 = !DIDerivedType(tag: DW_TAG_member, scope: !5568, file: !145, line: 64, baseType: !5572, size: 192, offset: 64)
!5572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5568, file: !145, line: 64, size: 192, elements: !5573)
!5573 = !{!5574, !5585}
!5574 = !DIDerivedType(tag: DW_TAG_member, scope: !5572, file: !145, line: 65, baseType: !5575, size: 192)
!5575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5572, file: !145, line: 65, size: 192, elements: !5576)
!5576 = !{!5577, !5584}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5575, file: !145, line: 66, baseType: !5578, size: 128)
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5579, line: 50, size: 128, elements: !5580)
!5579 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5580 = !{!5581, !5582, !5583}
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5578, file: !5579, line: 52, baseType: !39, size: 64)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5578, file: !5579, line: 54, baseType: !7, size: 32, offset: 64)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5578, file: !5579, line: 55, baseType: !7, size: 32, offset: 96)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5575, file: !145, line: 67, baseType: !39, size: 64, offset: 128)
!5585 = !DIDerivedType(tag: DW_TAG_member, scope: !5572, file: !145, line: 70, baseType: !5586, size: 192)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5572, file: !145, line: 70, size: 192, elements: !5587)
!5587 = !{!5588, !5589}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5586, file: !145, line: 71, baseType: !281, size: 128, align: 64)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5586, file: !145, line: 72, baseType: !39, size: 64, offset: 128)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5568, file: !145, line: 76, baseType: !5591, size: 64, offset: 256)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !145, line: 76, flags: DIFlagFwdDecl)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5568, file: !145, line: 77, baseType: !39, size: 64, offset: 320)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5568, file: !145, line: 79, baseType: !5595, size: 64, offset: 384)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5579, line: 25, size: 256, elements: !5597)
!5597 = !{!5598, !5604, !5608}
!5598 = !DIDerivedType(tag: DW_TAG_member, scope: !5596, file: !5579, line: 26, baseType: !5599, size: 128)
!5599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5596, file: !5579, line: 26, size: 128, elements: !5600)
!5600 = !{!5601, !5603}
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5599, file: !5579, line: 27, baseType: !5602, size: 128)
!5602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !1370)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5599, file: !5579, line: 28, baseType: !5602, size: 128)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5596, file: !5579, line: 31, baseType: !5605, size: 64, offset: 128)
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5607)
!5607 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5579, line: 23, flags: DIFlagFwdDecl)
!5608 = !DIDerivedType(tag: DW_TAG_member, scope: !5596, file: !5579, line: 33, baseType: !5609, size: 64, offset: 192)
!5609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5596, file: !5579, line: 33, size: 64, elements: !5610)
!5610 = !{!5611, !5617, !5622}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5609, file: !5579, line: 38, baseType: !5612, size: 64)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5609, file: !5579, line: 34, size: 64, elements: !5613)
!5613 = !{!5614, !5615, !5616}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5612, file: !5579, line: 35, baseType: !804, size: 32)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5612, file: !5579, line: 36, baseType: !83, size: 8, offset: 32)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5612, file: !5579, line: 37, baseType: !83, size: 8, offset: 40)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5609, file: !5579, line: 42, baseType: !5618, size: 16)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5609, file: !5579, line: 39, size: 16, elements: !5619)
!5619 = !{!5620, !5621}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5618, file: !5579, line: 40, baseType: !83, size: 8)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5618, file: !5579, line: 41, baseType: !83, size: 8, offset: 8)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5609, file: !5579, line: 46, baseType: !5623, size: 16)
!5623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5609, file: !5579, line: 43, size: 16, elements: !5624)
!5624 = !{!5625, !5626}
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5623, file: !5579, line: 44, baseType: !83, size: 8)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5623, file: !5579, line: 45, baseType: !83, size: 8, offset: 8)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5568, file: !145, line: 81, baseType: !5628, size: 64, offset: 448)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !145, line: 85, size: 384, elements: !5630)
!5630 = !{!5631, !5632, !5633, !5634, !5635, !5636}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5629, file: !145, line: 86, baseType: !5591, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5629, file: !145, line: 87, baseType: !39, size: 64, offset: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5629, file: !145, line: 88, baseType: !39, size: 64, offset: 128)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5629, file: !145, line: 89, baseType: !39, size: 64, offset: 192)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5629, file: !145, line: 90, baseType: !922, size: 8, offset: 256)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5629, file: !145, line: 92, baseType: !5628, size: 64, offset: 320)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5568, file: !145, line: 82, baseType: !7, size: 32, offset: 512)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !399, file: !400, line: 1463, baseType: !5639, offset: 21184)
!5639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !400, line: 739, elements: !724)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !399, file: !400, line: 1470, baseType: !281, size: 128, align: 64, offset: 21184)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !399, file: !400, line: 1471, baseType: !348, size: 32, offset: 21312)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !399, file: !400, line: 1472, baseType: !22, size: 32, offset: 21344)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !399, file: !400, line: 1474, baseType: !398, size: 64, offset: 21376)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !399, file: !400, line: 1475, baseType: !2275, size: 320, offset: 21440)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !399, file: !400, line: 1478, baseType: !5646, size: 64, offset: 21760)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64)
!5647 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !400, line: 1478, flags: DIFlagFwdDecl)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !399, file: !400, line: 1482, baseType: !348, size: 32, offset: 21824)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !399, file: !400, line: 1489, baseType: !20, size: 64, offset: 21888)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !399, file: !400, line: 1504, baseType: !20, size: 64, offset: 21952)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !399, file: !400, line: 1505, baseType: !458, size: 64, offset: 22016)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !399, file: !400, line: 1506, baseType: !457, size: 64, offset: 22080)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !399, file: !400, line: 1507, baseType: !458, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !399, file: !400, line: 1508, baseType: !458, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !399, file: !400, line: 1509, baseType: !458, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !399, file: !400, line: 1510, baseType: !281, size: 128, align: 64, offset: 22208)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !399, file: !400, line: 1511, baseType: !22, size: 32, offset: 22336)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !399, file: !400, line: 1515, baseType: !5659, size: 64, offset: 22400)
!5659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !276, line: 56, size: 64, elements: !5660)
!5660 = !{!5661}
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5659, file: !276, line: 57, baseType: !279, size: 64)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !399, file: !400, line: 1518, baseType: !5659, size: 64, offset: 22464)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !399, file: !400, line: 1528, baseType: !281, size: 128, align: 64, offset: 22528)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !399, file: !400, line: 1552, baseType: !5665, size: 35328, offset: 23040)
!5665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5666, line: 430, size: 35328, elements: !5667)
!5666 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5667 = !{!5668, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5695, !5696, !5697, !5698, !5699, !5700, !5703, !5704, !5705, !5706}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5665, file: !5666, line: 432, baseType: !5669, size: 192)
!5669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5670, size: 192, elements: !340)
!5670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5671, line: 16, size: 64, elements: !5672)
!5671 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5672 = !{!5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685}
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5670, file: !5671, line: 17, baseType: !93, size: 16)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5670, file: !5671, line: 18, baseType: !93, size: 16, offset: 16)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5670, file: !5671, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5670, file: !5671, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5670, file: !5671, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5670, file: !5671, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5670, file: !5671, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5670, file: !5671, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5670, file: !5671, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5670, file: !5671, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5670, file: !5671, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5670, file: !5671, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5670, file: !5671, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5665, file: !5666, line: 436, baseType: !39, size: 64, offset: 192)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5665, file: !5666, line: 440, baseType: !26, size: 16, offset: 256)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5665, file: !5666, line: 441, baseType: !26, size: 16, offset: 272)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5665, file: !5666, line: 442, baseType: !26, size: 16, offset: 288)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5665, file: !5666, line: 443, baseType: !26, size: 16, offset: 304)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5665, file: !5666, line: 447, baseType: !39, size: 64, offset: 320)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5665, file: !5666, line: 448, baseType: !39, size: 64, offset: 384)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5665, file: !5666, line: 459, baseType: !5694, size: 256, offset: 448)
!5694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2561, size: 256, elements: !366)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5665, file: !5666, line: 461, baseType: !39, size: 64, offset: 704)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5665, file: !5666, line: 463, baseType: !39, size: 64, offset: 768)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5665, file: !5666, line: 465, baseType: !39, size: 64, offset: 832)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5665, file: !5666, line: 466, baseType: !39, size: 64, offset: 896)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5665, file: !5666, line: 467, baseType: !39, size: 64, offset: 960)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5665, file: !5666, line: 473, baseType: !5701, size: 64, offset: 1024)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5666, line: 10, flags: DIFlagFwdDecl)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5665, file: !5666, line: 480, baseType: !39, size: 64, offset: 1088)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5665, file: !5666, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5665, file: !5666, line: 491, baseType: !409, size: 32, offset: 1184)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5665, file: !5666, line: 501, baseType: !5707, size: 33792, offset: 1536)
!5707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5708, line: 448, size: 33792, elements: !5709)
!5708 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5709 = !{!5710, !5711, !5712, !5820, !5821, !5827, !5828}
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5707, file: !5708, line: 461, baseType: !7, size: 32)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5707, file: !5708, line: 468, baseType: !39, size: 64, offset: 64)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5707, file: !5708, line: 476, baseType: !5713, size: 64, offset: 128)
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5714, size: 64)
!5714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5708, line: 356, size: 33280, align: 512, elements: !5715)
!5715 = !{!5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725}
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5714, file: !5708, line: 358, baseType: !7, size: 32)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5714, file: !5708, line: 361, baseType: !7, size: 32, offset: 32)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5714, file: !5708, line: 364, baseType: !457, size: 64, offset: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5714, file: !5708, line: 367, baseType: !457, size: 64, offset: 128)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5714, file: !5708, line: 370, baseType: !457, size: 64, offset: 192)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5714, file: !5708, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5714, file: !5708, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5714, file: !5708, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5714, file: !5708, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5714, file: !5708, line: 397, baseType: !5726, size: 32768, offset: 512)
!5726 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5708, line: 348, size: 32768, elements: !5727)
!5727 = !{!5728, !5743, !5780, !5805, !5818}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5726, file: !5708, line: 349, baseType: !5729, size: 896)
!5729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5708, line: 12, size: 896, elements: !5730)
!5730 = !{!5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5742}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5729, file: !5708, line: 13, baseType: !409, size: 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5729, file: !5708, line: 14, baseType: !409, size: 32, offset: 32)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5729, file: !5708, line: 15, baseType: !409, size: 32, offset: 64)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5729, file: !5708, line: 16, baseType: !409, size: 32, offset: 96)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5729, file: !5708, line: 17, baseType: !409, size: 32, offset: 128)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5729, file: !5708, line: 18, baseType: !409, size: 32, offset: 160)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5729, file: !5708, line: 19, baseType: !409, size: 32, offset: 192)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5729, file: !5708, line: 22, baseType: !5739, size: 640, offset: 224)
!5739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 640, elements: !5740)
!5740 = !{!5741}
!5741 = !DISubrange(count: 20)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5729, file: !5708, line: 25, baseType: !409, size: 32, offset: 864)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5726, file: !5708, line: 350, baseType: !5744, size: 4096, align: 128)
!5744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5708, line: 34, size: 4096, align: 128, elements: !5745)
!5745 = !{!5746, !5747, !5748, !5749, !5750, !5765, !5766, !5767, !5769, !5771, !5775}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5744, file: !5708, line: 35, baseType: !93, size: 16)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5744, file: !5708, line: 36, baseType: !93, size: 16, offset: 16)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5744, file: !5708, line: 37, baseType: !93, size: 16, offset: 32)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5744, file: !5708, line: 38, baseType: !93, size: 16, offset: 48)
!5750 = !DIDerivedType(tag: DW_TAG_member, scope: !5744, file: !5708, line: 39, baseType: !5751, size: 128, offset: 64)
!5751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5744, file: !5708, line: 39, size: 128, elements: !5752)
!5752 = !{!5753, !5758}
!5753 = !DIDerivedType(tag: DW_TAG_member, scope: !5751, file: !5708, line: 40, baseType: !5754, size: 128)
!5754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5751, file: !5708, line: 40, size: 128, elements: !5755)
!5755 = !{!5756, !5757}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5754, file: !5708, line: 41, baseType: !457, size: 64)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5754, file: !5708, line: 42, baseType: !457, size: 64, offset: 64)
!5758 = !DIDerivedType(tag: DW_TAG_member, scope: !5751, file: !5708, line: 44, baseType: !5759, size: 128)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5751, file: !5708, line: 44, size: 128, elements: !5760)
!5760 = !{!5761, !5762, !5763, !5764}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5759, file: !5708, line: 45, baseType: !409, size: 32)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5759, file: !5708, line: 46, baseType: !409, size: 32, offset: 32)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5759, file: !5708, line: 47, baseType: !409, size: 32, offset: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5759, file: !5708, line: 48, baseType: !409, size: 32, offset: 96)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5744, file: !5708, line: 51, baseType: !409, size: 32, offset: 192)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5744, file: !5708, line: 52, baseType: !409, size: 32, offset: 224)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5744, file: !5708, line: 55, baseType: !5768, size: 1024, offset: 256)
!5768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 1024, elements: !1748)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5744, file: !5708, line: 58, baseType: !5770, size: 2048, offset: 1280)
!5770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 2048, elements: !1908)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5744, file: !5708, line: 60, baseType: !5772, size: 384, offset: 3328)
!5772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 384, elements: !5773)
!5773 = !{!5774}
!5774 = !DISubrange(count: 12)
!5775 = !DIDerivedType(tag: DW_TAG_member, scope: !5744, file: !5708, line: 62, baseType: !5776, size: 384, offset: 3712)
!5776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5744, file: !5708, line: 62, size: 384, elements: !5777)
!5777 = !{!5778, !5779}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5776, file: !5708, line: 63, baseType: !5772, size: 384)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5776, file: !5708, line: 64, baseType: !5772, size: 384)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5726, file: !5708, line: 351, baseType: !5781, size: 1088)
!5781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5708, line: 79, size: 1088, elements: !5782)
!5782 = !{!5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5804}
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5781, file: !5708, line: 80, baseType: !409, size: 32)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5781, file: !5708, line: 81, baseType: !409, size: 32, offset: 32)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5781, file: !5708, line: 82, baseType: !409, size: 32, offset: 64)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5781, file: !5708, line: 83, baseType: !409, size: 32, offset: 96)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5781, file: !5708, line: 84, baseType: !409, size: 32, offset: 128)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5781, file: !5708, line: 85, baseType: !409, size: 32, offset: 160)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5781, file: !5708, line: 86, baseType: !409, size: 32, offset: 192)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5781, file: !5708, line: 88, baseType: !5739, size: 640, offset: 224)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5781, file: !5708, line: 89, baseType: !83, size: 8, offset: 864)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5781, file: !5708, line: 90, baseType: !83, size: 8, offset: 872)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5781, file: !5708, line: 91, baseType: !83, size: 8, offset: 880)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5781, file: !5708, line: 92, baseType: !83, size: 8, offset: 888)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5781, file: !5708, line: 93, baseType: !83, size: 8, offset: 896)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5781, file: !5708, line: 94, baseType: !83, size: 8, offset: 904)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5781, file: !5708, line: 95, baseType: !5798, size: 64, offset: 960)
!5798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5799, size: 64)
!5799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5800, line: 11, size: 128, elements: !5801)
!5800 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5801 = !{!5802, !5803}
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5799, file: !5800, line: 12, baseType: !840, size: 64)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5799, file: !5800, line: 13, baseType: !3477, size: 64, offset: 64)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5781, file: !5708, line: 96, baseType: !409, size: 32, offset: 1024)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5726, file: !5708, line: 352, baseType: !5806, size: 4608, align: 512)
!5806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5708, line: 333, size: 4608, align: 512, elements: !5807)
!5807 = !{!5808, !5809, !5816}
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5806, file: !5708, line: 334, baseType: !5744, size: 4096, align: 128)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5806, file: !5708, line: 335, baseType: !5810, size: 512, offset: 4096)
!5810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5708, line: 312, size: 512, elements: !5811)
!5811 = !{!5812, !5813, !5814}
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5810, file: !5708, line: 313, baseType: !457, size: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5810, file: !5708, line: 314, baseType: !457, size: 64, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5810, file: !5708, line: 315, baseType: !5815, size: 384, offset: 128)
!5815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 384, elements: !977)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5806, file: !5708, line: 336, baseType: !5817, offset: 4608)
!5817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1154)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5726, file: !5708, line: 353, baseType: !5819, size: 32768)
!5819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !2505)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5707, file: !5708, line: 484, baseType: !5713, size: 64, offset: 192)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5707, file: !5708, line: 491, baseType: !5822, size: 128, offset: 256)
!5822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5708, line: 404, size: 128, elements: !5823)
!5823 = !{!5824, !5825, !5826}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5822, file: !5708, line: 424, baseType: !457, size: 64)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5822, file: !5708, line: 432, baseType: !7, size: 32, offset: 64)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5822, file: !5708, line: 440, baseType: !7, size: 32, offset: 96)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5707, file: !5708, line: 498, baseType: !5822, size: 128, offset: 384)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5707, file: !5708, line: 508, baseType: !5714, size: 33280, align: 512, offset: 512)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !378, file: !379, line: 31, baseType: !3053, size: 64, offset: 448)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !378, file: !379, line: 32, baseType: !7, size: 32, offset: 512)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !378, file: !379, line: 33, baseType: !377, size: 64, offset: 576)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !378, file: !379, line: 35, baseType: !5833, size: 64, offset: 640)
!5833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5834, size: 64)
!5834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !379, line: 17, flags: DIFlagFwdDecl)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !378, file: !379, line: 37, baseType: !864, size: 64, offset: 704)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !378, file: !379, line: 38, baseType: !1121, size: 64, offset: 768)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !378, file: !379, line: 39, baseType: !22, size: 32, offset: 832)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !378, file: !379, line: 40, baseType: !910, size: 192, offset: 896)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !378, file: !379, line: 42, baseType: !22, size: 32, offset: 1088)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !318, file: !252, line: 951, baseType: !243, size: 32, offset: 128)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !318, file: !252, line: 952, baseType: !895, size: 32, offset: 160)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !318, file: !252, line: 952, baseType: !895, size: 32, offset: 192)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !318, file: !252, line: 953, baseType: !22, size: 32, offset: 224)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !269, file: !252, line: 1012, baseType: !1296, size: 64, offset: 896)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !269, file: !252, line: 1013, baseType: !5846, size: 256, offset: 960)
!5846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !252, line: 970, size: 256, elements: !5847)
!5847 = !{!5848, !5849, !5850, !5851, !5852, !5853}
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5846, file: !252, line: 971, baseType: !39, size: 64)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5846, file: !252, line: 972, baseType: !7, size: 32, offset: 64)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !5846, file: !252, line: 973, baseType: !7, size: 32, offset: 96)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !5846, file: !252, line: 974, baseType: !7, size: 32, offset: 128)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !5846, file: !252, line: 975, baseType: !7, size: 32, offset: 160)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !5846, file: !252, line: 976, baseType: !41, size: 64, offset: 192)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !269, file: !252, line: 1014, baseType: !3795, size: 128, offset: 1216)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !269, file: !252, line: 1015, baseType: !1689, size: 64, offset: 1344)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !269, file: !252, line: 1016, baseType: !4282, size: 64, offset: 1408)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !269, file: !252, line: 1018, baseType: !457, size: 64, offset: 1472)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !269, file: !252, line: 1020, baseType: !20, size: 64, offset: 1536)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !269, file: !252, line: 1023, baseType: !20, size: 64, offset: 1600)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !269, file: !252, line: 1027, baseType: !2553, size: 64, offset: 1664)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !269, file: !252, line: 1029, baseType: !1685, size: 64, offset: 1728)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !269, file: !252, line: 1030, baseType: !4013, size: 32, offset: 1792)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !269, file: !252, line: 1031, baseType: !4013, size: 32, offset: 1824)
!5864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5865, size: 64)
!5865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !5866, line: 23, size: 960, elements: !5867)
!5866 = !DIFile(filename: "./include/uapi/asm-generic/statfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "658a15ffcd13c68b319d3420960f423d")
!5867 = !{!5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879}
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !5865, file: !5866, line: 24, baseType: !1937, size: 64)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !5865, file: !5866, line: 25, baseType: !1937, size: 64, offset: 64)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !5865, file: !5866, line: 26, baseType: !1937, size: 64, offset: 128)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !5865, file: !5866, line: 27, baseType: !1937, size: 64, offset: 192)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !5865, file: !5866, line: 28, baseType: !1937, size: 64, offset: 256)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !5865, file: !5866, line: 29, baseType: !1937, size: 64, offset: 320)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !5865, file: !5866, line: 30, baseType: !1937, size: 64, offset: 384)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !5865, file: !5866, line: 31, baseType: !3651, size: 64, offset: 448)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !5865, file: !5866, line: 32, baseType: !1937, size: 64, offset: 512)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !5865, file: !5866, line: 33, baseType: !1937, size: 64, offset: 576)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !5865, file: !5866, line: 34, baseType: !1937, size: 64, offset: 640)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !5865, file: !5866, line: 35, baseType: !5880, size: 256, offset: 704)
!5880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, size: 256, elements: !366)
!5881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5882, size: 64)
!5882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs64", file: !5866, line: 46, size: 960, elements: !5883)
!5883 = !{!5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895}
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !5882, file: !5866, line: 47, baseType: !1937, size: 64)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !5882, file: !5866, line: 48, baseType: !1937, size: 64, offset: 64)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !5882, file: !5866, line: 49, baseType: !458, size: 64, offset: 128)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !5882, file: !5866, line: 50, baseType: !458, size: 64, offset: 192)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !5882, file: !5866, line: 51, baseType: !458, size: 64, offset: 256)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !5882, file: !5866, line: 52, baseType: !458, size: 64, offset: 320)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !5882, file: !5866, line: 53, baseType: !458, size: 64, offset: 384)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !5882, file: !5866, line: 54, baseType: !3651, size: 64, offset: 448)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !5882, file: !5866, line: 55, baseType: !1937, size: 64, offset: 512)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !5882, file: !5866, line: 56, baseType: !1937, size: 64, offset: 576)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !5882, file: !5866, line: 57, baseType: !1937, size: 64, offset: 640)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !5882, file: !5866, line: 58, baseType: !5880, size: 256, offset: 704)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ustat", file: !25, line: 202, size: 256, elements: !5898)
!5898 = !{!5899, !5901, !5902, !5903}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfree", scope: !5897, file: !25, line: 203, baseType: !5900, size: 32)
!5900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_daddr_t", file: !37, line: 45, baseType: !22)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "f_tinode", scope: !5897, file: !25, line: 207, baseType: !39, size: 64, offset: 64)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "f_fname", scope: !5897, file: !25, line: 209, baseType: !976, size: 48, offset: 128)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "f_fpack", scope: !5897, file: !25, line: 210, baseType: !976, size: 48, offset: 176)
!5904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5905, size: 64)
!5905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_statfs", file: !5906, line: 63, size: 512, elements: !5907)
!5906 = !DIFile(filename: "./arch/x86/include/asm/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13e4bbbeecac635d510b530a702cc1fd")
!5907 = !{!5908, !5909, !5910, !5911, !5912, !5913, !5914, !5915, !5917, !5918, !5919, !5920}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !5905, file: !5906, line: 64, baseType: !22, size: 32)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !5905, file: !5906, line: 65, baseType: !22, size: 32, offset: 32)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !5905, file: !5906, line: 66, baseType: !22, size: 32, offset: 64)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !5905, file: !5906, line: 67, baseType: !22, size: 32, offset: 96)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !5905, file: !5906, line: 68, baseType: !22, size: 32, offset: 128)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !5905, file: !5906, line: 69, baseType: !22, size: 32, offset: 160)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !5905, file: !5906, line: 70, baseType: !22, size: 32, offset: 192)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !5905, file: !5906, line: 71, baseType: !5916, size: 64, offset: 224)
!5916 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_fsid_t", file: !5499, line: 88, baseType: !3651)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !5905, file: !5906, line: 72, baseType: !22, size: 32, offset: 288)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !5905, file: !5906, line: 73, baseType: !22, size: 32, offset: 320)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !5905, file: !5906, line: 74, baseType: !22, size: 32, offset: 352)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !5905, file: !5906, line: 75, baseType: !5921, size: 128, offset: 384)
!5921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !366)
!5922 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_size_t", file: !5499, line: 30, baseType: !409)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_statfs64", file: !5866, line: 69, size: 672, align: 32, elements: !5925)
!5925 = !{!5926, !5927, !5928, !5929, !5930, !5931, !5932, !5933, !5934, !5935, !5936, !5937}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !5924, file: !5866, line: 70, baseType: !410, size: 32)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !5924, file: !5866, line: 71, baseType: !410, size: 32, offset: 32)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !5924, file: !5866, line: 72, baseType: !458, size: 64, offset: 64)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !5924, file: !5866, line: 73, baseType: !458, size: 64, offset: 128)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !5924, file: !5866, line: 74, baseType: !458, size: 64, offset: 192)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !5924, file: !5866, line: 75, baseType: !458, size: 64, offset: 256)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !5924, file: !5866, line: 76, baseType: !458, size: 64, offset: 320)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !5924, file: !5866, line: 77, baseType: !3651, size: 64, offset: 384)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !5924, file: !5866, line: 78, baseType: !410, size: 32, offset: 448)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !5924, file: !5866, line: 79, baseType: !410, size: 32, offset: 480)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !5924, file: !5866, line: 80, baseType: !410, size: 32, offset: 512)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !5924, file: !5866, line: 81, baseType: !5938, size: 128, offset: 544)
!5938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 128, elements: !366)
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!5940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_ustat", file: !5492, line: 323, size: 160, elements: !5941)
!5941 = !{!5942, !5944, !5946, !5947}
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfree", scope: !5940, file: !5492, line: 324, baseType: !5943, size: 32)
!5943 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_daddr_t", file: !5499, line: 37, baseType: !804)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "f_tinode", scope: !5940, file: !5492, line: 325, baseType: !5945, size: 32, offset: 32)
!5945 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ino_t", file: !5499, line: 34, baseType: !409)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "f_fname", scope: !5940, file: !5492, line: 326, baseType: !976, size: 48, offset: 64)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "f_fpack", scope: !5940, file: !5492, line: 327, baseType: !976, size: 48, offset: 112)
!5948 = !{!0, !5949, !5951}
!5949 = !DIGlobalVariableExpression(var: !5950, expr: !DIExpression())
!5950 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vfs_statfs319", scope: !2, file: !3, line: 95, type: !20, isLocal: true, isDefinition: true)
!5951 = !DIGlobalVariableExpression(var: !5952, expr: !DIExpression())
!5952 = distinct !DIGlobalVariable(scope: null, file: !5953, line: 249, type: !5954, isLocal: true, isDefinition: true)
!5953 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 224, elements: !5955)
!5955 = !{!5956}
!5956 = !DISubrange(count: 28)
!5957 = !{i32 7, !"Dwarf Version", i32 5}
!5958 = !{i32 2, !"Debug Info Version", i32 3}
!5959 = !{i32 1, !"wchar_size", i32 2}
!5960 = !{i32 8, !"cf-protection-branch", i32 1}
!5961 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5962 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5963 = !{i32 1, !"Code Model", i32 2}
!5964 = !{i32 1, !"override-stack-alignment", i32 8}
!5965 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5966 = distinct !DISubprogram(name: "vfs_get_fsid", scope: !3, file: !3, line: 72, type: !5967, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5970)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!22, !1711, !5969}
!5969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!5970 = !{!5971, !5972, !5973, !5974}
!5971 = !DILocalVariable(name: "dentry", arg: 1, scope: !5966, file: !3, line: 72, type: !1711)
!5972 = !DILocalVariable(name: "fsid", arg: 2, scope: !5966, file: !3, line: 72, type: !5969)
!5973 = !DILocalVariable(name: "st", scope: !5966, file: !3, line: 74, type: !3640)
!5974 = !DILocalVariable(name: "error", scope: !5966, file: !3, line: 75, type: !22)
!5975 = !DILocation(line: 72, column: 33, scope: !5966)
!5976 = !DILocation(line: 72, column: 58, scope: !5966)
!5977 = !DILocation(line: 74, column: 2, scope: !5966)
!5978 = !DILocation(line: 74, column: 17, scope: !5966)
!5979 = !DILocation(line: 75, column: 2, scope: !5966)
!5980 = !DILocation(line: 75, column: 6, scope: !5966)
!5981 = !DILocation(line: 77, column: 27, scope: !5966)
!5982 = !DILocation(line: 77, column: 10, scope: !5966)
!5983 = !DILocation(line: 77, column: 8, scope: !5966)
!5984 = !DILocation(line: 78, column: 6, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 78, column: 6)
!5986 = !DILocation(line: 78, column: 6, scope: !5966)
!5987 = !DILocation(line: 79, column: 10, scope: !5985)
!5988 = !DILocation(line: 79, column: 3, scope: !5985)
!5989 = !DILocation(line: 81, column: 3, scope: !5966)
!5990 = !DILocation(line: 81, column: 13, scope: !5966)
!5991 = !DILocation(line: 82, column: 2, scope: !5966)
!5992 = !DILocation(line: 83, column: 1, scope: !5966)
!5993 = distinct !DISubprogram(name: "statfs_by_dentry", scope: !3, file: !3, line: 55, type: !3637, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5994)
!5994 = !{!5995, !5996, !5997}
!5995 = !DILocalVariable(name: "dentry", arg: 1, scope: !5993, file: !3, line: 55, type: !1711)
!5996 = !DILocalVariable(name: "buf", arg: 2, scope: !5993, file: !3, line: 55, type: !3639)
!5997 = !DILocalVariable(name: "retval", scope: !5993, file: !3, line: 57, type: !22)
!5998 = !DILocation(line: 55, column: 44, scope: !5993)
!5999 = !DILocation(line: 55, column: 68, scope: !5993)
!6000 = !DILocation(line: 57, column: 2, scope: !5993)
!6001 = !DILocation(line: 57, column: 6, scope: !5993)
!6002 = !DILocation(line: 59, column: 7, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 59, column: 6)
!6004 = !DILocation(line: 59, column: 15, scope: !6003)
!6005 = !DILocation(line: 59, column: 21, scope: !6003)
!6006 = !DILocation(line: 59, column: 27, scope: !6003)
!6007 = !DILocation(line: 59, column: 6, scope: !5993)
!6008 = !DILocation(line: 60, column: 3, scope: !6003)
!6009 = !DILocation(line: 62, column: 9, scope: !5993)
!6010 = !DILocation(line: 62, column: 2, scope: !5993)
!6011 = !DILocation(line: 63, column: 30, scope: !5993)
!6012 = !DILocation(line: 63, column: 11, scope: !5993)
!6013 = !DILocation(line: 63, column: 9, scope: !5993)
!6014 = !DILocation(line: 64, column: 6, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 64, column: 6)
!6016 = !DILocation(line: 64, column: 6, scope: !5993)
!6017 = !DILocation(line: 65, column: 10, scope: !6015)
!6018 = !DILocation(line: 65, column: 3, scope: !6015)
!6019 = !DILocation(line: 66, column: 11, scope: !5993)
!6020 = !DILocation(line: 66, column: 19, scope: !5993)
!6021 = !DILocation(line: 66, column: 25, scope: !5993)
!6022 = !DILocation(line: 66, column: 31, scope: !5993)
!6023 = !DILocation(line: 66, column: 38, scope: !5993)
!6024 = !DILocation(line: 66, column: 46, scope: !5993)
!6025 = !DILocation(line: 66, column: 9, scope: !5993)
!6026 = !DILocation(line: 67, column: 6, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 67, column: 6)
!6028 = !DILocation(line: 67, column: 13, scope: !6027)
!6029 = !DILocation(line: 67, column: 18, scope: !6027)
!6030 = !DILocation(line: 67, column: 21, scope: !6027)
!6031 = !DILocation(line: 67, column: 26, scope: !6027)
!6032 = !DILocation(line: 67, column: 35, scope: !6027)
!6033 = !DILocation(line: 67, column: 6, scope: !5993)
!6034 = !DILocation(line: 68, column: 19, scope: !6027)
!6035 = !DILocation(line: 68, column: 24, scope: !6027)
!6036 = !DILocation(line: 68, column: 3, scope: !6027)
!6037 = !DILocation(line: 68, column: 8, scope: !6027)
!6038 = !DILocation(line: 68, column: 17, scope: !6027)
!6039 = !DILocation(line: 69, column: 9, scope: !5993)
!6040 = !DILocation(line: 69, column: 2, scope: !5993)
!6041 = !DILocation(line: 70, column: 1, scope: !5993)
!6042 = distinct !DISubprogram(name: "vfs_statfs", scope: !3, file: !3, line: 86, type: !6043, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6045)
!6043 = !DISubroutineType(types: !6044)
!6044 = !{!22, !3793, !3639}
!6045 = !{!6046, !6047, !6048}
!6046 = !DILocalVariable(name: "path", arg: 1, scope: !6042, file: !3, line: 86, type: !3793)
!6047 = !DILocalVariable(name: "buf", arg: 2, scope: !6042, file: !3, line: 86, type: !3639)
!6048 = !DILocalVariable(name: "error", scope: !6042, file: !3, line: 88, type: !22)
!6049 = !DILocation(line: 86, column: 35, scope: !6042)
!6050 = !DILocation(line: 86, column: 57, scope: !6042)
!6051 = !DILocation(line: 88, column: 2, scope: !6042)
!6052 = !DILocation(line: 88, column: 6, scope: !6042)
!6053 = !DILocation(line: 90, column: 27, scope: !6042)
!6054 = !DILocation(line: 90, column: 33, scope: !6042)
!6055 = !DILocation(line: 90, column: 41, scope: !6042)
!6056 = !DILocation(line: 90, column: 10, scope: !6042)
!6057 = !DILocation(line: 90, column: 8, scope: !6042)
!6058 = !DILocation(line: 91, column: 7, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 91, column: 6)
!6060 = !DILocation(line: 91, column: 6, scope: !6042)
!6061 = !DILocation(line: 92, column: 36, scope: !6059)
!6062 = !DILocation(line: 92, column: 42, scope: !6059)
!6063 = !DILocation(line: 92, column: 18, scope: !6059)
!6064 = !DILocation(line: 92, column: 3, scope: !6059)
!6065 = !DILocation(line: 92, column: 8, scope: !6059)
!6066 = !DILocation(line: 92, column: 16, scope: !6059)
!6067 = !DILocation(line: 93, column: 9, scope: !6042)
!6068 = !DILocation(line: 94, column: 1, scope: !6042)
!6069 = !DILocation(line: 93, column: 2, scope: !6042)
!6070 = distinct !DISubprogram(name: "calculate_f_flags", scope: !3, file: !3, line: 49, type: !6071, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6073)
!6071 = !DISubroutineType(types: !6072)
!6072 = !{!22, !1811}
!6073 = !{!6074}
!6074 = !DILocalVariable(name: "mnt", arg: 1, scope: !6070, file: !3, line: 49, type: !1811)
!6075 = !DILocation(line: 49, column: 47, scope: !6070)
!6076 = !DILocation(line: 51, column: 33, scope: !6070)
!6077 = !DILocation(line: 51, column: 38, scope: !6070)
!6078 = !DILocation(line: 51, column: 20, scope: !6070)
!6079 = !DILocation(line: 51, column: 18, scope: !6070)
!6080 = !DILocation(line: 52, column: 15, scope: !6070)
!6081 = !DILocation(line: 52, column: 20, scope: !6070)
!6082 = !DILocation(line: 52, column: 28, scope: !6070)
!6083 = !DILocation(line: 52, column: 3, scope: !6070)
!6084 = !DILocation(line: 51, column: 49, scope: !6070)
!6085 = !DILocation(line: 51, column: 2, scope: !6070)
!6086 = distinct !DISubprogram(name: "user_statfs", scope: !3, file: !3, line: 97, type: !6087, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6089)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{!22, !16, !3639}
!6089 = !{!6090, !6091, !6092, !6093, !6094, !6095}
!6090 = !DILocalVariable(name: "pathname", arg: 1, scope: !6086, file: !3, line: 97, type: !16)
!6091 = !DILocalVariable(name: "st", arg: 2, scope: !6086, file: !3, line: 97, type: !3639)
!6092 = !DILocalVariable(name: "path", scope: !6086, file: !3, line: 99, type: !3795)
!6093 = !DILocalVariable(name: "error", scope: !6086, file: !3, line: 100, type: !22)
!6094 = !DILocalVariable(name: "lookup_flags", scope: !6086, file: !3, line: 101, type: !7)
!6095 = !DILabel(scope: !6086, name: "retry", file: !3, line: 102)
!6096 = !DILocation(line: 97, column: 36, scope: !6086)
!6097 = !DILocation(line: 97, column: 62, scope: !6086)
!6098 = !DILocation(line: 99, column: 2, scope: !6086)
!6099 = !DILocation(line: 99, column: 14, scope: !6086)
!6100 = !DILocation(line: 100, column: 2, scope: !6086)
!6101 = !DILocation(line: 100, column: 6, scope: !6086)
!6102 = !DILocation(line: 101, column: 2, scope: !6086)
!6103 = !DILocation(line: 101, column: 15, scope: !6086)
!6104 = !DILocation(line: 102, column: 1, scope: !6086)
!6105 = !DILocation(line: 103, column: 33, scope: !6086)
!6106 = !DILocation(line: 103, column: 43, scope: !6086)
!6107 = !DILocation(line: 103, column: 10, scope: !6086)
!6108 = !DILocation(line: 103, column: 8, scope: !6086)
!6109 = !DILocation(line: 104, column: 7, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 104, column: 6)
!6111 = !DILocation(line: 104, column: 6, scope: !6086)
!6112 = !DILocation(line: 105, column: 29, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 104, column: 14)
!6114 = !DILocation(line: 105, column: 11, scope: !6113)
!6115 = !DILocation(line: 105, column: 9, scope: !6113)
!6116 = !DILocation(line: 106, column: 3, scope: !6113)
!6117 = !DILocation(line: 107, column: 20, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 107, column: 7)
!6119 = !DILocation(line: 107, column: 27, scope: !6118)
!6120 = !DILocation(line: 107, column: 7, scope: !6118)
!6121 = !DILocation(line: 107, column: 7, scope: !6113)
!6122 = !DILocation(line: 108, column: 17, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 107, column: 42)
!6124 = !DILocation(line: 109, column: 4, scope: !6123)
!6125 = !DILocation(line: 111, column: 2, scope: !6113)
!6126 = !DILocation(line: 112, column: 9, scope: !6086)
!6127 = !DILocation(line: 113, column: 1, scope: !6086)
!6128 = !DILocation(line: 112, column: 2, scope: !6086)
!6129 = distinct !DISubprogram(name: "user_path_at", scope: !6130, file: !6130, line: 54, type: !6131, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6133)
!6130 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!6131 = !DISubroutineType(types: !6132)
!6132 = !{!22, !22, !16, !7, !4046}
!6133 = !{!6134, !6135, !6136, !6137}
!6134 = !DILocalVariable(name: "dfd", arg: 1, scope: !6129, file: !6130, line: 54, type: !22)
!6135 = !DILocalVariable(name: "name", arg: 2, scope: !6129, file: !6130, line: 54, type: !16)
!6136 = !DILocalVariable(name: "flags", arg: 3, scope: !6129, file: !6130, line: 54, type: !7)
!6137 = !DILocalVariable(name: "path", arg: 4, scope: !6129, file: !6130, line: 55, type: !4046)
!6138 = !DILocation(line: 54, column: 36, scope: !6129)
!6139 = !DILocation(line: 54, column: 60, scope: !6129)
!6140 = !DILocation(line: 54, column: 75, scope: !6129)
!6141 = !DILocation(line: 55, column: 17, scope: !6129)
!6142 = !DILocation(line: 57, column: 28, scope: !6129)
!6143 = !DILocation(line: 57, column: 33, scope: !6129)
!6144 = !DILocation(line: 57, column: 39, scope: !6129)
!6145 = !DILocation(line: 57, column: 46, scope: !6129)
!6146 = !DILocation(line: 57, column: 9, scope: !6129)
!6147 = !DILocation(line: 57, column: 2, scope: !6129)
!6148 = !DISubprogram(name: "path_put", scope: !3796, file: !3796, line: 14, type: !6149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6149 = !DISubroutineType(types: !6150)
!6150 = !{null, !3793}
!6151 = distinct !DISubprogram(name: "retry_estale", scope: !6130, file: !6130, line: 113, type: !6152, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6155)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{!922, !6154, !2385}
!6154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!6155 = !{!6156, !6157}
!6156 = !DILocalVariable(name: "error", arg: 1, scope: !6151, file: !6130, line: 113, type: !6154)
!6157 = !DILocalVariable(name: "flags", arg: 2, scope: !6151, file: !6130, line: 113, type: !2385)
!6158 = !DILocation(line: 113, column: 25, scope: !6151)
!6159 = !DILocation(line: 113, column: 51, scope: !6151)
!6160 = !DILocation(line: 115, column: 9, scope: !6151)
!6161 = !DILocation(line: 115, column: 15, scope: !6151)
!6162 = !DILocation(line: 115, column: 26, scope: !6151)
!6163 = !DILocation(line: 115, column: 31, scope: !6151)
!6164 = !DILocation(line: 115, column: 37, scope: !6151)
!6165 = !DILocation(line: 115, column: 29, scope: !6151)
!6166 = !DILocation(line: 0, scope: !6151)
!6167 = !DILocation(line: 115, column: 2, scope: !6151)
!6168 = distinct !DISubprogram(name: "fd_statfs", scope: !3, file: !3, line: 115, type: !6169, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6171)
!6169 = !DISubroutineType(types: !6170)
!6170 = !{!22, !22, !3639}
!6171 = !{!6172, !6173, !6174, !6180}
!6172 = !DILocalVariable(name: "fd", arg: 1, scope: !6168, file: !3, line: 115, type: !22)
!6173 = !DILocalVariable(name: "st", arg: 2, scope: !6168, file: !3, line: 115, type: !3639)
!6174 = !DILocalVariable(name: "f", scope: !6168, file: !3, line: 117, type: !6175)
!6175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd", file: !6176, line: 36, size: 128, elements: !6177)
!6176 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!6177 = !{!6178, !6179}
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !6175, file: !6176, line: 37, baseType: !268, size: 64)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6175, file: !6176, line: 38, baseType: !7, size: 32, offset: 64)
!6180 = !DILocalVariable(name: "error", scope: !6168, file: !3, line: 118, type: !22)
!6181 = !DILocation(line: 115, column: 19, scope: !6168)
!6182 = !DILocation(line: 115, column: 39, scope: !6168)
!6183 = !DILocation(line: 117, column: 2, scope: !6168)
!6184 = !DILocation(line: 117, column: 12, scope: !6168)
!6185 = !DILocation(line: 117, column: 26, scope: !6168)
!6186 = !DILocation(line: 117, column: 16, scope: !6168)
!6187 = !DILocation(line: 118, column: 2, scope: !6168)
!6188 = !DILocation(line: 118, column: 6, scope: !6168)
!6189 = !DILocation(line: 119, column: 8, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6168, file: !3, line: 119, column: 6)
!6191 = !DILocation(line: 119, column: 6, scope: !6190)
!6192 = !DILocation(line: 119, column: 6, scope: !6168)
!6193 = !DILocation(line: 120, column: 25, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 119, column: 14)
!6195 = !DILocation(line: 120, column: 31, scope: !6194)
!6196 = !DILocation(line: 120, column: 39, scope: !6194)
!6197 = !DILocation(line: 120, column: 11, scope: !6194)
!6198 = !DILocation(line: 120, column: 9, scope: !6194)
!6199 = !DILocation(line: 121, column: 3, scope: !6194)
!6200 = !DILocation(line: 122, column: 2, scope: !6194)
!6201 = !DILocation(line: 123, column: 9, scope: !6168)
!6202 = !DILocation(line: 124, column: 1, scope: !6168)
!6203 = !DILocation(line: 123, column: 2, scope: !6168)
!6204 = distinct !DISubprogram(name: "fdget_raw", scope: !6176, file: !6176, line: 67, type: !6205, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6207)
!6205 = !DISubroutineType(types: !6206)
!6206 = !{!6175, !7}
!6207 = !{!6208}
!6208 = !DILocalVariable(name: "fd", arg: 1, scope: !6204, file: !6176, line: 67, type: !7)
!6209 = !DILocation(line: 67, column: 48, scope: !6204)
!6210 = !DILocation(line: 69, column: 29, scope: !6204)
!6211 = !DILocation(line: 69, column: 17, scope: !6204)
!6212 = !DILocation(line: 69, column: 9, scope: !6204)
!6213 = !DILocation(line: 69, column: 2, scope: !6204)
!6214 = distinct !DISubprogram(name: "fdput", scope: !6176, file: !6176, line: 43, type: !6215, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6217)
!6215 = !DISubroutineType(types: !6216)
!6216 = !{null, !6175}
!6217 = !{!6218}
!6218 = !DILocalVariable(name: "fd", arg: 1, scope: !6214, file: !6176, line: 43, type: !6175)
!6219 = !DILocation(line: 43, column: 36, scope: !6214)
!6220 = !DILocation(line: 45, column: 9, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6214, file: !6176, line: 45, column: 6)
!6222 = !DILocation(line: 45, column: 15, scope: !6221)
!6223 = !DILocation(line: 45, column: 6, scope: !6214)
!6224 = !DILocation(line: 46, column: 11, scope: !6221)
!6225 = !DILocation(line: 46, column: 3, scope: !6221)
!6226 = !DILocation(line: 47, column: 1, scope: !6214)
!6227 = distinct !DISubprogram(name: "__x64_sys_statfs", scope: !3, file: !3, line: 192, type: !6228, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6232)
!6228 = !DISubroutineType(types: !6229)
!6229 = !{!840, !6230}
!6230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6231, size: 64)
!6231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3478)
!6232 = !{!6233}
!6233 = !DILocalVariable(name: "regs", arg: 1, scope: !6227, file: !3, line: 192, type: !6230)
!6234 = !DILocation(line: 192, column: 1, scope: !6227)
!6235 = distinct !DISubprogram(name: "__se_sys_statfs", scope: !3, file: !3, line: 192, type: !6236, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6238)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!840, !840, !840}
!6238 = !{!6239, !6240, !6241}
!6239 = !DILocalVariable(name: "pathname", arg: 1, scope: !6235, file: !3, line: 192, type: !840)
!6240 = !DILocalVariable(name: "buf", arg: 2, scope: !6235, file: !3, line: 192, type: !840)
!6241 = !DILocalVariable(name: "ret", scope: !6235, file: !3, line: 192, type: !840)
!6242 = !DILocation(line: 192, column: 1, scope: !6235)
!6243 = !DILocation(line: 192, column: 1, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6235, file: !3, line: 192, column: 1)
!6245 = distinct !DISubprogram(name: "__ia32_sys_statfs", scope: !3, file: !3, line: 192, type: !6228, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6246)
!6246 = !{!6247}
!6247 = !DILocalVariable(name: "regs", arg: 1, scope: !6245, file: !3, line: 192, type: !6230)
!6248 = !DILocation(line: 192, column: 1, scope: !6245)
!6249 = distinct !DISubprogram(name: "__x64_sys_statfs64", scope: !3, file: !3, line: 201, type: !6228, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6250)
!6250 = !{!6251}
!6251 = !DILocalVariable(name: "regs", arg: 1, scope: !6249, file: !3, line: 201, type: !6230)
!6252 = !DILocation(line: 201, column: 1, scope: !6249)
!6253 = distinct !DISubprogram(name: "__se_sys_statfs64", scope: !3, file: !3, line: 201, type: !6254, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6256)
!6254 = !DISubroutineType(types: !6255)
!6255 = !{!840, !840, !840, !840}
!6256 = !{!6257, !6258, !6259, !6260}
!6257 = !DILocalVariable(name: "pathname", arg: 1, scope: !6253, file: !3, line: 201, type: !840)
!6258 = !DILocalVariable(name: "sz", arg: 2, scope: !6253, file: !3, line: 201, type: !840)
!6259 = !DILocalVariable(name: "buf", arg: 3, scope: !6253, file: !3, line: 201, type: !840)
!6260 = !DILocalVariable(name: "ret", scope: !6253, file: !3, line: 201, type: !840)
!6261 = !DILocation(line: 201, column: 1, scope: !6253)
!6262 = !DILocation(line: 201, column: 1, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 201, column: 1)
!6264 = distinct !DISubprogram(name: "__ia32_sys_statfs64", scope: !3, file: !3, line: 201, type: !6228, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6265)
!6265 = !{!6266}
!6266 = !DILocalVariable(name: "regs", arg: 1, scope: !6264, file: !3, line: 201, type: !6230)
!6267 = !DILocation(line: 201, column: 1, scope: !6264)
!6268 = distinct !DISubprogram(name: "__x64_sys_fstatfs", scope: !3, file: !3, line: 213, type: !6228, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6269)
!6269 = !{!6270}
!6270 = !DILocalVariable(name: "regs", arg: 1, scope: !6268, file: !3, line: 213, type: !6230)
!6271 = !DILocation(line: 213, column: 1, scope: !6268)
!6272 = distinct !DISubprogram(name: "__se_sys_fstatfs", scope: !3, file: !3, line: 213, type: !6236, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6273)
!6273 = !{!6274, !6275, !6276}
!6274 = !DILocalVariable(name: "fd", arg: 1, scope: !6272, file: !3, line: 213, type: !840)
!6275 = !DILocalVariable(name: "buf", arg: 2, scope: !6272, file: !3, line: 213, type: !840)
!6276 = !DILocalVariable(name: "ret", scope: !6272, file: !3, line: 213, type: !840)
!6277 = !DILocation(line: 213, column: 1, scope: !6272)
!6278 = !DILocation(line: 213, column: 1, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6272, file: !3, line: 213, column: 1)
!6280 = distinct !DISubprogram(name: "__ia32_sys_fstatfs", scope: !3, file: !3, line: 213, type: !6228, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6281)
!6281 = !{!6282}
!6282 = !DILocalVariable(name: "regs", arg: 1, scope: !6280, file: !3, line: 213, type: !6230)
!6283 = !DILocation(line: 213, column: 1, scope: !6280)
!6284 = distinct !DISubprogram(name: "__x64_sys_fstatfs64", scope: !3, file: !3, line: 222, type: !6228, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6285)
!6285 = !{!6286}
!6286 = !DILocalVariable(name: "regs", arg: 1, scope: !6284, file: !3, line: 222, type: !6230)
!6287 = !DILocation(line: 222, column: 1, scope: !6284)
!6288 = distinct !DISubprogram(name: "__se_sys_fstatfs64", scope: !3, file: !3, line: 222, type: !6254, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6289)
!6289 = !{!6290, !6291, !6292, !6293}
!6290 = !DILocalVariable(name: "fd", arg: 1, scope: !6288, file: !3, line: 222, type: !840)
!6291 = !DILocalVariable(name: "sz", arg: 2, scope: !6288, file: !3, line: 222, type: !840)
!6292 = !DILocalVariable(name: "buf", arg: 3, scope: !6288, file: !3, line: 222, type: !840)
!6293 = !DILocalVariable(name: "ret", scope: !6288, file: !3, line: 222, type: !840)
!6294 = !DILocation(line: 222, column: 1, scope: !6288)
!6295 = !DILocation(line: 222, column: 1, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 222, column: 1)
!6297 = distinct !DISubprogram(name: "__ia32_sys_fstatfs64", scope: !3, file: !3, line: 222, type: !6228, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6298)
!6298 = !{!6299}
!6299 = !DILocalVariable(name: "regs", arg: 1, scope: !6297, file: !3, line: 222, type: !6230)
!6300 = !DILocation(line: 222, column: 1, scope: !6297)
!6301 = distinct !DISubprogram(name: "__x64_sys_ustat", scope: !3, file: !3, line: 248, type: !6228, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6302)
!6302 = !{!6303}
!6303 = !DILocalVariable(name: "regs", arg: 1, scope: !6301, file: !3, line: 248, type: !6230)
!6304 = !DILocation(line: 248, column: 1, scope: !6301)
!6305 = distinct !DISubprogram(name: "__se_sys_ustat", scope: !3, file: !3, line: 248, type: !6236, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6306)
!6306 = !{!6307, !6308, !6309}
!6307 = !DILocalVariable(name: "dev", arg: 1, scope: !6305, file: !3, line: 248, type: !840)
!6308 = !DILocalVariable(name: "ubuf", arg: 2, scope: !6305, file: !3, line: 248, type: !840)
!6309 = !DILocalVariable(name: "ret", scope: !6305, file: !3, line: 248, type: !840)
!6310 = !DILocation(line: 248, column: 1, scope: !6305)
!6311 = !DILocation(line: 248, column: 1, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6305, file: !3, line: 248, column: 1)
!6313 = distinct !DISubprogram(name: "__ia32_sys_ustat", scope: !3, file: !3, line: 248, type: !6228, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6314)
!6314 = !{!6315}
!6315 = !DILocalVariable(name: "regs", arg: 1, scope: !6313, file: !3, line: 248, type: !6230)
!6316 = !DILocation(line: 248, column: 1, scope: !6313)
!6317 = distinct !DISubprogram(name: "__ia32_compat_sys_statfs", scope: !3, file: !3, line: 305, type: !6228, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6318)
!6318 = !{!6319}
!6319 = !DILocalVariable(name: "regs", arg: 1, scope: !6317, file: !3, line: 305, type: !6230)
!6320 = !DILocation(line: 305, column: 1, scope: !6317)
!6321 = distinct !DISubprogram(name: "__se_compat_sys_statfs", scope: !3, file: !3, line: 305, type: !6236, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6322)
!6322 = !{!6323, !6324}
!6323 = !DILocalVariable(name: "pathname", arg: 1, scope: !6321, file: !3, line: 305, type: !840)
!6324 = !DILocalVariable(name: "buf", arg: 2, scope: !6321, file: !3, line: 305, type: !840)
!6325 = !DILocation(line: 305, column: 1, scope: !6321)
!6326 = distinct !DISubprogram(name: "__ia32_compat_sys_fstatfs", scope: !3, file: !3, line: 314, type: !6228, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6327)
!6327 = !{!6328}
!6328 = !DILocalVariable(name: "regs", arg: 1, scope: !6326, file: !3, line: 314, type: !6230)
!6329 = !DILocation(line: 314, column: 1, scope: !6326)
!6330 = distinct !DISubprogram(name: "__se_compat_sys_fstatfs", scope: !3, file: !3, line: 314, type: !6236, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6331)
!6331 = !{!6332, !6333}
!6332 = !DILocalVariable(name: "fd", arg: 1, scope: !6330, file: !3, line: 314, type: !840)
!6333 = !DILocalVariable(name: "buf", arg: 2, scope: !6330, file: !3, line: 314, type: !840)
!6334 = !DILocation(line: 314, column: 1, scope: !6330)
!6335 = distinct !DISubprogram(name: "kcompat_sys_statfs64", scope: !3, file: !3, line: 348, type: !6336, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6338)
!6336 = !DISubroutineType(types: !6337)
!6337 = !{!22, !16, !5922, !5923}
!6338 = !{!6339, !6340, !6341, !6342, !6343}
!6339 = !DILocalVariable(name: "pathname", arg: 1, scope: !6335, file: !3, line: 348, type: !16)
!6340 = !DILocalVariable(name: "sz", arg: 2, scope: !6335, file: !3, line: 348, type: !5922)
!6341 = !DILocalVariable(name: "buf", arg: 3, scope: !6335, file: !3, line: 348, type: !5923)
!6342 = !DILocalVariable(name: "tmp", scope: !6335, file: !3, line: 350, type: !3640)
!6343 = !DILocalVariable(name: "error", scope: !6335, file: !3, line: 351, type: !22)
!6344 = !DILocation(line: 348, column: 46, scope: !6335)
!6345 = !DILocation(line: 348, column: 70, scope: !6335)
!6346 = !DILocation(line: 348, column: 106, scope: !6335)
!6347 = !DILocation(line: 350, column: 2, scope: !6335)
!6348 = !DILocation(line: 350, column: 17, scope: !6335)
!6349 = !DILocation(line: 351, column: 2, scope: !6335)
!6350 = !DILocation(line: 351, column: 6, scope: !6335)
!6351 = !DILocation(line: 353, column: 6, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 353, column: 6)
!6353 = !DILocation(line: 353, column: 9, scope: !6352)
!6354 = !DILocation(line: 353, column: 6, scope: !6335)
!6355 = !DILocation(line: 354, column: 3, scope: !6352)
!6356 = !DILocation(line: 356, column: 22, scope: !6335)
!6357 = !DILocation(line: 356, column: 10, scope: !6335)
!6358 = !DILocation(line: 356, column: 8, scope: !6335)
!6359 = !DILocation(line: 357, column: 7, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 357, column: 6)
!6361 = !DILocation(line: 357, column: 6, scope: !6335)
!6362 = !DILocation(line: 358, column: 31, scope: !6360)
!6363 = !DILocation(line: 358, column: 11, scope: !6360)
!6364 = !DILocation(line: 358, column: 9, scope: !6360)
!6365 = !DILocation(line: 358, column: 3, scope: !6360)
!6366 = !DILocation(line: 359, column: 9, scope: !6335)
!6367 = !DILocation(line: 359, column: 2, scope: !6335)
!6368 = !DILocation(line: 360, column: 1, scope: !6335)
!6369 = distinct !DISubprogram(name: "put_compat_statfs64", scope: !3, file: !3, line: 323, type: !6370, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6372)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{!22, !5923, !3639}
!6372 = !{!6373, !6374, !6375}
!6373 = !DILocalVariable(name: "ubuf", arg: 1, scope: !6369, file: !3, line: 323, type: !5923)
!6374 = !DILocalVariable(name: "kbuf", arg: 2, scope: !6369, file: !3, line: 323, type: !3639)
!6375 = !DILocalVariable(name: "buf", scope: !6369, file: !3, line: 325, type: !5924)
!6376 = !DILocation(line: 323, column: 63, scope: !6369)
!6377 = !DILocation(line: 323, column: 85, scope: !6369)
!6378 = !DILocation(line: 325, column: 2, scope: !6369)
!6379 = !DILocation(line: 325, column: 25, scope: !6369)
!6380 = !DILocation(line: 327, column: 7, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 327, column: 6)
!6382 = !DILocation(line: 327, column: 13, scope: !6381)
!6383 = !DILocation(line: 327, column: 23, scope: !6381)
!6384 = !DILocation(line: 327, column: 29, scope: !6381)
!6385 = !DILocation(line: 327, column: 21, scope: !6381)
!6386 = !DILocation(line: 327, column: 39, scope: !6381)
!6387 = !DILocation(line: 327, column: 6, scope: !6369)
!6388 = !DILocation(line: 328, column: 3, scope: !6381)
!6389 = !DILocation(line: 330, column: 2, scope: !6369)
!6390 = !DILocation(line: 331, column: 15, scope: !6369)
!6391 = !DILocation(line: 331, column: 21, scope: !6369)
!6392 = !DILocation(line: 331, column: 6, scope: !6369)
!6393 = !DILocation(line: 331, column: 13, scope: !6369)
!6394 = !DILocation(line: 332, column: 16, scope: !6369)
!6395 = !DILocation(line: 332, column: 22, scope: !6369)
!6396 = !DILocation(line: 332, column: 6, scope: !6369)
!6397 = !DILocation(line: 332, column: 14, scope: !6369)
!6398 = !DILocation(line: 333, column: 17, scope: !6369)
!6399 = !DILocation(line: 333, column: 23, scope: !6369)
!6400 = !DILocation(line: 333, column: 6, scope: !6369)
!6401 = !DILocation(line: 333, column: 15, scope: !6369)
!6402 = !DILocation(line: 334, column: 16, scope: !6369)
!6403 = !DILocation(line: 334, column: 22, scope: !6369)
!6404 = !DILocation(line: 334, column: 6, scope: !6369)
!6405 = !DILocation(line: 334, column: 14, scope: !6369)
!6406 = !DILocation(line: 335, column: 17, scope: !6369)
!6407 = !DILocation(line: 335, column: 23, scope: !6369)
!6408 = !DILocation(line: 335, column: 6, scope: !6369)
!6409 = !DILocation(line: 335, column: 15, scope: !6369)
!6410 = !DILocation(line: 336, column: 16, scope: !6369)
!6411 = !DILocation(line: 336, column: 22, scope: !6369)
!6412 = !DILocation(line: 336, column: 6, scope: !6369)
!6413 = !DILocation(line: 336, column: 14, scope: !6369)
!6414 = !DILocation(line: 337, column: 16, scope: !6369)
!6415 = !DILocation(line: 337, column: 22, scope: !6369)
!6416 = !DILocation(line: 337, column: 6, scope: !6369)
!6417 = !DILocation(line: 337, column: 14, scope: !6369)
!6418 = !DILocation(line: 338, column: 18, scope: !6369)
!6419 = !DILocation(line: 338, column: 24, scope: !6369)
!6420 = !DILocation(line: 338, column: 6, scope: !6369)
!6421 = !DILocation(line: 338, column: 16, scope: !6369)
!6422 = !DILocation(line: 339, column: 22, scope: !6369)
!6423 = !DILocation(line: 339, column: 28, scope: !6369)
!6424 = !DILocation(line: 339, column: 35, scope: !6369)
!6425 = !DILocation(line: 339, column: 6, scope: !6369)
!6426 = !DILocation(line: 339, column: 13, scope: !6369)
!6427 = !DILocation(line: 339, column: 2, scope: !6369)
!6428 = !DILocation(line: 339, column: 20, scope: !6369)
!6429 = !DILocation(line: 340, column: 22, scope: !6369)
!6430 = !DILocation(line: 340, column: 28, scope: !6369)
!6431 = !DILocation(line: 340, column: 35, scope: !6369)
!6432 = !DILocation(line: 340, column: 6, scope: !6369)
!6433 = !DILocation(line: 340, column: 13, scope: !6369)
!6434 = !DILocation(line: 340, column: 2, scope: !6369)
!6435 = !DILocation(line: 340, column: 20, scope: !6369)
!6436 = !DILocation(line: 341, column: 17, scope: !6369)
!6437 = !DILocation(line: 341, column: 23, scope: !6369)
!6438 = !DILocation(line: 341, column: 6, scope: !6369)
!6439 = !DILocation(line: 341, column: 15, scope: !6369)
!6440 = !DILocation(line: 342, column: 16, scope: !6369)
!6441 = !DILocation(line: 342, column: 22, scope: !6369)
!6442 = !DILocation(line: 342, column: 6, scope: !6369)
!6443 = !DILocation(line: 342, column: 14, scope: !6369)
!6444 = !DILocation(line: 343, column: 19, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 343, column: 6)
!6446 = !DILocation(line: 343, column: 6, scope: !6445)
!6447 = !DILocation(line: 343, column: 6, scope: !6369)
!6448 = !DILocation(line: 344, column: 3, scope: !6445)
!6449 = !DILocation(line: 345, column: 2, scope: !6369)
!6450 = !DILocation(line: 346, column: 1, scope: !6369)
!6451 = distinct !DISubprogram(name: "__ia32_compat_sys_statfs64", scope: !3, file: !3, line: 362, type: !6228, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6452)
!6452 = !{!6453}
!6453 = !DILocalVariable(name: "regs", arg: 1, scope: !6451, file: !3, line: 362, type: !6230)
!6454 = !DILocation(line: 362, column: 1, scope: !6451)
!6455 = distinct !DISubprogram(name: "__se_compat_sys_statfs64", scope: !3, file: !3, line: 362, type: !6254, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6456)
!6456 = !{!6457, !6458, !6459}
!6457 = !DILocalVariable(name: "pathname", arg: 1, scope: !6455, file: !3, line: 362, type: !840)
!6458 = !DILocalVariable(name: "sz", arg: 2, scope: !6455, file: !3, line: 362, type: !840)
!6459 = !DILocalVariable(name: "buf", arg: 3, scope: !6455, file: !3, line: 362, type: !840)
!6460 = !DILocation(line: 362, column: 1, scope: !6455)
!6461 = distinct !DISubprogram(name: "kcompat_sys_fstatfs64", scope: !3, file: !3, line: 367, type: !6462, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6464)
!6462 = !DISubroutineType(types: !6463)
!6463 = !{!22, !7, !5922, !5923}
!6464 = !{!6465, !6466, !6467, !6468, !6469}
!6465 = !DILocalVariable(name: "fd", arg: 1, scope: !6461, file: !3, line: 367, type: !7)
!6466 = !DILocalVariable(name: "sz", arg: 2, scope: !6461, file: !3, line: 367, type: !5922)
!6467 = !DILocalVariable(name: "buf", arg: 3, scope: !6461, file: !3, line: 367, type: !5923)
!6468 = !DILocalVariable(name: "tmp", scope: !6461, file: !3, line: 369, type: !3640)
!6469 = !DILocalVariable(name: "error", scope: !6461, file: !3, line: 370, type: !22)
!6470 = !DILocation(line: 367, column: 40, scope: !6461)
!6471 = !DILocation(line: 367, column: 58, scope: !6461)
!6472 = !DILocation(line: 367, column: 94, scope: !6461)
!6473 = !DILocation(line: 369, column: 2, scope: !6461)
!6474 = !DILocation(line: 369, column: 17, scope: !6461)
!6475 = !DILocation(line: 370, column: 2, scope: !6461)
!6476 = !DILocation(line: 370, column: 6, scope: !6461)
!6477 = !DILocation(line: 372, column: 6, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6461, file: !3, line: 372, column: 6)
!6479 = !DILocation(line: 372, column: 9, scope: !6478)
!6480 = !DILocation(line: 372, column: 6, scope: !6461)
!6481 = !DILocation(line: 373, column: 3, scope: !6478)
!6482 = !DILocation(line: 375, column: 20, scope: !6461)
!6483 = !DILocation(line: 375, column: 10, scope: !6461)
!6484 = !DILocation(line: 375, column: 8, scope: !6461)
!6485 = !DILocation(line: 376, column: 7, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6461, file: !3, line: 376, column: 6)
!6487 = !DILocation(line: 376, column: 6, scope: !6461)
!6488 = !DILocation(line: 377, column: 31, scope: !6486)
!6489 = !DILocation(line: 377, column: 11, scope: !6486)
!6490 = !DILocation(line: 377, column: 9, scope: !6486)
!6491 = !DILocation(line: 377, column: 3, scope: !6486)
!6492 = !DILocation(line: 378, column: 9, scope: !6461)
!6493 = !DILocation(line: 378, column: 2, scope: !6461)
!6494 = !DILocation(line: 379, column: 1, scope: !6461)
!6495 = distinct !DISubprogram(name: "__ia32_compat_sys_fstatfs64", scope: !3, file: !3, line: 381, type: !6228, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6496)
!6496 = !{!6497}
!6497 = !DILocalVariable(name: "regs", arg: 1, scope: !6495, file: !3, line: 381, type: !6230)
!6498 = !DILocation(line: 381, column: 1, scope: !6495)
!6499 = distinct !DISubprogram(name: "__se_compat_sys_fstatfs64", scope: !3, file: !3, line: 381, type: !6254, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6500)
!6500 = !{!6501, !6502, !6503}
!6501 = !DILocalVariable(name: "fd", arg: 1, scope: !6499, file: !3, line: 381, type: !840)
!6502 = !DILocalVariable(name: "sz", arg: 2, scope: !6499, file: !3, line: 381, type: !840)
!6503 = !DILocalVariable(name: "buf", arg: 3, scope: !6499, file: !3, line: 381, type: !840)
!6504 = !DILocation(line: 381, column: 1, scope: !6499)
!6505 = distinct !DISubprogram(name: "__ia32_compat_sys_ustat", scope: !3, file: !3, line: 391, type: !6228, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6506)
!6506 = !{!6507}
!6507 = !DILocalVariable(name: "regs", arg: 1, scope: !6505, file: !3, line: 391, type: !6230)
!6508 = !DILocation(line: 391, column: 1, scope: !6505)
!6509 = distinct !DISubprogram(name: "__se_compat_sys_ustat", scope: !3, file: !3, line: 391, type: !6236, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6510)
!6510 = !{!6511, !6512}
!6511 = !DILocalVariable(name: "dev", arg: 1, scope: !6509, file: !3, line: 391, type: !840)
!6512 = !DILocalVariable(name: "u", arg: 2, scope: !6509, file: !3, line: 391, type: !840)
!6513 = !DILocation(line: 391, column: 1, scope: !6509)
!6514 = !DISubprogram(name: "security_sb_statfs", scope: !6515, file: !6515, line: 309, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6515 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!6516 = distinct !DISubprogram(name: "flags_by_mnt", scope: !3, file: !3, line: 14, type: !4450, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6517)
!6517 = !{!6518, !6519}
!6518 = !DILocalVariable(name: "mnt_flags", arg: 1, scope: !6516, file: !3, line: 14, type: !22)
!6519 = !DILocalVariable(name: "flags", scope: !6516, file: !3, line: 16, type: !22)
!6520 = !DILocation(line: 14, column: 29, scope: !6516)
!6521 = !DILocation(line: 16, column: 2, scope: !6516)
!6522 = !DILocation(line: 16, column: 6, scope: !6516)
!6523 = !DILocation(line: 18, column: 6, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 18, column: 6)
!6525 = !DILocation(line: 18, column: 16, scope: !6524)
!6526 = !DILocation(line: 18, column: 6, scope: !6516)
!6527 = !DILocation(line: 19, column: 9, scope: !6524)
!6528 = !DILocation(line: 19, column: 3, scope: !6524)
!6529 = !DILocation(line: 20, column: 6, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 20, column: 6)
!6531 = !DILocation(line: 20, column: 16, scope: !6530)
!6532 = !DILocation(line: 20, column: 6, scope: !6516)
!6533 = !DILocation(line: 21, column: 9, scope: !6530)
!6534 = !DILocation(line: 21, column: 3, scope: !6530)
!6535 = !DILocation(line: 22, column: 6, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 22, column: 6)
!6537 = !DILocation(line: 22, column: 16, scope: !6536)
!6538 = !DILocation(line: 22, column: 6, scope: !6516)
!6539 = !DILocation(line: 23, column: 9, scope: !6536)
!6540 = !DILocation(line: 23, column: 3, scope: !6536)
!6541 = !DILocation(line: 24, column: 6, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 24, column: 6)
!6543 = !DILocation(line: 24, column: 16, scope: !6542)
!6544 = !DILocation(line: 24, column: 6, scope: !6516)
!6545 = !DILocation(line: 25, column: 9, scope: !6542)
!6546 = !DILocation(line: 25, column: 3, scope: !6542)
!6547 = !DILocation(line: 26, column: 6, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 26, column: 6)
!6549 = !DILocation(line: 26, column: 16, scope: !6548)
!6550 = !DILocation(line: 26, column: 6, scope: !6516)
!6551 = !DILocation(line: 27, column: 9, scope: !6548)
!6552 = !DILocation(line: 27, column: 3, scope: !6548)
!6553 = !DILocation(line: 28, column: 6, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 28, column: 6)
!6555 = !DILocation(line: 28, column: 16, scope: !6554)
!6556 = !DILocation(line: 28, column: 6, scope: !6516)
!6557 = !DILocation(line: 29, column: 9, scope: !6554)
!6558 = !DILocation(line: 29, column: 3, scope: !6554)
!6559 = !DILocation(line: 30, column: 6, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 30, column: 6)
!6561 = !DILocation(line: 30, column: 16, scope: !6560)
!6562 = !DILocation(line: 30, column: 6, scope: !6516)
!6563 = !DILocation(line: 31, column: 9, scope: !6560)
!6564 = !DILocation(line: 31, column: 3, scope: !6560)
!6565 = !DILocation(line: 32, column: 6, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 32, column: 6)
!6567 = !DILocation(line: 32, column: 16, scope: !6566)
!6568 = !DILocation(line: 32, column: 6, scope: !6516)
!6569 = !DILocation(line: 33, column: 9, scope: !6566)
!6570 = !DILocation(line: 33, column: 3, scope: !6566)
!6571 = !DILocation(line: 34, column: 9, scope: !6516)
!6572 = !DILocation(line: 35, column: 1, scope: !6516)
!6573 = !DILocation(line: 34, column: 2, scope: !6516)
!6574 = distinct !DISubprogram(name: "flags_by_sb", scope: !3, file: !3, line: 37, type: !4450, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6575)
!6575 = !{!6576, !6577}
!6576 = !DILocalVariable(name: "s_flags", arg: 1, scope: !6574, file: !3, line: 37, type: !22)
!6577 = !DILocalVariable(name: "flags", scope: !6574, file: !3, line: 39, type: !22)
!6578 = !DILocation(line: 37, column: 28, scope: !6574)
!6579 = !DILocation(line: 39, column: 2, scope: !6574)
!6580 = !DILocation(line: 39, column: 6, scope: !6574)
!6581 = !DILocation(line: 40, column: 6, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6574, file: !3, line: 40, column: 6)
!6583 = !DILocation(line: 40, column: 14, scope: !6582)
!6584 = !DILocation(line: 40, column: 6, scope: !6574)
!6585 = !DILocation(line: 41, column: 9, scope: !6582)
!6586 = !DILocation(line: 41, column: 3, scope: !6582)
!6587 = !DILocation(line: 42, column: 6, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6574, file: !3, line: 42, column: 6)
!6589 = !DILocation(line: 42, column: 14, scope: !6588)
!6590 = !DILocation(line: 42, column: 6, scope: !6574)
!6591 = !DILocation(line: 43, column: 9, scope: !6588)
!6592 = !DILocation(line: 43, column: 3, scope: !6588)
!6593 = !DILocation(line: 44, column: 6, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6574, file: !3, line: 44, column: 6)
!6595 = !DILocation(line: 44, column: 14, scope: !6594)
!6596 = !DILocation(line: 44, column: 6, scope: !6574)
!6597 = !DILocation(line: 45, column: 9, scope: !6594)
!6598 = !DILocation(line: 45, column: 3, scope: !6594)
!6599 = !DILocation(line: 46, column: 9, scope: !6574)
!6600 = !DILocation(line: 47, column: 1, scope: !6574)
!6601 = !DILocation(line: 46, column: 2, scope: !6574)
!6602 = !DISubprogram(name: "user_path_at_empty", scope: !6130, file: !6130, line: 52, type: !6603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6603 = !DISubroutineType(types: !6604)
!6604 = !{!22, !22, !16, !7, !4046, !1259}
!6605 = distinct !DISubprogram(name: "__to_fd", scope: !6176, file: !6176, line: 57, type: !6606, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6608)
!6606 = !DISubroutineType(types: !6607)
!6607 = !{!6175, !39}
!6608 = !{!6609}
!6609 = !DILocalVariable(name: "v", arg: 1, scope: !6605, file: !6176, line: 57, type: !39)
!6610 = !DILocation(line: 57, column: 47, scope: !6605)
!6611 = !DILocation(line: 59, column: 20, scope: !6605)
!6612 = !DILocation(line: 59, column: 37, scope: !6605)
!6613 = !DILocation(line: 59, column: 39, scope: !6605)
!6614 = !DILocation(line: 59, column: 21, scope: !6605)
!6615 = !DILocation(line: 59, column: 45, scope: !6605)
!6616 = !DILocation(line: 59, column: 47, scope: !6605)
!6617 = !DILocation(line: 59, column: 2, scope: !6605)
!6618 = !DISubprogram(name: "__fdget_raw", scope: !6176, file: !6176, line: 53, type: !6619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6619 = !DISubroutineType(types: !6620)
!6620 = !{!39, !7}
!6621 = !DISubprogram(name: "fput", scope: !6176, file: !6176, line: 17, type: !4465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6622 = distinct !DISubprogram(name: "__do_sys_statfs", scope: !3, file: !3, line: 192, type: !6623, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6625)
!6623 = !DISubroutineType(types: !6624)
!6624 = !{!840, !16, !5864}
!6625 = !{!6626, !6627, !6628, !6629}
!6626 = !DILocalVariable(name: "pathname", arg: 1, scope: !6622, file: !3, line: 192, type: !16)
!6627 = !DILocalVariable(name: "buf", arg: 2, scope: !6622, file: !3, line: 192, type: !5864)
!6628 = !DILocalVariable(name: "st", scope: !6622, file: !3, line: 194, type: !3640)
!6629 = !DILocalVariable(name: "error", scope: !6622, file: !3, line: 195, type: !22)
!6630 = !DILocation(line: 192, column: 1, scope: !6622)
!6631 = !DILocation(line: 194, column: 2, scope: !6622)
!6632 = !DILocation(line: 194, column: 17, scope: !6622)
!6633 = !DILocation(line: 195, column: 2, scope: !6622)
!6634 = !DILocation(line: 195, column: 6, scope: !6622)
!6635 = !DILocation(line: 195, column: 26, scope: !6622)
!6636 = !DILocation(line: 195, column: 14, scope: !6622)
!6637 = !DILocation(line: 196, column: 7, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 196, column: 6)
!6639 = !DILocation(line: 196, column: 6, scope: !6622)
!6640 = !DILocation(line: 197, column: 33, scope: !6638)
!6641 = !DILocation(line: 197, column: 11, scope: !6638)
!6642 = !DILocation(line: 197, column: 9, scope: !6638)
!6643 = !DILocation(line: 197, column: 3, scope: !6638)
!6644 = !DILocation(line: 198, column: 9, scope: !6622)
!6645 = !DILocation(line: 199, column: 1, scope: !6622)
!6646 = !DILocation(line: 198, column: 2, scope: !6622)
!6647 = distinct !DISubprogram(name: "do_statfs_native", scope: !3, file: !3, line: 126, type: !6648, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6650)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!22, !3639, !5864}
!6650 = !{!6651, !6652, !6653}
!6651 = !DILocalVariable(name: "st", arg: 1, scope: !6647, file: !3, line: 126, type: !3639)
!6652 = !DILocalVariable(name: "p", arg: 2, scope: !6647, file: !3, line: 126, type: !5864)
!6653 = !DILocalVariable(name: "buf", scope: !6647, file: !3, line: 128, type: !5865)
!6654 = !DILocation(line: 126, column: 45, scope: !6647)
!6655 = !DILocation(line: 126, column: 71, scope: !6647)
!6656 = !DILocation(line: 128, column: 2, scope: !6647)
!6657 = !DILocation(line: 128, column: 16, scope: !6647)
!6658 = !DILocation(line: 131, column: 16, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6647, file: !3, line: 130, column: 6)
!6660 = !DILocation(line: 131, column: 3, scope: !6659)
!6661 = !DILocation(line: 163, column: 19, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6647, file: !3, line: 163, column: 6)
!6663 = !DILocation(line: 163, column: 6, scope: !6662)
!6664 = !DILocation(line: 163, column: 6, scope: !6647)
!6665 = !DILocation(line: 164, column: 3, scope: !6662)
!6666 = !DILocation(line: 165, column: 2, scope: !6647)
!6667 = !DILocation(line: 166, column: 1, scope: !6647)
!6668 = distinct !DISubprogram(name: "copy_to_user", scope: !6669, file: !6669, line: 188, type: !6670, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6672)
!6669 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6670 = !DISubroutineType(types: !6671)
!6671 = !{!39, !20, !837, !39}
!6672 = !{!6673, !6674, !6675}
!6673 = !DILocalVariable(name: "to", arg: 1, scope: !6668, file: !6669, line: 188, type: !20)
!6674 = !DILocalVariable(name: "from", arg: 2, scope: !6668, file: !6669, line: 188, type: !837)
!6675 = !DILocalVariable(name: "n", arg: 3, scope: !6668, file: !6669, line: 188, type: !39)
!6676 = !DILocation(line: 188, column: 27, scope: !6668)
!6677 = !DILocation(line: 188, column: 43, scope: !6668)
!6678 = !DILocation(line: 188, column: 63, scope: !6668)
!6679 = !DILocation(line: 190, column: 22, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6668, file: !6669, line: 190, column: 6)
!6681 = !DILocation(line: 190, column: 28, scope: !6680)
!6682 = !DILocation(line: 190, column: 6, scope: !6680)
!6683 = !DILocation(line: 190, column: 6, scope: !6668)
!6684 = !DILocation(line: 191, column: 21, scope: !6680)
!6685 = !DILocation(line: 191, column: 25, scope: !6680)
!6686 = !DILocation(line: 191, column: 31, scope: !6680)
!6687 = !DILocation(line: 191, column: 7, scope: !6680)
!6688 = !DILocation(line: 191, column: 5, scope: !6680)
!6689 = !DILocation(line: 191, column: 3, scope: !6680)
!6690 = !DILocation(line: 192, column: 9, scope: !6668)
!6691 = !DILocation(line: 192, column: 2, scope: !6668)
!6692 = distinct !DISubprogram(name: "check_copy_size", scope: !5953, file: !5953, line: 237, type: !6693, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6695)
!6693 = !DISubroutineType(types: !6694)
!6694 = !{!922, !837, !35, !922}
!6695 = !{!6696, !6697, !6698, !6699, !6700, !6703}
!6696 = !DILocalVariable(name: "addr", arg: 1, scope: !6692, file: !5953, line: 237, type: !837)
!6697 = !DILocalVariable(name: "bytes", arg: 2, scope: !6692, file: !5953, line: 237, type: !35)
!6698 = !DILocalVariable(name: "is_source", arg: 3, scope: !6692, file: !5953, line: 237, type: !922)
!6699 = !DILocalVariable(name: "sz", scope: !6692, file: !5953, line: 239, type: !22)
!6700 = !DILocalVariable(name: "__ret_warn_on", scope: !6701, file: !5953, line: 249, type: !22)
!6701 = distinct !DILexicalBlock(scope: !6702, file: !5953, line: 249, column: 6)
!6702 = distinct !DILexicalBlock(scope: !6692, file: !5953, line: 249, column: 6)
!6703 = !DILocalVariable(name: "__flags", scope: !6704, file: !5953, line: 249, type: !22)
!6704 = distinct !DILexicalBlock(scope: !6705, file: !5953, line: 249, column: 6)
!6705 = distinct !DILexicalBlock(scope: !6701, file: !5953, line: 249, column: 6)
!6706 = !DILocation(line: 237, column: 29, scope: !6692)
!6707 = !DILocation(line: 237, column: 42, scope: !6692)
!6708 = !DILocation(line: 237, column: 54, scope: !6692)
!6709 = !DILocation(line: 239, column: 2, scope: !6692)
!6710 = !DILocation(line: 239, column: 6, scope: !6692)
!6711 = !DILocation(line: 239, column: 33, scope: !6692)
!6712 = !DILocation(line: 239, column: 11, scope: !6692)
!6713 = !DILocation(line: 240, column: 6, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6692, file: !5953, line: 240, column: 6)
!6715 = !DILocation(line: 0, scope: !6714)
!6716 = !DILocation(line: 240, column: 6, scope: !6692)
!6717 = !DILocation(line: 241, column: 29, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6719, file: !5953, line: 241, column: 7)
!6719 = distinct !DILexicalBlock(scope: !6714, file: !5953, line: 240, column: 39)
!6720 = !DILocation(line: 241, column: 8, scope: !6718)
!6721 = !DILocation(line: 241, column: 7, scope: !6719)
!6722 = !DILocation(line: 242, column: 18, scope: !6718)
!6723 = !DILocation(line: 242, column: 22, scope: !6718)
!6724 = !DILocation(line: 242, column: 4, scope: !6718)
!6725 = !DILocation(line: 243, column: 12, scope: !6726)
!6726 = distinct !DILexicalBlock(scope: !6718, file: !5953, line: 243, column: 12)
!6727 = !{i8 0, i8 2}
!6728 = !DILocation(line: 243, column: 12, scope: !6718)
!6729 = !DILocation(line: 244, column: 4, scope: !6726)
!6730 = !{i32 1026205}
!6731 = !DILocation(line: 246, column: 4, scope: !6726)
!6732 = !{i32 1026234}
!6733 = !DILocation(line: 247, column: 3, scope: !6719)
!6734 = !DILocation(line: 249, column: 6, scope: !6701)
!6735 = !DILocation(line: 249, column: 6, scope: !6705)
!6736 = !DILocation(line: 249, column: 6, scope: !6704)
!6737 = !DILocation(line: 249, column: 6, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6704, file: !5953, line: 249, column: 6)
!6739 = !DILocation(line: 249, column: 6, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6704, file: !5953, line: 249, column: 6)
!6741 = !{i64 2149678476, i64 2149678505, i64 2149678551, i64 2149678609, i64 2149678663, i64 2149678717, i64 2149678772, i64 2149678803, i64 2149679111, i64 2149679117, i64 2149679164, i64 2149679187, i64 2149679213}
!6742 = !DILocation(line: 249, column: 6, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6704, file: !5953, line: 249, column: 6)
!6744 = !DILocation(line: 249, column: 6, scope: !6702)
!6745 = !DILocation(line: 249, column: 6, scope: !6692)
!6746 = !DILocation(line: 250, column: 3, scope: !6702)
!6747 = !DILocation(line: 251, column: 20, scope: !6692)
!6748 = !DILocation(line: 251, column: 26, scope: !6692)
!6749 = !DILocation(line: 251, column: 33, scope: !6692)
!6750 = !DILocation(line: 251, column: 2, scope: !6692)
!6751 = !DILocation(line: 252, column: 2, scope: !6692)
!6752 = !DILocation(line: 253, column: 1, scope: !6692)
!6753 = !DISubprogram(name: "_copy_to_user", scope: !6669, file: !6669, line: 176, type: !6670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6754 = distinct !DISubprogram(name: "copy_overflow", scope: !5953, file: !5953, line: 230, type: !6755, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6757)
!6755 = !DISubroutineType(types: !6756)
!6756 = !{null, !22, !39}
!6757 = !{!6758, !6759}
!6758 = !DILocalVariable(name: "size", arg: 1, scope: !6754, file: !5953, line: 230, type: !22)
!6759 = !DILocalVariable(name: "count", arg: 2, scope: !6754, file: !5953, line: 230, type: !39)
!6760 = !DILocation(line: 230, column: 38, scope: !6754)
!6761 = !DILocation(line: 230, column: 58, scope: !6754)
!6762 = !DILocation(line: 233, column: 19, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6754, file: !5953, line: 232, column: 6)
!6764 = !DILocation(line: 233, column: 25, scope: !6763)
!6765 = !DILocation(line: 233, column: 3, scope: !6763)
!6766 = !DILocation(line: 234, column: 1, scope: !6754)
!6767 = !DISubprogram(name: "__bad_copy_from", scope: !5953, file: !5953, line: 224, type: !2450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6768 = !DISubprogram(name: "__bad_copy_to", scope: !5953, file: !5953, line: 226, type: !2450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6769 = distinct !DISubprogram(name: "check_object_size", scope: !5953, file: !5953, line: 218, type: !6770, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6772)
!6770 = !DISubroutineType(types: !6771)
!6771 = !{null, !837, !39, !922}
!6772 = !{!6773, !6774, !6775}
!6773 = !DILocalVariable(name: "ptr", arg: 1, scope: !6769, file: !5953, line: 218, type: !837)
!6774 = !DILocalVariable(name: "n", arg: 2, scope: !6769, file: !5953, line: 218, type: !39)
!6775 = !DILocalVariable(name: "to_user", arg: 3, scope: !6769, file: !5953, line: 219, type: !922)
!6776 = !DILocation(line: 218, column: 50, scope: !6769)
!6777 = !DILocation(line: 218, column: 69, scope: !6769)
!6778 = !DILocation(line: 219, column: 15, scope: !6769)
!6779 = !DILocation(line: 220, column: 3, scope: !6769)
!6780 = !DISubprogram(name: "__copy_overflow", scope: !5953, file: !5953, line: 228, type: !6755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6781 = distinct !DISubprogram(name: "__do_sys_statfs64", scope: !3, file: !3, line: 201, type: !6782, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6784)
!6782 = !DISubroutineType(types: !6783)
!6783 = !{!840, !16, !35, !5881}
!6784 = !{!6785, !6786, !6787, !6788, !6789}
!6785 = !DILocalVariable(name: "pathname", arg: 1, scope: !6781, file: !3, line: 201, type: !16)
!6786 = !DILocalVariable(name: "sz", arg: 2, scope: !6781, file: !3, line: 201, type: !35)
!6787 = !DILocalVariable(name: "buf", arg: 3, scope: !6781, file: !3, line: 201, type: !5881)
!6788 = !DILocalVariable(name: "st", scope: !6781, file: !3, line: 203, type: !3640)
!6789 = !DILocalVariable(name: "error", scope: !6781, file: !3, line: 204, type: !22)
!6790 = !DILocation(line: 201, column: 1, scope: !6781)
!6791 = !DILocation(line: 203, column: 2, scope: !6781)
!6792 = !DILocation(line: 203, column: 17, scope: !6781)
!6793 = !DILocation(line: 204, column: 2, scope: !6781)
!6794 = !DILocation(line: 204, column: 6, scope: !6781)
!6795 = !DILocation(line: 205, column: 6, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6781, file: !3, line: 205, column: 6)
!6797 = !DILocation(line: 205, column: 9, scope: !6796)
!6798 = !DILocation(line: 205, column: 6, scope: !6781)
!6799 = !DILocation(line: 206, column: 3, scope: !6796)
!6800 = !DILocation(line: 207, column: 22, scope: !6781)
!6801 = !DILocation(line: 207, column: 10, scope: !6781)
!6802 = !DILocation(line: 207, column: 8, scope: !6781)
!6803 = !DILocation(line: 208, column: 7, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6781, file: !3, line: 208, column: 6)
!6805 = !DILocation(line: 208, column: 6, scope: !6781)
!6806 = !DILocation(line: 209, column: 28, scope: !6804)
!6807 = !DILocation(line: 209, column: 11, scope: !6804)
!6808 = !DILocation(line: 209, column: 9, scope: !6804)
!6809 = !DILocation(line: 209, column: 3, scope: !6804)
!6810 = !DILocation(line: 210, column: 9, scope: !6781)
!6811 = !DILocation(line: 210, column: 2, scope: !6781)
!6812 = !DILocation(line: 211, column: 1, scope: !6781)
!6813 = distinct !DISubprogram(name: "do_statfs64", scope: !3, file: !3, line: 168, type: !6814, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6816)
!6814 = !DISubroutineType(types: !6815)
!6815 = !{!22, !3639, !5881}
!6816 = !{!6817, !6818, !6819}
!6817 = !DILocalVariable(name: "st", arg: 1, scope: !6813, file: !3, line: 168, type: !3639)
!6818 = !DILocalVariable(name: "p", arg: 2, scope: !6813, file: !3, line: 168, type: !5881)
!6819 = !DILocalVariable(name: "buf", scope: !6813, file: !3, line: 170, type: !5882)
!6820 = !DILocation(line: 168, column: 40, scope: !6813)
!6821 = !DILocation(line: 168, column: 68, scope: !6813)
!6822 = !DILocation(line: 170, column: 2, scope: !6813)
!6823 = !DILocation(line: 170, column: 18, scope: !6813)
!6824 = !DILocation(line: 172, column: 16, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6813, file: !3, line: 171, column: 6)
!6826 = !DILocation(line: 172, column: 3, scope: !6825)
!6827 = !DILocation(line: 187, column: 19, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6813, file: !3, line: 187, column: 6)
!6829 = !DILocation(line: 187, column: 6, scope: !6828)
!6830 = !DILocation(line: 187, column: 6, scope: !6813)
!6831 = !DILocation(line: 188, column: 3, scope: !6828)
!6832 = !DILocation(line: 189, column: 2, scope: !6813)
!6833 = !DILocation(line: 190, column: 1, scope: !6813)
!6834 = distinct !DISubprogram(name: "__do_sys_fstatfs", scope: !3, file: !3, line: 213, type: !6835, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6837)
!6835 = !DISubroutineType(types: !6836)
!6836 = !{!840, !7, !5864}
!6837 = !{!6838, !6839, !6840, !6841}
!6838 = !DILocalVariable(name: "fd", arg: 1, scope: !6834, file: !3, line: 213, type: !7)
!6839 = !DILocalVariable(name: "buf", arg: 2, scope: !6834, file: !3, line: 213, type: !5864)
!6840 = !DILocalVariable(name: "st", scope: !6834, file: !3, line: 215, type: !3640)
!6841 = !DILocalVariable(name: "error", scope: !6834, file: !3, line: 216, type: !22)
!6842 = !DILocation(line: 213, column: 1, scope: !6834)
!6843 = !DILocation(line: 215, column: 2, scope: !6834)
!6844 = !DILocation(line: 215, column: 17, scope: !6834)
!6845 = !DILocation(line: 216, column: 2, scope: !6834)
!6846 = !DILocation(line: 216, column: 6, scope: !6834)
!6847 = !DILocation(line: 216, column: 24, scope: !6834)
!6848 = !DILocation(line: 216, column: 14, scope: !6834)
!6849 = !DILocation(line: 217, column: 7, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 217, column: 6)
!6851 = !DILocation(line: 217, column: 6, scope: !6834)
!6852 = !DILocation(line: 218, column: 33, scope: !6850)
!6853 = !DILocation(line: 218, column: 11, scope: !6850)
!6854 = !DILocation(line: 218, column: 9, scope: !6850)
!6855 = !DILocation(line: 218, column: 3, scope: !6850)
!6856 = !DILocation(line: 219, column: 9, scope: !6834)
!6857 = !DILocation(line: 220, column: 1, scope: !6834)
!6858 = !DILocation(line: 219, column: 2, scope: !6834)
!6859 = distinct !DISubprogram(name: "__do_sys_fstatfs64", scope: !3, file: !3, line: 222, type: !6860, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6862)
!6860 = !DISubroutineType(types: !6861)
!6861 = !{!840, !7, !35, !5881}
!6862 = !{!6863, !6864, !6865, !6866, !6867}
!6863 = !DILocalVariable(name: "fd", arg: 1, scope: !6859, file: !3, line: 222, type: !7)
!6864 = !DILocalVariable(name: "sz", arg: 2, scope: !6859, file: !3, line: 222, type: !35)
!6865 = !DILocalVariable(name: "buf", arg: 3, scope: !6859, file: !3, line: 222, type: !5881)
!6866 = !DILocalVariable(name: "st", scope: !6859, file: !3, line: 224, type: !3640)
!6867 = !DILocalVariable(name: "error", scope: !6859, file: !3, line: 225, type: !22)
!6868 = !DILocation(line: 222, column: 1, scope: !6859)
!6869 = !DILocation(line: 224, column: 2, scope: !6859)
!6870 = !DILocation(line: 224, column: 17, scope: !6859)
!6871 = !DILocation(line: 225, column: 2, scope: !6859)
!6872 = !DILocation(line: 225, column: 6, scope: !6859)
!6873 = !DILocation(line: 227, column: 6, scope: !6874)
!6874 = distinct !DILexicalBlock(scope: !6859, file: !3, line: 227, column: 6)
!6875 = !DILocation(line: 227, column: 9, scope: !6874)
!6876 = !DILocation(line: 227, column: 6, scope: !6859)
!6877 = !DILocation(line: 228, column: 3, scope: !6874)
!6878 = !DILocation(line: 230, column: 20, scope: !6859)
!6879 = !DILocation(line: 230, column: 10, scope: !6859)
!6880 = !DILocation(line: 230, column: 8, scope: !6859)
!6881 = !DILocation(line: 231, column: 7, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6859, file: !3, line: 231, column: 6)
!6883 = !DILocation(line: 231, column: 6, scope: !6859)
!6884 = !DILocation(line: 232, column: 28, scope: !6882)
!6885 = !DILocation(line: 232, column: 11, scope: !6882)
!6886 = !DILocation(line: 232, column: 9, scope: !6882)
!6887 = !DILocation(line: 232, column: 3, scope: !6882)
!6888 = !DILocation(line: 233, column: 9, scope: !6859)
!6889 = !DILocation(line: 233, column: 2, scope: !6859)
!6890 = !DILocation(line: 234, column: 1, scope: !6859)
!6891 = distinct !DISubprogram(name: "__do_sys_ustat", scope: !3, file: !3, line: 248, type: !6892, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6894)
!6892 = !DISubroutineType(types: !6893)
!6893 = !{!840, !7, !5896}
!6894 = !{!6895, !6896, !6897, !6898, !6899}
!6895 = !DILocalVariable(name: "dev", arg: 1, scope: !6891, file: !3, line: 248, type: !7)
!6896 = !DILocalVariable(name: "ubuf", arg: 2, scope: !6891, file: !3, line: 248, type: !5896)
!6897 = !DILocalVariable(name: "tmp", scope: !6891, file: !3, line: 250, type: !5897)
!6898 = !DILocalVariable(name: "sbuf", scope: !6891, file: !3, line: 251, type: !3640)
!6899 = !DILocalVariable(name: "err", scope: !6891, file: !3, line: 252, type: !22)
!6900 = !DILocation(line: 248, column: 1, scope: !6891)
!6901 = !DILocation(line: 250, column: 2, scope: !6891)
!6902 = !DILocation(line: 250, column: 15, scope: !6891)
!6903 = !DILocation(line: 251, column: 2, scope: !6891)
!6904 = !DILocation(line: 251, column: 17, scope: !6891)
!6905 = !DILocation(line: 252, column: 2, scope: !6891)
!6906 = !DILocation(line: 252, column: 6, scope: !6891)
!6907 = !DILocation(line: 252, column: 37, scope: !6891)
!6908 = !DILocation(line: 252, column: 22, scope: !6891)
!6909 = !DILocation(line: 252, column: 12, scope: !6891)
!6910 = !DILocation(line: 253, column: 6, scope: !6911)
!6911 = distinct !DILexicalBlock(scope: !6891, file: !3, line: 253, column: 6)
!6912 = !DILocation(line: 253, column: 6, scope: !6891)
!6913 = !DILocation(line: 254, column: 10, scope: !6911)
!6914 = !DILocation(line: 254, column: 3, scope: !6911)
!6915 = !DILocation(line: 256, column: 2, scope: !6891)
!6916 = !DILocation(line: 257, column: 21, scope: !6891)
!6917 = !DILocation(line: 257, column: 16, scope: !6891)
!6918 = !DILocation(line: 257, column: 6, scope: !6891)
!6919 = !DILocation(line: 257, column: 14, scope: !6891)
!6920 = !DILocation(line: 261, column: 23, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6891, file: !3, line: 258, column: 6)
!6922 = !DILocation(line: 261, column: 7, scope: !6921)
!6923 = !DILocation(line: 261, column: 16, scope: !6921)
!6924 = !DILocation(line: 263, column: 22, scope: !6891)
!6925 = !DILocation(line: 263, column: 9, scope: !6891)
!6926 = !DILocation(line: 263, column: 2, scope: !6891)
!6927 = !DILocation(line: 264, column: 1, scope: !6891)
!6928 = distinct !DISubprogram(name: "vfs_ustat", scope: !3, file: !3, line: 236, type: !6929, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6931)
!6929 = !DISubroutineType(types: !6930)
!6930 = !{!22, !1822, !3639}
!6931 = !{!6932, !6933, !6934, !6935}
!6932 = !DILocalVariable(name: "dev", arg: 1, scope: !6928, file: !3, line: 236, type: !1822)
!6933 = !DILocalVariable(name: "sbuf", arg: 2, scope: !6928, file: !3, line: 236, type: !3639)
!6934 = !DILocalVariable(name: "s", scope: !6928, file: !3, line: 238, type: !1817)
!6935 = !DILocalVariable(name: "err", scope: !6928, file: !3, line: 239, type: !22)
!6936 = !DILocation(line: 236, column: 28, scope: !6928)
!6937 = !DILocation(line: 236, column: 49, scope: !6928)
!6938 = !DILocation(line: 238, column: 2, scope: !6928)
!6939 = !DILocation(line: 238, column: 22, scope: !6928)
!6940 = !DILocation(line: 238, column: 41, scope: !6928)
!6941 = !DILocation(line: 238, column: 26, scope: !6928)
!6942 = !DILocation(line: 239, column: 2, scope: !6928)
!6943 = !DILocation(line: 239, column: 6, scope: !6928)
!6944 = !DILocation(line: 240, column: 7, scope: !6945)
!6945 = distinct !DILexicalBlock(scope: !6928, file: !3, line: 240, column: 6)
!6946 = !DILocation(line: 240, column: 6, scope: !6928)
!6947 = !DILocation(line: 241, column: 3, scope: !6945)
!6948 = !DILocation(line: 243, column: 25, scope: !6928)
!6949 = !DILocation(line: 243, column: 28, scope: !6928)
!6950 = !DILocation(line: 243, column: 36, scope: !6928)
!6951 = !DILocation(line: 243, column: 8, scope: !6928)
!6952 = !DILocation(line: 243, column: 6, scope: !6928)
!6953 = !DILocation(line: 244, column: 13, scope: !6928)
!6954 = !DILocation(line: 244, column: 2, scope: !6928)
!6955 = !DILocation(line: 245, column: 9, scope: !6928)
!6956 = !DILocation(line: 245, column: 2, scope: !6928)
!6957 = !DILocation(line: 246, column: 1, scope: !6928)
!6958 = distinct !DISubprogram(name: "new_decode_dev", scope: !6959, file: !6959, line: 46, type: !6960, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6962)
!6959 = !DIFile(filename: "./include/linux/kdev_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4069c7bb69bcdf1e01b1b06b87483f5")
!6960 = !DISubroutineType(types: !6961)
!6961 = !{!1822, !409}
!6962 = !{!6963, !6964, !6965}
!6963 = !DILocalVariable(name: "dev", arg: 1, scope: !6958, file: !6959, line: 46, type: !409)
!6964 = !DILocalVariable(name: "major", scope: !6958, file: !6959, line: 48, type: !7)
!6965 = !DILocalVariable(name: "minor", scope: !6958, file: !6959, line: 49, type: !7)
!6966 = !DILocation(line: 46, column: 49, scope: !6958)
!6967 = !DILocation(line: 48, column: 2, scope: !6958)
!6968 = !DILocation(line: 48, column: 11, scope: !6958)
!6969 = !DILocation(line: 48, column: 20, scope: !6958)
!6970 = !DILocation(line: 48, column: 24, scope: !6958)
!6971 = !DILocation(line: 48, column: 35, scope: !6958)
!6972 = !DILocation(line: 49, column: 2, scope: !6958)
!6973 = !DILocation(line: 49, column: 11, scope: !6958)
!6974 = !DILocation(line: 49, column: 20, scope: !6958)
!6975 = !DILocation(line: 49, column: 24, scope: !6958)
!6976 = !DILocation(line: 49, column: 36, scope: !6958)
!6977 = !DILocation(line: 49, column: 40, scope: !6958)
!6978 = !DILocation(line: 49, column: 47, scope: !6958)
!6979 = !DILocation(line: 49, column: 32, scope: !6958)
!6980 = !DILocation(line: 50, column: 9, scope: !6958)
!6981 = !DILocation(line: 51, column: 1, scope: !6958)
!6982 = !DILocation(line: 50, column: 2, scope: !6958)
!6983 = !DISubprogram(name: "user_get_super", scope: !6984, file: !6984, line: 113, type: !6985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6984 = !DIFile(filename: "fs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8afc0abbd20470e9e11dfbcff1f3969f")
!6985 = !DISubroutineType(types: !6986)
!6986 = !{!1817, !1822, !922}
!6987 = !DISubprogram(name: "drop_super", scope: !252, file: !252, line: 3134, type: !1849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6988 = distinct !DISubprogram(name: "__do_compat_sys_statfs", scope: !3, file: !3, line: 305, type: !6989, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6991)
!6989 = !DISubroutineType(types: !6990)
!6990 = !{!840, !16, !5904}
!6991 = !{!6992, !6993, !6994, !6995}
!6992 = !DILocalVariable(name: "pathname", arg: 1, scope: !6988, file: !3, line: 305, type: !16)
!6993 = !DILocalVariable(name: "buf", arg: 2, scope: !6988, file: !3, line: 305, type: !5904)
!6994 = !DILocalVariable(name: "tmp", scope: !6988, file: !3, line: 307, type: !3640)
!6995 = !DILocalVariable(name: "error", scope: !6988, file: !3, line: 308, type: !22)
!6996 = !DILocation(line: 305, column: 1, scope: !6988)
!6997 = !DILocation(line: 307, column: 2, scope: !6988)
!6998 = !DILocation(line: 307, column: 17, scope: !6988)
!6999 = !DILocation(line: 308, column: 2, scope: !6988)
!7000 = !DILocation(line: 308, column: 6, scope: !6988)
!7001 = !DILocation(line: 308, column: 26, scope: !6988)
!7002 = !DILocation(line: 308, column: 14, scope: !6988)
!7003 = !DILocation(line: 309, column: 7, scope: !7004)
!7004 = distinct !DILexicalBlock(scope: !6988, file: !3, line: 309, column: 6)
!7005 = !DILocation(line: 309, column: 6, scope: !6988)
!7006 = !DILocation(line: 310, column: 29, scope: !7004)
!7007 = !DILocation(line: 310, column: 11, scope: !7004)
!7008 = !DILocation(line: 310, column: 9, scope: !7004)
!7009 = !DILocation(line: 310, column: 3, scope: !7004)
!7010 = !DILocation(line: 311, column: 9, scope: !6988)
!7011 = !DILocation(line: 312, column: 1, scope: !6988)
!7012 = !DILocation(line: 311, column: 2, scope: !6988)
!7013 = distinct !DISubprogram(name: "put_compat_statfs", scope: !3, file: !3, line: 267, type: !7014, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7016)
!7014 = !DISubroutineType(types: !7015)
!7015 = !{!22, !5904, !3639}
!7016 = !{!7017, !7018, !7019}
!7017 = !DILocalVariable(name: "ubuf", arg: 1, scope: !7013, file: !3, line: 267, type: !5904)
!7018 = !DILocalVariable(name: "kbuf", arg: 2, scope: !7013, file: !3, line: 267, type: !3639)
!7019 = !DILocalVariable(name: "buf", scope: !7013, file: !3, line: 269, type: !5905)
!7020 = !DILocation(line: 267, column: 59, scope: !7013)
!7021 = !DILocation(line: 267, column: 81, scope: !7013)
!7022 = !DILocation(line: 269, column: 2, scope: !7013)
!7023 = !DILocation(line: 269, column: 23, scope: !7013)
!7024 = !DILocation(line: 271, column: 8, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !7026, file: !3, line: 271, column: 7)
!7026 = distinct !DILexicalBlock(scope: !7027, file: !3, line: 270, column: 34)
!7027 = distinct !DILexicalBlock(scope: !7013, file: !3, line: 270, column: 6)
!7028 = !DILocation(line: 271, column: 14, scope: !7025)
!7029 = !DILocation(line: 271, column: 25, scope: !7025)
!7030 = !DILocation(line: 271, column: 31, scope: !7025)
!7031 = !DILocation(line: 271, column: 23, scope: !7025)
!7032 = !DILocation(line: 271, column: 41, scope: !7025)
!7033 = !DILocation(line: 271, column: 47, scope: !7025)
!7034 = !DILocation(line: 271, column: 39, scope: !7025)
!7035 = !DILocation(line: 272, column: 8, scope: !7025)
!7036 = !DILocation(line: 272, column: 14, scope: !7025)
!7037 = !DILocation(line: 271, column: 56, scope: !7025)
!7038 = !DILocation(line: 272, column: 24, scope: !7025)
!7039 = !DILocation(line: 272, column: 30, scope: !7025)
!7040 = !DILocation(line: 272, column: 22, scope: !7025)
!7041 = !DILocation(line: 272, column: 40, scope: !7025)
!7042 = !DILocation(line: 271, column: 7, scope: !7026)
!7043 = !DILocation(line: 273, column: 4, scope: !7025)
!7044 = !DILocation(line: 276, column: 7, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !7026, file: !3, line: 276, column: 7)
!7046 = !DILocation(line: 276, column: 13, scope: !7045)
!7047 = !DILocation(line: 276, column: 21, scope: !7045)
!7048 = !DILocation(line: 277, column: 4, scope: !7045)
!7049 = !DILocation(line: 277, column: 8, scope: !7045)
!7050 = !DILocation(line: 277, column: 14, scope: !7045)
!7051 = !DILocation(line: 277, column: 22, scope: !7045)
!7052 = !DILocation(line: 276, column: 7, scope: !7026)
!7053 = !DILocation(line: 278, column: 4, scope: !7045)
!7054 = !DILocation(line: 279, column: 7, scope: !7055)
!7055 = distinct !DILexicalBlock(scope: !7026, file: !3, line: 279, column: 7)
!7056 = !DILocation(line: 279, column: 13, scope: !7055)
!7057 = !DILocation(line: 279, column: 21, scope: !7055)
!7058 = !DILocation(line: 280, column: 4, scope: !7055)
!7059 = !DILocation(line: 280, column: 8, scope: !7055)
!7060 = !DILocation(line: 280, column: 14, scope: !7055)
!7061 = !DILocation(line: 280, column: 22, scope: !7055)
!7062 = !DILocation(line: 279, column: 7, scope: !7026)
!7063 = !DILocation(line: 281, column: 4, scope: !7055)
!7064 = !DILocation(line: 283, column: 2, scope: !7013)
!7065 = !DILocation(line: 284, column: 15, scope: !7013)
!7066 = !DILocation(line: 284, column: 21, scope: !7013)
!7067 = !DILocation(line: 284, column: 6, scope: !7013)
!7068 = !DILocation(line: 284, column: 13, scope: !7013)
!7069 = !DILocation(line: 285, column: 16, scope: !7013)
!7070 = !DILocation(line: 285, column: 22, scope: !7013)
!7071 = !DILocation(line: 285, column: 6, scope: !7013)
!7072 = !DILocation(line: 285, column: 14, scope: !7013)
!7073 = !DILocation(line: 286, column: 17, scope: !7013)
!7074 = !DILocation(line: 286, column: 23, scope: !7013)
!7075 = !DILocation(line: 286, column: 6, scope: !7013)
!7076 = !DILocation(line: 286, column: 15, scope: !7013)
!7077 = !DILocation(line: 287, column: 16, scope: !7013)
!7078 = !DILocation(line: 287, column: 22, scope: !7013)
!7079 = !DILocation(line: 287, column: 6, scope: !7013)
!7080 = !DILocation(line: 287, column: 14, scope: !7013)
!7081 = !DILocation(line: 288, column: 17, scope: !7013)
!7082 = !DILocation(line: 288, column: 23, scope: !7013)
!7083 = !DILocation(line: 288, column: 6, scope: !7013)
!7084 = !DILocation(line: 288, column: 15, scope: !7013)
!7085 = !DILocation(line: 289, column: 16, scope: !7013)
!7086 = !DILocation(line: 289, column: 22, scope: !7013)
!7087 = !DILocation(line: 289, column: 6, scope: !7013)
!7088 = !DILocation(line: 289, column: 14, scope: !7013)
!7089 = !DILocation(line: 290, column: 16, scope: !7013)
!7090 = !DILocation(line: 290, column: 22, scope: !7013)
!7091 = !DILocation(line: 290, column: 6, scope: !7013)
!7092 = !DILocation(line: 290, column: 14, scope: !7013)
!7093 = !DILocation(line: 291, column: 18, scope: !7013)
!7094 = !DILocation(line: 291, column: 24, scope: !7013)
!7095 = !DILocation(line: 291, column: 6, scope: !7013)
!7096 = !DILocation(line: 291, column: 16, scope: !7013)
!7097 = !DILocation(line: 292, column: 22, scope: !7013)
!7098 = !DILocation(line: 292, column: 28, scope: !7013)
!7099 = !DILocation(line: 292, column: 35, scope: !7013)
!7100 = !DILocation(line: 292, column: 6, scope: !7013)
!7101 = !DILocation(line: 292, column: 13, scope: !7013)
!7102 = !DILocation(line: 292, column: 2, scope: !7013)
!7103 = !DILocation(line: 292, column: 20, scope: !7013)
!7104 = !DILocation(line: 293, column: 22, scope: !7013)
!7105 = !DILocation(line: 293, column: 28, scope: !7013)
!7106 = !DILocation(line: 293, column: 35, scope: !7013)
!7107 = !DILocation(line: 293, column: 6, scope: !7013)
!7108 = !DILocation(line: 293, column: 13, scope: !7013)
!7109 = !DILocation(line: 293, column: 2, scope: !7013)
!7110 = !DILocation(line: 293, column: 20, scope: !7013)
!7111 = !DILocation(line: 294, column: 17, scope: !7013)
!7112 = !DILocation(line: 294, column: 23, scope: !7013)
!7113 = !DILocation(line: 294, column: 6, scope: !7013)
!7114 = !DILocation(line: 294, column: 15, scope: !7013)
!7115 = !DILocation(line: 295, column: 16, scope: !7013)
!7116 = !DILocation(line: 295, column: 22, scope: !7013)
!7117 = !DILocation(line: 295, column: 6, scope: !7013)
!7118 = !DILocation(line: 295, column: 14, scope: !7013)
!7119 = !DILocation(line: 296, column: 19, scope: !7120)
!7120 = distinct !DILexicalBlock(scope: !7013, file: !3, line: 296, column: 6)
!7121 = !DILocation(line: 296, column: 6, scope: !7120)
!7122 = !DILocation(line: 296, column: 6, scope: !7013)
!7123 = !DILocation(line: 297, column: 3, scope: !7120)
!7124 = !DILocation(line: 298, column: 2, scope: !7013)
!7125 = !DILocation(line: 299, column: 1, scope: !7013)
!7126 = distinct !DISubprogram(name: "__do_compat_sys_fstatfs", scope: !3, file: !3, line: 314, type: !7127, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7129)
!7127 = !DISubroutineType(types: !7128)
!7128 = !{!840, !7, !5904}
!7129 = !{!7130, !7131, !7132, !7133}
!7130 = !DILocalVariable(name: "fd", arg: 1, scope: !7126, file: !3, line: 314, type: !7)
!7131 = !DILocalVariable(name: "buf", arg: 2, scope: !7126, file: !3, line: 314, type: !5904)
!7132 = !DILocalVariable(name: "tmp", scope: !7126, file: !3, line: 316, type: !3640)
!7133 = !DILocalVariable(name: "error", scope: !7126, file: !3, line: 317, type: !22)
!7134 = !DILocation(line: 314, column: 1, scope: !7126)
!7135 = !DILocation(line: 316, column: 2, scope: !7126)
!7136 = !DILocation(line: 316, column: 17, scope: !7126)
!7137 = !DILocation(line: 317, column: 2, scope: !7126)
!7138 = !DILocation(line: 317, column: 6, scope: !7126)
!7139 = !DILocation(line: 317, column: 24, scope: !7126)
!7140 = !DILocation(line: 317, column: 14, scope: !7126)
!7141 = !DILocation(line: 318, column: 7, scope: !7142)
!7142 = distinct !DILexicalBlock(scope: !7126, file: !3, line: 318, column: 6)
!7143 = !DILocation(line: 318, column: 6, scope: !7126)
!7144 = !DILocation(line: 319, column: 29, scope: !7142)
!7145 = !DILocation(line: 319, column: 11, scope: !7142)
!7146 = !DILocation(line: 319, column: 9, scope: !7142)
!7147 = !DILocation(line: 319, column: 3, scope: !7142)
!7148 = !DILocation(line: 320, column: 9, scope: !7126)
!7149 = !DILocation(line: 321, column: 1, scope: !7126)
!7150 = !DILocation(line: 320, column: 2, scope: !7126)
!7151 = distinct !DISubprogram(name: "__do_compat_sys_statfs64", scope: !3, file: !3, line: 362, type: !7152, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7154)
!7152 = !DISubroutineType(types: !7153)
!7153 = !{!840, !16, !5922, !5923}
!7154 = !{!7155, !7156, !7157}
!7155 = !DILocalVariable(name: "pathname", arg: 1, scope: !7151, file: !3, line: 362, type: !16)
!7156 = !DILocalVariable(name: "sz", arg: 2, scope: !7151, file: !3, line: 362, type: !5922)
!7157 = !DILocalVariable(name: "buf", arg: 3, scope: !7151, file: !3, line: 362, type: !5923)
!7158 = !DILocation(line: 362, column: 1, scope: !7151)
!7159 = !DILocation(line: 364, column: 30, scope: !7151)
!7160 = !DILocation(line: 364, column: 40, scope: !7151)
!7161 = !DILocation(line: 364, column: 44, scope: !7151)
!7162 = !DILocation(line: 364, column: 9, scope: !7151)
!7163 = !DILocation(line: 364, column: 2, scope: !7151)
!7164 = distinct !DISubprogram(name: "__do_compat_sys_fstatfs64", scope: !3, file: !3, line: 381, type: !7165, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7167)
!7165 = !DISubroutineType(types: !7166)
!7166 = !{!840, !7, !5922, !5923}
!7167 = !{!7168, !7169, !7170}
!7168 = !DILocalVariable(name: "fd", arg: 1, scope: !7164, file: !3, line: 381, type: !7)
!7169 = !DILocalVariable(name: "sz", arg: 2, scope: !7164, file: !3, line: 381, type: !5922)
!7170 = !DILocalVariable(name: "buf", arg: 3, scope: !7164, file: !3, line: 381, type: !5923)
!7171 = !DILocation(line: 381, column: 1, scope: !7164)
!7172 = !DILocation(line: 383, column: 31, scope: !7164)
!7173 = !DILocation(line: 383, column: 35, scope: !7164)
!7174 = !DILocation(line: 383, column: 39, scope: !7164)
!7175 = !DILocation(line: 383, column: 9, scope: !7164)
!7176 = !DILocation(line: 383, column: 2, scope: !7164)
!7177 = distinct !DISubprogram(name: "__do_compat_sys_ustat", scope: !3, file: !3, line: 391, type: !7178, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7180)
!7178 = !DISubroutineType(types: !7179)
!7179 = !{!840, !7, !5939}
!7180 = !{!7181, !7182, !7183, !7184, !7185}
!7181 = !DILocalVariable(name: "dev", arg: 1, scope: !7177, file: !3, line: 391, type: !7)
!7182 = !DILocalVariable(name: "u", arg: 2, scope: !7177, file: !3, line: 391, type: !5939)
!7183 = !DILocalVariable(name: "tmp", scope: !7177, file: !3, line: 393, type: !5940)
!7184 = !DILocalVariable(name: "sbuf", scope: !7177, file: !3, line: 394, type: !3640)
!7185 = !DILocalVariable(name: "err", scope: !7177, file: !3, line: 395, type: !22)
!7186 = !DILocation(line: 391, column: 1, scope: !7177)
!7187 = !DILocation(line: 393, column: 2, scope: !7177)
!7188 = !DILocation(line: 393, column: 22, scope: !7177)
!7189 = !DILocation(line: 394, column: 2, scope: !7177)
!7190 = !DILocation(line: 394, column: 17, scope: !7177)
!7191 = !DILocation(line: 395, column: 2, scope: !7177)
!7192 = !DILocation(line: 395, column: 6, scope: !7177)
!7193 = !DILocation(line: 395, column: 37, scope: !7177)
!7194 = !DILocation(line: 395, column: 22, scope: !7177)
!7195 = !DILocation(line: 395, column: 12, scope: !7177)
!7196 = !DILocation(line: 396, column: 6, scope: !7197)
!7197 = distinct !DILexicalBlock(scope: !7177, file: !3, line: 396, column: 6)
!7198 = !DILocation(line: 396, column: 6, scope: !7177)
!7199 = !DILocation(line: 397, column: 10, scope: !7197)
!7200 = !DILocation(line: 397, column: 3, scope: !7197)
!7201 = !DILocation(line: 399, column: 2, scope: !7177)
!7202 = !DILocation(line: 400, column: 21, scope: !7177)
!7203 = !DILocation(line: 400, column: 16, scope: !7177)
!7204 = !DILocation(line: 400, column: 6, scope: !7177)
!7205 = !DILocation(line: 400, column: 14, scope: !7177)
!7206 = !DILocation(line: 401, column: 22, scope: !7177)
!7207 = !DILocation(line: 401, column: 17, scope: !7177)
!7208 = !DILocation(line: 401, column: 6, scope: !7177)
!7209 = !DILocation(line: 401, column: 15, scope: !7177)
!7210 = !DILocation(line: 402, column: 19, scope: !7211)
!7211 = distinct !DILexicalBlock(scope: !7177, file: !3, line: 402, column: 6)
!7212 = !DILocation(line: 402, column: 6, scope: !7211)
!7213 = !DILocation(line: 402, column: 6, scope: !7177)
!7214 = !DILocation(line: 403, column: 3, scope: !7211)
!7215 = !DILocation(line: 404, column: 2, scope: !7177)
!7216 = !DILocation(line: 405, column: 1, scope: !7177)
