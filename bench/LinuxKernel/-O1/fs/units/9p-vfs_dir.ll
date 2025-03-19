; ModuleID = 'fs/9p/vfs_dir.c'
source_filename = "fs/9p/vfs_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.20 }
%struct.atomic_t = type { i32 }
%union.anon.20 = type { i64 }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.16, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.17, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.18, ptr, %struct.address_space, %struct.list_head, %union.anon.19, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.16 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.17 = type { %struct.callback_head }
%union.anon.18 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.19 = type { ptr }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.v9fs_inode = type { %struct.netfs_inode, %struct.p9_qid, i32, %struct.mutex }
%struct.netfs_inode = type { %struct.inode, ptr, i64 }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.kvec = type { ptr, i64 }
%struct.iov_iter = type { i8, i8, i8, i8, i8, %union.anon.24, %union.anon.25, %union.anon.28 }
%union.anon.24 = type { i64 }
%union.anon.25 = type { %struct.iovec }
%struct.iovec = type { ptr, i64 }
%union.anon.28 = type { i64 }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.21, %struct.idr, %struct.idr, [65 x i8] }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.p9_rdir = type { i32, i32, [0 x i8] }
%struct.dir_context = type { ptr, i64 }
%struct.p9_dirent = type { %struct.p9_qid, i64, i8, [256 x i8] }

@v9fs_dir_operations = hidden constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_dir_readdir, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@v9fs_dir_operations_dotl = hidden constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_dir_readdir_dotl, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync_dotl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4905
@__tracepoint_9p_fid_ref = external dso_local global %struct.tracepoint, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4907

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @v9fs_dir_release(ptr noundef %inode, ptr noundef %filp) #0 align 16 !dbg !4921 {
entry:
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %v9inode = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %version = alloca i32, align 4
  %i_size = alloca i64, align 8
  %retval1 = alloca i32, align 4
  %put_err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4923, metadata !DIExpression()), !dbg !4981
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4924, metadata !DIExpression()), !dbg !4982
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9inode) #13, !dbg !4983
  call void @llvm.dbg.declare(metadata ptr %v9inode, metadata !4925, metadata !DIExpression()), !dbg !4984
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4985
  %call = call ptr @V9FS_I(ptr noundef %0) #14, !dbg !4986
  store ptr %call, ptr %v9inode, align 8, !dbg !4984
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #13, !dbg !4987
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !4926, metadata !DIExpression()), !dbg !4988
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #13, !dbg !4989
  call void @llvm.dbg.declare(metadata ptr %version, metadata !4977, metadata !DIExpression()), !dbg !4990
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_size) #13, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %i_size, metadata !4978, metadata !DIExpression()), !dbg !4992
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #13, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4979, metadata !DIExpression()), !dbg !4994
  store i32 0, ptr %retval1, align 4, !dbg !4994
  call void @llvm.lifetime.start.p0(i64 4, ptr %put_err) #13, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %put_err, metadata !4980, metadata !DIExpression()), !dbg !4995
  %1 = load ptr, ptr %filp.addr, align 8, !dbg !4996
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15, !dbg !4997
  %2 = load ptr, ptr %private_data, align 8, !dbg !4997
  store ptr %2, ptr %fid, align 8, !dbg !4998
  store i32 0, ptr %tmp, align 4, !dbg !4999
  %3 = load i32, ptr %tmp, align 4, !dbg !5002
  %4 = load ptr, ptr %fid, align 8, !dbg !5003
  %tobool = icmp ne ptr %4, null, !dbg !5003
  br i1 %tobool, label %if.then, label %if.end11, !dbg !5005

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5006
  %i_mode = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 0, !dbg !5006
  %6 = load i16, ptr %i_mode, align 8, !dbg !5006
  %conv = zext i16 %6 to i32, !dbg !5006
  %and = and i32 %conv, 61440, !dbg !5006
  %cmp = icmp eq i32 %and, 32768, !dbg !5006
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5009

land.lhs.true:                                    ; preds = %if.then
  %7 = load ptr, ptr %filp.addr, align 8, !dbg !5010
  %f_mode = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2, !dbg !5011
  %8 = load i32, ptr %f_mode, align 4, !dbg !5011
  %and3 = and i32 %8, 2, !dbg !5012
  %tobool4 = icmp ne i32 %and3, 0, !dbg !5012
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5013

if.then5:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %inode.addr, align 8, !dbg !5014
  %i_mapping = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 10, !dbg !5015
  %10 = load ptr, ptr %i_mapping, align 8, !dbg !5015
  %call6 = call i32 @filemap_fdatawrite(ptr noundef %10) #14, !dbg !5016
  store i32 %call6, ptr %retval1, align 4, !dbg !5017
  br label %if.end, !dbg !5018

if.end:                                           ; preds = %if.then5, %land.lhs.true, %if.then
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !5019
  %i_lock = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 19, !dbg !5020
  call void @spin_lock(ptr noundef %i_lock) #14, !dbg !5021
  %12 = load ptr, ptr %fid, align 8, !dbg !5022
  %ilist = getelementptr inbounds %struct.p9_fid, ptr %12, i32 0, i32 9, !dbg !5023
  call void @hlist_del(ptr noundef %ilist) #14, !dbg !5024
  %13 = load ptr, ptr %inode.addr, align 8, !dbg !5025
  %i_lock7 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 19, !dbg !5026
  call void @spin_unlock(ptr noundef %i_lock7) #14, !dbg !5027
  %14 = load ptr, ptr %fid, align 8, !dbg !5028
  %call8 = call i32 @p9_fid_put(ptr noundef %14) #14, !dbg !5029
  store i32 %call8, ptr %put_err, align 4, !dbg !5030
  %15 = load i32, ptr %retval1, align 4, !dbg !5031
  %cmp9 = icmp slt i32 %15, 0, !dbg !5032
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !5031

cond.true:                                        ; preds = %if.end
  %16 = load i32, ptr %retval1, align 4, !dbg !5033
  br label %cond.end, !dbg !5031

cond.false:                                       ; preds = %if.end
  %17 = load i32, ptr %put_err, align 4, !dbg !5034
  br label %cond.end, !dbg !5031

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !5031
  store i32 %cond, ptr %retval1, align 4, !dbg !5035
  br label %if.end11, !dbg !5036

if.end11:                                         ; preds = %cond.end, %entry
  %18 = load ptr, ptr %filp.addr, align 8, !dbg !5037
  %f_mode12 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 2, !dbg !5039
  %19 = load i32, ptr %f_mode12, align 4, !dbg !5039
  %and13 = and i32 %19, 2, !dbg !5040
  %tobool14 = icmp ne i32 %and13, 0, !dbg !5040
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !5041

if.then15:                                        ; preds = %if.end11
  %20 = load ptr, ptr %v9inode, align 8, !dbg !5042
  %qid = getelementptr inbounds %struct.v9fs_inode, ptr %20, i32 0, i32 1, !dbg !5042
  %version16 = getelementptr inbounds %struct.p9_qid, ptr %qid, i32 0, i32 1, !dbg !5042
  %21 = load i32, ptr %version16, align 4, !dbg !5042
  store i32 %21, ptr %version, align 4, !dbg !5044
  %22 = load ptr, ptr %inode.addr, align 8, !dbg !5045
  %call17 = call i64 @i_size_read(ptr noundef %22) #14, !dbg !5046
  store i64 %call17, ptr %i_size, align 8, !dbg !5047
  %23 = load ptr, ptr %v9inode, align 8, !dbg !5048
  %call18 = call ptr @v9fs_inode_cookie(ptr noundef %23) #14, !dbg !5049
  call void @fscache_unuse_cookie(ptr noundef %call18, ptr noundef %version, ptr noundef %i_size) #14, !dbg !5050
  br label %if.end20, !dbg !5051

if.else:                                          ; preds = %if.end11
  %24 = load ptr, ptr %v9inode, align 8, !dbg !5052
  %call19 = call ptr @v9fs_inode_cookie(ptr noundef %24) #14, !dbg !5054
  call void @fscache_unuse_cookie(ptr noundef %call19, ptr noundef null, ptr noundef null) #14, !dbg !5055
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  %25 = load i32, ptr %retval1, align 4, !dbg !5056
  call void @llvm.lifetime.end.p0(i64 4, ptr %put_err) #13, !dbg !5057
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #13, !dbg !5057
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_size) #13, !dbg !5057
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #13, !dbg !5057
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #13, !dbg !5057
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9inode) #13, !dbg !5057
  ret i32 %25, !dbg !5058
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @V9FS_I(ptr noundef %inode) #3 align 16 !dbg !5059 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5063, metadata !DIExpression()), !dbg !5066
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5067
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5064, metadata !DIExpression()), !dbg !5067
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5067
  store ptr %0, ptr %__mptr, align 8, !dbg !5067
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5067
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5067
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5068
  %2 = load ptr, ptr %tmp, align 8, !dbg !5067
  ret ptr %2, !dbg !5069
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5070 dso_local i32 @filemap_fdatawrite(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !5073 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5080
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5080
  call void @_raw_spin_lock(ptr noundef %1) #14, !dbg !5080
  ret void, !dbg !5081
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_del(ptr noundef %n) #3 align 16 !dbg !5082 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  %0 = load ptr, ptr %n.addr, align 8, !dbg !5089
  call void @__hlist_del(ptr noundef %0) #14, !dbg !5090
  %1 = load ptr, ptr %n.addr, align 8, !dbg !5091
  %next = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 0, !dbg !5092
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5093
  %2 = load ptr, ptr %n.addr, align 8, !dbg !5094
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !5095
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %pprev, align 8, !dbg !5096
  ret void, !dbg !5097
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !5098 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5102
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5102
  call void @_raw_spin_unlock(ptr noundef %1) #14, !dbg !5102
  ret void, !dbg !5103
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p9_fid_put(ptr noundef %fid) #3 align 16 !dbg !5104 {
entry:
  %retval = alloca i32, align 4
  %fid.addr = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  %0 = load ptr, ptr %fid.addr, align 8, !dbg !5110
  %tobool = icmp ne ptr %0, null, !dbg !5110
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5112

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !5113
  %call = call zeroext i1 @IS_ERR(ptr noundef %1) #14, !dbg !5114
  br i1 %call, label %if.then, label %if.end, !dbg !5115

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5116
  br label %return, !dbg !5116

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_fid_ref, i32 0, i32 1)) #14, !dbg !5117
  br i1 %call1, label %if.then2, label %if.end3, !dbg !5119

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %fid.addr, align 8, !dbg !5120
  call void @do_trace_9p_fid_put(ptr noundef %2) #14, !dbg !5121
  br label %if.end3, !dbg !5121

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %fid.addr, align 8, !dbg !5122
  %count = getelementptr inbounds %struct.p9_fid, ptr %3, i32 0, i32 2, !dbg !5124
  %call4 = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #14, !dbg !5125
  br i1 %call4, label %if.end6, label %if.then5, !dbg !5126

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !5127
  br label %return, !dbg !5127

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %fid.addr, align 8, !dbg !5128
  %call7 = call i32 @p9_client_clunk(ptr noundef %4) #14, !dbg !5129
  store i32 %call7, ptr %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5131
  ret i32 %5, !dbg !5131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @i_size_read(ptr noundef %inode) #3 align 16 !dbg !5132 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5136, metadata !DIExpression()), !dbg !5137
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5138
  %i_size = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, !dbg !5139
  %1 = load i64, ptr %i_size, align 8, !dbg !5139
  ret i64 %1, !dbg !5140
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fscache_unuse_cookie(ptr noundef %cookie, ptr noundef %aux_data, ptr noundef %object_size) #3 align 16 !dbg !5141 {
entry:
  %cookie.addr = alloca ptr, align 8
  %aux_data.addr = alloca ptr, align 8
  %object_size.addr = alloca ptr, align 8
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5202, metadata !DIExpression()), !dbg !5205
  store ptr %aux_data, ptr %aux_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aux_data.addr, metadata !5203, metadata !DIExpression()), !dbg !5206
  store ptr %object_size, ptr %object_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object_size.addr, metadata !5204, metadata !DIExpression()), !dbg !5207
  ret void, !dbg !5208
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_inode_cookie(ptr noundef %v9inode) #3 align 16 !dbg !5209 {
entry:
  %v9inode.addr = alloca ptr, align 8
  store ptr %v9inode, ptr %v9inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9inode.addr, metadata !5213, metadata !DIExpression()), !dbg !5214
  ret ptr null, !dbg !5215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_read_dir(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_dir_readdir(ptr noundef %file, ptr noundef %ctx) #0 align 16 !dbg !5216 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %over = alloca i8, align 1
  %st = alloca %struct.p9_wstat, align 8
  %err = alloca i32, align 4
  %fid = alloca ptr, align 8
  %buflen = alloca i32, align 4
  %rdir = alloca ptr, align 8
  %kvec = alloca %struct.kvec, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %to = alloca %struct.iov_iter, align 8
  %n = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5218, metadata !DIExpression()), !dbg !5258
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5219, metadata !DIExpression()), !dbg !5259
  call void @llvm.lifetime.start.p0(i64 1, ptr %over) #13, !dbg !5260
  call void @llvm.dbg.declare(metadata ptr %over, metadata !5220, metadata !DIExpression()), !dbg !5261
  call void @llvm.lifetime.start.p0(i64 104, ptr %st) #13, !dbg !5262
  call void @llvm.dbg.declare(metadata ptr %st, metadata !5221, metadata !DIExpression()), !dbg !5263
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5264
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5240, metadata !DIExpression()), !dbg !5265
  store i32 0, ptr %err, align 4, !dbg !5265
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #13, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5241, metadata !DIExpression()), !dbg !5267
  call void @llvm.lifetime.start.p0(i64 4, ptr %buflen) #13, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %buflen, metadata !5242, metadata !DIExpression()), !dbg !5269
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdir) #13, !dbg !5270
  call void @llvm.dbg.declare(metadata ptr %rdir, metadata !5243, metadata !DIExpression()), !dbg !5271
  call void @llvm.lifetime.start.p0(i64 16, ptr %kvec) #13, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %kvec, metadata !5252, metadata !DIExpression()), !dbg !5273
  store i32 0, ptr %tmp, align 4, !dbg !5274
  %0 = load i32, ptr %tmp, align 4, !dbg !5277
  %1 = load ptr, ptr %file.addr, align 8, !dbg !5278
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15, !dbg !5279
  %2 = load ptr, ptr %private_data, align 8, !dbg !5279
  store ptr %2, ptr %fid, align 8, !dbg !5280
  %3 = load ptr, ptr %fid, align 8, !dbg !5281
  %clnt = getelementptr inbounds %struct.p9_fid, ptr %3, i32 0, i32 0, !dbg !5282
  %4 = load ptr, ptr %clnt, align 8, !dbg !5282
  %msize = getelementptr inbounds %struct.p9_client, ptr %4, i32 0, i32 1, !dbg !5283
  %5 = load i32, ptr %msize, align 4, !dbg !5283
  %sub = sub i32 %5, 24, !dbg !5284
  store i32 %sub, ptr %buflen, align 4, !dbg !5285
  %6 = load ptr, ptr %file.addr, align 8, !dbg !5286
  %7 = load i32, ptr %buflen, align 4, !dbg !5287
  %call = call ptr @v9fs_alloc_rdir_buf(ptr noundef %6, i32 noundef %7) #14, !dbg !5288
  store ptr %call, ptr %rdir, align 8, !dbg !5289
  %8 = load ptr, ptr %rdir, align 8, !dbg !5290
  %tobool = icmp ne ptr %8, null, !dbg !5290
  br i1 %tobool, label %if.end, label %if.then, !dbg !5292

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !5293

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %rdir, align 8, !dbg !5294
  %buf = getelementptr inbounds %struct.p9_rdir, ptr %9, i32 0, i32 2, !dbg !5295
  %arraydecay = getelementptr inbounds [0 x i8], ptr %buf, i64 0, i64 0, !dbg !5294
  %iov_base = getelementptr inbounds %struct.kvec, ptr %kvec, i32 0, i32 0, !dbg !5296
  store ptr %arraydecay, ptr %iov_base, align 8, !dbg !5297
  %10 = load i32, ptr %buflen, align 4, !dbg !5298
  %conv = sext i32 %10 to i64, !dbg !5298
  %iov_len = getelementptr inbounds %struct.kvec, ptr %kvec, i32 0, i32 1, !dbg !5299
  store i64 %conv, ptr %iov_len, align 8, !dbg !5300
  br label %while.cond, !dbg !5301

while.cond:                                       ; preds = %while.end, %if.end
  br label %while.body, !dbg !5301

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %rdir, align 8, !dbg !5302
  %tail = getelementptr inbounds %struct.p9_rdir, ptr %11, i32 0, i32 1, !dbg !5303
  %12 = load i32, ptr %tail, align 4, !dbg !5303
  %13 = load ptr, ptr %rdir, align 8, !dbg !5304
  %head = getelementptr inbounds %struct.p9_rdir, ptr %13, i32 0, i32 0, !dbg !5305
  %14 = load i32, ptr %head, align 4, !dbg !5305
  %cmp = icmp eq i32 %12, %14, !dbg !5306
  br i1 %cmp, label %if.then2, label %if.end16, !dbg !5307

if.then2:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 40, ptr %to) #13, !dbg !5308
  call void @llvm.dbg.declare(metadata ptr %to, metadata !5253, metadata !DIExpression()), !dbg !5309
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #13, !dbg !5310
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5257, metadata !DIExpression()), !dbg !5311
  %15 = load i32, ptr %buflen, align 4, !dbg !5312
  %conv3 = sext i32 %15 to i64, !dbg !5312
  call void @iov_iter_kvec(ptr noundef %to, i32 noundef 0, ptr noundef %kvec, i64 noundef 1, i64 noundef %conv3) #14, !dbg !5313
  %16 = load ptr, ptr %file.addr, align 8, !dbg !5314
  %private_data4 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 15, !dbg !5315
  %17 = load ptr, ptr %private_data4, align 8, !dbg !5315
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !5316
  %pos = getelementptr inbounds %struct.dir_context, ptr %18, i32 0, i32 1, !dbg !5317
  %19 = load i64, ptr %pos, align 8, !dbg !5317
  %call5 = call i32 @p9_client_read(ptr noundef %17, i64 noundef %19, ptr noundef %to, ptr noundef %err) #14, !dbg !5318
  store i32 %call5, ptr %n, align 4, !dbg !5319
  %20 = load i32, ptr %err, align 4, !dbg !5320
  %tobool6 = icmp ne i32 %20, 0, !dbg !5320
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5322

if.then7:                                         ; preds = %if.then2
  %21 = load i32, ptr %err, align 4, !dbg !5323
  store i32 %21, ptr %retval, align 4, !dbg !5324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5324

if.end8:                                          ; preds = %if.then2
  %22 = load i32, ptr %n, align 4, !dbg !5325
  %cmp9 = icmp eq i32 %22, 0, !dbg !5327
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5328

if.then11:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !5329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5329

if.end12:                                         ; preds = %if.end8
  %23 = load ptr, ptr %rdir, align 8, !dbg !5330
  %head13 = getelementptr inbounds %struct.p9_rdir, ptr %23, i32 0, i32 0, !dbg !5331
  store i32 0, ptr %head13, align 4, !dbg !5332
  %24 = load i32, ptr %n, align 4, !dbg !5333
  %25 = load ptr, ptr %rdir, align 8, !dbg !5334
  %tail14 = getelementptr inbounds %struct.p9_rdir, ptr %25, i32 0, i32 1, !dbg !5335
  store i32 %24, ptr %tail14, align 4, !dbg !5336
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5337
  br label %cleanup, !dbg !5337

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #13, !dbg !5337
  call void @llvm.lifetime.end.p0(i64 40, ptr %to) #13, !dbg !5337
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end16, !dbg !5338

if.end16:                                         ; preds = %cleanup.cont, %while.body
  br label %while.cond17, !dbg !5339

while.cond17:                                     ; preds = %if.end44, %if.end16
  %26 = load ptr, ptr %rdir, align 8, !dbg !5340
  %head18 = getelementptr inbounds %struct.p9_rdir, ptr %26, i32 0, i32 0, !dbg !5341
  %27 = load i32, ptr %head18, align 4, !dbg !5341
  %28 = load ptr, ptr %rdir, align 8, !dbg !5342
  %tail19 = getelementptr inbounds %struct.p9_rdir, ptr %28, i32 0, i32 1, !dbg !5343
  %29 = load i32, ptr %tail19, align 4, !dbg !5343
  %cmp20 = icmp slt i32 %27, %29, !dbg !5344
  br i1 %cmp20, label %while.body22, label %while.end, !dbg !5339

while.body22:                                     ; preds = %while.cond17
  %30 = load ptr, ptr %fid, align 8, !dbg !5345
  %clnt23 = getelementptr inbounds %struct.p9_fid, ptr %30, i32 0, i32 0, !dbg !5347
  %31 = load ptr, ptr %clnt23, align 8, !dbg !5347
  %32 = load ptr, ptr %rdir, align 8, !dbg !5348
  %buf24 = getelementptr inbounds %struct.p9_rdir, ptr %32, i32 0, i32 2, !dbg !5349
  %arraydecay25 = getelementptr inbounds [0 x i8], ptr %buf24, i64 0, i64 0, !dbg !5348
  %33 = load ptr, ptr %rdir, align 8, !dbg !5350
  %head26 = getelementptr inbounds %struct.p9_rdir, ptr %33, i32 0, i32 0, !dbg !5351
  %34 = load i32, ptr %head26, align 4, !dbg !5351
  %idx.ext = sext i32 %34 to i64, !dbg !5352
  %add.ptr = getelementptr i8, ptr %arraydecay25, i64 %idx.ext, !dbg !5352
  %35 = load ptr, ptr %rdir, align 8, !dbg !5353
  %tail27 = getelementptr inbounds %struct.p9_rdir, ptr %35, i32 0, i32 1, !dbg !5354
  %36 = load i32, ptr %tail27, align 4, !dbg !5354
  %37 = load ptr, ptr %rdir, align 8, !dbg !5355
  %head28 = getelementptr inbounds %struct.p9_rdir, ptr %37, i32 0, i32 0, !dbg !5356
  %38 = load i32, ptr %head28, align 4, !dbg !5356
  %sub29 = sub i32 %36, %38, !dbg !5357
  %call30 = call i32 @p9stat_read(ptr noundef %31, ptr noundef %add.ptr, i32 noundef %sub29, ptr noundef %st) #14, !dbg !5358
  store i32 %call30, ptr %err, align 4, !dbg !5359
  %39 = load i32, ptr %err, align 4, !dbg !5360
  %cmp31 = icmp sle i32 %39, 0, !dbg !5362
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !5363

if.then33:                                        ; preds = %while.body22
  store i32 0, ptr %tmp34, align 4, !dbg !5364
  %40 = load i32, ptr %tmp34, align 4, !dbg !5368
  store i32 -5, ptr %retval, align 4, !dbg !5369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !5369

if.end35:                                         ; preds = %while.body22
  %41 = load ptr, ptr %ctx.addr, align 8, !dbg !5370
  %name = getelementptr inbounds %struct.p9_wstat, ptr %st, i32 0, i32 8, !dbg !5371
  %42 = load ptr, ptr %name, align 8, !dbg !5371
  %name36 = getelementptr inbounds %struct.p9_wstat, ptr %st, i32 0, i32 8, !dbg !5372
  %43 = load ptr, ptr %name36, align 8, !dbg !5372
  %call37 = call i64 @strlen(ptr noundef %43) #14, !dbg !5373
  %conv38 = trunc i64 %call37 to i32, !dbg !5373
  %qid = getelementptr inbounds %struct.p9_wstat, ptr %st, i32 0, i32 3, !dbg !5374
  %call39 = call i64 @v9fs_qid2ino(ptr noundef %qid) #14, !dbg !5375
  %call40 = call i32 @dt_type(ptr noundef %st) #14, !dbg !5376
  %call41 = call zeroext i1 @dir_emit(ptr noundef %41, ptr noundef %42, i32 noundef %conv38, i64 noundef %call39, i32 noundef %call40) #14, !dbg !5377
  %lnot = xor i1 %call41, true, !dbg !5378
  %frombool = zext i1 %lnot to i8, !dbg !5379
  store i8 %frombool, ptr %over, align 1, !dbg !5379
  call void @p9stat_free(ptr noundef %st) #14, !dbg !5380
  %44 = load i8, ptr %over, align 1, !dbg !5381, !range !5383, !noundef !846
  %tobool42 = trunc i8 %44 to i1, !dbg !5381
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !5384

if.then43:                                        ; preds = %if.end35
  store i32 0, ptr %retval, align 4, !dbg !5385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !5385

if.end44:                                         ; preds = %if.end35
  %45 = load i32, ptr %err, align 4, !dbg !5386
  %46 = load ptr, ptr %rdir, align 8, !dbg !5387
  %head45 = getelementptr inbounds %struct.p9_rdir, ptr %46, i32 0, i32 0, !dbg !5388
  %47 = load i32, ptr %head45, align 4, !dbg !5389
  %add = add i32 %47, %45, !dbg !5389
  store i32 %add, ptr %head45, align 4, !dbg !5389
  %48 = load i32, ptr %err, align 4, !dbg !5390
  %conv46 = sext i32 %48 to i64, !dbg !5390
  %49 = load ptr, ptr %ctx.addr, align 8, !dbg !5391
  %pos47 = getelementptr inbounds %struct.dir_context, ptr %49, i32 0, i32 1, !dbg !5392
  %50 = load i64, ptr %pos47, align 8, !dbg !5393
  %add48 = add i64 %50, %conv46, !dbg !5393
  store i64 %add48, ptr %pos47, align 8, !dbg !5393
  br label %while.cond17, !dbg !5339, !llvm.loop !5394

while.end:                                        ; preds = %while.cond17
  br label %while.cond, !dbg !5301, !llvm.loop !5398

cleanup49:                                        ; preds = %if.then43, %if.then33, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %kvec) #13, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdir) #13, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 4, ptr %buflen) #13, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #13, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 104, ptr %st) #13, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 1, ptr %over) #13, !dbg !5400
  %51 = load i32, ptr %retval, align 4, !dbg !5400
  ret i32 %51, !dbg !5400
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @v9fs_file_open(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_dir_readdir_dotl(ptr noundef %file, ptr noundef %ctx) #0 align 16 !dbg !5401 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %fid = alloca ptr, align 8
  %buflen = alloca i32, align 4
  %rdir = alloca ptr, align 8
  %curdirent = alloca %struct.p9_dirent, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5403, metadata !DIExpression()), !dbg !5419
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5404, metadata !DIExpression()), !dbg !5420
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5421
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5405, metadata !DIExpression()), !dbg !5422
  store i32 0, ptr %err, align 4, !dbg !5422
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #13, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5406, metadata !DIExpression()), !dbg !5424
  call void @llvm.lifetime.start.p0(i64 4, ptr %buflen) #13, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %buflen, metadata !5407, metadata !DIExpression()), !dbg !5426
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdir) #13, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %rdir, metadata !5408, metadata !DIExpression()), !dbg !5428
  call void @llvm.lifetime.start.p0(i64 288, ptr %curdirent) #13, !dbg !5429
  call void @llvm.dbg.declare(metadata ptr %curdirent, metadata !5409, metadata !DIExpression()), !dbg !5430
  store i32 0, ptr %tmp, align 4, !dbg !5431
  %0 = load i32, ptr %tmp, align 4, !dbg !5434
  %1 = load ptr, ptr %file.addr, align 8, !dbg !5435
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15, !dbg !5436
  %2 = load ptr, ptr %private_data, align 8, !dbg !5436
  store ptr %2, ptr %fid, align 8, !dbg !5437
  %3 = load ptr, ptr %fid, align 8, !dbg !5438
  %clnt = getelementptr inbounds %struct.p9_fid, ptr %3, i32 0, i32 0, !dbg !5439
  %4 = load ptr, ptr %clnt, align 8, !dbg !5439
  %msize = getelementptr inbounds %struct.p9_client, ptr %4, i32 0, i32 1, !dbg !5440
  %5 = load i32, ptr %msize, align 4, !dbg !5440
  %sub = sub i32 %5, 24, !dbg !5441
  store i32 %sub, ptr %buflen, align 4, !dbg !5442
  %6 = load ptr, ptr %file.addr, align 8, !dbg !5443
  %7 = load i32, ptr %buflen, align 4, !dbg !5444
  %call = call ptr @v9fs_alloc_rdir_buf(ptr noundef %6, i32 noundef %7) #14, !dbg !5445
  store ptr %call, ptr %rdir, align 8, !dbg !5446
  %8 = load ptr, ptr %rdir, align 8, !dbg !5447
  %tobool = icmp ne ptr %8, null, !dbg !5447
  br i1 %tobool, label %if.end, label %if.then, !dbg !5449

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5450

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !5451

while.cond:                                       ; preds = %while.end, %if.end
  br label %while.body, !dbg !5451

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %rdir, align 8, !dbg !5452
  %tail = getelementptr inbounds %struct.p9_rdir, ptr %9, i32 0, i32 1, !dbg !5455
  %10 = load i32, ptr %tail, align 4, !dbg !5455
  %11 = load ptr, ptr %rdir, align 8, !dbg !5456
  %head = getelementptr inbounds %struct.p9_rdir, ptr %11, i32 0, i32 0, !dbg !5457
  %12 = load i32, ptr %head, align 4, !dbg !5457
  %cmp = icmp eq i32 %10, %12, !dbg !5458
  br i1 %cmp, label %if.then1, label %if.end8, !dbg !5459

if.then1:                                         ; preds = %while.body
  %13 = load ptr, ptr %fid, align 8, !dbg !5460
  %14 = load ptr, ptr %rdir, align 8, !dbg !5462
  %buf = getelementptr inbounds %struct.p9_rdir, ptr %14, i32 0, i32 2, !dbg !5463
  %arraydecay = getelementptr inbounds [0 x i8], ptr %buf, i64 0, i64 0, !dbg !5462
  %15 = load i32, ptr %buflen, align 4, !dbg !5464
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !5465
  %pos = getelementptr inbounds %struct.dir_context, ptr %16, i32 0, i32 1, !dbg !5466
  %17 = load i64, ptr %pos, align 8, !dbg !5466
  %call2 = call i32 @p9_client_readdir(ptr noundef %13, ptr noundef %arraydecay, i32 noundef %15, i64 noundef %17) #14, !dbg !5467
  store i32 %call2, ptr %err, align 4, !dbg !5468
  %18 = load i32, ptr %err, align 4, !dbg !5469
  %cmp3 = icmp sle i32 %18, 0, !dbg !5471
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5472

if.then4:                                         ; preds = %if.then1
  %19 = load i32, ptr %err, align 4, !dbg !5473
  store i32 %19, ptr %retval, align 4, !dbg !5474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5474

if.end5:                                          ; preds = %if.then1
  %20 = load ptr, ptr %rdir, align 8, !dbg !5475
  %head6 = getelementptr inbounds %struct.p9_rdir, ptr %20, i32 0, i32 0, !dbg !5476
  store i32 0, ptr %head6, align 4, !dbg !5477
  %21 = load i32, ptr %err, align 4, !dbg !5478
  %22 = load ptr, ptr %rdir, align 8, !dbg !5479
  %tail7 = getelementptr inbounds %struct.p9_rdir, ptr %22, i32 0, i32 1, !dbg !5480
  store i32 %21, ptr %tail7, align 4, !dbg !5481
  br label %if.end8, !dbg !5482

if.end8:                                          ; preds = %if.end5, %while.body
  br label %while.cond9, !dbg !5483

while.cond9:                                      ; preds = %if.end34, %if.end8
  %23 = load ptr, ptr %rdir, align 8, !dbg !5484
  %head10 = getelementptr inbounds %struct.p9_rdir, ptr %23, i32 0, i32 0, !dbg !5485
  %24 = load i32, ptr %head10, align 4, !dbg !5485
  %25 = load ptr, ptr %rdir, align 8, !dbg !5486
  %tail11 = getelementptr inbounds %struct.p9_rdir, ptr %25, i32 0, i32 1, !dbg !5487
  %26 = load i32, ptr %tail11, align 4, !dbg !5487
  %cmp12 = icmp slt i32 %24, %26, !dbg !5488
  br i1 %cmp12, label %while.body13, label %while.end, !dbg !5483

while.body13:                                     ; preds = %while.cond9
  %27 = load ptr, ptr %fid, align 8, !dbg !5489
  %clnt14 = getelementptr inbounds %struct.p9_fid, ptr %27, i32 0, i32 0, !dbg !5491
  %28 = load ptr, ptr %clnt14, align 8, !dbg !5491
  %29 = load ptr, ptr %rdir, align 8, !dbg !5492
  %buf15 = getelementptr inbounds %struct.p9_rdir, ptr %29, i32 0, i32 2, !dbg !5493
  %arraydecay16 = getelementptr inbounds [0 x i8], ptr %buf15, i64 0, i64 0, !dbg !5492
  %30 = load ptr, ptr %rdir, align 8, !dbg !5494
  %head17 = getelementptr inbounds %struct.p9_rdir, ptr %30, i32 0, i32 0, !dbg !5495
  %31 = load i32, ptr %head17, align 4, !dbg !5495
  %idx.ext = sext i32 %31 to i64, !dbg !5496
  %add.ptr = getelementptr i8, ptr %arraydecay16, i64 %idx.ext, !dbg !5496
  %32 = load ptr, ptr %rdir, align 8, !dbg !5497
  %tail18 = getelementptr inbounds %struct.p9_rdir, ptr %32, i32 0, i32 1, !dbg !5498
  %33 = load i32, ptr %tail18, align 4, !dbg !5498
  %34 = load ptr, ptr %rdir, align 8, !dbg !5499
  %head19 = getelementptr inbounds %struct.p9_rdir, ptr %34, i32 0, i32 0, !dbg !5500
  %35 = load i32, ptr %head19, align 4, !dbg !5500
  %sub20 = sub i32 %33, %35, !dbg !5501
  %call21 = call i32 @p9dirent_read(ptr noundef %28, ptr noundef %add.ptr, i32 noundef %sub20, ptr noundef %curdirent) #14, !dbg !5502
  store i32 %call21, ptr %err, align 4, !dbg !5503
  %36 = load i32, ptr %err, align 4, !dbg !5504
  %cmp22 = icmp slt i32 %36, 0, !dbg !5506
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !5507

if.then23:                                        ; preds = %while.body13
  store i32 0, ptr %tmp24, align 4, !dbg !5508
  %37 = load i32, ptr %tmp24, align 4, !dbg !5512
  store i32 -5, ptr %retval, align 4, !dbg !5513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5513

if.end25:                                         ; preds = %while.body13
  %38 = load ptr, ptr %ctx.addr, align 8, !dbg !5514
  %d_name = getelementptr inbounds %struct.p9_dirent, ptr %curdirent, i32 0, i32 3, !dbg !5516
  %arraydecay26 = getelementptr inbounds [256 x i8], ptr %d_name, i64 0, i64 0, !dbg !5517
  %d_name27 = getelementptr inbounds %struct.p9_dirent, ptr %curdirent, i32 0, i32 3, !dbg !5518
  %arraydecay28 = getelementptr inbounds [256 x i8], ptr %d_name27, i64 0, i64 0, !dbg !5519
  %call29 = call i64 @strlen(ptr noundef %arraydecay28) #14, !dbg !5520
  %conv = trunc i64 %call29 to i32, !dbg !5520
  %qid = getelementptr inbounds %struct.p9_dirent, ptr %curdirent, i32 0, i32 0, !dbg !5521
  %call30 = call i64 @v9fs_qid2ino(ptr noundef %qid) #14, !dbg !5522
  %d_type = getelementptr inbounds %struct.p9_dirent, ptr %curdirent, i32 0, i32 2, !dbg !5523
  %39 = load i8, ptr %d_type, align 8, !dbg !5523
  %conv31 = zext i8 %39 to i32, !dbg !5524
  %call32 = call zeroext i1 @dir_emit(ptr noundef %38, ptr noundef %arraydecay26, i32 noundef %conv, i64 noundef %call30, i32 noundef %conv31) #14, !dbg !5525
  br i1 %call32, label %if.end34, label %if.then33, !dbg !5526

if.then33:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4, !dbg !5527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5527

if.end34:                                         ; preds = %if.end25
  %d_off = getelementptr inbounds %struct.p9_dirent, ptr %curdirent, i32 0, i32 1, !dbg !5528
  %40 = load i64, ptr %d_off, align 8, !dbg !5528
  %41 = load ptr, ptr %ctx.addr, align 8, !dbg !5529
  %pos35 = getelementptr inbounds %struct.dir_context, ptr %41, i32 0, i32 1, !dbg !5530
  store i64 %40, ptr %pos35, align 8, !dbg !5531
  %42 = load i32, ptr %err, align 4, !dbg !5532
  %43 = load ptr, ptr %rdir, align 8, !dbg !5533
  %head36 = getelementptr inbounds %struct.p9_rdir, ptr %43, i32 0, i32 0, !dbg !5534
  %44 = load i32, ptr %head36, align 4, !dbg !5535
  %add = add i32 %44, %42, !dbg !5535
  store i32 %add, ptr %head36, align 4, !dbg !5535
  br label %while.cond9, !dbg !5483, !llvm.loop !5536

while.end:                                        ; preds = %while.cond9
  br label %while.cond, !dbg !5451, !llvm.loop !5538

cleanup:                                          ; preds = %if.then33, %if.then23, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 288, ptr %curdirent) #13, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdir) #13, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 4, ptr %buflen) #13, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #13, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5540
  %45 = load i32, ptr %retval, align 4, !dbg !5540
  ret i32 %45, !dbg !5540
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @v9fs_file_fsync_dotl(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5541 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hlist_del(ptr noundef %n) #3 align 16 !dbg !5546 {
entry:
  %n.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5548, metadata !DIExpression()), !dbg !5551
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #13, !dbg !5552
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5549, metadata !DIExpression()), !dbg !5553
  %0 = load ptr, ptr %n.addr, align 8, !dbg !5554
  %next1 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !5555
  %1 = load ptr, ptr %next1, align 8, !dbg !5555
  store ptr %1, ptr %next, align 8, !dbg !5553
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #13, !dbg !5556
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !5550, metadata !DIExpression()), !dbg !5557
  %2 = load ptr, ptr %n.addr, align 8, !dbg !5558
  %pprev2 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !5559
  %3 = load ptr, ptr %pprev2, align 8, !dbg !5559
  store ptr %3, ptr %pprev, align 8, !dbg !5557
  br label %do.body, !dbg !5560

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !5561

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !5563

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5563

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5561

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !5565
  %5 = load ptr, ptr %pprev, align 8, !dbg !5565
  store volatile ptr %4, ptr %5, align 8, !dbg !5565
  br label %do.cond5, !dbg !5565

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5565

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !5561

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5561

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %next, align 8, !dbg !5567
  %tobool = icmp ne ptr %6, null, !dbg !5567
  br i1 %tobool, label %if.then, label %if.end, !dbg !5569

if.then:                                          ; preds = %do.end8
  br label %do.body9, !dbg !5570

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !5571

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !5573

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5573

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5571

do.body13:                                        ; preds = %do.end12
  %7 = load ptr, ptr %pprev, align 8, !dbg !5575
  %8 = load ptr, ptr %next, align 8, !dbg !5575
  %pprev14 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1, !dbg !5575
  store volatile ptr %7, ptr %pprev14, align 8, !dbg !5575
  br label %do.cond15, !dbg !5575

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !5575

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !5571

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5571

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5571

if.end:                                           ; preds = %do.end18, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #13, !dbg !5577
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #13, !dbg !5577
  ret void, !dbg !5577
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5578 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5579 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5586
  %1 = ptrtoint ptr %0 to i64, !dbg !5586
  %2 = inttoptr i64 %1 to ptr, !dbg !5586
  %3 = ptrtoint ptr %2 to i64, !dbg !5586
  %cmp = icmp uge i64 %3, -4095, !dbg !5586
  %lnot = xor i1 %cmp, true, !dbg !5586
  %lnot1 = xor i1 %lnot, true, !dbg !5586
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5586
  %conv = sext i32 %lnot.ext to i64, !dbg !5586
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5586
  %tobool = icmp ne i64 %expval, 0, !dbg !5586
  ret i1 %tobool, !dbg !5587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !5588 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5604, metadata !DIExpression()), !dbg !5605
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5606
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !5607
  ret i1 %call, !dbg !5608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5609 dso_local void @do_trace_9p_fid_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !5612 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5619
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !5620
  ret i1 %call, !dbg !5621
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5622 dso_local i32 @p9_client_clunk(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !5623 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5628, metadata !DIExpression()), !dbg !5631
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5629, metadata !DIExpression()), !dbg !5632
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5633
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5634, !range !5383, !noundef !846
  %tobool = trunc i8 %1 to i1, !dbg !5634
  %conv = zext i1 %tobool to i32, !dbg !5634
  %or = or i32 2, %conv, !dbg !5635
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #13
          to label %asm.fallthrough [label %l_yes], !dbg !5636, !srcloc !5637

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5638
  br label %return, !dbg !5638

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5630), !dbg !5639
  store i1 true, ptr %retval, align 1, !dbg !5640
  br label %return, !dbg !5640

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5641
  ret i1 %2, !dbg !5641
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5642 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5646, metadata !DIExpression()), !dbg !5648
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5647, metadata !DIExpression()), !dbg !5649
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5650
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5651
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !5652
  ret i1 %call, !dbg !5653
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5654 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5658, metadata !DIExpression()), !dbg !5662
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5659, metadata !DIExpression()), !dbg !5663
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5660, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5661, metadata !DIExpression()), !dbg !5666
  %0 = load i32, ptr %i.addr, align 4, !dbg !5667
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5668
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5669
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !5670
  store i32 %call, ptr %old, align 4, !dbg !5666
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5671
  %tobool = icmp ne ptr %2, null, !dbg !5671
  br i1 %tobool, label %if.then, label %if.end, !dbg !5673

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5674
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5675
  store i32 %3, ptr %4, align 4, !dbg !5676
  br label %if.end, !dbg !5677

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5678
  %6 = load i32, ptr %i.addr, align 4, !dbg !5680
  %cmp = icmp eq i32 %5, %6, !dbg !5681
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5682

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5683

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5685

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5687

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5687

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5685

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5689

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5691

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5691

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !5689, !srcloc !5693
  br label %do.cond7, !dbg !5689

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5689

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5685

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5685

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5694

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5695
  %cmp12 = icmp slt i32 %7, 0, !dbg !5695
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5695

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5695
  %9 = load i32, ptr %i.addr, align 4, !dbg !5695
  %sub = sub i32 %8, %9, !dbg !5695
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5695
  br label %lor.end, !dbg !5695

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5695
  %lnot14 = xor i1 %lnot, true, !dbg !5695
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5695
  %conv = sext i32 %lnot.ext to i64, !dbg !5695
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5695
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5695
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5697

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5698
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !5699
  br label %if.end17, !dbg !5699

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5700

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !5701
  %12 = load i1, ptr %retval, align 1, !dbg !5701
  ret i1 %12, !dbg !5701
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5702 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5708, metadata !DIExpression()), !dbg !5710
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5709, metadata !DIExpression()), !dbg !5711
  br label %do.body, !dbg !5712

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5713

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5715
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5716
  %1 = load i32, ptr %i.addr, align 4, !dbg !5717
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5718
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !5719
  ret i32 %call, !dbg !5720
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5721 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5724 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5732, metadata !DIExpression()), !dbg !5734
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5733, metadata !DIExpression()), !dbg !5735
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5736
  %1 = load i64, ptr %size.addr, align 8, !dbg !5737
  %conv = trunc i64 %1 to i32, !dbg !5737
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !5738
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5739
  %3 = load i64, ptr %size.addr, align 8, !dbg !5739
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !5739
  ret void, !dbg !5740
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5741 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5744, metadata !DIExpression()), !dbg !5746
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5745, metadata !DIExpression()), !dbg !5747
  %0 = load i32, ptr %i.addr, align 4, !dbg !5748
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5749
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !5750
  ret i32 %call, !dbg !5751
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5752 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5757, metadata !DIExpression()), !dbg !5759
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5758, metadata !DIExpression()), !dbg !5760
  ret i1 true, !dbg !5761
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5762 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5767, metadata !DIExpression()), !dbg !5770
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5768, metadata !DIExpression()), !dbg !5771
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5769, metadata !DIExpression()), !dbg !5772
  ret void, !dbg !5773
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5774 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5777, metadata !DIExpression()), !dbg !5781
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5778, metadata !DIExpression()), !dbg !5782
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5779, metadata !DIExpression()), !dbg !5783
  %0 = load i32, ptr %i.addr, align 4, !dbg !5783
  %sub = sub i32 0, %0, !dbg !5783
  store i32 %sub, ptr %__ret, align 4, !dbg !5783
  %1 = load i32, ptr %__ret, align 4, !dbg !5783
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5783
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5783
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !5783, !srcloc !5784
  store i32 %3, ptr %__ret, align 4, !dbg !5783
  %4 = load i32, ptr %__ret, align 4, !dbg !5783
  store i32 %4, ptr %tmp, align 4, !dbg !5783
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !5785
  %5 = load i32, ptr %tmp, align 4, !dbg !5783
  ret i32 %5, !dbg !5786
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_alloc_rdir_buf(ptr noundef %filp, i32 noundef %buflen) #0 align 16 !dbg !5787 {
entry:
  %filp.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %fid = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5791, metadata !DIExpression()), !dbg !5794
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !5792, metadata !DIExpression()), !dbg !5795
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #13, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5793, metadata !DIExpression()), !dbg !5797
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5798
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5799
  %1 = load ptr, ptr %private_data, align 8, !dbg !5799
  store ptr %1, ptr %fid, align 8, !dbg !5797
  %2 = load ptr, ptr %fid, align 8, !dbg !5800
  %rdir = getelementptr inbounds %struct.p9_fid, ptr %2, i32 0, i32 7, !dbg !5802
  %3 = load ptr, ptr %rdir, align 8, !dbg !5802
  %tobool = icmp ne ptr %3, null, !dbg !5800
  br i1 %tobool, label %if.end, label %if.then, !dbg !5803

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %buflen.addr, align 4, !dbg !5804
  %conv = sext i32 %4 to i64, !dbg !5804
  %add = add i64 8, %conv, !dbg !5805
  %call = call noalias ptr @kzalloc(i64 noundef %add, i32 noundef 3264) #15, !dbg !5806
  %5 = load ptr, ptr %fid, align 8, !dbg !5807
  %rdir1 = getelementptr inbounds %struct.p9_fid, ptr %5, i32 0, i32 7, !dbg !5808
  store ptr %call, ptr %rdir1, align 8, !dbg !5809
  br label %if.end, !dbg !5807

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %fid, align 8, !dbg !5810
  %rdir2 = getelementptr inbounds %struct.p9_fid, ptr %6, i32 0, i32 7, !dbg !5811
  %7 = load ptr, ptr %rdir2, align 8, !dbg !5811
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #13, !dbg !5812
  ret ptr %7, !dbg !5813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5814 dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5817 dso_local i32 @p9_client_read(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5820 dso_local i32 @p9stat_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dir_emit(ptr noundef %ctx, ptr noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %type) #3 align 16 !dbg !5824 {
entry:
  %ctx.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %namelen.addr = alloca i32, align 4
  %ino.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5828, metadata !DIExpression()), !dbg !5833
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5829, metadata !DIExpression()), !dbg !5834
  store i32 %namelen, ptr %namelen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %namelen.addr, metadata !5830, metadata !DIExpression()), !dbg !5835
  store i64 %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !5831, metadata !DIExpression()), !dbg !5836
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5832, metadata !DIExpression()), !dbg !5837
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !5838
  %actor = getelementptr inbounds %struct.dir_context, ptr %0, i32 0, i32 0, !dbg !5839
  %1 = load ptr, ptr %actor, align 8, !dbg !5839
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !5840
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5841
  %4 = load i32, ptr %namelen.addr, align 4, !dbg !5842
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !5843
  %pos = getelementptr inbounds %struct.dir_context, ptr %5, i32 0, i32 1, !dbg !5844
  %6 = load i64, ptr %pos, align 8, !dbg !5844
  %7 = load i64, ptr %ino.addr, align 8, !dbg !5845
  %8 = load i32, ptr %type.addr, align 4, !dbg !5846
  %call = call zeroext i1 %1(ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %6, i64 noundef %7, i32 noundef %8) #14, !dbg !5838
  ret i1 %call, !dbg !5847
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5848 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5852 dso_local i64 @v9fs_qid2ino(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dt_type(ptr noundef %mistat) #3 align 16 !dbg !5857 {
entry:
  %mistat.addr = alloca ptr, align 8
  %perm = alloca i64, align 8
  %rettype = alloca i32, align 4
  store ptr %mistat, ptr %mistat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mistat.addr, metadata !5861, metadata !DIExpression()), !dbg !5864
  call void @llvm.lifetime.start.p0(i64 8, ptr %perm) #13, !dbg !5865
  call void @llvm.dbg.declare(metadata ptr %perm, metadata !5862, metadata !DIExpression()), !dbg !5866
  %0 = load ptr, ptr %mistat.addr, align 8, !dbg !5867
  %mode = getelementptr inbounds %struct.p9_wstat, ptr %0, i32 0, i32 4, !dbg !5868
  %1 = load i32, ptr %mode, align 8, !dbg !5868
  %conv = zext i32 %1 to i64, !dbg !5867
  store i64 %conv, ptr %perm, align 8, !dbg !5866
  call void @llvm.lifetime.start.p0(i64 4, ptr %rettype) #13, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %rettype, metadata !5863, metadata !DIExpression()), !dbg !5870
  store i32 8, ptr %rettype, align 4, !dbg !5870
  %2 = load i64, ptr %perm, align 8, !dbg !5871
  %and = and i64 %2, 2147483648, !dbg !5873
  %tobool = icmp ne i64 %and, 0, !dbg !5873
  br i1 %tobool, label %if.then, label %if.end, !dbg !5874

if.then:                                          ; preds = %entry
  store i32 4, ptr %rettype, align 4, !dbg !5875
  br label %if.end, !dbg !5876

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %perm, align 8, !dbg !5877
  %and1 = and i64 %3, 33554432, !dbg !5879
  %tobool2 = icmp ne i64 %and1, 0, !dbg !5879
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5880

if.then3:                                         ; preds = %if.end
  store i32 10, ptr %rettype, align 4, !dbg !5881
  br label %if.end4, !dbg !5882

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i32, ptr %rettype, align 4, !dbg !5883
  call void @llvm.lifetime.end.p0(i64 4, ptr %rettype) #13, !dbg !5884
  call void @llvm.lifetime.end.p0(i64 8, ptr %perm) #13, !dbg !5884
  ret i32 %4, !dbg !5885
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5886 dso_local void @p9stat_free(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5889 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5893, metadata !DIExpression()), !dbg !5895
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5894, metadata !DIExpression()), !dbg !5896
  %0 = load i64, ptr %size.addr, align 8, !dbg !5897
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5898
  %or = or i32 %1, 256, !dbg !5899
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !5900
  ret ptr %call, !dbg !5901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5902 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5904, metadata !DIExpression()), !dbg !5909
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5905, metadata !DIExpression()), !dbg !5910
  %0 = load i64, ptr %size.addr, align 8, !dbg !5911
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5912
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5913

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5914
  %tobool = icmp ne i64 %2, 0, !dbg !5914
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5915

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5906, metadata !DIExpression()), !dbg !5917
  %3 = load i64, ptr %size.addr, align 8, !dbg !5918
  %cmp = icmp ugt i64 %3, 8192, !dbg !5920
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5921

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5922
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5923
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !5924
  store ptr %call, ptr %retval, align 8, !dbg !5925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5925

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5926
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !5926
  store i32 %call2, ptr %index, align 4, !dbg !5927
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5928
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5929
  %9 = ptrtoint ptr %8 to i64, !dbg !5929
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !5930
  %idxprom = zext i32 %call3 to i64, !dbg !5931
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5931
  %10 = load i32, ptr %index, align 4, !dbg !5932
  %idxprom4 = zext i32 %10 to i64, !dbg !5931
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5931
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5931
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5933
  %13 = load i64, ptr %size.addr, align 8, !dbg !5934
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !5935
  store ptr %call6, ptr %retval, align 8, !dbg !5936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5936

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !5937
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5938
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5939
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !5940
  store ptr %call8, ptr %retval, align 8, !dbg !5941
  br label %return, !dbg !5941

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5942
  ret ptr %16, !dbg !5942
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5943 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !5944 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5948, metadata !DIExpression()), !dbg !5950
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5949, metadata !DIExpression()), !dbg !5951
  %0 = load i64, ptr %size.addr, align 8, !dbg !5952
  %tobool = icmp ne i64 %0, 0, !dbg !5952
  br i1 %tobool, label %if.end, label %if.then, !dbg !5954

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5955
  br label %return, !dbg !5955

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5956
  %cmp = icmp ule i64 %1, 8, !dbg !5958
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5959

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5960
  br label %return, !dbg !5960

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5961
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5963
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5964

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5965
  %cmp4 = icmp ule i64 %3, 96, !dbg !5966
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5967

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5968
  br label %return, !dbg !5968

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5969
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5971
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5972

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5973
  %cmp9 = icmp ule i64 %5, 192, !dbg !5974
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5975

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5976
  br label %return, !dbg !5976

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5977
  %cmp12 = icmp ule i64 %6, 8, !dbg !5979
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5980

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5981
  br label %return, !dbg !5981

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5982
  %cmp15 = icmp ule i64 %7, 16, !dbg !5984
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5985

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5986
  br label %return, !dbg !5986

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5987
  %cmp18 = icmp ule i64 %8, 32, !dbg !5989
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5990

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5991
  br label %return, !dbg !5991

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5992
  %cmp21 = icmp ule i64 %9, 64, !dbg !5994
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5995

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5996
  br label %return, !dbg !5996

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5997
  %cmp24 = icmp ule i64 %10, 128, !dbg !5999
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6000

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6001
  br label %return, !dbg !6001

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6002
  %cmp27 = icmp ule i64 %11, 256, !dbg !6004
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6005

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6006
  br label %return, !dbg !6006

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6007
  %cmp30 = icmp ule i64 %12, 512, !dbg !6009
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6010

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6011
  br label %return, !dbg !6011

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6012
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6014
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6015

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6016
  br label %return, !dbg !6016

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6017
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6019
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6020

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6021
  br label %return, !dbg !6021

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6022
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6024
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6025

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6026
  br label %return, !dbg !6026

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6027
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6029
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6030

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6031
  br label %return, !dbg !6031

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6032
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6034
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6035

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6036
  br label %return, !dbg !6036

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6037
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6039
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6040

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6041
  br label %return, !dbg !6041

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6042
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6044
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6045

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6046
  br label %return, !dbg !6046

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6047
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6049
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6050

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6051
  br label %return, !dbg !6051

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6052
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6054
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6055

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6056
  br label %return, !dbg !6056

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6057
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6059
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6060

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6061
  br label %return, !dbg !6061

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6062
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6064
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6065

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6066
  br label %return, !dbg !6066

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6067
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6069
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6070

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6071
  br label %return, !dbg !6071

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6072, !range !5383, !noundef !846
  %tobool69 = trunc i8 %25 to i1, !dbg !6072
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6074

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6075

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #17, !dbg !6076, !srcloc !6079
  unreachable, !dbg !6076

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6080

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6081

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6082

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6084

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6082

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !6086, !srcloc !6088
  br label %do.end75, !dbg !6086

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6082

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6089
  br label %return, !dbg !6089

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6090
  ret i32 %26, !dbg !6090
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6091 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !6094 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6098, metadata !DIExpression()), !dbg !6100
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6099, metadata !DIExpression()), !dbg !6101
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6102
  %and = and i32 %0, 17, !dbg !6102
  %cmp = icmp eq i32 %and, 0, !dbg !6102
  %lnot = xor i1 %cmp, true, !dbg !6102
  %lnot1 = xor i1 %lnot, true, !dbg !6102
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6102
  %conv = sext i32 %lnot.ext to i64, !dbg !6102
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6102
  %tobool = icmp ne i64 %expval, 0, !dbg !6102
  br i1 %tobool, label %if.then, label %if.end, !dbg !6104

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6105
  br label %return, !dbg !6105

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6106
  %and2 = and i32 %1, 1, !dbg !6108
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6108
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6109

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6110
  br label %return, !dbg !6110

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6111
  br label %return, !dbg !6111

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6113
  ret i32 %2, !dbg !6113
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6114 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6115 dso_local void @__compiletime_assert_255() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6116 dso_local i32 @p9_client_readdir(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6119 dso_local i32 @p9dirent_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919}
!llvm.ident = !{!4920}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "v9fs_dir_operations", scope: !2, file: !3, line: 239, type: !1164, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/9p/.vfs_dir.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/9p/9p\22 -D KBUILD_BASENAME=\22vfs_dir\22 -D KBUILD_MODNAME=\229p\22 -D __KBUILD_MODNAME=kmod_9p -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/9p/vfs_dir.ll fs/9p/vfs_dir.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !236, globals: !4904, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/9p/vfs_dir.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6900740baf3267cd1dfe1ba8ccbabfb6")
!4 = !{!5, !13, !21, !29, !45, !50, !57, !63, !68, !74, !80, !87, !92, !100, !108, !117, !122, !127, !133, !145, !151, !158, !164, !171, !176, !183, !188, !196, !209, !219}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !14, line: 68, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!17 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!18 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!19 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!20 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !22, line: 9, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!25 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!26 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!27 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!28 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !30, line: 1325, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!33 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!34 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!35 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!36 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!37 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!38 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!39 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!40 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!41 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!42 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!43 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!44 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !46, line: 32, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!49 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !64, line: 2052, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!67 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !69, line: 54, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "USRQUOTA", value: 0)
!72 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!73 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !75, line: 45, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!78 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!79 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !81, line: 487, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!84 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!85 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!86 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !88, line: 65, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!91 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !93, line: 620, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!96 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!97 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!98 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!99 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !93, line: 597, baseType: !101, size: 32, elements: !102)
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!104 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!105 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!106 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!107 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !81, line: 547, baseType: !7, size: 32, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116}
!110 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!111 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!112 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!113 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!114 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!115 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!116 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !81, line: 564, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!120 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !81, line: 577, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!125 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !81, line: 503, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!130 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!131 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!132 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !134, line: 44, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144}
!136 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!137 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!138 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!139 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!140 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!141 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!142 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!143 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!144 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !146, line: 16, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "TT_NONE", value: 0)
!149 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!150 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !152, line: 51, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!155 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!156 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!157 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_read_from_hole", file: !159, line: 225, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/netfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f990c1c7c591a5358345b001c6d554e")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "NETFS_READ_HOLE_IGNORE", value: 0)
!162 = !DIEnumerator(name: "NETFS_READ_HOLE_CLEAR", value: 1)
!163 = !DIEnumerator(name: "NETFS_READ_HOLE_FAIL", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_source", file: !159, line: 112, baseType: !165, size: 8, elements: !166)
!165 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "NETFS_FILL_WITH_ZEROES", value: 0)
!168 = !DIEnumerator(name: "NETFS_DOWNLOAD_FROM_SERVER", value: 1)
!169 = !DIEnumerator(name: "NETFS_READ_FROM_CACHE", value: 2)
!170 = !DIEnumerator(name: "NETFS_INVALID_READ", value: 3)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_origin", file: !159, line: 167, baseType: !165, size: 8, elements: !172)
!172 = !{!173, !174, !175}
!173 = !DIEnumerator(name: "NETFS_READAHEAD", value: 0)
!174 = !DIEnumerator(name: "NETFS_READPAGE", value: 1)
!175 = !DIEnumerator(name: "NETFS_READ_FOR_WRITE", value: 2)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_trans_status", file: !177, line: 42, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/net/9p/client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7a55fe24c3aa1cf602d2a8511dd3702")
!178 = !{!179, !180, !181, !182}
!179 = !DIEnumerator(name: "Connected", value: 0)
!180 = !DIEnumerator(name: "BeginDisconnect", value: 1)
!181 = !DIEnumerator(name: "Disconnected", value: 2)
!182 = !DIEnumerator(name: "Hung", value: 3)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 10, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "false", value: 0)
!187 = !DIEnumerator(name: "true", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !189, line: 119, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!192 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!193 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!194 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!195 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fscache_cookie_state", file: !197, line: 55, baseType: !165, size: 8, elements: !198)
!197 = !DIFile(filename: "./include/linux/fscache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53840587b25f3340766108e9e782ab7f")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!199 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_QUIESCENT", value: 0)
!200 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_LOOKING_UP", value: 1)
!201 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_CREATING", value: 2)
!202 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_ACTIVE", value: 3)
!203 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_INVALIDATING", value: 4)
!204 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_FAILED", value: 5)
!205 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_LRU_DISCARDING", value: 6)
!206 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_WITHDRAWING", value: 7)
!207 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_RELINQUISHING", value: 8)
!208 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_DROPPED", value: 9)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !210, line: 364, baseType: !7, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!211 = !{!212, !213, !214, !215, !216, !217, !218}
!212 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!213 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!214 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!215 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!216 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!217 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!218 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_perm_t", file: !220, line: 245, baseType: !7, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/net/9p/9p.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8be44a6cf5e6d0f53abc0540cde0ebd0")
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!222 = !DIEnumerator(name: "P9_DMDIR", value: 2147483648, isUnsigned: true)
!223 = !DIEnumerator(name: "P9_DMAPPEND", value: 1073741824)
!224 = !DIEnumerator(name: "P9_DMEXCL", value: 536870912)
!225 = !DIEnumerator(name: "P9_DMMOUNT", value: 268435456)
!226 = !DIEnumerator(name: "P9_DMAUTH", value: 134217728)
!227 = !DIEnumerator(name: "P9_DMTMP", value: 67108864)
!228 = !DIEnumerator(name: "P9_DMSYMLINK", value: 33554432)
!229 = !DIEnumerator(name: "P9_DMLINK", value: 16777216)
!230 = !DIEnumerator(name: "P9_DMDEVICE", value: 8388608)
!231 = !DIEnumerator(name: "P9_DMNAMEDPIPE", value: 2097152)
!232 = !DIEnumerator(name: "P9_DMSOCKET", value: 1048576)
!233 = !DIEnumerator(name: "P9_DMSETUID", value: 524288)
!234 = !DIEnumerator(name: "P9_DMSETGID", value: 262144)
!235 = !DIEnumerator(name: "P9_DMSETVTX", value: 65536)
!236 = !{!237, !239, !241, !243, !244, !4900, !4902, !463, !630}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !238, line: 156, baseType: !7)
!238 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !240, line: 38, baseType: !241)
!240 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !242, line: 27, baseType: !7)
!242 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v9fs_inode", file: !246, line: 136, size: 5376, elements: !247)
!246 = !DIFile(filename: "fs/9p/v9fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "949eddcef83527ffb4cb04cde5bb993a")
!247 = !{!248, !4892, !4898, !4899}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "netfs", scope: !245, file: !246, line: 137, baseType: !249, size: 4928)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_inode", file: !159, line: 125, size: 4928, elements: !250)
!250 = !{!251, !4770, !4891}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !249, file: !159, line: 126, baseType: !252, size: 4800)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !253)
!253 = !{!254, !257, !258, !267, !273, !280, !281, !284, !285, !4708, !4709, !4710, !4711, !4712, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4752, !4755, !4756, !4757, !4766, !4767, !4768, !4769}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !252, file: !64, line: 642, baseType: !255, size: 16)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !238, line: 24, baseType: !256)
!256 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !252, file: !64, line: 643, baseType: !256, size: 16, offset: 16)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !252, file: !64, line: 644, baseType: !259, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !260, line: 23, baseType: !261)
!260 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 21, size: 32, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !261, file: !260, line: 22, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !238, line: 37, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !266, line: 49, baseType: !7)
!266 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !252, file: !64, line: 645, baseType: !268, size: 128, offset: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !238, line: 190, size: 128, elements: !269)
!269 = !{!270, !272}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !238, line: 191, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !268, file: !238, line: 191, baseType: !271, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !252, file: !64, line: 646, baseType: !274, size: 32, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !260, line: 28, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 26, size: 32, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !275, file: !260, line: 27, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !238, line: 38, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !266, line: 50, baseType: !7)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !252, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !252, file: !64, line: 650, baseType: !282, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !252, file: !64, line: 651, baseType: !282, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !252, file: !64, line: 654, baseType: !286, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !289)
!289 = !{!290, !4542, !4552, !4556, !4560, !4564, !4568, !4572, !4576, !4580, !4584, !4585, !4589, !4593, !4630, !4659, !4663, !4669, !4673, !4677, !4681, !4685, !4689, !4695, !4699}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !288, file: !64, line: 1967, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !340, !294, !7}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !296, line: 82, size: 1536, elements: !297)
!296 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!297 = !{!298, !299, !309, !317, !318, !339, !341, !345, !396, !4525, !4526, !4527, !4528, !4534, !4535, !4536}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !295, file: !296, line: 84, baseType: !7, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !295, file: !296, line: 85, baseType: !300, size: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !301, line: 275, baseType: !302)
!301 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !301, line: 275, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !302, file: !301, line: 275, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !301, line: 69, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !301, line: 64, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !306, file: !301, line: 65, baseType: !7, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !295, file: !296, line: 86, baseType: !310, size: 128, offset: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !311, line: 38, size: 128, elements: !312)
!311 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!312 = !{!313, !315}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !311, line: 39, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !310, file: !311, line: 39, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !295, file: !296, line: 87, baseType: !294, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !295, file: !296, line: 88, baseType: !319, size: 128, offset: 256)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !296, line: 49, size: 128, elements: !320)
!320 = !{!321, !335}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !296, line: 50, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !296, line: 50, size: 64, elements: !323)
!323 = !{!324, !331}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !296, line: 51, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !296, line: 51, size: 64, elements: !326)
!326 = !{!327, !330}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !325, file: !296, line: 52, baseType: !328, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !329, line: 21, baseType: !241)
!329 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!330 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !325, file: !296, line: 52, baseType: !328, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !322, file: !296, line: 54, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !329, line: 23, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !242, line: 31, baseType: !334)
!334 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !296, line: 56, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !295, file: !296, line: 89, baseType: !340, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !295, file: !296, line: 91, baseType: !342, size: 256, offset: 448)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !295, file: !296, line: 94, baseType: !346, size: 64, offset: 704)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !347, line: 25, size: 64, elements: !348)
!347 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !347, line: 26, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !347, line: 26, size: 64, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !350, file: !347, line: 28, baseType: !333, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !347, line: 30, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !347, line: 30, size: 64, elements: !355)
!355 = !{!356, !395}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !354, file: !347, line: 31, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !358, line: 29, baseType: !359)
!358 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !358, line: 17, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !358, line: 18, baseType: !362, size: 32)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !358, line: 18, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !362, file: !358, line: 19, baseType: !365, size: 32)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !366, line: 14, size: 32, elements: !367)
!366 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !365, file: !366, line: 15, baseType: !369, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !370, line: 44, baseType: !371)
!370 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !370, line: 14, size: 32, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !370, line: 15, baseType: !374, size: 32)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !370, line: 15, size: 32, elements: !375)
!375 = !{!376, !381, !388}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !374, file: !370, line: 16, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !238, line: 174, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 172, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !378, file: !238, line: 173, baseType: !101, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !370, line: 24, baseType: !382, size: 16)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !370, line: 24, size: 16, elements: !383)
!383 = !{!384, !387}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !382, file: !370, line: 25, baseType: !385, size: 8)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !329, line: 17, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !242, line: 21, baseType: !338)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !382, file: !370, line: 26, baseType: !385, size: 8, offset: 8)
!388 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !370, line: 28, baseType: !389, size: 32)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !370, line: 28, size: 32, elements: !390)
!390 = !{!391, !394}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !389, file: !370, line: 29, baseType: !392, size: 16)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !329, line: 19, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !242, line: 24, baseType: !256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !389, file: !370, line: 30, baseType: !392, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !354, file: !347, line: 32, baseType: !101, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !295, file: !296, line: 95, baseType: !397, size: 64, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !296, line: 128, size: 1024, align: 512, elements: !400)
!400 = !{!401, !405, !406, !413, !422, !426, !430, !434, !435, !439, !444, !4515, !4519}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !399, file: !296, line: 129, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!101, !294, !7}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !399, file: !296, line: 130, baseType: !402, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !399, file: !296, line: 131, baseType: !407, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!101, !410, !412}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !399, file: !296, line: 132, baseType: !414, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!101, !410, !7, !417, !420}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !399, file: !296, line: 134, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!101, !410}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !399, file: !296, line: 135, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!101, !294}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !399, file: !296, line: 136, baseType: !431, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !294}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !399, file: !296, line: 137, baseType: !431, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !399, file: !296, line: 138, baseType: !436, size: 64, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !294, !340}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !399, file: !296, line: 139, baseType: !440, size: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!443, !294, !443, !101}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !399, file: !296, line: 140, baseType: !445, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !4514}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !450, line: 70, size: 256, elements: !451)
!450 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!451 = !{!452, !453, !4510, !4511}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !449, file: !450, line: 71, baseType: !294, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !449, file: !450, line: 72, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !456)
!456 = !{!457, !458, !461, !462, !464, !468, !2419, !2551, !2591, !2676, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2693, !2697, !2698, !3158, !3161, !3219, !3222, !3223, !3224, !3265, !4443, !4444, !4445, !4446, !4447, !4448, !4451, !4453, !4460, !4461, !4462, !4463, !4464, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !455, file: !64, line: 1191, baseType: !268, size: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !455, file: !64, line: 1192, baseType: !459, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !238, line: 21, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !238, line: 18, baseType: !328)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !455, file: !64, line: 1193, baseType: !338, size: 8, offset: 160)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !455, file: !64, line: 1194, baseType: !463, size: 64, offset: 192)
!463 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !455, file: !64, line: 1195, baseType: !465, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !238, line: 52, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !266, line: 88, baseType: !467)
!467 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !455, file: !64, line: 1196, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !471)
!471 = !{!472, !473, !474, !481, !485, !489, !493, !2407, !2408, !2409, !2411, !2412, !2413, !2415, !2416, !2417, !2418}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !470, file: !64, line: 2367, baseType: !417, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !470, file: !64, line: 2368, baseType: !101, size: 32, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !470, file: !64, line: 2376, baseType: !475, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!101, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !480, line: 32, flags: DIFlagFwdDecl)
!480 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!481 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !470, file: !64, line: 2377, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !470, file: !64, line: 2378, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!294, !469, !101, !417, !243}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !470, file: !64, line: 2380, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !454}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !470, file: !64, line: 2381, baseType: !494, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !496)
!496 = !{!497, !498, !499, !503, !2064, !2090, !2091, !2092, !2093, !2097, !2100, !2101, !2102, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2169, !2173, !2193, !2211, !2212, !2213, !2214, !2223, !2246, !2247, !2250, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2264, !2265, !2365, !2373, !2374, !2375, !2377, !2381, !2382, !2386, !2387, !2388, !2389, !2391, !2392, !2393, !2400, !2401, !2402, !2406}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !495, file: !6, line: 403, baseType: !5, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !495, file: !6, line: 406, baseType: !268, size: 128, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !495, file: !6, line: 409, baseType: !500, size: 448, offset: 192)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 448, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 56)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !495, file: !6, line: 417, baseType: !504, size: 768, offset: 640)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !505)
!505 = !{!506, !2057, !2058, !2059, !2062}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !504, file: !6, line: 46, baseType: !507, size: 512)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !508, line: 64, size: 512, elements: !509)
!508 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!509 = !{!510, !511, !512, !514, !560, !1944, !2047, !2052, !2053, !2054, !2055, !2056}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !507, file: !508, line: 65, baseType: !417, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !507, file: !508, line: 66, baseType: !268, size: 128, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !507, file: !508, line: 67, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !507, file: !508, line: 68, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !508, line: 168, size: 768, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !516, file: !508, line: 169, baseType: !268, size: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !516, file: !508, line: 170, baseType: !357, size: 32, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !516, file: !508, line: 171, baseType: !507, size: 512, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !516, file: !508, line: 172, baseType: !522, size: 64, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !508, line: 133, size: 192, elements: !525)
!525 = !{!526, !533, !538}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !524, file: !508, line: 134, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!101, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !524, file: !508, line: 135, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!417, !531}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !524, file: !508, line: 136, baseType: !539, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!101, !531, !543}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !508, line: 125, size: 20736, elements: !545)
!545 = !{!546, !550, !554, !555, !559}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !544, file: !508, line: 126, baseType: !547, size: 192)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 192, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 3)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !544, file: !508, line: 127, baseType: !551, size: 4096, offset: 192)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 4096, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !544, file: !508, line: 128, baseType: !101, size: 32, offset: 4288)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !544, file: !508, line: 129, baseType: !556, size: 16384, offset: 4320)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 16384, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 2048)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !544, file: !508, line: 130, baseType: !101, size: 32, offset: 20704)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !507, file: !508, line: 69, baseType: !561, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !508, line: 116, size: 384, elements: !564)
!564 = !{!565, !569, !595, !1903, !1934, !1938}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !563, file: !508, line: 117, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !513}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !563, file: !508, line: 118, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !573, line: 254, size: 128, elements: !574)
!573 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!574 = !{!575, !588}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !572, file: !573, line: 255, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!579, !513, !583, !443}
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !238, line: 66, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !266, line: 73, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !266, line: 15, baseType: !582)
!582 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !573, line: 30, size: 128, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !584, file: !573, line: 31, baseType: !417, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !584, file: !573, line: 32, baseType: !255, size: 16, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !572, file: !573, line: 256, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!579, !513, !583, !417, !592}
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !238, line: 61, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !266, line: 72, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !266, line: 16, baseType: !463)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !563, file: !508, line: 119, baseType: !596, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !573, line: 84, size: 320, elements: !600)
!600 = !{!601, !602, !606, !1899, !1901}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !573, line: 85, baseType: !417, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !599, file: !573, line: 86, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!255, !513, !583, !101}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !599, file: !573, line: 88, baseType: !607, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!255, !513, !610, !101}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !573, line: 175, size: 512, elements: !612)
!612 = !{!613, !614, !615, !616, !1890, !1894, !1895}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !611, file: !573, line: 176, baseType: !584, size: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !611, file: !573, line: 177, baseType: !592, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !611, file: !573, line: 178, baseType: !243, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !611, file: !573, line: 179, baseType: !617, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !622)
!622 = !{!623, !624, !632, !654, !655, !656, !671, !672, !673, !1884, !1885, !1886, !1887, !1888, !1889}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !621, file: !64, line: 473, baseType: !340, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !621, file: !64, line: 474, baseType: !625, size: 128, offset: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !626, line: 296, size: 128, elements: !627)
!626 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!627 = !{!628, !629, !631}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !625, file: !626, line: 297, baseType: !357, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !625, file: !626, line: 299, baseType: !630, size: 32, offset: 32)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !238, line: 154, baseType: !7)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !625, file: !626, line: 300, baseType: !243, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !621, file: !64, line: 475, baseType: !633, size: 320, offset: 192)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !634, line: 48, size: 320, elements: !635)
!634 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!635 = !{!636, !645, !646, !651, !653}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !633, file: !634, line: 49, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !638, line: 13, baseType: !639)
!638 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !238, line: 181, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 179, size: 64, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !640, file: !238, line: 180, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !329, line: 22, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !242, line: 30, baseType: !467)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !633, file: !634, line: 55, baseType: !637, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !633, file: !634, line: 57, baseType: !647, size: 32, offset: 128)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !648, line: 15, size: 32, elements: !649)
!648 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !647, file: !648, line: 20, baseType: !377, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !633, file: !634, line: 59, baseType: !652, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !366, line: 23, baseType: !365)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !633, file: !634, line: 60, baseType: !268, size: 128, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !621, file: !64, line: 476, baseType: !630, size: 32, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !621, file: !64, line: 477, baseType: !377, size: 32, offset: 544)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !621, file: !64, line: 482, baseType: !657, size: 128, offset: 576)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !658, line: 26, size: 128, elements: !659)
!658 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!659 = !{!660, !670}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !657, file: !658, line: 27, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !658, line: 12, size: 64, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !661, file: !658, line: 13, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !658, line: 5, size: 192, align: 64, elements: !666)
!666 = !{!667, !668, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !665, file: !658, line: 6, baseType: !463, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !665, file: !658, line: 7, baseType: !664, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !665, file: !658, line: 8, baseType: !664, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !657, file: !658, line: 28, baseType: !664, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !621, file: !64, line: 483, baseType: !463, size: 64, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !621, file: !64, line: 484, baseType: !463, size: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !621, file: !64, line: 485, baseType: !674, size: 64, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !677)
!677 = !{!678, !1796, !1800, !1804, !1808, !1824, !1829, !1833, !1838, !1842, !1846, !1850, !1851, !1855, !1859, !1863, !1868, !1872, !1879, !1880}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !676, file: !64, line: 405, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!101, !682, !1776}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !684)
!684 = !{!685, !686, !1770, !1775}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !30, line: 75, baseType: !463, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !30, line: 83, baseType: !687, size: 320, offset: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !30, line: 83, size: 320, elements: !688)
!688 = !{!689, !710, !724, !728, !1769}
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !30, line: 84, baseType: !690, size: 320)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !30, line: 84, size: 320, elements: !691)
!691 = !{!692, !703, !704, !709}
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !30, line: 90, baseType: !693, size: 128)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !30, line: 90, size: 128, elements: !694)
!694 = !{!695, !696, !701, !702}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !693, file: !30, line: 91, baseType: !268, size: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !30, line: 94, baseType: !697, size: 128)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !30, line: 94, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !697, file: !30, line: 96, baseType: !243, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !697, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !693, file: !30, line: 102, baseType: !268, size: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !693, file: !30, line: 103, baseType: !268, size: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !690, file: !30, line: 106, baseType: !620, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !30, line: 107, baseType: !705, size: 64, offset: 192)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !30, line: 107, size: 64, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !705, file: !30, line: 108, baseType: !463, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !705, file: !30, line: 109, baseType: !463, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !690, file: !30, line: 117, baseType: !463, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !30, line: 119, baseType: !711, size: 320)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !30, line: 119, size: 320, elements: !712)
!712 = !{!713, !714, !717, !718, !719}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !711, file: !30, line: 124, baseType: !463, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !711, file: !30, line: 125, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !711, file: !30, line: 126, baseType: !463, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !711, file: !30, line: 127, baseType: !463, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !30, line: 128, baseType: !720, size: 64, offset: 256)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !30, line: 128, size: 64, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !720, file: !30, line: 133, baseType: !463, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !720, file: !30, line: 138, baseType: !637, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !30, line: 141, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !30, line: 141, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !725, file: !30, line: 142, baseType: !463, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !30, line: 144, baseType: !729, size: 128)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !30, line: 144, size: 128, elements: !730)
!730 = !{!731, !1768}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !729, file: !30, line: 146, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !734)
!734 = !{!735, !745, !776, !787, !788, !789, !790, !1750, !1751, !1752}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !733, file: !14, line: 127, baseType: !736, size: 384)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !737)
!737 = !{!738, !739, !741, !742, !743, !744}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !736, file: !14, line: 22, baseType: !463, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !736, file: !14, line: 23, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !736, file: !14, line: 24, baseType: !740, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !736, file: !14, line: 25, baseType: !463, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !736, file: !14, line: 26, baseType: !463, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !736, file: !14, line: 27, baseType: !463, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !733, file: !14, line: 128, baseType: !746, size: 128, offset: 384)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !747, line: 105, size: 128, elements: !748)
!747 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !746, file: !747, line: 110, baseType: !463, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !746, file: !747, line: 118, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !747, line: 95, size: 448, elements: !753)
!753 = !{!754, !755, !761, !762, !765, !766, !775}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !752, file: !747, line: 96, baseType: !637, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !752, file: !747, line: 97, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !747, line: 60, baseType: !758)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !752, file: !747, line: 98, baseType: !756, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !752, file: !747, line: 99, baseType: !763, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !238, line: 35, baseType: !764)
!764 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !752, file: !747, line: 100, baseType: !763, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !752, file: !747, line: 101, baseType: !767, size: 128, align: 64, offset: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !238, line: 232, size: 128, align: 64, elements: !768)
!768 = !{!769, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !238, line: 233, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !767, file: !238, line: 234, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !770}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !752, file: !747, line: 102, baseType: !760, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !733, file: !14, line: 129, baseType: !777, size: 256, offset: 512)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !778, line: 26, size: 256, elements: !779)
!778 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !777, file: !778, line: 27, baseType: !7, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !777, file: !778, line: 28, baseType: !782, size: 192, offset: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !783, line: 43, size: 192, elements: !784)
!783 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !782, file: !783, line: 44, baseType: !652, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !782, file: !783, line: 45, baseType: !268, size: 128, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !733, file: !14, line: 132, baseType: !463, size: 64, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !733, file: !14, line: 133, baseType: !791, size: 64, offset: 896)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !794)
!794 = !{!795, !799, !1746}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !793, file: !14, line: 83, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !682}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !793, file: !14, line: 89, baseType: !800, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !806, line: 512, size: 896, elements: !807)
!806 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!807 = !{!808, !1713, !1714, !1721, !1728, !1738, !1739, !1740, !1742, !1744}
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 513, baseType: !809, size: 320)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !806, line: 513, size: 320, elements: !810)
!810 = !{!811, !1709, !1710, !1711, !1712}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !809, file: !806, line: 514, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !814)
!814 = !{!815, !824, !1614, !1620, !1627, !1628, !1633, !1634, !1639, !1640, !1643, !1702, !1703, !1704, !1705, !1706, !1707}
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !30, line: 628, baseType: !816, size: 128)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !30, line: 628, size: 128, elements: !817)
!817 = !{!818, !823}
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !30, line: 629, baseType: !819, size: 128)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !816, file: !30, line: 629, size: 128, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !819, file: !30, line: 631, baseType: !463, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !819, file: !30, line: 632, baseType: !463, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !816, file: !30, line: 635, baseType: !767, size: 128, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !813, file: !30, line: 639, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !827)
!827 = !{!828, !1612}
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !30, line: 734, baseType: !829, size: 10240)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !826, file: !30, line: 734, size: 10240, elements: !830)
!830 = !{!831, !835, !849, !1474, !1475, !1476, !1477, !1478, !1479, !1488, !1489, !1490, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1529, !1531, !1534, !1581, !1582, !1583, !1586, !1587, !1588, !1591, !1592, !1593, !1599, !1600}
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !829, file: !30, line: 739, baseType: !832, size: 512, align: 512)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !829, file: !30, line: 739, size: 512, align: 512, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !832, file: !30, line: 747, baseType: !377, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !829, file: !30, line: 750, baseType: !836, size: 128, offset: 512)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !837, line: 218, size: 128, elements: !838)
!837 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!838 = !{!839, !847, !848}
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 219, baseType: !840, size: 32)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 219, size: 32, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !840, file: !837, line: 220, baseType: !357, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !840, file: !837, line: 221, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !837, line: 197, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !837, line: 197, elements: !846)
!846 = !{}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !836, file: !837, line: 223, baseType: !7, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !836, file: !837, line: 224, baseType: !243, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !829, file: !30, line: 752, baseType: !850, size: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!463, !853, !463, !463, !463, !463}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !855)
!855 = !{!856, !867, !868, !869, !870, !878, !879, !880, !951, !1146, !1155, !1161, !1162, !1464, !1465, !1466, !1467, !1469, !1470, !1473}
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !64, line: 995, baseType: !857, size: 128)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !854, file: !64, line: 995, size: 128, elements: !858)
!858 = !{!859, !865, !866}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !857, file: !64, line: 996, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !861, line: 60, size: 64, elements: !862)
!861 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !860, file: !861, line: 61, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !857, file: !64, line: 997, baseType: !767, size: 128, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !857, file: !64, line: 998, baseType: !7, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !854, file: !64, line: 1005, baseType: !357, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !854, file: !64, line: 1006, baseType: !237, size: 32, offset: 160)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !854, file: !64, line: 1007, baseType: !637, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !854, file: !64, line: 1008, baseType: !871, size: 256, offset: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !872, line: 66, size: 256, elements: !873)
!872 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!873 = !{!874, !875, !876, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !871, file: !872, line: 67, baseType: !637, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !871, file: !872, line: 68, baseType: !652, size: 32, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !871, file: !872, line: 70, baseType: !647, size: 32, offset: 96)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !871, file: !872, line: 72, baseType: !268, size: 128, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !854, file: !64, line: 1009, baseType: !465, size: 64, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !854, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !854, file: !64, line: 1011, baseType: !881, size: 256, offset: 640)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !882)
!882 = !{!883, !904, !947, !948, !949, !950}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !881, file: !64, line: 949, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !885, line: 34, baseType: !886)
!885 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !885, line: 25, size: 64, elements: !887)
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !886, file: !885, line: 26, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !890, line: 27, baseType: !891)
!890 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !890, line: 13, size: 64, elements: !892)
!892 = !{!893, !903}
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !890, line: 14, baseType: !894, size: 32)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !890, line: 14, size: 32, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !894, file: !890, line: 15, baseType: !377, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !890, line: 16, baseType: !898, size: 32)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !890, line: 16, size: 32, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !898, file: !890, line: 18, baseType: !385, size: 8)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !898, file: !890, line: 19, baseType: !902, size: 24, offset: 8)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 24, elements: !548)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !891, file: !890, line: 26, baseType: !369, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !881, file: !64, line: 950, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !22, line: 59, size: 768, elements: !907)
!907 = !{!908, !913, !914, !915, !928, !929, !936, !937}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !906, file: !22, line: 61, baseType: !909, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !189, line: 113, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !189, line: 111, size: 32, elements: !911)
!911 = !{!912}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !910, file: !189, line: 112, baseType: !377, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !906, file: !22, line: 62, baseType: !7, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !906, file: !22, line: 63, baseType: !357, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !906, file: !22, line: 65, baseType: !916, size: 256, offset: 128)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 256, elements: !926)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !238, line: 194, size: 64, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !917, file: !238, line: 195, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !238, line: 198, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !921, file: !238, line: 199, baseType: !920, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !921, file: !238, line: 199, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!926 = !{!927}
!927 = !DISubrange(count: 4)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !906, file: !22, line: 66, baseType: !917, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !906, file: !22, line: 68, baseType: !930, size: 192, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !931, line: 41, baseType: !932)
!931 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !931, line: 37, size: 192, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !932, file: !931, line: 38, baseType: !357, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !932, file: !931, line: 39, baseType: !268, size: 128, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !906, file: !22, line: 69, baseType: !767, size: 128, align: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !906, file: !22, line: 70, baseType: !938, offset: 768)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, elements: !945)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !22, line: 54, size: 128, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !939, file: !22, line: 55, baseType: !101, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !939, file: !22, line: 56, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !22, line: 56, flags: DIFlagFwdDecl)
!945 = !{!946}
!946 = !DISubrange(count: -1)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !881, file: !64, line: 951, baseType: !21, size: 32, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !881, file: !64, line: 952, baseType: !259, size: 32, offset: 160)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !881, file: !64, line: 952, baseType: !259, size: 32, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !881, file: !64, line: 953, baseType: !101, size: 32, offset: 224)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !854, file: !64, line: 1012, baseType: !952, size: 64, offset: 896)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !955, line: 110, size: 1472, elements: !956)
!955 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!956 = !{!957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !973, !974, !975, !976, !977, !978, !1091, !1092, !1093, !1094, !1095, !1126, !1129, !1133, !1141}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !954, file: !955, line: 111, baseType: !637, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !954, file: !955, line: 112, baseType: !259, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !954, file: !955, line: 113, baseType: !274, size: 32, offset: 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !954, file: !955, line: 114, baseType: !259, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !954, file: !955, line: 115, baseType: !274, size: 32, offset: 160)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !954, file: !955, line: 116, baseType: !259, size: 32, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !954, file: !955, line: 117, baseType: !274, size: 32, offset: 224)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !954, file: !955, line: 118, baseType: !259, size: 32, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !954, file: !955, line: 119, baseType: !274, size: 32, offset: 288)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !954, file: !955, line: 120, baseType: !7, size: 32, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !954, file: !955, line: 121, baseType: !968, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !969, line: 24, baseType: !970)
!969 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !969, line: 24, size: 64, elements: !971)
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !970, file: !969, line: 24, baseType: !332, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !954, file: !955, line: 122, baseType: !968, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !954, file: !955, line: 123, baseType: !968, size: 64, offset: 512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !954, file: !955, line: 124, baseType: !968, size: 64, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !954, file: !955, line: 125, baseType: !968, size: 64, offset: 640)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !954, file: !955, line: 127, baseType: !338, size: 8, offset: 704)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !954, file: !955, line: 129, baseType: !979, size: 64, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !981, line: 195, size: 1728, elements: !982)
!981 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!982 = !{!983, !984, !989, !994, !995, !998, !999, !1006, !1007, !1008, !1009, !1012, !1013, !1014, !1016, !1017, !1055, !1076}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !980, file: !981, line: 196, baseType: !909, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !980, file: !981, line: 197, baseType: !985, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !981, line: 28, baseType: !986)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !238, line: 104, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !329, line: 20, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !242, line: 26, baseType: !101)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !981, line: 198, baseType: !990, size: 192, offset: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !981, line: 198, size: 192, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !990, file: !981, line: 199, baseType: !268, size: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !990, file: !981, line: 200, baseType: !665, size: 192, align: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !980, file: !981, line: 205, baseType: !633, size: 320, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !980, file: !981, line: 206, baseType: !996, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !981, line: 206, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !980, file: !981, line: 207, baseType: !243, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !981, line: 208, baseType: !1000, size: 64, offset: 704)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !981, line: 208, size: 64, elements: !1001)
!1001 = !{!1002, !1005}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1000, file: !981, line: 209, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1004, line: 8, baseType: !644)
!1004 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1000, file: !981, line: 210, baseType: !1003, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !980, file: !981, line: 212, baseType: !1003, size: 64, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !980, file: !981, line: 213, baseType: !259, size: 32, offset: 832)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !980, file: !981, line: 214, baseType: !274, size: 32, offset: 864)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !980, file: !981, line: 215, baseType: !1010, size: 32, offset: 896)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !981, line: 31, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !238, line: 110, baseType: !328)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !980, file: !981, line: 216, baseType: !256, size: 16, offset: 928)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !980, file: !981, line: 217, baseType: !256, size: 16, offset: 944)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !980, file: !981, line: 221, baseType: !1015, size: 16, offset: 960)
!1015 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !981, line: 228, baseType: !463, size: 64, offset: 1024)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !981, line: 245, baseType: !1018, size: 320, offset: 1088)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !981, line: 245, size: 320, elements: !1019)
!1019 = !{!1020, !1047}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1018, file: !981, line: 246, baseType: !1021, size: 320)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !981, line: 114, size: 320, elements: !1022)
!1022 = !{!1023, !1024, !1036, !1039, !1046}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1021, file: !981, line: 116, baseType: !463, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !981, line: 117, baseType: !1025, size: 64, offset: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !981, line: 117, size: 64, elements: !1026)
!1026 = !{!1027, !1035}
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !981, line: 118, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !981, line: 118, size: 64, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1028, file: !981, line: 120, baseType: !392, size: 16)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1028, file: !981, line: 121, baseType: !1032, size: 48, offset: 16)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 48, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 6)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1025, file: !981, line: 127, baseType: !463, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1021, file: !981, line: 129, baseType: !1037, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !981, line: 102, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1021, file: !981, line: 130, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !981, line: 108, size: 192, elements: !1042)
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1041, file: !981, line: 109, baseType: !767, size: 128, align: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1041, file: !981, line: 110, baseType: !909, size: 32, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1041, file: !981, line: 111, baseType: !763, size: 8, offset: 160)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1021, file: !981, line: 131, baseType: !417, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !981, line: 247, baseType: !1048, size: 320)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !981, line: 247, size: 320, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1048, file: !981, line: 248, baseType: !463, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1048, file: !981, line: 249, baseType: !463, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1048, file: !981, line: 250, baseType: !1037, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1048, file: !981, line: 251, baseType: !1040, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1048, file: !981, line: 252, baseType: !443, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !981, line: 260, baseType: !1056, size: 256, offset: 1408)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !981, line: 260, size: 256, elements: !1057)
!1057 = !{!1058, !1064}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1056, file: !981, line: 261, baseType: !1059, size: 256)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !981, line: 134, size: 256, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1059, file: !981, line: 135, baseType: !243, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1059, file: !981, line: 136, baseType: !1063, size: 256)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 256, elements: !926)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !981, line: 262, baseType: !1065, size: 256)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1056, file: !981, line: 262, size: 256, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1065, file: !981, line: 264, baseType: !268, size: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1065, file: !981, line: 265, baseType: !1069, size: 128, offset: 128)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1070, line: 22, size: 128, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1071 = !{!1072, !1075}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1069, file: !1070, line: 23, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1070, line: 23, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1069, file: !1070, line: 24, baseType: !463, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !980, file: !981, line: 280, baseType: !1077, size: 64, offset: 1664)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !981, line: 176, size: 192, elements: !1079)
!1079 = !{!1080, !1089, !1090}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1078, file: !981, line: 177, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !981, line: 171, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!101, !979, !1085, !1087, !979}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1078, file: !981, line: 178, baseType: !979, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1078, file: !981, line: 179, baseType: !1037, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !954, file: !955, line: 130, baseType: !979, size: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !954, file: !955, line: 131, baseType: !979, size: 64, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !954, file: !955, line: 132, baseType: !979, size: 64, offset: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !954, file: !955, line: 135, baseType: !243, size: 64, offset: 1024)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !954, file: !955, line: 137, baseType: !1096, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1098, line: 14, size: 1088, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1099 = !{!1100, !1101, !1110, !1111, !1112, !1113, !1114, !1115}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1097, file: !1098, line: 15, baseType: !909, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1097, file: !1098, line: 17, baseType: !1102, size: 320, offset: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1103, line: 22, size: 320, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1102, file: !1103, line: 23, baseType: !652, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1102, file: !1103, line: 24, baseType: !643, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1102, file: !1103, line: 26, baseType: !268, size: 128, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1102, file: !1103, line: 28, baseType: !1109, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1097, file: !1098, line: 19, baseType: !463, size: 64, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1097, file: !1098, line: 20, baseType: !637, size: 64, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1097, file: !1098, line: 23, baseType: !921, size: 128, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1097, file: !1098, line: 24, baseType: !259, size: 32, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1097, file: !1098, line: 29, baseType: !637, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1097, file: !1098, line: 36, baseType: !1116, size: 320, offset: 768)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1117, line: 15, size: 320, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !1117, line: 16, baseType: !652, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1116, file: !1117, line: 18, baseType: !101, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1116, file: !1117, line: 19, baseType: !101, size: 32, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1116, file: !1117, line: 20, baseType: !101, size: 32, offset: 96)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1116, file: !1117, line: 21, baseType: !101, size: 32, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1116, file: !1117, line: 22, baseType: !463, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !1117, line: 23, baseType: !463, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !954, file: !955, line: 138, baseType: !1127, size: 64, offset: 1152)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !260, line: 18, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !954, file: !955, line: 139, baseType: !1130, size: 64, offset: 1216)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1132, line: 16, flags: DIFlagFwdDecl)
!1132 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !954, file: !955, line: 140, baseType: !1134, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !955, line: 25, size: 64, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1135, file: !955, line: 26, baseType: !377, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1135, file: !955, line: 27, baseType: !101, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1135, file: !955, line: 28, baseType: !1140, offset: 64)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, elements: !945)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !955, line: 142, baseType: !1142, size: 128, offset: 1344)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !955, line: 142, size: 128, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1142, file: !955, line: 143, baseType: !101, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1142, file: !955, line: 144, baseType: !767, size: 128, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !854, file: !64, line: 1013, baseType: !1147, size: 256, offset: 960)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1147, file: !64, line: 971, baseType: !463, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1147, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1147, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1147, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1147, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1147, file: !64, line: 976, baseType: !465, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !854, file: !64, line: 1014, baseType: !1156, size: 128, offset: 1216)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1157, line: 8, size: 128, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1156, file: !1157, line: 9, baseType: !448, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1156, file: !1157, line: 10, baseType: !294, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !854, file: !64, line: 1015, baseType: !340, size: 64, offset: 1344)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !854, file: !64, line: 1016, baseType: !1163, size: 64, offset: 1408)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !1166)
!1166 = !{!1167, !1168, !1172, !1177, !1181, !1347, !1348, !1354, !1367, !1374, !1378, !1379, !1383, !1384, !1388, !1393, !1394, !1398, !1402, !1408, !1409, !1413, !1414, !1421, !1425, !1429, !1435, !1439, !1445, !1449, !1453, !1454, !1460}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1165, file: !64, line: 1915, baseType: !494, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1165, file: !64, line: 1916, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!465, !853, !465, !101}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1165, file: !64, line: 1917, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!579, !853, !443, !592, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1165, file: !64, line: 1918, baseType: !1178, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!579, !853, !417, !592, !1176}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1165, file: !64, line: 1919, baseType: !1182, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!579, !1185, !1290}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1194, !1195, !1196, !1197}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1186, file: !64, line: 374, baseType: !853, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1186, file: !64, line: 375, baseType: !465, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1186, file: !64, line: 376, baseType: !1191, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !1185, !582}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1186, file: !64, line: 377, baseType: !243, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1186, file: !64, line: 378, baseType: !101, size: 32, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1186, file: !64, line: 379, baseType: !392, size: 16, offset: 288)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !64, line: 380, baseType: !1198, size: 64, offset: 320)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !64, line: 380, size: 64, elements: !1199)
!1199 = !{!1200, !1286}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1198, file: !64, line: 386, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1203, line: 998, size: 448, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1204 = !{!1205, !1272, !1273}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1202, file: !1203, line: 999, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !1208)
!1208 = !{!1209, !1239, !1253}
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !30, line: 295, baseType: !1210, size: 512)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !30, line: 295, size: 512, elements: !1211)
!1211 = !{!1212, !1238}
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !30, line: 296, baseType: !1213, size: 448)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1210, file: !30, line: 296, size: 448, elements: !1214)
!1214 = !{!1215, !1216, !1225, !1226, !1227, !1236, !1237}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1213, file: !30, line: 298, baseType: !463, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !30, line: 299, baseType: !1217, size: 128, offset: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !30, line: 299, size: 128, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1217, file: !30, line: 300, baseType: !268, size: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !30, line: 302, baseType: !1221, size: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !30, line: 302, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1221, file: !30, line: 303, baseType: !243, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1221, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1213, file: !30, line: 310, baseType: !620, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1213, file: !30, line: 311, baseType: !463, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !30, line: 312, baseType: !1228, size: 64, offset: 320)
!1228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !30, line: 312, size: 64, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1228, file: !30, line: 313, baseType: !243, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1228, file: !30, line: 314, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !1234)
!1234 = !{!1235}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1233, file: !30, line: 256, baseType: !463, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1213, file: !30, line: 316, baseType: !377, size: 32, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1213, file: !30, line: 317, baseType: !377, size: 32, offset: 416)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1210, file: !30, line: 323, baseType: !683, size: 512, align: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !30, line: 325, baseType: !1240, size: 512, offset: 512)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !30, line: 325, size: 512, elements: !1241)
!1241 = !{!1242, !1252}
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !30, line: 326, baseType: !1243, size: 320)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !30, line: 326, size: 320, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250, !1251}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1243, file: !30, line: 327, baseType: !463, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1243, file: !30, line: 328, baseType: !463, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1243, file: !30, line: 329, baseType: !463, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1243, file: !30, line: 331, baseType: !377, size: 32, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1243, file: !30, line: 332, baseType: !377, size: 32, offset: 224)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1243, file: !30, line: 333, baseType: !377, size: 32, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1243, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1240, file: !30, line: 339, baseType: !683, size: 512, align: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !30, line: 341, baseType: !1254, size: 512, offset: 1024)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !30, line: 341, size: 512, elements: !1255)
!1255 = !{!1256, !1265, !1271}
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !30, line: 342, baseType: !1257, size: 384)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1254, file: !30, line: 342, size: 384, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1257, file: !30, line: 343, baseType: !463, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1257, file: !30, line: 344, baseType: !463, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1257, file: !30, line: 346, baseType: !243, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1257, file: !30, line: 347, baseType: !243, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1257, file: !30, line: 348, baseType: !243, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1257, file: !30, line: 349, baseType: !243, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !30, line: 352, baseType: !1266, size: 256)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1254, file: !30, line: 352, size: 256, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1266, file: !30, line: 353, baseType: !463, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1266, file: !30, line: 354, baseType: !463, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1266, file: !30, line: 356, baseType: !268, size: 128, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1254, file: !30, line: 359, baseType: !683, size: 512, align: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1202, file: !1203, line: 1000, baseType: !101, size: 32, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1202, file: !1203, line: 1001, baseType: !1274, size: 320, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !931, line: 14, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !931, line: 30, size: 320, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1285}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1275, file: !931, line: 31, baseType: !7, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1275, file: !931, line: 32, baseType: !243, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1275, file: !931, line: 33, baseType: !1280, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !931, line: 16, baseType: !1281)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!101, !1284, !7, !101, !243}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1275, file: !931, line: 34, baseType: !268, size: 128, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1198, file: !64, line: 395, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!579, !243}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1292, line: 41, size: 320, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1304, !1342}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1291, file: !1292, line: 42, baseType: !385, size: 8)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1291, file: !1292, line: 43, baseType: !763, size: 8, offset: 8)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1291, file: !1292, line: 44, baseType: !763, size: 8, offset: 16)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1291, file: !1292, line: 45, baseType: !763, size: 8, offset: 24)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1291, file: !1292, line: 46, baseType: !763, size: 8, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !1292, line: 47, baseType: !1300, size: 64, offset: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !1292, line: 47, size: 64, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1300, file: !1292, line: 48, baseType: !592, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1300, file: !1292, line: 49, baseType: !101, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !1292, line: 61, baseType: !1305, size: 128, offset: 128)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !1292, line: 61, size: 128, elements: !1306)
!1306 = !{!1307, !1313}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1305, file: !1292, line: 67, baseType: !1308, size: 128)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1309, line: 17, size: 128, elements: !1310)
!1309 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1308, file: !1309, line: 19, baseType: !243, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1308, file: !1309, line: 20, baseType: !593, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1292, line: 68, baseType: !1314, size: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !1292, line: 68, size: 128, elements: !1315)
!1315 = !{!1316, !1341}
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1314, file: !1292, line: 69, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1314, file: !1292, line: 69, size: 64, elements: !1318)
!1318 = !{!1319, !1322, !1329, !1338, !1340}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1317, file: !1292, line: 71, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1317, file: !1292, line: 72, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1292, line: 17, size: 128, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1325, file: !1292, line: 18, baseType: !243, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1325, file: !1292, line: 19, baseType: !592, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1317, file: !1292, line: 73, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1333, line: 31, size: 128, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1332, file: !1333, line: 32, baseType: !682, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1332, file: !1333, line: 33, baseType: !7, size: 32, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1332, file: !1333, line: 34, baseType: !7, size: 32, offset: 96)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1317, file: !1292, line: 74, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1317, file: !1292, line: 75, baseType: !243, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1314, file: !1292, line: 77, baseType: !592, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !1292, line: 80, baseType: !1343, size: 64, offset: 256)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !1292, line: 80, size: 64, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1343, file: !1292, line: 81, baseType: !463, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1343, file: !1292, line: 82, baseType: !465, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1165, file: !64, line: 1920, baseType: !1182, size: 64, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1165, file: !64, line: 1921, baseType: !1349, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!101, !1185, !1352, !7}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !64, line: 53, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1165, file: !64, line: 1923, baseType: !1355, size: 64, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!101, !853, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !1360)
!1360 = !{!1361, !1366}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1359, file: !64, line: 1859, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!763, !1358, !417, !101, !465, !332, !7}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1359, file: !64, line: 1860, baseType: !465, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1165, file: !64, line: 1924, baseType: !1368, size: 64, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1371, !853, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !240, line: 59, baseType: !7)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !480, line: 31, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1165, file: !64, line: 1925, baseType: !1375, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!582, !853, !7, !463}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1165, file: !64, line: 1926, baseType: !1375, size: 64, offset: 640)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1165, file: !64, line: 1927, baseType: !1380, size: 64, offset: 704)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!101, !853, !812}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1165, file: !64, line: 1928, baseType: !463, size: 64, offset: 768)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1165, file: !64, line: 1929, baseType: !1385, size: 64, offset: 832)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!101, !340, !853}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1165, file: !64, line: 1930, baseType: !1389, size: 64, offset: 896)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!101, !853, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !243)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1165, file: !64, line: 1931, baseType: !1385, size: 64, offset: 960)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1165, file: !64, line: 1932, baseType: !1395, size: 64, offset: 1024)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!101, !853, !465, !465, !101}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1165, file: !64, line: 1933, baseType: !1399, size: 64, offset: 1088)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!101, !101, !853, !101}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1165, file: !64, line: 1934, baseType: !1403, size: 64, offset: 1152)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!101, !853, !101, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1063, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1165, file: !64, line: 1935, baseType: !850, size: 64, offset: 1216)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1165, file: !64, line: 1936, baseType: !1410, size: 64, offset: 1280)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!101, !101}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1165, file: !64, line: 1937, baseType: !1403, size: 64, offset: 1344)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1165, file: !64, line: 1938, baseType: !1415, size: 64, offset: 1408)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!579, !1418, !853, !1176, !592, !7}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1420, line: 59, flags: DIFlagFwdDecl)
!1420 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1165, file: !64, line: 1939, baseType: !1422, size: 64, offset: 1472)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!579, !853, !1176, !1418, !592, !7}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1165, file: !64, line: 1940, baseType: !1426, size: 64, offset: 1536)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !853}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1165, file: !64, line: 1941, baseType: !1430, size: 64, offset: 1600)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!101, !853, !101, !1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1165, file: !64, line: 1942, baseType: !1436, size: 64, offset: 1664)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!582, !853, !101, !465, !465}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1165, file: !64, line: 1944, baseType: !1440, size: 64, offset: 1728)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1443, !853}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1420, line: 66, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1165, file: !64, line: 1948, baseType: !1446, size: 64, offset: 1792)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!579, !853, !465, !853, !465, !592, !7}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1165, file: !64, line: 1950, baseType: !1450, size: 64, offset: 1856)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!465, !853, !465, !853, !465, !465, !7}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1165, file: !64, line: 1953, baseType: !1395, size: 64, offset: 1920)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1165, file: !64, line: 1954, baseType: !1455, size: 64, offset: 1984)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!101, !1458, !7}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1165, file: !64, line: 1955, baseType: !1461, size: 64, offset: 2048)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!101, !1458, !1352, !7}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !854, file: !64, line: 1018, baseType: !332, size: 64, offset: 1472)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !854, file: !64, line: 1020, baseType: !243, size: 64, offset: 1536)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !854, file: !64, line: 1023, baseType: !243, size: 64, offset: 1600)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !854, file: !64, line: 1027, baseType: !1468, size: 64, offset: 1664)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !854, file: !64, line: 1029, baseType: !620, size: 64, offset: 1728)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !854, file: !64, line: 1030, baseType: !1471, size: 32, offset: 1792)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1472, line: 8, baseType: !328)
!1472 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !854, file: !64, line: 1031, baseType: !1471, size: 32, offset: 1824)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !829, file: !30, line: 756, baseType: !463, size: 64, offset: 704)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !829, file: !30, line: 757, baseType: !463, size: 64, offset: 768)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !829, file: !30, line: 760, baseType: !463, size: 64, offset: 832)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !829, file: !30, line: 761, baseType: !463, size: 64, offset: 896)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !829, file: !30, line: 763, baseType: !463, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !829, file: !30, line: 764, baseType: !1480, size: 64, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1482, line: 299, baseType: !1483)
!1482 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1482, line: 299, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1483, file: !1482, line: 299, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1487, line: 18, baseType: !463)
!1487 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !829, file: !30, line: 773, baseType: !377, size: 32, offset: 1088)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !829, file: !30, line: 785, baseType: !377, size: 32, offset: 1120)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !829, file: !30, line: 795, baseType: !1491, size: 64, offset: 1152)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1492, file: !30, line: 727, baseType: !332, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1492, file: !30, line: 728, baseType: !101, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !829, file: !30, line: 801, baseType: !463, size: 64, offset: 1216)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !829, file: !30, line: 804, baseType: !637, size: 64, offset: 1280)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !829, file: !30, line: 806, baseType: !101, size: 32, offset: 1344)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !829, file: !30, line: 808, baseType: !357, size: 32, offset: 1376)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !829, file: !30, line: 823, baseType: !633, size: 320, offset: 1408)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !829, file: !30, line: 825, baseType: !268, size: 128, offset: 1728)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !829, file: !30, line: 845, baseType: !101, size: 32, offset: 1856)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !829, file: !30, line: 849, baseType: !463, size: 64, offset: 1920)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !829, file: !30, line: 850, baseType: !463, size: 64, offset: 1984)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !829, file: !30, line: 852, baseType: !463, size: 64, offset: 2048)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !829, file: !30, line: 853, baseType: !463, size: 64, offset: 2112)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !829, file: !30, line: 854, baseType: !639, size: 64, offset: 2176)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !829, file: !30, line: 855, baseType: !463, size: 64, offset: 2240)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !829, file: !30, line: 856, baseType: !463, size: 64, offset: 2304)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !829, file: !30, line: 857, baseType: !463, size: 64, offset: 2368)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !829, file: !30, line: 858, baseType: !463, size: 64, offset: 2432)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !829, file: !30, line: 865, baseType: !305, size: 32, offset: 2496)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !829, file: !30, line: 867, baseType: !357, size: 32, offset: 2528)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !829, file: !30, line: 869, baseType: !463, size: 64, offset: 2560)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !829, file: !30, line: 869, baseType: !463, size: 64, offset: 2624)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !829, file: !30, line: 869, baseType: !463, size: 64, offset: 2688)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !829, file: !30, line: 869, baseType: !463, size: 64, offset: 2752)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !829, file: !30, line: 870, baseType: !463, size: 64, offset: 2816)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !829, file: !30, line: 870, baseType: !463, size: 64, offset: 2880)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !829, file: !30, line: 870, baseType: !463, size: 64, offset: 2944)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !829, file: !30, line: 871, baseType: !463, size: 64, offset: 3008)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !829, file: !30, line: 871, baseType: !463, size: 64, offset: 3072)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !829, file: !30, line: 871, baseType: !463, size: 64, offset: 3136)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !829, file: !30, line: 871, baseType: !463, size: 64, offset: 3200)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !829, file: !30, line: 873, baseType: !1526, size: 3328, offset: 3264)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 3328, elements: !1527)
!1527 = !{!1528}
!1528 = !DISubrange(count: 52)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !829, file: !30, line: 875, baseType: !1530, size: 1280, offset: 6592)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 1280, elements: !926)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !829, file: !30, line: 877, baseType: !1532, size: 64, offset: 7872)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !829, file: !30, line: 880, baseType: !1535, size: 1088, offset: 7936)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1536, line: 72, baseType: !1537)
!1536 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1536, line: 23, size: 1088, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1546, !1547, !1548, !1549, !1576, !1577, !1578}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1537, file: !1536, line: 28, baseType: !332, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1537, file: !1536, line: 38, baseType: !639, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1537, file: !1536, line: 40, baseType: !463, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1537, file: !1536, line: 43, baseType: !633, size: 320, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1537, file: !1536, line: 44, baseType: !1544, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1536, line: 44, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1537, file: !1536, line: 48, baseType: !463, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !1536, line: 59, baseType: !871, size: 256, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1537, file: !1536, line: 60, baseType: !243, size: 64, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1537, file: !1536, line: 61, baseType: !1550, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1553, line: 13, size: 1216, elements: !1554)
!1553 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1552, file: !1553, line: 14, baseType: !243, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1552, file: !1553, line: 15, baseType: !463, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1552, file: !1553, line: 17, baseType: !463, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1552, file: !1553, line: 17, baseType: !463, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1552, file: !1553, line: 18, baseType: !463, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1552, file: !1553, line: 18, baseType: !463, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1552, file: !1553, line: 19, baseType: !1562, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1552, file: !1553, line: 21, baseType: !582, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1552, file: !1553, line: 23, baseType: !582, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1552, file: !1553, line: 24, baseType: !582, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1552, file: !1553, line: 25, baseType: !582, size: 64, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1552, file: !1553, line: 26, baseType: !582, size: 64, offset: 704)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1552, file: !1553, line: 27, baseType: !582, size: 64, offset: 768)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1552, file: !1553, line: 28, baseType: !582, size: 64, offset: 832)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1552, file: !1553, line: 29, baseType: !582, size: 64, offset: 896)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1552, file: !1553, line: 30, baseType: !582, size: 64, offset: 960)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1552, file: !1553, line: 31, baseType: !582, size: 64, offset: 1024)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1552, file: !1553, line: 32, baseType: !582, size: 64, offset: 1088)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1552, file: !1553, line: 33, baseType: !582, size: 64, offset: 1152)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1537, file: !1536, line: 63, baseType: !377, size: 32, offset: 1024)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1537, file: !1536, line: 69, baseType: !392, size: 16, offset: 1056)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1537, file: !1536, line: 70, baseType: !1579, size: 16, offset: 1072)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !329, line: 18, baseType: !1580)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !242, line: 23, baseType: !1015)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !30, line: 882, baseType: !463, size: 64, offset: 9024)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !829, file: !30, line: 885, baseType: !357, size: 32, offset: 9088)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !829, file: !30, line: 886, baseType: !1584, size: 64, offset: 9152)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !829, file: !30, line: 901, baseType: !1127, size: 64, offset: 9216)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !829, file: !30, line: 904, baseType: !853, size: 64, offset: 9280)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !829, file: !30, line: 906, baseType: !1589, size: 64, offset: 9344)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !829, file: !30, line: 930, baseType: !377, size: 32, offset: 9408)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !829, file: !30, line: 933, baseType: !377, size: 32, offset: 9440)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !829, file: !30, line: 935, baseType: !1594, size: 64, offset: 9472)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !152, line: 103, size: 64, elements: !1595)
!1595 = !{!1596}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1594, file: !152, line: 104, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !152, line: 101, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !829, file: !30, line: 940, baseType: !637, size: 64, offset: 9536)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !829, file: !30, line: 942, baseType: !1601, size: 256, offset: 9600)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1602, line: 98, size: 256, elements: !1603)
!1602 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1601, file: !1602, line: 99, baseType: !637, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1601, file: !1602, line: 100, baseType: !268, size: 128, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1601, file: !1602, line: 101, baseType: !1607, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1602, line: 21, baseType: !1608)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !1611}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !826, file: !30, line: 986, baseType: !1613, offset: 10240)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, elements: !945)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !813, file: !30, line: 640, baseType: !1615, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1482, line: 297, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1482, line: 297, size: 64, elements: !1617)
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1616, file: !1482, line: 297, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1487, line: 19, baseType: !463)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !30, line: 646, baseType: !1621, size: 64, offset: 256)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !30, line: 646, size: 64, elements: !1622)
!1622 = !{!1623, !1626}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1621, file: !30, line: 647, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !463)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1621, file: !30, line: 648, baseType: !1625, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !813, file: !30, line: 666, baseType: !101, size: 32, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !813, file: !30, line: 667, baseType: !1629, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1630, file: !30, line: 580, baseType: !633, size: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !813, file: !30, line: 670, baseType: !763, size: 8, offset: 448)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !813, file: !30, line: 681, baseType: !1635, size: 256, offset: 512)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !30, line: 678, size: 256, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1635, file: !30, line: 679, baseType: !665, size: 192, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1635, file: !30, line: 680, baseType: !463, size: 64, offset: 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !813, file: !30, line: 689, baseType: !268, size: 128, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !813, file: !30, line: 691, baseType: !1641, size: 64, offset: 896)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !813, file: !30, line: 694, baseType: !1644, size: 64, offset: 960)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !806, line: 563, size: 1024, elements: !1647)
!1647 = !{!1648, !1652, !1653, !1657, !1661, !1665, !1666, !1670, !1674, !1678, !1679, !1680, !1684, !1688, !1694, !1698}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1646, file: !806, line: 564, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !812}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1646, file: !806, line: 569, baseType: !1649, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1646, file: !806, line: 571, baseType: !1654, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!101, !812, !463}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1646, file: !806, line: 572, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!101, !812}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1646, file: !806, line: 578, baseType: !1662, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!101, !812, !463, !463, !463}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1646, file: !806, line: 580, baseType: !800, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1646, file: !806, line: 581, baseType: !1667, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!803, !804, !7}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1646, file: !806, line: 582, baseType: !1671, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!803, !804, !463, !463}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1646, file: !806, line: 584, baseType: !1675, size: 64, offset: 512)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!463, !812}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1646, file: !806, line: 588, baseType: !800, size: 64, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1646, file: !806, line: 591, baseType: !800, size: 64, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1646, file: !806, line: 597, baseType: !1681, size: 64, offset: 704)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!101, !812, !463, !243, !101, !101}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1646, file: !806, line: 603, baseType: !1685, size: 64, offset: 768)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!417, !812}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1646, file: !806, line: 613, baseType: !1689, size: 64, offset: 832)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!101, !812, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !30, line: 717, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1646, file: !806, line: 625, baseType: !1695, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1692, !812, !463}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1646, file: !806, line: 633, baseType: !1699, size: 64, offset: 960)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!682, !812, !463}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !813, file: !30, line: 697, baseType: !463, size: 64, offset: 1024)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !813, file: !30, line: 699, baseType: !853, size: 64, offset: 1088)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !813, file: !30, line: 700, baseType: !243, size: 64, offset: 1152)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !813, file: !30, line: 711, baseType: !637, size: 64, offset: 1216)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !813, file: !30, line: 717, baseType: !1692, size: 64, offset: 1280)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !813, file: !30, line: 722, baseType: !1708, offset: 1344)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !846)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !809, file: !806, line: 515, baseType: !630, size: 32, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !809, file: !806, line: 516, baseType: !463, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !809, file: !806, line: 517, baseType: !463, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !809, file: !806, line: 518, baseType: !463, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !806, line: 520, baseType: !29, size: 32, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !805, file: !806, line: 522, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1487, line: 22, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1487, line: 22, size: 64, elements: !1718)
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1717, file: !1487, line: 22, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1487, line: 15, baseType: !463)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !805, file: !806, line: 524, baseType: !1722, size: 64, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1482, line: 372, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1482, line: 372, size: 64, elements: !1725)
!1725 = !{!1726}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1724, file: !1482, line: 372, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1487, line: 16, baseType: !463)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 527, baseType: !1729, size: 64, offset: 512)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 527, size: 64, elements: !1730)
!1730 = !{!1731, !1737}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1729, file: !806, line: 528, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1487, line: 21, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1487, line: 21, size: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1733, file: !1487, line: 21, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1487, line: 14, baseType: !463)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1729, file: !806, line: 529, baseType: !1716, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !805, file: !806, line: 534, baseType: !682, size: 64, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !805, file: !806, line: 535, baseType: !682, size: 64, offset: 640)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !805, file: !806, line: 541, baseType: !1741, size: 64, offset: 704)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !805, file: !806, line: 545, baseType: !1743, size: 64, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !805, file: !806, line: 549, baseType: !1745, size: 64, offset: 832)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1482, line: 520, baseType: !682)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !793, file: !14, line: 100, baseType: !1747, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!101, !732, !463, !463, !101}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !733, file: !14, line: 134, baseType: !243, size: 64, offset: 960)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !733, file: !14, line: 135, baseType: !101, size: 32, offset: 1024)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !14, line: 136, baseType: !1753, size: 128, offset: 1088)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !14, line: 136, size: 128, elements: !1754)
!1754 = !{!1755, !1761}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1753, file: !14, line: 137, baseType: !1756, size: 128)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1757, line: 6, size: 128, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1756, file: !1757, line: 7, baseType: !332, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1756, file: !1757, line: 8, baseType: !332, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !14, line: 138, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !14, line: 138, elements: !1763)
!1763 = !{!1764, !1766}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1762, file: !14, line: 138, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !14, line: 138, elements: !846)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1762, file: !14, line: 138, baseType: !1767)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1756, elements: !945)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !729, file: !30, line: 147, baseType: !243, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !687, file: !30, line: 161, baseType: !767, size: 128, align: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !30, line: 164, baseType: !1771, size: 32, offset: 384)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !30, line: 164, size: 32, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1771, file: !30, line: 169, baseType: !377, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1771, file: !30, line: 177, baseType: !7, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !683, file: !30, line: 181, baseType: !377, size: 32, offset: 416)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !46, line: 42, size: 384, elements: !1778)
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1777, file: !46, line: 43, baseType: !582, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1777, file: !46, line: 45, baseType: !582, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1777, file: !46, line: 52, baseType: !465, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1777, file: !46, line: 53, baseType: !465, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1777, file: !46, line: 55, baseType: !45, size: 32, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1777, file: !46, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1777, file: !46, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1777, file: !46, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1777, file: !46, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1777, file: !46, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1777, file: !46, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1777, file: !46, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1777, file: !46, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1777, file: !46, line: 78, baseType: !1793, size: 64, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !46, line: 78, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !676, file: !64, line: 406, baseType: !1797, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!101, !853, !1206}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !676, file: !64, line: 409, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!101, !620, !1776}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !676, file: !64, line: 412, baseType: !1805, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!763, !620, !1206}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !676, file: !64, line: 414, baseType: !1809, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1203, line: 1276, size: 448, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1819, !1820, !1821, !1822, !1823}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1813, file: !1203, line: 1277, baseType: !853, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1813, file: !1203, line: 1278, baseType: !620, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1813, file: !1203, line: 1279, baseType: !1818, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1813, file: !1203, line: 1281, baseType: !463, size: 64, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1813, file: !1203, line: 1282, baseType: !7, size: 32, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1813, file: !1203, line: 1283, baseType: !7, size: 32, offset: 288)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1813, file: !1203, line: 1284, baseType: !763, size: 8, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1813, file: !1203, line: 1285, baseType: !463, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !676, file: !64, line: 416, baseType: !1825, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!101, !853, !620, !465, !7, !1828, !1434}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !676, file: !64, line: 419, baseType: !1830, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!101, !853, !620, !465, !7, !7, !682, !243}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !676, file: !64, line: 424, baseType: !1834, size: 64, offset: 448)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!1837, !620, !1837}
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !238, line: 131, baseType: !332)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !676, file: !64, line: 425, baseType: !1839, size: 64, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1206, !592, !592}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !676, file: !64, line: 426, baseType: !1843, size: 64, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!763, !1206, !630}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !676, file: !64, line: 427, baseType: !1847, size: 64, offset: 640)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1206}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !676, file: !64, line: 428, baseType: !1182, size: 64, offset: 704)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !676, file: !64, line: 433, baseType: !1852, size: 64, offset: 768)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!101, !620, !1206, !1206, !50}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !676, file: !64, line: 435, baseType: !1856, size: 64, offset: 832)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!101, !1206}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !676, file: !64, line: 436, baseType: !1860, size: 64, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!763, !1206, !592, !592}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !676, file: !64, line: 438, baseType: !1864, size: 64, offset: 960)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1206, !1867, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !676, file: !64, line: 439, baseType: !1869, size: 64, offset: 1024)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!101, !620, !682}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !676, file: !64, line: 442, baseType: !1873, size: 64, offset: 1088)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!101, !1876, !853, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !676, file: !64, line: 444, baseType: !1426, size: 64, offset: 1152)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !676, file: !64, line: 445, baseType: !1881, size: 64, offset: 1216)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!101, !1185, !1290}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !64, line: 486, baseType: !463, size: 64, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !621, file: !64, line: 487, baseType: !633, size: 320, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !621, file: !64, line: 488, baseType: !1471, size: 32, offset: 1280)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !621, file: !64, line: 489, baseType: !357, size: 32, offset: 1312)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !621, file: !64, line: 490, baseType: !268, size: 128, offset: 1344)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !621, file: !64, line: 491, baseType: !243, size: 64, offset: 1472)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !611, file: !573, line: 180, baseType: !1891, size: 64, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!579, !853, !513, !610, !443, !465, !592}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !611, file: !573, line: 182, baseType: !1891, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !611, file: !573, line: 184, baseType: !1896, size: 64, offset: 448)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!101, !853, !513, !610, !812}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !599, file: !573, line: 90, baseType: !1900, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !599, file: !573, line: 91, baseType: !1902, size: 64, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !563, file: !508, line: 120, baseType: !1904, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1907, !531}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1909)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !1910)
!1910 = !{!1911, !1912, !1916, !1920, !1926, !1930}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1909, file: !58, line: 40, baseType: !57, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1909, file: !58, line: 41, baseType: !1913, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!763}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1909, file: !58, line: 42, baseType: !1917, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!243}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1909, file: !58, line: 43, baseType: !1921, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1562, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1909, file: !58, line: 44, baseType: !1927, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1562}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1909, file: !58, line: 45, baseType: !1931, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !243}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !563, file: !508, line: 121, baseType: !1935, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1562, !531}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !563, file: !508, line: 122, baseType: !1939, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !531, !1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !507, file: !508, line: 70, baseType: !1945, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !480, line: 190, size: 1152, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !2039, !2040, !2041, !2042, !2043, !2046}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1946, file: !480, line: 191, baseType: !377, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1946, file: !480, line: 192, baseType: !377, size: 32, offset: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1946, file: !480, line: 202, baseType: !1945, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1946, file: !480, line: 203, baseType: !417, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1946, file: !480, line: 205, baseType: !665, size: 192, align: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1946, file: !480, line: 207, baseType: !1562, size: 64, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1946, file: !480, line: 208, baseType: !7, size: 32, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !480, line: 209, baseType: !1956, size: 256, offset: 512)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1946, file: !480, line: 209, size: 256, elements: !1957)
!1957 = !{!1958, !1967, !1971}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1956, file: !480, line: 210, baseType: !1959, size: 256)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !480, line: 153, size: 256, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1966}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1959, file: !480, line: 154, baseType: !463, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1959, file: !480, line: 156, baseType: !661, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1959, file: !480, line: 162, baseType: !1964, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !480, line: 162, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1959, file: !480, line: 167, baseType: !463, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1956, file: !480, line: 211, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !480, line: 170, size: 64, elements: !1969)
!1969 = !{!1970}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1968, file: !480, line: 171, baseType: !1945, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1956, file: !480, line: 212, baseType: !1972, size: 256)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !480, line: 174, size: 256, elements: !1973)
!1973 = !{!1974, !2034, !2037, !2038}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1972, file: !480, line: 175, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !480, line: 271, size: 768, elements: !1978)
!1978 = !{!1979, !1999, !2003, !2007, !2011, !2015, !2019, !2023, !2024, !2025, !2026, !2030}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1977, file: !480, line: 276, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!101, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !480, line: 251, size: 1216, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1984, file: !480, line: 253, baseType: !1945, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1984, file: !480, line: 254, baseType: !853, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1984, file: !480, line: 255, baseType: !1443, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1984, file: !480, line: 256, baseType: !243, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1984, file: !480, line: 259, baseType: !871, size: 256, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1984, file: !480, line: 260, baseType: !871, size: 256, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1984, file: !480, line: 261, baseType: !101, size: 32, offset: 768)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1984, file: !480, line: 262, baseType: !268, size: 128, offset: 832)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1984, file: !480, line: 263, baseType: !443, size: 64, offset: 960)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1984, file: !480, line: 265, baseType: !592, size: 64, offset: 1024)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1984, file: !480, line: 266, baseType: !763, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1984, file: !480, line: 267, baseType: !763, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1984, file: !480, line: 268, baseType: !1644, size: 64, offset: 1152)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1977, file: !480, line: 277, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !1983}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1977, file: !480, line: 290, baseType: !2004, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!101, !1443, !243}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1977, file: !480, line: 292, baseType: !2008, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!243, !1443, !1176}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1977, file: !480, line: 293, baseType: !2012, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!243, !1443, !243, !1176}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1977, file: !480, line: 294, baseType: !2016, size: 64, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !1443, !243}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1977, file: !480, line: 296, baseType: !2020, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!579, !1983, !443, !592, !465}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1977, file: !480, line: 306, baseType: !592, size: 64, offset: 448)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1977, file: !480, line: 313, baseType: !763, size: 8, offset: 512)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1977, file: !480, line: 314, baseType: !2020, size: 64, offset: 576)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1977, file: !480, line: 317, baseType: !2027, size: 64, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!1371, !1983, !1372}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1977, file: !480, line: 320, baseType: !2031, size: 64, offset: 704)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!101, !1983, !812}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1972, file: !480, line: 176, baseType: !2035, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !480, line: 35, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1972, file: !480, line: 177, baseType: !465, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1972, file: !480, line: 178, baseType: !1945, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1946, file: !480, line: 215, baseType: !243, size: 64, offset: 768)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1946, file: !480, line: 221, baseType: !332, size: 64, offset: 832)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1946, file: !480, line: 223, baseType: !256, size: 16, offset: 896)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1946, file: !480, line: 224, baseType: !255, size: 16, offset: 912)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1946, file: !480, line: 225, baseType: !2044, size: 64, offset: 960)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !480, line: 36, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1946, file: !480, line: 227, baseType: !767, size: 128, align: 64, offset: 1024)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !507, file: !508, line: 71, baseType: !2048, size: 32, offset: 448)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2049, line: 19, size: 32, elements: !2050)
!2049 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2050 = !{!2051}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2048, file: !2049, line: 20, baseType: !909, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !507, file: !508, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !507, file: !508, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !507, file: !508, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !507, file: !508, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !507, file: !508, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !504, file: !6, line: 47, baseType: !494, size: 64, offset: 512)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !504, file: !6, line: 48, baseType: !513, size: 64, offset: 576)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !504, file: !6, line: 49, baseType: !2060, size: 64, offset: 640)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !504, file: !6, line: 50, baseType: !2063, size: 64, offset: 704)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !495, file: !6, line: 418, baseType: !2065, size: 64, offset: 1408)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2067)
!2067 = !{!2068, !2069, !2074, !2078, !2082, !2086}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2066, file: !6, line: 54, baseType: !584, size: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2066, file: !6, line: 55, baseType: !2070, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!579, !2065, !2073, !443}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2066, file: !6, line: 57, baseType: !2075, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!579, !2065, !2073, !417, !592}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2066, file: !6, line: 59, baseType: !2079, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !494, !417}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2066, file: !6, line: 60, baseType: !2083, size: 64, offset: 320)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!101, !494}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2066, file: !6, line: 61, baseType: !2087, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !494}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !495, file: !6, line: 419, baseType: !417, size: 64, offset: 1472)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !495, file: !6, line: 420, baseType: !417, size: 64, offset: 1536)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !495, file: !6, line: 421, baseType: !513, size: 64, offset: 1600)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !495, file: !6, line: 424, baseType: !2094, size: 64, offset: 1664)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !495, file: !6, line: 425, baseType: !2098, size: 64, offset: 1728)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !495, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !495, file: !6, line: 435, baseType: !871, size: 256, offset: 1856)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !495, file: !6, line: 437, baseType: !2103, size: 64, offset: 2112)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2105, line: 69, size: 320, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2106 = !{!2107, !2108, !2109, !2126, !2128, !2131, !2132}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2104, file: !2105, line: 70, baseType: !417, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2104, file: !2105, line: 71, baseType: !494, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2104, file: !2105, line: 72, baseType: !2110, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2105, line: 47, size: 256, elements: !2113)
!2113 = !{!2114, !2115, !2121, !2125}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2112, file: !2105, line: 49, baseType: !7, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2112, file: !2105, line: 51, baseType: !2116, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!101, !417, !2119}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2112, file: !2105, line: 53, baseType: !2122, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!101, !443, !2119}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2112, file: !2105, line: 55, baseType: !1931, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2104, file: !2105, line: 73, baseType: !2127, size: 16, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2104, file: !2105, line: 74, baseType: !2129, size: 8, offset: 208)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !329, line: 16, baseType: !2130)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !242, line: 20, baseType: !165)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2104, file: !2105, line: 75, baseType: !385, size: 8, offset: 216)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !2105, line: 76, baseType: !2133, size: 64, offset: 256)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2104, file: !2105, line: 76, size: 64, elements: !2134)
!2134 = !{!2135, !2136, !2143}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2133, file: !2105, line: 77, baseType: !243, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2133, file: !2105, line: 78, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2139)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2105, line: 86, size: 128, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2139, file: !2105, line: 87, baseType: !7, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2139, file: !2105, line: 88, baseType: !443, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2133, file: !2105, line: 79, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2105, line: 92, size: 256, elements: !2147)
!2147 = !{!2148, !2149, !2150, !2152, !2153}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2146, file: !2105, line: 94, baseType: !7, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2146, file: !2105, line: 95, baseType: !7, size: 32, offset: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2146, file: !2105, line: 96, baseType: !2151, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2146, file: !2105, line: 97, baseType: !2110, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2146, file: !2105, line: 98, baseType: !243, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !495, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !495, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !495, file: !6, line: 442, baseType: !2094, size: 64, offset: 2240)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !495, file: !6, line: 443, baseType: !2098, size: 64, offset: 2304)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !495, file: !6, line: 444, baseType: !763, size: 8, offset: 2368)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !495, file: !6, line: 451, baseType: !763, size: 8, offset: 2376)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !495, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !495, file: !6, line: 455, baseType: !2162, size: 64, offset: 2432)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2164, line: 23, size: 96, elements: !2165)
!2164 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2163, file: !2164, line: 24, baseType: !101, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2163, file: !2164, line: 24, baseType: !101, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2163, file: !2164, line: 24, baseType: !101, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !495, file: !6, line: 458, baseType: !2170, size: 64, offset: 2496)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!101}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !495, file: !6, line: 460, baseType: !2174, size: 4032, align: 512, offset: 2560)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2175, size: 4032, elements: !2191)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2176)
!2176 = !{!2177, !2178, !2179}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2175, file: !6, line: 363, baseType: !243, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2175, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2175, file: !6, line: 367, baseType: !2180, size: 448, offset: 128)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2180, file: !6, line: 320, baseType: !494, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2180, file: !6, line: 321, baseType: !2184, size: 384, offset: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2185, line: 40, size: 384, elements: !2186)
!2185 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2186 = !{!2187}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2184, file: !2185, line: 41, baseType: !2188, size: 384, align: 64)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 384, align: 64, elements: !2189)
!2189 = !{!2190}
!2190 = !DISubrange(count: 2)
!2191 = !{!2192}
!2192 = !DISubrange(count: 7)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !495, file: !6, line: 463, baseType: !2194, size: 192, offset: 6592)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2195, line: 8, size: 192, elements: !2196)
!2195 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2196 = !{!2197, !2198, !2200}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2194, file: !2195, line: 10, baseType: !7, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2194, file: !2195, line: 11, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2194, file: !2195, line: 12, baseType: !2201, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2203, line: 59, size: 48, elements: !2204)
!2203 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2210}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2202, file: !2203, line: 60, baseType: !1579, size: 16)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2202, file: !2203, line: 61, baseType: !1579, size: 16, offset: 16)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2202, file: !2203, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2202, file: !2203, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2202, file: !2203, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2202, file: !2203, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !495, file: !6, line: 465, baseType: !463, size: 64, offset: 6784)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !495, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !495, file: !6, line: 470, baseType: !268, size: 128, offset: 6912)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !495, file: !6, line: 471, baseType: !2215, size: 64, offset: 7040)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2217, line: 33, size: 96, elements: !2218)
!2217 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2218 = !{!2219, !2220, !2221, !2222}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2216, file: !2217, line: 37, baseType: !101, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2216, file: !2217, line: 43, baseType: !101, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2216, file: !2217, line: 45, baseType: !256, size: 16, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2216, file: !2217, line: 47, baseType: !256, size: 16, offset: 80)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !495, file: !6, line: 476, baseType: !2224, size: 64, offset: 7104)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2226)
!2226 = !{!2227, !2243, !2244, !2245}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2225, file: !6, line: 379, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2230, line: 204, baseType: !2231)
!2230 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2230, line: 197, size: 192, elements: !2232)
!2232 = !{!2233, !2235, !2236, !2237, !2239, !2241}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2231, file: !2230, line: 198, baseType: !2234, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2230, line: 21, baseType: !241)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2231, file: !2230, line: 199, baseType: !338, size: 8, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2231, file: !2230, line: 200, baseType: !338, size: 8, offset: 40)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2231, file: !2230, line: 201, baseType: !2238, size: 16, offset: 48)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2230, line: 17, baseType: !393)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2231, file: !2230, line: 202, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2230, line: 16, baseType: !333)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2231, file: !2230, line: 203, baseType: !2242, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2230, line: 22, baseType: !333)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2225, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2225, file: !6, line: 381, baseType: !443, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2225, file: !6, line: 382, baseType: !443, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !495, file: !6, line: 477, baseType: !2225, size: 256, offset: 7168)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !495, file: !6, line: 480, baseType: !2248, size: 64, offset: 7424)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !495, file: !6, line: 483, baseType: !2251, size: 64, offset: 7488)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !495, file: !6, line: 488, baseType: !443, size: 64, offset: 7552)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !495, file: !6, line: 492, baseType: !243, size: 64, offset: 7616)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !495, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !495, file: !6, line: 495, baseType: !243, size: 64, offset: 7744)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !495, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !495, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !495, file: !6, line: 500, baseType: !2260, size: 64, offset: 7872)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2262, line: 45, baseType: !2263)
!2262 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !495, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !495, file: !6, line: 504, baseType: !2266, size: 64, offset: 8000)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2269, line: 96, size: 192, elements: !2270)
!2269 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2270 = !{!2271, !2272, !2326, !2329}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2268, file: !2269, line: 97, baseType: !7, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2268, file: !2269, line: 98, baseType: !2273, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2269, line: 24, size: 3072, elements: !2275)
!2275 = !{!2276, !2278, !2279, !2280, !2281, !2295, !2296, !2297, !2298, !2310, !2311, !2312, !2323, !2324, !2325}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2274, file: !2269, line: 26, baseType: !2277, size: 128)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 128, elements: !2189)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2274, file: !2269, line: 27, baseType: !2277, size: 128, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2274, file: !2269, line: 28, baseType: !101, size: 32, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2274, file: !2269, line: 31, baseType: !357, size: 32, align: 512, offset: 512)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2274, file: !2269, line: 32, baseType: !2282, size: 960, offset: 576)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2283, line: 206, size: 960, elements: !2284)
!2283 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2284 = !{!2285, !2286, !2289, !2291, !2292, !2294}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2282, file: !2283, line: 207, baseType: !770, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2282, file: !2283, line: 208, baseType: !2287, size: 256, offset: 64)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2288, size: 256, elements: !926)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2282, file: !2283, line: 209, baseType: !2290, size: 256, offset: 320)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 256, elements: !926)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2282, file: !2283, line: 213, baseType: !582, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2282, file: !2283, line: 215, baseType: !2293, size: 256, offset: 640)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 256, elements: !926)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2282, file: !2283, line: 216, baseType: !385, size: 8, offset: 896)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2274, file: !2269, line: 33, baseType: !463, size: 64, offset: 1536)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2274, file: !2269, line: 34, baseType: !463, size: 64, offset: 1600)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2274, file: !2269, line: 35, baseType: !763, size: 8, offset: 1664)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2274, file: !2269, line: 36, baseType: !2299, size: 320, offset: 1728)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2300, line: 11, size: 320, elements: !2301)
!2300 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2301 = !{!2302, !2303, !2304, !2309}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2299, file: !2300, line: 16, baseType: !921, size: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2299, file: !2300, line: 17, baseType: !463, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2299, file: !2300, line: 18, baseType: !2305, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2299, file: !2300, line: 19, baseType: !328, size: 32, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2274, file: !2269, line: 37, baseType: !1601, size: 256, offset: 2048)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2274, file: !2269, line: 38, baseType: !767, size: 128, align: 64, offset: 2304)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2274, file: !2269, line: 39, baseType: !2313, size: 64, offset: 2432)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2269, line: 49, size: 768, elements: !2315)
!2315 = !{!2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2314, file: !2269, line: 50, baseType: !357, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2314, file: !2269, line: 51, baseType: !2290, size: 256, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2314, file: !2269, line: 53, baseType: !2290, size: 256, offset: 320)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2314, file: !2269, line: 54, baseType: !463, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2314, file: !2269, line: 55, baseType: !2313, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2314, file: !2269, line: 56, baseType: !101, size: 32, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2314, file: !2269, line: 57, baseType: !101, size: 32, offset: 736)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2274, file: !2269, line: 40, baseType: !463, size: 64, offset: 2496)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2274, file: !2269, line: 42, baseType: !101, size: 32, offset: 2560)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2274, file: !2269, line: 43, baseType: !2267, size: 64, offset: 2624)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2268, file: !2269, line: 99, baseType: !2327, offset: 128)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2328, line: 211, elements: !846)
!2328 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2268, file: !2269, line: 100, baseType: !2330, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2269, line: 63, size: 3008, elements: !2332)
!2332 = !{!2333, !2334, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2364}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2331, file: !2269, line: 64, baseType: !2313, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2331, file: !2269, line: 65, baseType: !2335, size: 192, offset: 64)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2313, size: 192, elements: !548)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2331, file: !2269, line: 67, baseType: !101, size: 32, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2331, file: !2269, line: 68, baseType: !871, size: 256, offset: 320)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2331, file: !2269, line: 69, baseType: !357, size: 32, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2331, file: !2269, line: 70, baseType: !871, size: 256, offset: 640)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2331, file: !2269, line: 71, baseType: !463, size: 64, offset: 896)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2331, file: !2269, line: 72, baseType: !463, size: 64, offset: 960)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2331, file: !2269, line: 73, baseType: !463, size: 64, offset: 1024)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2331, file: !2269, line: 74, baseType: !463, size: 64, offset: 1088)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2331, file: !2269, line: 75, baseType: !463, size: 64, offset: 1152)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2331, file: !2269, line: 76, baseType: !463, size: 64, offset: 1216)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2331, file: !2269, line: 77, baseType: !463, size: 64, offset: 1280)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2331, file: !2269, line: 78, baseType: !463, size: 64, offset: 1344)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2331, file: !2269, line: 79, baseType: !763, size: 8, offset: 1408)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2331, file: !2269, line: 80, baseType: !463, size: 64, offset: 1472)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2331, file: !2269, line: 81, baseType: !871, size: 256, offset: 1536)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2331, file: !2269, line: 82, baseType: !777, size: 256, offset: 1792)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2331, file: !2269, line: 84, baseType: !377, size: 32, offset: 2048)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2331, file: !2269, line: 87, baseType: !463, size: 64, offset: 2112)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2331, file: !2269, line: 88, baseType: !463, size: 64, offset: 2176)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2331, file: !2269, line: 89, baseType: !2356, size: 704, offset: 2240)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1602, line: 111, size: 704, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2363}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2356, file: !1602, line: 112, baseType: !1601, size: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2356, file: !1602, line: 113, baseType: !2299, size: 320, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2356, file: !1602, line: 116, baseType: !2361, size: 64, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1602, line: 18, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2356, file: !1602, line: 117, baseType: !101, size: 32, offset: 640)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2331, file: !2269, line: 90, baseType: !2267, size: 64, offset: 2944)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !495, file: !6, line: 515, baseType: !2366, size: 64, offset: 8064)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2368, line: 117, size: 128, elements: !2369)
!2368 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2369 = !{!2370, !2371, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2367, file: !2368, line: 118, baseType: !987, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2367, file: !2368, line: 119, baseType: !987, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2367, file: !2368, line: 120, baseType: !582, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !495, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !495, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !495, file: !6, line: 520, baseType: !2376, size: 64, offset: 8192)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !495, file: !6, line: 523, baseType: !2378, size: 64, offset: 8256)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !495, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !495, file: !6, line: 525, baseType: !2383, size: 64, offset: 8384)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !495, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !495, file: !6, line: 533, baseType: !243, size: 64, offset: 8512)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !495, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !495, file: !6, line: 535, baseType: !2390, size: 64, offset: 8640)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !495, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !495, file: !6, line: 539, baseType: !101, size: 32, offset: 8736)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !495, file: !6, line: 540, baseType: !2394, size: 64, offset: 8768)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2396, line: 32, size: 64, elements: !2397)
!2396 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2397 = !{!2398, !2399}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2395, file: !2396, line: 33, baseType: !987, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2395, file: !2396, line: 34, baseType: !987, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !495, file: !6, line: 563, baseType: !268, size: 128, offset: 8832)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !495, file: !6, line: 565, baseType: !268, size: 128, offset: 8960)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !495, file: !6, line: 568, baseType: !2403, size: 64, offset: 9088)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !495, file: !6, line: 570, baseType: !377, size: 32, offset: 9152)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !64, line: 2382, baseType: !469, size: 64, offset: 448)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !470, file: !64, line: 2383, baseType: !917, size: 64, offset: 512)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !470, file: !64, line: 2385, baseType: !2410, offset: 576)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2328, line: 206, elements: !846)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !470, file: !64, line: 2386, baseType: !2410, offset: 576)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !470, file: !64, line: 2387, baseType: !2410, offset: 576)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !470, file: !64, line: 2388, baseType: !2414, offset: 576)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2410, elements: !548)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !470, file: !64, line: 2390, baseType: !2410, offset: 576)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !470, file: !64, line: 2391, baseType: !2410, offset: 576)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !470, file: !64, line: 2392, baseType: !2410, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !470, file: !64, line: 2393, baseType: !2410, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !455, file: !64, line: 1197, baseType: !2420, size: 64, offset: 384)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !2423)
!2423 = !{!2424, !2428, !2432, !2433, !2437, !2441, !2445, !2446, !2447, !2451, !2455, !2459, !2460, !2461, !2467, !2471, !2472, !2476, !2477, !2478, !2479, !2483, !2487, !2534, !2549, !2550}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2422, file: !64, line: 2058, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!340, !454}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2422, file: !64, line: 2059, baseType: !2429, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !340}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2422, file: !64, line: 2060, baseType: !2429, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2422, file: !64, line: 2062, baseType: !2434, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !340, !101}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2422, file: !64, line: 2063, baseType: !2438, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!101, !340, !1776}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2422, file: !64, line: 2064, baseType: !2442, size: 64, offset: 320)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!101, !340}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2422, file: !64, line: 2065, baseType: !2429, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2422, file: !64, line: 2066, baseType: !490, size: 64, offset: 448)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2422, file: !64, line: 2067, baseType: !2448, size: 64, offset: 512)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!101, !454, !101}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2422, file: !64, line: 2068, baseType: !2452, size: 64, offset: 576)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!101, !454, !63}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2422, file: !64, line: 2069, baseType: !2456, size: 64, offset: 640)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!101, !454}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2422, file: !64, line: 2070, baseType: !2452, size: 64, offset: 704)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2422, file: !64, line: 2071, baseType: !2456, size: 64, offset: 768)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2422, file: !64, line: 2072, baseType: !2462, size: 64, offset: 832)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!101, !294, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2422, file: !64, line: 2073, baseType: !2468, size: 64, offset: 896)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!101, !454, !2199, !443}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2422, file: !64, line: 2074, baseType: !490, size: 64, offset: 960)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2422, file: !64, line: 2076, baseType: !2473, size: 64, offset: 1024)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!101, !1443, !294}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2422, file: !64, line: 2077, baseType: !2473, size: 64, offset: 1088)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2422, file: !64, line: 2078, baseType: !2473, size: 64, offset: 1152)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2422, file: !64, line: 2079, baseType: !2473, size: 64, offset: 1216)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2422, file: !64, line: 2081, baseType: !2480, size: 64, offset: 1280)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!579, !454, !101, !443, !592, !465}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2422, file: !64, line: 2082, baseType: !2484, size: 64, offset: 1344)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!579, !454, !101, !417, !592, !465}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2422, file: !64, line: 2083, baseType: !2488, size: 64, offset: 1408)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2491, !340}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2519, !2520, !2521}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2493, file: !69, line: 297, baseType: !921, size: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2493, file: !69, line: 298, baseType: !268, size: 128, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2493, file: !69, line: 299, baseType: !268, size: 128, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2493, file: !69, line: 300, baseType: !268, size: 128, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2493, file: !69, line: 301, baseType: !871, size: 256, offset: 512)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2493, file: !69, line: 302, baseType: !357, size: 32, offset: 768)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2493, file: !69, line: 303, baseType: !377, size: 32, offset: 800)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2493, file: !69, line: 304, baseType: !454, size: 64, offset: 832)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2493, file: !69, line: 305, baseType: !2504, size: 64, offset: 896)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2505)
!2505 = !{!2506, !2518}
!2506 = !DIDerivedType(tag: DW_TAG_member, scope: !2504, file: !69, line: 69, baseType: !2507, size: 32)
!2507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2504, file: !69, line: 69, size: 32, elements: !2508)
!2508 = !{!2509, !2510, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2507, file: !69, line: 70, baseType: !259, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2507, file: !69, line: 71, baseType: !274, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2507, file: !69, line: 72, baseType: !2512, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2513, line: 24, baseType: !2514)
!2513 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2513, line: 22, size: 32, elements: !2515)
!2515 = !{!2516}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2514, file: !2513, line: 23, baseType: !2517, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2513, line: 20, baseType: !265)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2504, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2493, file: !69, line: 306, baseType: !465, size: 64, offset: 960)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2493, file: !69, line: 307, baseType: !463, size: 64, offset: 1024)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2493, file: !69, line: 308, baseType: !2522, size: 576, offset: 1088)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2523)
!2523 = !{!2524, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2522, file: !69, line: 206, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !467)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2522, file: !69, line: 207, baseType: !2525, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2522, file: !69, line: 208, baseType: !2525, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2522, file: !69, line: 209, baseType: !2525, size: 64, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2522, file: !69, line: 210, baseType: !2525, size: 64, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2522, file: !69, line: 211, baseType: !2525, size: 64, offset: 320)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2522, file: !69, line: 212, baseType: !2525, size: 64, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2522, file: !69, line: 213, baseType: !1003, size: 64, offset: 448)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2522, file: !69, line: 214, baseType: !1003, size: 64, offset: 512)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2422, file: !64, line: 2085, baseType: !2535, size: 64, offset: 1472)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!582, !454, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2540, line: 15, size: 256, elements: !2541)
!2540 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2541 = !{!2542, !2543, !2544, !2545, !2546}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2539, file: !2540, line: 16, baseType: !630, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2539, file: !2540, line: 19, baseType: !101, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2539, file: !2540, line: 26, baseType: !463, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2539, file: !2540, line: 33, baseType: !463, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2539, file: !2540, line: 36, baseType: !2547, size: 64, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !30, line: 33, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2422, file: !64, line: 2087, baseType: !2535, size: 64, offset: 1536)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2422, file: !64, line: 2089, baseType: !490, size: 64, offset: 1600)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !455, file: !64, line: 1198, baseType: !2552, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2554)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2555)
!2555 = !{!2556, !2560, !2564, !2568, !2569, !2570, !2571, !2572, !2577, !2582, !2586}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2554, file: !69, line: 325, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!101, !2492}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2554, file: !69, line: 326, baseType: !2561, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!2492, !454, !101}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2554, file: !69, line: 327, baseType: !2565, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{null, !2492}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2554, file: !69, line: 328, baseType: !2557, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2554, file: !69, line: 329, baseType: !2557, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2554, file: !69, line: 330, baseType: !2557, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2554, file: !69, line: 331, baseType: !2448, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2554, file: !69, line: 334, baseType: !2573, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!2576, !340}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2554, file: !69, line: 335, baseType: !2578, size: 64, offset: 512)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!101, !340, !2581}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2554, file: !69, line: 337, baseType: !2583, size: 64, offset: 576)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!101, !340, !2576}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2554, file: !69, line: 339, baseType: !2587, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!101, !454, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !455, file: !64, line: 1199, baseType: !2592, size: 64, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2594)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2595)
!2595 = !{!2596, !2602, !2603, !2607, !2608, !2609, !2624, !2647, !2651, !2652, !2675}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2594, file: !69, line: 431, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!101, !454, !101, !101, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2594, file: !69, line: 432, baseType: !2448, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2594, file: !69, line: 433, baseType: !2604, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!101, !454, !7}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2594, file: !69, line: 434, baseType: !2604, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2594, file: !69, line: 435, baseType: !2448, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2594, file: !69, line: 436, baseType: !2610, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!101, !454, !101, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2615)
!2615 = !{!2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2614, file: !69, line: 418, baseType: !101, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2614, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2614, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2614, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2614, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2614, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2614, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2614, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2594, file: !69, line: 437, baseType: !2625, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!101, !454, !2504, !2628}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2629, file: !69, line: 346, baseType: !101, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2629, file: !69, line: 347, baseType: !332, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2629, file: !69, line: 348, baseType: !332, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2629, file: !69, line: 349, baseType: !332, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2629, file: !69, line: 350, baseType: !332, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2629, file: !69, line: 351, baseType: !332, size: 64, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2629, file: !69, line: 352, baseType: !332, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2629, file: !69, line: 353, baseType: !643, size: 64, offset: 448)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2629, file: !69, line: 355, baseType: !643, size: 64, offset: 512)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2629, file: !69, line: 356, baseType: !101, size: 32, offset: 576)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2629, file: !69, line: 357, baseType: !101, size: 32, offset: 608)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2629, file: !69, line: 358, baseType: !332, size: 64, offset: 640)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2629, file: !69, line: 359, baseType: !332, size: 64, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2629, file: !69, line: 360, baseType: !332, size: 64, offset: 768)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2629, file: !69, line: 361, baseType: !643, size: 64, offset: 832)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2629, file: !69, line: 362, baseType: !101, size: 32, offset: 896)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2594, file: !69, line: 438, baseType: !2648, size: 64, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!101, !454, !2590, !2628}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2594, file: !69, line: 440, baseType: !2625, size: 64, offset: 512)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2594, file: !69, line: 441, baseType: !2653, size: 64, offset: 576)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!101, !454, !2656}
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2658)
!2658 = !{!2659, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2657, file: !69, line: 412, baseType: !7, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2657, file: !69, line: 413, baseType: !2661, size: 1344, offset: 64)
!2661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2662, size: 1344, elements: !548)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2674}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2662, file: !69, line: 398, baseType: !7, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2662, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2662, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2662, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2662, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2662, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2662, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2662, file: !69, line: 406, baseType: !334, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2662, file: !69, line: 407, baseType: !2673, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !238, line: 132, baseType: !332)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2662, file: !69, line: 408, baseType: !2673, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2594, file: !69, line: 442, baseType: !2604, size: 64, offset: 640)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !455, file: !64, line: 1200, baseType: !2677, size: 64, offset: 576)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2679)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !455, file: !64, line: 1201, baseType: !463, size: 64, offset: 640)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !455, file: !64, line: 1202, baseType: !463, size: 64, offset: 704)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !455, file: !64, line: 1203, baseType: !463, size: 64, offset: 768)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !455, file: !64, line: 1204, baseType: !294, size: 64, offset: 832)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !455, file: !64, line: 1205, baseType: !633, size: 320, offset: 896)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !455, file: !64, line: 1206, baseType: !101, size: 32, offset: 1216)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !455, file: !64, line: 1207, baseType: !377, size: 32, offset: 1248)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !455, file: !64, line: 1209, baseType: !243, size: 64, offset: 1280)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !455, file: !64, line: 1211, baseType: !2689, size: 64, offset: 1344)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2692)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !455, file: !64, line: 1223, baseType: !2694, size: 64, offset: 1408)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !311, line: 34, size: 64, elements: !2695)
!2695 = !{!2696}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2694, file: !311, line: 35, baseType: !314, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !455, file: !64, line: 1224, baseType: !268, size: 128, offset: 1472)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !455, file: !64, line: 1225, baseType: !2699, size: 64, offset: 1600)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2701, line: 40, size: 7424, elements: !2702)
!2701 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2702 = !{!2703, !2704, !2705, !2708, !2712, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2739, !2740}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2700, file: !2701, line: 41, baseType: !1837, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2700, file: !2701, line: 42, baseType: !1837, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2700, file: !2701, line: 43, baseType: !2706, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1420, line: 1453, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2700, file: !2701, line: 44, baseType: !2709, size: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2711, line: 74, flags: DIFlagFwdDecl)
!2711 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2700, file: !2701, line: 45, baseType: !2713, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2701, line: 45, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2700, file: !2701, line: 46, baseType: !463, size: 64, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2700, file: !2701, line: 47, baseType: !763, size: 8, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2700, file: !2701, line: 48, baseType: !385, size: 8, offset: 392)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2700, file: !2701, line: 49, baseType: !763, size: 8, offset: 400)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2700, file: !2701, line: 50, baseType: !763, size: 8, offset: 408)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2700, file: !2701, line: 51, baseType: !459, size: 32, offset: 416)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2700, file: !2701, line: 52, baseType: !377, size: 32, offset: 448)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2700, file: !2701, line: 53, baseType: !357, size: 32, offset: 480)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2700, file: !2701, line: 54, baseType: !340, size: 64, offset: 512)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2700, file: !2701, line: 55, baseType: !243, size: 64, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2700, file: !2701, line: 56, baseType: !243, size: 64, offset: 640)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2700, file: !2701, line: 57, baseType: !2727, size: 64, offset: 704)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2729)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2701, line: 57, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2700, file: !2701, line: 58, baseType: !871, size: 256, offset: 768)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2700, file: !2701, line: 60, baseType: !101, size: 32, offset: 1024)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2700, file: !2701, line: 61, baseType: !101, size: 32, offset: 1056)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2700, file: !2701, line: 62, baseType: !513, size: 64, offset: 1088)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2700, file: !2701, line: 65, baseType: !871, size: 256, offset: 1152)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2700, file: !2701, line: 66, baseType: !454, size: 64, offset: 1408)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2700, file: !2701, line: 68, baseType: !2737, size: 64, offset: 1472)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2701, line: 68, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2700, file: !2701, line: 72, baseType: !763, size: 8, offset: 1536)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2700, file: !2701, line: 77, baseType: !2741, size: 5824, offset: 1600)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !81, line: 705, size: 5824, elements: !2742)
!2742 = !{!2743, !2744, !2746, !2749, !2750, !2803, !2873, !2874, !2875, !2876, !2877, !2884, !3044, !3057, !3067, !3071, !3073, !3074, !3075, !3079, !3086, !3087, !3090, !3093, !3097, !3100, !3101, !3102, !3103, !3104, !3105, !3135, !3136, !3137, !3140, !3143, !3152, !3153, !3154, !3155, !3156, !3157}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2741, file: !81, line: 706, baseType: !507, size: 512)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2741, file: !81, line: 707, baseType: !2745, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2741, file: !81, line: 709, baseType: !2747, size: 64, offset: 576)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !81, line: 37, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2741, file: !81, line: 711, baseType: !417, size: 64, offset: 640)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2741, file: !81, line: 712, baseType: !2751, size: 64, offset: 704)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2753)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !81, line: 89, size: 384, elements: !2754)
!2754 = !{!2755, !2756, !2757, !2763, !2768, !2772}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2753, file: !81, line: 90, baseType: !417, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2753, file: !81, line: 91, baseType: !596, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2753, file: !81, line: 92, baseType: !2758, size: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!101, !2761, !543}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2741)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2753, file: !81, line: 93, baseType: !2764, size: 64, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!443, !2761, !2767, !1942, !1943}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2753, file: !81, line: 95, baseType: !2769, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{null, !2745}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2753, file: !81, line: 97, baseType: !2773, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2775)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !93, line: 286, size: 1472, elements: !2776)
!2776 = !{!2777, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2775, file: !93, line: 287, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!101, !2745}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2775, file: !93, line: 288, baseType: !2769, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2775, file: !93, line: 289, baseType: !2778, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2775, file: !93, line: 290, baseType: !2778, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2775, file: !93, line: 291, baseType: !2778, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2775, file: !93, line: 292, baseType: !2778, size: 64, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2775, file: !93, line: 293, baseType: !2778, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2775, file: !93, line: 294, baseType: !2778, size: 64, offset: 448)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2775, file: !93, line: 295, baseType: !2778, size: 64, offset: 512)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2775, file: !93, line: 296, baseType: !2778, size: 64, offset: 576)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2775, file: !93, line: 297, baseType: !2778, size: 64, offset: 640)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2775, file: !93, line: 298, baseType: !2778, size: 64, offset: 704)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2775, file: !93, line: 299, baseType: !2778, size: 64, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2775, file: !93, line: 300, baseType: !2778, size: 64, offset: 832)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2775, file: !93, line: 301, baseType: !2778, size: 64, offset: 896)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2775, file: !93, line: 302, baseType: !2778, size: 64, offset: 960)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2775, file: !93, line: 303, baseType: !2778, size: 64, offset: 1024)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2775, file: !93, line: 304, baseType: !2778, size: 64, offset: 1088)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2775, file: !93, line: 305, baseType: !2778, size: 64, offset: 1152)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2775, file: !93, line: 306, baseType: !2778, size: 64, offset: 1216)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2775, file: !93, line: 307, baseType: !2778, size: 64, offset: 1280)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2775, file: !93, line: 308, baseType: !2778, size: 64, offset: 1344)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2775, file: !93, line: 309, baseType: !2778, size: 64, offset: 1408)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2741, file: !81, line: 714, baseType: !2804, size: 64, offset: 768)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2807, line: 80, size: 1344, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2808 = !{!2809, !2810, !2811, !2812, !2813, !2814, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2872}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2806, file: !2807, line: 81, baseType: !417, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2806, file: !2807, line: 82, baseType: !417, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2806, file: !2807, line: 83, baseType: !596, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2806, file: !2807, line: 84, baseType: !596, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2806, file: !2807, line: 85, baseType: !596, size: 64, offset: 256)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2806, file: !2807, line: 87, baseType: !2815, size: 64, offset: 320)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!101, !2745, !2818}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !75, line: 96, size: 1152, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2824, !2825, !2826, !2827, !2831, !2835, !2836, !2837, !2838, !2839, !2847, !2848, !2849, !2850, !2851, !2852}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2819, file: !75, line: 97, baseType: !417, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2819, file: !75, line: 98, baseType: !2804, size: 64, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2819, file: !75, line: 100, baseType: !494, size: 64, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2819, file: !75, line: 101, baseType: !417, size: 64, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2819, file: !75, line: 103, baseType: !763, size: 8, offset: 256)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2819, file: !75, line: 104, baseType: !74, size: 32, offset: 288)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2819, file: !75, line: 106, baseType: !2828, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2830)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !75, line: 106, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2819, file: !75, line: 107, baseType: !2832, size: 64, offset: 384)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2834)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !75, line: 107, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2819, file: !75, line: 109, baseType: !2778, size: 64, offset: 448)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2819, file: !75, line: 110, baseType: !2769, size: 64, offset: 512)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2819, file: !75, line: 111, baseType: !2778, size: 64, offset: 576)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2819, file: !75, line: 112, baseType: !2769, size: 64, offset: 640)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2819, file: !75, line: 113, baseType: !2840, size: 64, offset: 704)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!101, !2745, !2843}
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !93, line: 60, baseType: !2844)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !93, line: 58, size: 32, elements: !2845)
!2845 = !{!2846}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2844, file: !93, line: 59, baseType: !101, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2819, file: !75, line: 114, baseType: !2778, size: 64, offset: 768)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2819, file: !75, line: 115, baseType: !596, size: 64, offset: 832)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2819, file: !75, line: 116, baseType: !596, size: 64, offset: 896)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2819, file: !75, line: 118, baseType: !2773, size: 64, offset: 960)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2819, file: !75, line: 119, baseType: !2769, size: 64, offset: 1024)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2819, file: !75, line: 121, baseType: !2853, size: 64, offset: 1088)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !75, line: 121, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2806, file: !2807, line: 88, baseType: !2758, size: 64, offset: 384)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2806, file: !2807, line: 89, baseType: !2778, size: 64, offset: 448)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2806, file: !2807, line: 90, baseType: !2769, size: 64, offset: 512)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2806, file: !2807, line: 91, baseType: !2769, size: 64, offset: 576)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2806, file: !2807, line: 92, baseType: !2769, size: 64, offset: 640)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2806, file: !2807, line: 94, baseType: !2778, size: 64, offset: 704)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2806, file: !2807, line: 95, baseType: !2778, size: 64, offset: 768)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2806, file: !2807, line: 97, baseType: !2840, size: 64, offset: 832)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2806, file: !2807, line: 98, baseType: !2778, size: 64, offset: 896)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2806, file: !2807, line: 100, baseType: !2778, size: 64, offset: 960)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2806, file: !2807, line: 102, baseType: !2778, size: 64, offset: 1024)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2806, file: !2807, line: 103, baseType: !2769, size: 64, offset: 1088)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2806, file: !2807, line: 105, baseType: !2773, size: 64, offset: 1152)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2806, file: !2807, line: 107, baseType: !2869, size: 64, offset: 1216)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2871)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2807, line: 107, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2806, file: !2807, line: 109, baseType: !763, size: 8, offset: 1280)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2741, file: !81, line: 715, baseType: !2818, size: 64, offset: 832)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2741, file: !81, line: 717, baseType: !243, size: 64, offset: 896)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2741, file: !81, line: 719, baseType: !243, size: 64, offset: 960)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2741, file: !81, line: 721, baseType: !871, size: 256, offset: 1024)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2741, file: !81, line: 725, baseType: !2878, size: 448, offset: 1280)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !81, line: 517, size: 448, elements: !2879)
!2879 = !{!2880, !2881, !2882, !2883}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2878, file: !81, line: 518, baseType: !268, size: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2878, file: !81, line: 519, baseType: !268, size: 128, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2878, file: !81, line: 520, baseType: !268, size: 128, offset: 256)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2878, file: !81, line: 521, baseType: !80, size: 32, offset: 384)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2741, file: !81, line: 726, baseType: !2885, size: 2496, offset: 1728)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !93, line: 663, size: 2496, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2931, !2932, !2933, !2934, !2935, !2936, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3037, !3041}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2885, file: !93, line: 664, baseType: !2843, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2885, file: !93, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2885, file: !93, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2885, file: !93, line: 667, baseType: !763, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2885, file: !93, line: 668, baseType: !763, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2885, file: !93, line: 669, baseType: !763, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2885, file: !93, line: 670, baseType: !763, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2885, file: !93, line: 671, baseType: !763, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2885, file: !93, line: 672, baseType: !763, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2885, file: !93, line: 673, baseType: !763, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2885, file: !93, line: 674, baseType: !763, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2885, file: !93, line: 675, baseType: !328, size: 32, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2885, file: !93, line: 676, baseType: !357, size: 32, offset: 96)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2885, file: !93, line: 678, baseType: !268, size: 128, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2885, file: !93, line: 679, baseType: !777, size: 256, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2885, file: !93, line: 680, baseType: !2903, size: 64, offset: 512)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2905, line: 43, size: 1536, elements: !2906)
!2905 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2914, !2915, !2916, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2904, file: !2905, line: 44, baseType: !417, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2904, file: !2905, line: 45, baseType: !101, size: 32, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2904, file: !2905, line: 46, baseType: !268, size: 128, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2904, file: !2905, line: 47, baseType: !357, size: 32, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2904, file: !2905, line: 48, baseType: !2912, size: 64, offset: 320)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !93, line: 629, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2904, file: !2905, line: 49, baseType: !2299, size: 320, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2904, file: !2905, line: 50, baseType: !463, size: 64, offset: 704)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2904, file: !2905, line: 51, baseType: !2917, size: 64, offset: 768)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2918, line: 29, baseType: !643)
!2918 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2904, file: !2905, line: 52, baseType: !2917, size: 64, offset: 832)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2904, file: !2905, line: 53, baseType: !2917, size: 64, offset: 896)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2904, file: !2905, line: 54, baseType: !2917, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2904, file: !2905, line: 55, baseType: !2917, size: 64, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2904, file: !2905, line: 56, baseType: !463, size: 64, offset: 1088)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2904, file: !2905, line: 57, baseType: !463, size: 64, offset: 1152)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2904, file: !2905, line: 58, baseType: !463, size: 64, offset: 1216)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2904, file: !2905, line: 59, baseType: !463, size: 64, offset: 1280)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2904, file: !2905, line: 60, baseType: !463, size: 64, offset: 1344)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2904, file: !2905, line: 61, baseType: !2745, size: 64, offset: 1408)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2904, file: !2905, line: 62, baseType: !763, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2904, file: !2905, line: 63, baseType: !763, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2885, file: !93, line: 681, baseType: !763, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2885, file: !93, line: 682, baseType: !763, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2885, file: !93, line: 683, baseType: !763, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2885, file: !93, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2885, file: !93, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2885, file: !93, line: 690, baseType: !2937, size: 512, offset: 640)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !88, line: 118, size: 512, elements: !2938)
!2938 = !{!2939, !2945, !2946, !2951, !2999, !3000, !3001, !3002}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2937, file: !88, line: 119, baseType: !2940, size: 256)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2941, line: 9, size: 256, elements: !2942)
!2941 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2942 = !{!2943, !2944}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2940, file: !2941, line: 10, baseType: !665, size: 192, align: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2940, file: !2941, line: 11, baseType: !2917, size: 64, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2937, file: !88, line: 120, baseType: !2917, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2937, file: !88, line: 121, baseType: !2947, size: 64, offset: 320)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!87, !2950}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2937, file: !88, line: 122, baseType: !2952, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !88, line: 159, size: 512, align: 512, elements: !2954)
!2954 = !{!2955, !2980, !2981, !2984, !2989, !2990, !2994, !2998}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2953, file: !88, line: 160, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !88, line: 215, size: 4608, align: 512, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2957, file: !88, line: 216, baseType: !652, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2957, file: !88, line: 217, baseType: !7, size: 32, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2957, file: !88, line: 218, baseType: !7, size: 32, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2957, file: !88, line: 219, baseType: !7, size: 32, offset: 96)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2957, file: !88, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2957, file: !88, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2957, file: !88, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2957, file: !88, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2957, file: !88, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2957, file: !88, line: 226, baseType: !7, size: 32, offset: 160)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2957, file: !88, line: 227, baseType: !256, size: 16, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2957, file: !88, line: 228, baseType: !256, size: 16, offset: 208)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2957, file: !88, line: 229, baseType: !7, size: 32, offset: 224)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2957, file: !88, line: 235, baseType: !2917, size: 64, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2957, file: !88, line: 236, baseType: !2950, size: 64, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2957, file: !88, line: 237, baseType: !2917, size: 64, offset: 384)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2957, file: !88, line: 238, baseType: !2950, size: 64, offset: 448)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2957, file: !88, line: 239, baseType: !2977, size: 4096, align: 512, offset: 512)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2953, size: 4096, align: 512, elements: !2978)
!2978 = !{!2979}
!2979 = !DISubrange(count: 8)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2953, file: !88, line: 161, baseType: !7, size: 32, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2953, file: !88, line: 162, baseType: !2982, size: 32, offset: 96)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !238, line: 32, baseType: !2983)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !266, line: 96, baseType: !101)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2953, file: !88, line: 163, baseType: !2985, size: 32, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !301, line: 274, baseType: !2986)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !301, line: 274, size: 32, elements: !2987)
!2987 = !{!2988}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2986, file: !301, line: 274, baseType: !305, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2953, file: !88, line: 164, baseType: !2950, size: 64, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2953, file: !88, line: 165, baseType: !2991, size: 128, offset: 256)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2941, line: 14, size: 128, elements: !2992)
!2992 = !{!2993}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2991, file: !2941, line: 15, baseType: !657, size: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2953, file: !88, line: 166, baseType: !2995, size: 64, offset: 384)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!2917}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2953, file: !88, line: 167, baseType: !2917, size: 64, offset: 448)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2937, file: !88, line: 123, baseType: !385, size: 8, offset: 448)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2937, file: !88, line: 124, baseType: !385, size: 8, offset: 456)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2937, file: !88, line: 125, baseType: !385, size: 8, offset: 464)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2937, file: !88, line: 126, baseType: !385, size: 8, offset: 472)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2885, file: !93, line: 691, baseType: !332, size: 64, offset: 1152)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2885, file: !93, line: 692, baseType: !1601, size: 256, offset: 1216)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2885, file: !93, line: 693, baseType: !930, size: 192, offset: 1472)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2885, file: !93, line: 694, baseType: !2912, size: 64, offset: 1664)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2885, file: !93, line: 695, baseType: !377, size: 32, offset: 1728)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2885, file: !93, line: 696, baseType: !377, size: 32, offset: 1760)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2885, file: !93, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2885, file: !93, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2885, file: !93, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2885, file: !93, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2885, file: !93, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2885, file: !93, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2885, file: !93, line: 703, baseType: !763, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2885, file: !93, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2885, file: !93, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2885, file: !93, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2885, file: !93, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2885, file: !93, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2885, file: !93, line: 709, baseType: !7, size: 32, offset: 1824)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2885, file: !93, line: 710, baseType: !92, size: 32, offset: 1856)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2885, file: !93, line: 711, baseType: !100, size: 32, offset: 1888)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2885, file: !93, line: 712, baseType: !100, size: 32, offset: 1920)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2885, file: !93, line: 713, baseType: !101, size: 32, offset: 1952)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2885, file: !93, line: 714, baseType: !101, size: 32, offset: 1984)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2885, file: !93, line: 715, baseType: !332, size: 64, offset: 2048)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2885, file: !93, line: 716, baseType: !332, size: 64, offset: 2112)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2885, file: !93, line: 717, baseType: !332, size: 64, offset: 2176)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2885, file: !93, line: 718, baseType: !332, size: 64, offset: 2240)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2885, file: !93, line: 720, baseType: !3032, size: 64, offset: 2304)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !93, line: 632, size: 64, elements: !3034)
!3034 = !{!3035, !3036}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3033, file: !93, line: 633, baseType: !357, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3033, file: !93, line: 634, baseType: !7, size: 32, offset: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2885, file: !93, line: 721, baseType: !3038, size: 64, offset: 2368)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2745, !987}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2885, file: !93, line: 722, baseType: !3042, size: 64, offset: 2432)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !93, line: 722, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2741, file: !81, line: 727, baseType: !3045, size: 64, offset: 4224)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !93, line: 742, size: 1792, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3054, !3055, !3056}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3046, file: !93, line: 743, baseType: !2775, size: 1472)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3046, file: !93, line: 744, baseType: !2778, size: 64, offset: 1472)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3046, file: !93, line: 745, baseType: !3051, size: 64, offset: 1536)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !2745, !763}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3046, file: !93, line: 746, baseType: !2778, size: 64, offset: 1600)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3046, file: !93, line: 747, baseType: !2769, size: 64, offset: 1664)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3046, file: !93, line: 748, baseType: !2769, size: 64, offset: 1728)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2741, file: !81, line: 736, baseType: !3058, size: 128, offset: 4288)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !81, line: 529, size: 128, elements: !3059)
!3059 = !{!3060, !3064}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3058, file: !81, line: 531, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3063, line: 13, flags: DIFlagFwdDecl)
!3063 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3058, file: !81, line: 532, baseType: !3065, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !81, line: 49, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2741, file: !81, line: 738, baseType: !3068, size: 64, offset: 4416)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3070)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !81, line: 738, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2741, file: !81, line: 740, baseType: !3072, size: 64, offset: 4480)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2741, file: !81, line: 741, baseType: !332, size: 64, offset: 4544)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2741, file: !81, line: 746, baseType: !332, size: 64, offset: 4608)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2741, file: !81, line: 747, baseType: !3076, size: 64, offset: 4672)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3078)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !81, line: 747, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2741, file: !81, line: 749, baseType: !3080, size: 64, offset: 4736)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !81, line: 428, size: 128, elements: !3082)
!3082 = !{!3083, !3084, !3085}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3081, file: !81, line: 433, baseType: !7, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3081, file: !81, line: 434, baseType: !7, size: 32, offset: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3081, file: !81, line: 435, baseType: !463, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2741, file: !81, line: 751, baseType: !268, size: 128, offset: 4800)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2741, file: !81, line: 762, baseType: !3088, size: 64, offset: 4928)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !81, line: 762, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2741, file: !81, line: 770, baseType: !3091, offset: 4992)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3092, line: 5, elements: !846)
!3092 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2741, file: !81, line: 772, baseType: !3094, size: 64, offset: 4992)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3096, line: 18, flags: DIFlagFwdDecl)
!3096 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2741, file: !81, line: 773, baseType: !3098, size: 64, offset: 5056)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2807, line: 22, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2741, file: !81, line: 776, baseType: !101, size: 32, offset: 5120)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2741, file: !81, line: 778, baseType: !459, size: 32, offset: 5152)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2741, file: !81, line: 779, baseType: !328, size: 32, offset: 5184)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2741, file: !81, line: 781, baseType: !357, size: 32, offset: 5216)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2741, file: !81, line: 782, baseType: !268, size: 128, offset: 5248)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2741, file: !81, line: 784, baseType: !3106, size: 64, offset: 5376)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3108)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3109, line: 52, size: 768, elements: !3110)
!3109 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3119, !3123, !3124, !3125, !3126, !3130, !3134}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3108, file: !3109, line: 53, baseType: !417, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3108, file: !3109, line: 55, baseType: !596, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3108, file: !3109, line: 56, baseType: !596, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3108, file: !3109, line: 58, baseType: !2758, size: 64, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3108, file: !3109, line: 59, baseType: !3116, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!443, !2761, !2767}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3108, file: !3109, line: 61, baseType: !3120, size: 64, offset: 320)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !3106}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3108, file: !3109, line: 62, baseType: !2769, size: 64, offset: 384)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3108, file: !3109, line: 64, baseType: !2778, size: 64, offset: 448)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3108, file: !3109, line: 66, baseType: !1907, size: 64, offset: 512)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3108, file: !3109, line: 67, baseType: !3127, size: 64, offset: 576)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!1562, !2761}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3108, file: !3109, line: 69, baseType: !3131, size: 64, offset: 640)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !2761, !1942, !1943}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3108, file: !3109, line: 71, baseType: !2773, size: 64, offset: 704)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2741, file: !81, line: 785, baseType: !596, size: 64, offset: 5440)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2741, file: !81, line: 787, baseType: !2769, size: 64, offset: 5504)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2741, file: !81, line: 788, baseType: !3138, size: 64, offset: 5568)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !81, line: 46, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2741, file: !81, line: 789, baseType: !3141, size: 64, offset: 5632)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !81, line: 48, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2741, file: !81, line: 791, baseType: !3144, size: 64, offset: 5696)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !81, line: 597, size: 128, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3145, file: !81, line: 598, baseType: !108, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3145, file: !81, line: 599, baseType: !117, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3145, file: !81, line: 600, baseType: !122, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3145, file: !81, line: 601, baseType: !763, size: 8, offset: 96)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3145, file: !81, line: 602, baseType: !763, size: 8, offset: 104)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2741, file: !81, line: 793, baseType: !127, size: 32, offset: 5760)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2741, file: !81, line: 795, baseType: !763, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2741, file: !81, line: 796, baseType: !763, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2741, file: !81, line: 797, baseType: !763, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2741, file: !81, line: 798, baseType: !763, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2741, file: !81, line: 799, baseType: !763, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !455, file: !64, line: 1226, baseType: !3159, size: 64, offset: 1664)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !64, line: 1226, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !455, file: !64, line: 1227, baseType: !3162, size: 64, offset: 1728)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !134, line: 163, size: 6848, elements: !3164)
!3164 = !{!3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3211, !3212, !3213, !3214, !3216, !3217, !3218}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3163, file: !134, line: 164, baseType: !332, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3163, file: !134, line: 165, baseType: !665, size: 192, align: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3163, file: !134, line: 166, baseType: !268, size: 128, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3163, file: !134, line: 167, baseType: !463, size: 64, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3163, file: !134, line: 168, baseType: !463, size: 64, offset: 448)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3163, file: !134, line: 170, baseType: !2048, size: 32, offset: 512)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3163, file: !134, line: 171, baseType: !7, size: 32, offset: 544)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3163, file: !134, line: 172, baseType: !7, size: 32, offset: 576)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3163, file: !134, line: 173, baseType: !7, size: 32, offset: 608)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3163, file: !134, line: 173, baseType: !7, size: 32, offset: 640)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3163, file: !134, line: 179, baseType: !637, size: 64, offset: 704)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3163, file: !134, line: 184, baseType: !463, size: 64, offset: 768)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3163, file: !134, line: 186, baseType: !3178, size: 4672, offset: 832)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !134, line: 105, size: 4672, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3178, file: !134, line: 106, baseType: !3162, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3178, file: !134, line: 108, baseType: !463, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3178, file: !134, line: 109, baseType: !463, size: 64, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3178, file: !134, line: 111, baseType: !268, size: 128, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3178, file: !134, line: 112, baseType: !268, size: 128, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3178, file: !134, line: 113, baseType: !268, size: 128, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3178, file: !134, line: 114, baseType: !268, size: 128, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3178, file: !134, line: 115, baseType: !357, size: 32, offset: 704)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3178, file: !134, line: 117, baseType: !377, size: 32, offset: 736)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3178, file: !134, line: 118, baseType: !1530, size: 1280, offset: 768)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3178, file: !134, line: 120, baseType: !463, size: 64, offset: 2048)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3178, file: !134, line: 121, baseType: !463, size: 64, offset: 2112)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3178, file: !134, line: 122, baseType: !463, size: 64, offset: 2176)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3178, file: !134, line: 123, baseType: !463, size: 64, offset: 2240)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3178, file: !134, line: 124, baseType: !463, size: 64, offset: 2304)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3178, file: !134, line: 132, baseType: !463, size: 64, offset: 2368)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3178, file: !134, line: 133, baseType: !463, size: 64, offset: 2432)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3178, file: !134, line: 135, baseType: !3198, size: 384, offset: 2496)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3199, line: 76, size: 384, elements: !3200)
!3199 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3200 = !{!3201, !3202, !3203}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3198, file: !3199, line: 78, baseType: !1102, size: 320)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3198, file: !3199, line: 80, baseType: !7, size: 32, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3198, file: !3199, line: 81, baseType: !652, size: 32, offset: 352)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3178, file: !134, line: 136, baseType: !101, size: 32, offset: 2880)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3178, file: !134, line: 137, baseType: !133, size: 32, offset: 2912)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3178, file: !134, line: 139, baseType: !357, size: 32, offset: 2944)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3178, file: !134, line: 140, baseType: !268, size: 128, offset: 3008)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3178, file: !134, line: 141, baseType: !2356, size: 704, offset: 3136)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3178, file: !134, line: 142, baseType: !2356, size: 704, offset: 3840)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3178, file: !134, line: 144, baseType: !268, size: 128, offset: 4544)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3163, file: !134, line: 187, baseType: !268, size: 128, offset: 5504)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3163, file: !134, line: 193, baseType: !930, size: 192, offset: 5632)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3163, file: !134, line: 195, baseType: !2745, size: 64, offset: 5824)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3163, file: !134, line: 196, baseType: !3215, size: 512, offset: 5888)
!3215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 512, elements: !552)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3163, file: !134, line: 197, baseType: !2745, size: 64, offset: 6400)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3163, file: !134, line: 199, baseType: !2299, size: 320, offset: 6464)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3163, file: !134, line: 202, baseType: !294, size: 64, offset: 6784)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !455, file: !64, line: 1228, baseType: !3220, size: 64, offset: 1792)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !455, file: !64, line: 1229, baseType: !921, size: 128, offset: 1856)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !455, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !455, file: !64, line: 1231, baseType: !3225, size: 2496, offset: 2048)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3231, !3263}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3225, file: !69, line: 522, baseType: !7, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3225, file: !69, line: 523, baseType: !633, size: 320, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3225, file: !69, line: 524, baseType: !3230, size: 192, offset: 384)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 192, elements: !548)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3225, file: !69, line: 525, baseType: !3232, size: 1728, offset: 576)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3233, size: 1728, elements: !548)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !3234)
!3234 = !{!3235, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3233, file: !69, line: 223, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !3238)
!3238 = !{!3239, !3240, !3253, !3254}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3237, file: !69, line: 446, baseType: !101, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3237, file: !69, line: 447, baseType: !3241, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3243)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3243, file: !69, line: 313, baseType: !2448, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3243, file: !69, line: 314, baseType: !2448, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3243, file: !69, line: 315, baseType: !2448, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3243, file: !69, line: 316, baseType: !2448, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3243, file: !69, line: 317, baseType: !2557, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3243, file: !69, line: 318, baseType: !2557, size: 64, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3243, file: !69, line: 319, baseType: !2557, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3243, file: !69, line: 320, baseType: !2587, size: 64, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3237, file: !69, line: 448, baseType: !494, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3237, file: !69, line: 449, baseType: !3236, size: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3233, file: !69, line: 224, baseType: !101, size: 32, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3233, file: !69, line: 226, baseType: !268, size: 128, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3233, file: !69, line: 227, baseType: !463, size: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3233, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3233, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3233, file: !69, line: 230, baseType: !2525, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3233, file: !69, line: 231, baseType: !2525, size: 64, offset: 448)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3233, file: !69, line: 232, baseType: !243, size: 64, offset: 512)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3225, file: !69, line: 526, baseType: !3264, size: 192, offset: 2304)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3241, size: 192, elements: !548)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !455, file: !64, line: 1233, baseType: !3266, size: 2368, offset: 4544)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !3267)
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3266, file: !64, line: 1185, baseType: !256, size: 16)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3266, file: !64, line: 1186, baseType: !256, size: 16, offset: 16)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3266, file: !64, line: 1187, baseType: !3271, size: 2304, offset: 64)
!3271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3272, size: 2304, elements: !548)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3273, line: 12, size: 768, elements: !3274)
!3273 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3274 = !{!3275, !3283, !3284, !4441, !4442}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3272, file: !3273, line: 13, baseType: !3276, size: 384)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3277, line: 17, size: 384, elements: !3278)
!3277 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3278 = !{!3279, !3280, !3281, !3282}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3276, file: !3277, line: 18, baseType: !101, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3276, file: !3277, line: 19, baseType: !101, size: 32, offset: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3276, file: !3277, line: 20, baseType: !930, size: 192, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3276, file: !3277, line: 22, baseType: !767, size: 128, align: 64, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3272, file: !3273, line: 14, baseType: !2151, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3272, file: !3273, line: 15, baseType: !3285, size: 64, offset: 448)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3286, line: 16, size: 64, elements: !3287)
!3286 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3287 = !{!3288}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3285, file: !3286, line: 17, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1420, line: 746, size: 58368, elements: !3291)
!3291 = !{!3292, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3372, !3383, !3403, !3407, !3410, !3441, !3442, !3443, !3444, !3455, !3457, !3458, !3459, !3460, !3461, !3462, !3473, !3474, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3491, !3492, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3580, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3628, !3634, !3635, !3636, !3637, !3638, !3642, !3645, !3652, !3657, !3660, !3663, !3666, !3720, !3858, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3896, !3897, !3898, !3907, !3915, !3916, !3917, !3918, !3919, !3924, !3925, !3926, !3929, !3930, !3933, !3936, !3939, !3946, !3949, !3950, !4036, !4037, !4038, !4039, !4040, !4046, !4047, !4048, !4049, !4052, !4053, !4056, !4059, !4060, !4063, !4064, !4065, !4068, !4069, !4070, !4071, !4072, !4073, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4105, !4106, !4112, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4194, !4196, !4197, !4198, !4199, !4200, !4201, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4218, !4219, !4220}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3290, file: !1420, line: 752, baseType: !3293, size: 192)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3294, line: 56, size: 192, elements: !3295)
!3294 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3295 = !{!3296, !3297, !3298, !3299}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3293, file: !3294, line: 57, baseType: !463, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3293, file: !3294, line: 58, baseType: !463, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3293, file: !3294, line: 59, baseType: !328, size: 32, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3293, file: !3294, line: 61, baseType: !328, size: 32, offset: 160)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3290, file: !1420, line: 754, baseType: !7, size: 32, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3290, file: !1420, line: 767, baseType: !243, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3290, file: !1420, line: 768, baseType: !909, size: 32, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3290, file: !1420, line: 770, baseType: !7, size: 32, offset: 352)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3290, file: !1420, line: 771, baseType: !7, size: 32, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3290, file: !1420, line: 774, baseType: !101, size: 32, offset: 416)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3290, file: !1420, line: 775, baseType: !3307, size: 128, offset: 448)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3308, line: 58, size: 128, elements: !3309)
!3308 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3309 = !{!3310, !3311, !3316, !3317}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3307, file: !3308, line: 59, baseType: !860, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, scope: !3307, file: !3308, line: 60, baseType: !3312, size: 32, offset: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !3308, line: 60, size: 32, elements: !3313)
!3313 = !{!3314, !3315}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3312, file: !3308, line: 61, baseType: !7, size: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3312, file: !3308, line: 62, baseType: !377, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3307, file: !3308, line: 65, baseType: !392, size: 16, offset: 96)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3307, file: !3308, line: 65, baseType: !392, size: 16, offset: 112)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3290, file: !1420, line: 776, baseType: !7, size: 32, offset: 576)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3290, file: !1420, line: 777, baseType: !463, size: 64, offset: 640)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3290, file: !1420, line: 778, baseType: !3289, size: 64, offset: 704)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3290, file: !1420, line: 787, baseType: !101, size: 32, offset: 768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3290, file: !1420, line: 788, baseType: !101, size: 32, offset: 800)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3290, file: !1420, line: 790, baseType: !101, size: 32, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3290, file: !1420, line: 792, baseType: !101, size: 32, offset: 864)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3290, file: !1420, line: 793, baseType: !101, size: 32, offset: 896)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3290, file: !1420, line: 794, baseType: !101, size: 32, offset: 928)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3290, file: !1420, line: 795, baseType: !7, size: 32, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3290, file: !1420, line: 797, baseType: !3329, size: 2048, offset: 1024)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1420, line: 551, size: 2048, elements: !3330)
!3330 = !{!3331, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3351, !3354, !3355, !3356}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3329, file: !1420, line: 553, baseType: !3332, size: 128)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1420, line: 411, size: 128, elements: !3333)
!3333 = !{!3334, !3335}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3332, file: !1420, line: 412, baseType: !463, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3332, file: !1420, line: 413, baseType: !328, size: 32, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3329, file: !1420, line: 554, baseType: !665, size: 192, align: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3329, file: !1420, line: 555, baseType: !332, size: 64, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3329, file: !1420, line: 556, baseType: !332, size: 64, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3329, file: !1420, line: 558, baseType: !268, size: 128, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3329, file: !1420, line: 559, baseType: !7, size: 32, offset: 576)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3329, file: !1420, line: 561, baseType: !332, size: 64, offset: 640)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3329, file: !1420, line: 562, baseType: !332, size: 64, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3329, file: !1420, line: 563, baseType: !332, size: 64, offset: 768)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3329, file: !1420, line: 564, baseType: !332, size: 64, offset: 832)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3329, file: !1420, line: 565, baseType: !643, size: 64, offset: 896)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3329, file: !1420, line: 566, baseType: !332, size: 64, offset: 960)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3329, file: !1420, line: 568, baseType: !332, size: 64, offset: 1024)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3329, file: !1420, line: 571, baseType: !101, size: 32, offset: 1088)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3329, file: !1420, line: 572, baseType: !3350, size: 64, offset: 1152)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3329, file: !1420, line: 574, baseType: !3352, size: 64, offset: 1216)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1420, line: 49, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3329, file: !1420, line: 576, baseType: !3352, size: 64, offset: 1280)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3329, file: !1420, line: 578, baseType: !463, size: 64, offset: 1344)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3329, file: !1420, line: 588, baseType: !3357, size: 512, align: 512, offset: 1536)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1420, line: 497, size: 512, align: 512, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3357, file: !1420, line: 498, baseType: !332, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3357, file: !1420, line: 499, baseType: !332, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3357, file: !1420, line: 500, baseType: !332, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3357, file: !1420, line: 501, baseType: !328, size: 32, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3357, file: !1420, line: 502, baseType: !328, size: 32, offset: 224)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3357, file: !1420, line: 503, baseType: !463, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3357, file: !1420, line: 504, baseType: !463, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3357, file: !1420, line: 505, baseType: !463, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3357, file: !1420, line: 506, baseType: !3368, size: 64, align: 64, offset: 448)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1420, line: 445, size: 64, align: 64, elements: !3369)
!3369 = !{!3370, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3368, file: !1420, line: 446, baseType: !7, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3368, file: !1420, line: 447, baseType: !7, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3290, file: !1420, line: 798, baseType: !3373, size: 384, offset: 3072)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1420, line: 592, size: 384, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3381}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3373, file: !1420, line: 593, baseType: !268, size: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3373, file: !1420, line: 594, baseType: !463, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3373, file: !1420, line: 595, baseType: !463, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3373, file: !1420, line: 596, baseType: !7, size: 32, offset: 256)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3373, file: !1420, line: 597, baseType: !256, size: 16, offset: 288)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3373, file: !1420, line: 598, baseType: !256, size: 16, offset: 304)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3373, file: !1420, line: 600, baseType: !3382, size: 64, offset: 320)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3290, file: !1420, line: 799, baseType: !3384, size: 1792, offset: 3456)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1420, line: 610, size: 1792, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3384, file: !1420, line: 611, baseType: !665, size: 192, align: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3384, file: !1420, line: 618, baseType: !332, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3384, file: !1420, line: 619, baseType: !332, size: 64, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3384, file: !1420, line: 620, baseType: !332, size: 64, offset: 320)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3384, file: !1420, line: 621, baseType: !332, size: 64, offset: 384)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3384, file: !1420, line: 622, baseType: !332, size: 64, offset: 448)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3384, file: !1420, line: 629, baseType: !643, size: 64, offset: 512)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3384, file: !1420, line: 630, baseType: !332, size: 64, offset: 576)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3384, file: !1420, line: 631, baseType: !7, size: 32, offset: 640)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3384, file: !1420, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3384, file: !1420, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3384, file: !1420, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3384, file: !1420, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3384, file: !1420, line: 662, baseType: !2937, size: 512, offset: 704)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3384, file: !1420, line: 671, baseType: !2937, size: 512, offset: 1216)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3384, file: !1420, line: 679, baseType: !3402, size: 64, offset: 1728)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3290, file: !1420, line: 800, baseType: !3404, size: 64, offset: 5248)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3406)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1420, line: 800, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3290, file: !1420, line: 809, baseType: !3408, size: 64, offset: 5312)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1420, line: 70, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3290, file: !1420, line: 825, baseType: !3411, size: 2048, align: 512, offset: 5632)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1420, line: 509, size: 2048, align: 512, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3411, file: !1420, line: 511, baseType: !332, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3411, file: !1420, line: 512, baseType: !332, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3411, file: !1420, line: 513, baseType: !332, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3411, file: !1420, line: 514, baseType: !332, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3411, file: !1420, line: 515, baseType: !332, size: 64, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3411, file: !1420, line: 516, baseType: !332, size: 64, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3411, file: !1420, line: 518, baseType: !332, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3411, file: !1420, line: 519, baseType: !332, size: 64, offset: 448)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3411, file: !1420, line: 520, baseType: !643, size: 64, offset: 512)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3411, file: !1420, line: 522, baseType: !332, size: 64, offset: 576)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3411, file: !1420, line: 523, baseType: !332, size: 64, offset: 640)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3411, file: !1420, line: 524, baseType: !643, size: 64, offset: 704)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3411, file: !1420, line: 526, baseType: !643, size: 64, offset: 768)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3411, file: !1420, line: 527, baseType: !332, size: 64, offset: 832)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3411, file: !1420, line: 529, baseType: !332, size: 64, offset: 896)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3411, file: !1420, line: 530, baseType: !332, size: 64, offset: 960)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3411, file: !1420, line: 531, baseType: !332, size: 64, offset: 1024)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3411, file: !1420, line: 532, baseType: !332, size: 64, offset: 1088)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3411, file: !1420, line: 533, baseType: !332, size: 64, offset: 1152)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3411, file: !1420, line: 535, baseType: !332, size: 64, offset: 1216)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3411, file: !1420, line: 536, baseType: !332, size: 64, offset: 1280)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3411, file: !1420, line: 537, baseType: !332, size: 64, offset: 1344)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3411, file: !1420, line: 538, baseType: !332, size: 64, offset: 1408)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3411, file: !1420, line: 539, baseType: !332, size: 64, offset: 1472)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3411, file: !1420, line: 540, baseType: !332, size: 64, offset: 1536)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3411, file: !1420, line: 541, baseType: !332, size: 64, offset: 1600)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3411, file: !1420, line: 542, baseType: !332, size: 64, offset: 1664)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3411, file: !1420, line: 543, baseType: !332, size: 64, offset: 1728)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3290, file: !1420, line: 833, baseType: !7, size: 32, offset: 7680)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3290, file: !1420, line: 836, baseType: !7, size: 32, offset: 7712)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3290, file: !1420, line: 837, baseType: !101, size: 32, offset: 7744)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3290, file: !1420, line: 838, baseType: !3445, size: 64, offset: 7808)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3447)
!3447 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3448, line: 19, baseType: !3449)
!3448 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3448, line: 19, size: 64, elements: !3450)
!3450 = !{!3451}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3449, file: !3448, line: 19, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 64, elements: !3453)
!3453 = !{!3454}
!3454 = !DISubrange(count: 1)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3290, file: !1420, line: 839, baseType: !3456, size: 64, offset: 7872)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3290, file: !1420, line: 840, baseType: !3447, size: 64, offset: 7936)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3290, file: !1420, line: 841, baseType: !243, size: 64, offset: 8000)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3290, file: !1420, line: 843, baseType: !256, size: 16, offset: 8064)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3290, file: !1420, line: 845, baseType: !256, size: 16, offset: 8080)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3290, file: !1420, line: 848, baseType: !101, size: 32, offset: 8096)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3290, file: !1420, line: 849, baseType: !3463, size: 32, offset: 8128)
!3463 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1420, line: 718, size: 32, elements: !3464)
!3464 = !{!3465, !3472}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3463, file: !1420, line: 724, baseType: !3466, size: 32)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3463, file: !1420, line: 719, size: 32, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3466, file: !1420, line: 720, baseType: !385, size: 8)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3466, file: !1420, line: 721, baseType: !385, size: 8, offset: 8)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3466, file: !1420, line: 722, baseType: !385, size: 8, offset: 16)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3466, file: !1420, line: 723, baseType: !385, size: 8, offset: 24)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3463, file: !1420, line: 725, baseType: !328, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3290, file: !1420, line: 850, baseType: !268, size: 128, offset: 8192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3290, file: !1420, line: 851, baseType: !3475, size: 64, offset: 8320)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1420, line: 60, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3290, file: !1420, line: 855, baseType: !463, size: 64, offset: 8384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3290, file: !1420, line: 856, baseType: !385, size: 8, offset: 8448)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3290, file: !1420, line: 857, baseType: !385, size: 8, offset: 8456)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3290, file: !1420, line: 858, baseType: !101, size: 32, offset: 8480)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3290, file: !1420, line: 859, baseType: !268, size: 128, offset: 8512)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3290, file: !1420, line: 860, baseType: !101, size: 32, offset: 8640)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3290, file: !1420, line: 861, baseType: !268, size: 128, offset: 8704)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3290, file: !1420, line: 873, baseType: !3485, size: 256, offset: 8832)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1420, line: 376, size: 256, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3485, file: !1420, line: 381, baseType: !463, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3485, file: !1420, line: 384, baseType: !334, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3485, file: !1420, line: 389, baseType: !334, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3485, file: !1420, line: 392, baseType: !334, size: 64, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3290, file: !1420, line: 875, baseType: !268, size: 128, offset: 9088)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3290, file: !1420, line: 877, baseType: !3493, size: 320, offset: 9216)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3494, line: 86, size: 320, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3495 = !{!3496, !3497, !3498}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3493, file: !3494, line: 87, baseType: !101, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3493, file: !3494, line: 88, baseType: !268, size: 128, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3493, file: !3494, line: 89, baseType: !268, size: 128, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3290, file: !1420, line: 878, baseType: !665, size: 192, align: 64, offset: 9536)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3290, file: !1420, line: 881, baseType: !825, size: 64, offset: 9728)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3290, file: !1420, line: 882, baseType: !825, size: 64, offset: 9792)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3290, file: !1420, line: 884, baseType: !101, size: 32, offset: 9856)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3290, file: !1420, line: 885, baseType: !101, size: 32, offset: 9888)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3290, file: !1420, line: 886, baseType: !101, size: 32, offset: 9920)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3290, file: !1420, line: 888, baseType: !101, size: 32, offset: 9952)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3290, file: !1420, line: 890, baseType: !463, size: 64, offset: 9984)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3290, file: !1420, line: 893, baseType: !7, size: 32, offset: 10048)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3290, file: !1420, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3290, file: !1420, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3290, file: !1420, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3290, file: !1420, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3290, file: !1420, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3290, file: !1420, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3290, file: !1420, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3290, file: !1420, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3290, file: !1420, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3290, file: !1420, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3290, file: !1420, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3290, file: !1420, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3290, file: !1420, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3290, file: !1420, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3290, file: !1420, line: 969, baseType: !463, size: 64, offset: 10176)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3290, file: !1420, line: 971, baseType: !3524, size: 448, offset: 10240)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !146, line: 25, size: 448, elements: !3525)
!3525 = !{!3526, !3527, !3532}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3524, file: !146, line: 26, baseType: !463, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3524, file: !146, line: 27, baseType: !3528, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!582, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, scope: !3524, file: !146, line: 28, baseType: !3533, size: 320, offset: 128)
!3533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3524, file: !146, line: 28, size: 320, elements: !3534)
!3534 = !{!3535, !3545, !3570}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3533, file: !146, line: 37, baseType: !3536, size: 320)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3533, file: !146, line: 30, size: 320, elements: !3537)
!3537 = !{!3538, !3540, !3541, !3542, !3543, !3544}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3536, file: !146, line: 31, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3536, file: !146, line: 32, baseType: !328, size: 32, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3536, file: !146, line: 33, baseType: !328, size: 32, offset: 96)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3536, file: !146, line: 34, baseType: !328, size: 32, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3536, file: !146, line: 35, baseType: !332, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3536, file: !146, line: 36, baseType: !3539, size: 64, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3533, file: !146, line: 47, baseType: !3546, size: 192)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3533, file: !146, line: 39, size: 192, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3569}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3546, file: !146, line: 40, baseType: !2982, size: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3546, file: !146, line: 41, baseType: !145, size: 32, offset: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3546, file: !146, line: 42, baseType: !3551, size: 64, offset: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3546, file: !146, line: 42, size: 64, elements: !3552)
!3552 = !{!3553, !3561}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3551, file: !146, line: 43, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3556, line: 7, size: 128, elements: !3557)
!3556 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3557 = !{!3558, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3555, file: !3556, line: 8, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !266, line: 93, baseType: !467)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3555, file: !3556, line: 9, baseType: !467, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3551, file: !146, line: 44, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3564, line: 7, size: 64, elements: !3565)
!3564 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3565 = !{!3566, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3563, file: !3564, line: 8, baseType: !3567, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3564, line: 5, baseType: !987)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3563, file: !3564, line: 9, baseType: !987, size: 32, offset: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3546, file: !146, line: 46, baseType: !332, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3533, file: !146, line: 55, baseType: !3571, size: 256)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3533, file: !146, line: 49, size: 256, elements: !3572)
!3572 = !{!3573, !3576, !3577, !3578, !3579}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3571, file: !146, line: 50, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !146, line: 14, flags: DIFlagFwdDecl)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3571, file: !146, line: 51, baseType: !101, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3571, file: !146, line: 52, baseType: !101, size: 32, offset: 96)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3571, file: !146, line: 53, baseType: !463, size: 64, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3571, file: !146, line: 54, baseType: !463, size: 64, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3290, file: !1420, line: 973, baseType: !3581, size: 32, offset: 10688)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !238, line: 27, baseType: !3582)
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !266, line: 28, baseType: !101)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3290, file: !1420, line: 974, baseType: !3581, size: 32, offset: 10720)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3290, file: !1420, line: 978, baseType: !463, size: 64, offset: 10752)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3290, file: !1420, line: 987, baseType: !3289, size: 64, offset: 10816)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3290, file: !1420, line: 990, baseType: !3289, size: 64, offset: 10880)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3290, file: !1420, line: 995, baseType: !268, size: 128, offset: 10944)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3290, file: !1420, line: 996, baseType: !268, size: 128, offset: 11072)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3290, file: !1420, line: 997, baseType: !3289, size: 64, offset: 11200)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3290, file: !1420, line: 1005, baseType: !268, size: 128, offset: 11264)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3290, file: !1420, line: 1006, baseType: !268, size: 128, offset: 11392)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3290, file: !1420, line: 1009, baseType: !905, size: 64, offset: 11520)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3290, file: !1420, line: 1010, baseType: !3594, size: 512, offset: 11584)
!3594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 512, elements: !926)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3290, file: !1420, line: 1011, baseType: !268, size: 128, offset: 12096)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3290, file: !1420, line: 1012, baseType: !268, size: 128, offset: 12224)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3290, file: !1420, line: 1014, baseType: !2063, size: 64, offset: 12352)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3290, file: !1420, line: 1017, baseType: !2199, size: 64, offset: 12416)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3290, file: !1420, line: 1020, baseType: !2199, size: 64, offset: 12480)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3290, file: !1420, line: 1023, baseType: !243, size: 64, offset: 12544)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3290, file: !1420, line: 1025, baseType: !332, size: 64, offset: 12608)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3290, file: !1420, line: 1026, baseType: !332, size: 64, offset: 12672)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3290, file: !1420, line: 1031, baseType: !332, size: 64, offset: 12736)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3290, file: !1420, line: 1032, baseType: !3605, size: 192, offset: 12800)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1420, line: 324, size: 192, elements: !3606)
!3606 = !{!3607, !3608, !3609}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3605, file: !1420, line: 326, baseType: !332, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3605, file: !1420, line: 327, baseType: !332, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3605, file: !1420, line: 328, baseType: !652, size: 32, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3290, file: !1420, line: 1041, baseType: !463, size: 64, offset: 12992)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3290, file: !1420, line: 1042, baseType: !463, size: 64, offset: 13056)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3290, file: !1420, line: 1045, baseType: !332, size: 64, offset: 13120)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3290, file: !1420, line: 1048, baseType: !332, size: 64, offset: 13184)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3290, file: !1420, line: 1051, baseType: !463, size: 64, offset: 13248)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3290, file: !1420, line: 1052, baseType: !463, size: 64, offset: 13312)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3290, file: !1420, line: 1055, baseType: !3617, size: 640, offset: 13376)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3618, line: 132, size: 640, elements: !3619)
!3618 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3619 = !{!3620, !3626, !3627}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3617, file: !3618, line: 133, baseType: !3621, size: 576)
!3621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3622, size: 576, elements: !548)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3618, line: 117, size: 192, elements: !3623)
!3623 = !{!3624, !3625}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3622, file: !3618, line: 118, baseType: !332, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3622, file: !3618, line: 119, baseType: !2991, size: 128, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3617, file: !3618, line: 134, baseType: !7, size: 32, offset: 576)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3617, file: !3618, line: 135, baseType: !7, size: 32, offset: 608)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3290, file: !1420, line: 1058, baseType: !3629, size: 448, offset: 14016)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3618, line: 144, size: 448, elements: !3630)
!3630 = !{!3631, !3632, !3633}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3629, file: !3618, line: 145, baseType: !767, size: 128, align: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3629, file: !3618, line: 146, baseType: !871, size: 256, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3629, file: !3618, line: 147, baseType: !7, size: 32, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3290, file: !1420, line: 1064, baseType: !952, size: 64, offset: 14464)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3290, file: !1420, line: 1067, baseType: !952, size: 64, offset: 14528)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3290, file: !1420, line: 1070, baseType: !952, size: 64, offset: 14592)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3290, file: !1420, line: 1074, baseType: !979, size: 64, offset: 14656)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3290, file: !1420, line: 1084, baseType: !3639, size: 128, offset: 14720)
!3639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 128, elements: !3640)
!3640 = !{!3641}
!3641 = !DISubrange(count: 16)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3290, file: !1420, line: 1086, baseType: !3643, size: 64, offset: 14848)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1420, line: 55, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3290, file: !1420, line: 1089, baseType: !3646, size: 64, offset: 14912)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3647, line: 12, size: 64, elements: !3648)
!3647 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3648 = !{!3649}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3646, file: !3647, line: 13, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3647, line: 8, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3290, file: !1420, line: 1090, baseType: !3653, size: 128, offset: 14976)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3654, line: 13, size: 128, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3655 = !{!3656}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3653, file: !3654, line: 14, baseType: !268, size: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3290, file: !1420, line: 1097, baseType: !3658, size: 64, offset: 15104)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1420, line: 50, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3290, file: !1420, line: 1100, baseType: !3661, size: 64, offset: 15168)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1420, line: 1100, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3290, file: !1420, line: 1103, baseType: !3664, size: 64, offset: 15232)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1420, line: 53, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3290, file: !1420, line: 1107, baseType: !3667, size: 64, offset: 15296)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3669, line: 31, size: 576, elements: !3670)
!3669 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3670 = !{!3671, !3672, !3703, !3706, !3709, !3710, !3713, !3716, !3717}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3668, file: !3669, line: 32, baseType: !909, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3668, file: !3669, line: 33, baseType: !3673, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3675, line: 24, size: 3456, elements: !3676)
!3675 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!3676 = !{!3677, !3690, !3691, !3692}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3674, file: !3675, line: 25, baseType: !3678, size: 3120)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !3679, line: 25, size: 3120, elements: !3680)
!3679 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!3680 = !{!3681, !3685, !3686, !3687, !3688, !3689}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !3678, file: !3679, line: 26, baseType: !3682, size: 520)
!3682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 520, elements: !3683)
!3683 = !{!3684}
!3684 = !DISubrange(count: 65)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3678, file: !3679, line: 27, baseType: !3682, size: 520, offset: 520)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3678, file: !3679, line: 28, baseType: !3682, size: 520, offset: 1040)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3678, file: !3679, line: 29, baseType: !3682, size: 520, offset: 1560)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !3678, file: !3679, line: 30, baseType: !3682, size: 520, offset: 2080)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !3678, file: !3679, line: 31, baseType: !3682, size: 520, offset: 2600)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3674, file: !3675, line: 26, baseType: !1127, size: 64, offset: 3136)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3674, file: !3675, line: 27, baseType: !1130, size: 64, offset: 3200)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3674, file: !3675, line: 28, baseType: !3693, size: 192, offset: 3264)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3694, line: 9, size: 192, elements: !3695)
!3694 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3695 = !{!3696, !3697, !3701, !3702}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3693, file: !3694, line: 10, baseType: !637, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3693, file: !3694, line: 11, baseType: !3698, size: 64, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3700)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3694, line: 7, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3693, file: !3694, line: 12, baseType: !7, size: 32, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3693, file: !3694, line: 13, baseType: !909, size: 32, offset: 160)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3668, file: !3669, line: 34, baseType: !3704, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3669, line: 10, flags: DIFlagFwdDecl)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3668, file: !3669, line: 35, baseType: !3707, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3669, line: 8, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3668, file: !3669, line: 36, baseType: !943, size: 64, offset: 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3668, file: !3669, line: 37, baseType: !3711, size: 64, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !981, line: 34, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3668, file: !3669, line: 38, baseType: !3714, size: 64, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3669, line: 38, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3668, file: !3669, line: 39, baseType: !3714, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3668, file: !3669, line: 40, baseType: !3718, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3669, line: 12, flags: DIFlagFwdDecl)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3290, file: !1420, line: 1110, baseType: !3721, size: 64, offset: 15360)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3723, line: 93, size: 8768, elements: !3724)
!3723 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3772, !3781, !3782, !3784, !3785, !3786, !3789, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3827, !3828, !3835, !3845, !3848, !3849, !3852, !3853, !3854, !3855, !3856, !3857}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3722, file: !3723, line: 94, baseType: !909, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3722, file: !3723, line: 95, baseType: !377, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3722, file: !3723, line: 96, baseType: !101, size: 32, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3722, file: !3723, line: 97, baseType: !101, size: 32, offset: 96)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3722, file: !3723, line: 98, baseType: !268, size: 128, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3722, file: !3723, line: 100, baseType: !930, size: 192, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3722, file: !3723, line: 103, baseType: !3289, size: 64, offset: 448)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3722, file: !3723, line: 106, baseType: !3733, size: 192, offset: 512)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1132, line: 32, size: 192, elements: !3734)
!3734 = !{!3735, !3736}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3733, file: !1132, line: 33, baseType: !268, size: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3733, file: !1132, line: 34, baseType: !3737, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3738, line: 25, baseType: !3739)
!3738 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3738, line: 23, size: 64, elements: !3740)
!3740 = !{!3741}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3739, file: !3738, line: 24, baseType: !3452, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3722, file: !3723, line: 109, baseType: !917, size: 64, offset: 704)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3722, file: !3723, line: 112, baseType: !101, size: 32, offset: 768)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3722, file: !3723, line: 114, baseType: !101, size: 32, offset: 800)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3722, file: !3723, line: 115, baseType: !3289, size: 64, offset: 832)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3722, file: !3723, line: 118, baseType: !101, size: 32, offset: 896)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3722, file: !3723, line: 119, baseType: !7, size: 32, offset: 928)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3722, file: !3723, line: 121, baseType: !3749, size: 64, offset: 960)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3723, line: 80, size: 448, elements: !3751)
!3751 = !{!3752, !3753, !3759}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3750, file: !3723, line: 81, baseType: !377, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3750, file: !3723, line: 82, baseType: !3754, size: 128, offset: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3723, line: 75, size: 128, elements: !3755)
!3755 = !{!3756, !3757}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3754, file: !3723, line: 76, baseType: !3289, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3754, file: !3723, line: 77, baseType: !3758, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3750, file: !3723, line: 83, baseType: !777, size: 256, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3722, file: !3723, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3722, file: !3723, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3722, file: !3723, line: 138, baseType: !7, size: 32, offset: 1056)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3722, file: !3723, line: 139, baseType: !268, size: 128, offset: 1088)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3722, file: !3723, line: 142, baseType: !2937, size: 512, offset: 1216)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3722, file: !3723, line: 143, baseType: !2917, size: 64, offset: 1728)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3722, file: !3723, line: 150, baseType: !3767, size: 256, offset: 1792)
!3767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3768, size: 256, elements: !2189)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3723, line: 38, size: 128, elements: !3769)
!3769 = !{!3770, !3771}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3768, file: !3723, line: 39, baseType: !332, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3768, file: !3723, line: 40, baseType: !332, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3722, file: !3723, line: 156, baseType: !3773, size: 192, offset: 2048)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3723, line: 66, size: 192, elements: !3774)
!3774 = !{!3775}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3773, file: !3723, line: 67, baseType: !3776, size: 192)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3723, line: 47, size: 192, elements: !3777)
!3777 = !{!3778, !3779, !3780}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3776, file: !3723, line: 48, baseType: !639, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3776, file: !3723, line: 49, baseType: !639, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3776, file: !3723, line: 50, baseType: !639, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3722, file: !3723, line: 160, baseType: !3617, size: 640, offset: 2240)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3722, file: !3723, line: 163, baseType: !3783, size: 256, offset: 2880)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 256, elements: !926)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3722, file: !3723, line: 169, baseType: !905, size: 64, offset: 3136)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3722, file: !3723, line: 172, baseType: !101, size: 32, offset: 3200)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3722, file: !3723, line: 174, baseType: !3787, size: 64, offset: 3264)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3723, line: 174, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3722, file: !3723, line: 185, baseType: !3790, size: 64, offset: 3328)
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !301, line: 860, baseType: !3791)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 853, size: 64, elements: !3792)
!3792 = !{!3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3791, file: !301, line: 858, baseType: !300, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3791, file: !301, line: 859, baseType: !357, size: 32, offset: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3722, file: !3723, line: 186, baseType: !332, size: 64, offset: 3392)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3722, file: !3723, line: 186, baseType: !332, size: 64, offset: 3456)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3722, file: !3723, line: 186, baseType: !332, size: 64, offset: 3520)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3722, file: !3723, line: 186, baseType: !332, size: 64, offset: 3584)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3722, file: !3723, line: 187, baseType: !332, size: 64, offset: 3648)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3722, file: !3723, line: 188, baseType: !332, size: 64, offset: 3712)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3722, file: !3723, line: 189, baseType: !3605, size: 192, offset: 3776)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3722, file: !3723, line: 190, baseType: !463, size: 64, offset: 3968)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3722, file: !3723, line: 190, baseType: !463, size: 64, offset: 4032)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3722, file: !3723, line: 190, baseType: !463, size: 64, offset: 4096)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3722, file: !3723, line: 190, baseType: !463, size: 64, offset: 4160)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3722, file: !3723, line: 191, baseType: !463, size: 64, offset: 4224)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3722, file: !3723, line: 191, baseType: !463, size: 64, offset: 4288)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3722, file: !3723, line: 191, baseType: !463, size: 64, offset: 4352)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3722, file: !3723, line: 191, baseType: !463, size: 64, offset: 4416)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3722, file: !3723, line: 192, baseType: !463, size: 64, offset: 4480)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3722, file: !3723, line: 192, baseType: !463, size: 64, offset: 4544)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3722, file: !3723, line: 192, baseType: !463, size: 64, offset: 4608)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3722, file: !3723, line: 192, baseType: !463, size: 64, offset: 4672)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3722, file: !3723, line: 193, baseType: !463, size: 64, offset: 4736)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3722, file: !3723, line: 193, baseType: !463, size: 64, offset: 4800)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3722, file: !3723, line: 194, baseType: !3817, size: 448, offset: 4864)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3818, line: 12, size: 448, elements: !3819)
!3818 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3819 = !{!3820, !3821, !3822, !3823, !3824, !3825, !3826}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3817, file: !3818, line: 15, baseType: !332, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3817, file: !3818, line: 17, baseType: !332, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3817, file: !3818, line: 19, baseType: !332, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3817, file: !3818, line: 21, baseType: !332, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3817, file: !3818, line: 29, baseType: !332, size: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3817, file: !3818, line: 35, baseType: !332, size: 64, offset: 320)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3817, file: !3818, line: 44, baseType: !332, size: 64, offset: 384)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3722, file: !3723, line: 202, baseType: !334, size: 64, offset: 5312)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3722, file: !3723, line: 213, baseType: !3829, size: 2048, offset: 5376)
!3829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3830, size: 2048, elements: !3640)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3831, line: 43, size: 128, elements: !3832)
!3831 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3832 = !{!3833, !3834}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3830, file: !3831, line: 44, baseType: !594, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3830, file: !3831, line: 45, baseType: !594, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3722, file: !3723, line: 216, baseType: !3836, size: 448, offset: 7424)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3723, line: 30, size: 448, elements: !3837)
!3837 = !{!3838, !3839, !3840, !3841, !3842, !3843, !3844}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3836, file: !3723, line: 31, baseType: !101, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3836, file: !3723, line: 32, baseType: !582, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3836, file: !3723, line: 33, baseType: !463, size: 64, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3836, file: !3723, line: 34, baseType: !332, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3836, file: !3723, line: 34, baseType: !332, size: 64, offset: 256)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3836, file: !3723, line: 35, baseType: !463, size: 64, offset: 320)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3836, file: !3723, line: 35, baseType: !463, size: 64, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3722, file: !3723, line: 219, baseType: !3846, size: 64, offset: 7872)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3723, line: 219, flags: DIFlagFwdDecl)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3722, file: !3723, line: 222, baseType: !7, size: 32, offset: 7936)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3722, file: !3723, line: 223, baseType: !3850, size: 64, offset: 8000)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3723, line: 223, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3722, file: !3723, line: 230, baseType: !763, size: 8, offset: 8064)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3722, file: !3723, line: 231, baseType: !1015, size: 16, offset: 8080)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3722, file: !3723, line: 232, baseType: !1015, size: 16, offset: 8096)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3722, file: !3723, line: 234, baseType: !825, size: 64, offset: 8128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3722, file: !3723, line: 237, baseType: !871, size: 256, offset: 8192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3722, file: !3723, line: 243, baseType: !633, size: 320, offset: 8448)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3290, file: !1420, line: 1111, baseType: !3859, size: 64, offset: 15424)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3723, line: 20, size: 16640, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3860, file: !3723, line: 21, baseType: !357, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3860, file: !3723, line: 22, baseType: !909, size: 32, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3860, file: !3723, line: 23, baseType: !930, size: 192, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3860, file: !3723, line: 24, baseType: !3866, size: 16384, offset: 256)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3867, size: 16384, elements: !552)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1132, line: 51, size: 256, elements: !3868)
!3868 = !{!3869}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3867, file: !1132, line: 52, baseType: !3870, size: 256)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1132, line: 37, size: 256, elements: !3871)
!3871 = !{!3872, !3879, !3880, !3884}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3870, file: !1132, line: 39, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3874, line: 83, baseType: !3875)
!3874 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3874, line: 82, baseType: !3877)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !101}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3870, file: !1132, line: 40, baseType: !463, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3870, file: !1132, line: 46, baseType: !3881, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3874, line: 86, baseType: !3882)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3874, line: 85, baseType: !2404)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3870, file: !1132, line: 48, baseType: !3737, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3290, file: !1420, line: 1112, baseType: !3737, size: 64, offset: 15488)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3290, file: !1420, line: 1113, baseType: !3737, size: 64, offset: 15552)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3290, file: !1420, line: 1115, baseType: !3737, size: 64, offset: 15616)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3290, file: !1420, line: 1116, baseType: !3733, size: 192, offset: 15680)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3290, file: !1420, line: 1117, baseType: !463, size: 64, offset: 15872)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3290, file: !1420, line: 1118, baseType: !592, size: 64, offset: 15936)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3290, file: !1420, line: 1119, baseType: !7, size: 32, offset: 16000)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3290, file: !1420, line: 1121, baseType: !770, size: 64, offset: 16064)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3290, file: !1420, line: 1125, baseType: !3894, size: 64, offset: 16128)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1420, line: 43, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3290, file: !1420, line: 1127, baseType: !259, size: 32, offset: 16192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3290, file: !1420, line: 1128, baseType: !7, size: 32, offset: 16224)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3290, file: !1420, line: 1130, baseType: !3899, size: 128, offset: 16256)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3900, line: 37, size: 128, elements: !3901)
!3900 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3901 = !{!3902, !3903, !3904}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3899, file: !3900, line: 38, baseType: !101, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3899, file: !3900, line: 39, baseType: !377, size: 32, offset: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3899, file: !3900, line: 40, baseType: !3905, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3900, line: 24, flags: DIFlagFwdDecl)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3290, file: !1420, line: 1131, baseType: !3908, size: 256, offset: 16384)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3909, line: 12, size: 256, elements: !3910)
!3909 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3910 = !{!3911, !3912, !3913, !3914}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3908, file: !3909, line: 13, baseType: !443, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3908, file: !3909, line: 14, baseType: !463, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3908, file: !3909, line: 15, baseType: !463, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3908, file: !3909, line: 16, baseType: !763, size: 8, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3290, file: !1420, line: 1134, baseType: !332, size: 64, offset: 16640)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3290, file: !1420, line: 1135, baseType: !332, size: 64, offset: 16704)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3290, file: !1420, line: 1138, baseType: !357, size: 32, offset: 16768)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3290, file: !1420, line: 1141, baseType: !652, size: 32, offset: 16800)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3290, file: !1420, line: 1143, baseType: !3920, size: 64, offset: 16832)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1420, line: 735, size: 64, elements: !3921)
!3921 = !{!3922}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3920, file: !1420, line: 736, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3290, file: !1420, line: 1147, baseType: !657, size: 128, offset: 16896)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3290, file: !1420, line: 1149, baseType: !3289, size: 64, offset: 17024)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3290, file: !1420, line: 1151, baseType: !3927, size: 64, offset: 17088)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1420, line: 1151, flags: DIFlagFwdDecl)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3290, file: !1420, line: 1188, baseType: !243, size: 64, offset: 17152)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3290, file: !1420, line: 1191, baseType: !3931, size: 64, offset: 17216)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1420, line: 44, flags: DIFlagFwdDecl)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3290, file: !1420, line: 1194, baseType: !3934, size: 64, offset: 17280)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1420, line: 45, flags: DIFlagFwdDecl)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3290, file: !1420, line: 1197, baseType: !3937, size: 64, offset: 17344)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1420, line: 61, flags: DIFlagFwdDecl)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3290, file: !1420, line: 1199, baseType: !3940, size: 64, offset: 17408)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2711, line: 99, size: 128, elements: !3942)
!3942 = !{!3943, !3944, !3945}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3941, file: !2711, line: 100, baseType: !637, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3941, file: !2711, line: 101, baseType: !377, size: 32, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3941, file: !2711, line: 103, baseType: !256, size: 16, offset: 96)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3290, file: !1420, line: 1202, baseType: !3947, size: 64, offset: 17472)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1420, line: 48, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3290, file: !1420, line: 1205, baseType: !463, size: 64, offset: 17536)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3290, file: !1420, line: 1206, baseType: !3951, size: 64, offset: 17600)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1132, line: 14, baseType: !3953)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1132, line: 12, size: 384, elements: !3954)
!3954 = !{!3955}
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !3953, file: !1132, line: 13, baseType: !3956, size: 384)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3953, file: !1132, line: 13, size: 384, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3956, file: !1132, line: 13, baseType: !101, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3956, file: !1132, line: 13, baseType: !101, size: 32, offset: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3956, file: !1132, line: 13, baseType: !101, size: 32, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3956, file: !1132, line: 13, baseType: !3962, size: 256, offset: 128)
!3962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3963, line: 37, size: 256, elements: !3964)
!3963 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3964 = !{!3965, !3970, !3983, !3989, !3998, !4025, !4030}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3962, file: !3963, line: 42, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !3963, line: 39, size: 64, elements: !3967)
!3967 = !{!3968, !3969}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3966, file: !3963, line: 40, baseType: !3582, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3966, file: !3963, line: 41, baseType: !265, size: 32, offset: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3962, file: !3963, line: 50, baseType: !3971, size: 192)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !3963, line: 45, size: 192, elements: !3972)
!3972 = !{!3973, !3975, !3976, !3982}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3971, file: !3963, line: 46, baseType: !3974, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !266, line: 95, baseType: !101)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3971, file: !3963, line: 47, baseType: !101, size: 32, offset: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3971, file: !3963, line: 48, baseType: !3977, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3963, line: 11, baseType: !3978)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3963, line: 8, size: 64, elements: !3979)
!3979 = !{!3980, !3981}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3978, file: !3963, line: 9, baseType: !101, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3978, file: !3963, line: 10, baseType: !243, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3971, file: !3963, line: 49, baseType: !101, size: 32, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3962, file: !3963, line: 57, baseType: !3984, size: 128)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !3963, line: 53, size: 128, elements: !3985)
!3985 = !{!3986, !3987, !3988}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3984, file: !3963, line: 54, baseType: !3582, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3984, file: !3963, line: 55, baseType: !265, size: 32, offset: 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3984, file: !3963, line: 56, baseType: !3977, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3962, file: !3963, line: 66, baseType: !3990, size: 256)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !3963, line: 60, size: 256, elements: !3991)
!3991 = !{!3992, !3993, !3994, !3995, !3997}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3990, file: !3963, line: 61, baseType: !3582, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3990, file: !3963, line: 62, baseType: !265, size: 32, offset: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3990, file: !3963, line: 63, baseType: !101, size: 32, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3990, file: !3963, line: 64, baseType: !3996, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !266, line: 94, baseType: !581)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3990, file: !3963, line: 65, baseType: !3996, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3962, file: !3963, line: 105, baseType: !3999, size: 256)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !3963, line: 69, size: 256, elements: !4000)
!4000 = !{!4001, !4002}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3999, file: !3963, line: 70, baseType: !243, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, scope: !3999, file: !3963, line: 79, baseType: !4003, size: 192, offset: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3999, file: !3963, line: 79, size: 192, elements: !4004)
!4004 = !{!4005, !4006, !4007, !4014, !4019}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4003, file: !3963, line: 81, baseType: !101, size: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4003, file: !3963, line: 86, baseType: !1015, size: 16)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4003, file: !3963, line: 92, baseType: !4008, size: 192)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4003, file: !3963, line: 88, size: 192, elements: !4009)
!4009 = !{!4010, !4012, !4013}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4008, file: !3963, line: 89, baseType: !4011, size: 64)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 64, elements: !2978)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4008, file: !3963, line: 90, baseType: !243, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4008, file: !3963, line: 91, baseType: !243, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4003, file: !3963, line: 97, baseType: !4015, size: 96)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4003, file: !3963, line: 94, size: 96, elements: !4016)
!4016 = !{!4017, !4018}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4015, file: !3963, line: 95, baseType: !4011, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4015, file: !3963, line: 96, baseType: !241, size: 32, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4003, file: !3963, line: 103, baseType: !4020, size: 128)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4003, file: !3963, line: 99, size: 128, elements: !4021)
!4021 = !{!4022, !4023, !4024}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4020, file: !3963, line: 100, baseType: !463, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4020, file: !3963, line: 101, baseType: !241, size: 32, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4020, file: !3963, line: 102, baseType: !241, size: 32, offset: 96)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3962, file: !3963, line: 111, baseType: !4026, size: 128)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !3963, line: 108, size: 128, elements: !4027)
!4027 = !{!4028, !4029}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4026, file: !3963, line: 109, baseType: !582, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4026, file: !3963, line: 110, baseType: !101, size: 32, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3962, file: !3963, line: 118, baseType: !4031, size: 128)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !3963, line: 114, size: 128, elements: !4032)
!4032 = !{!4033, !4034, !4035}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4031, file: !3963, line: 115, baseType: !243, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4031, file: !3963, line: 116, baseType: !101, size: 32, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4031, file: !3963, line: 117, baseType: !7, size: 32, offset: 96)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3290, file: !1420, line: 1208, baseType: !3817, size: 448, offset: 17664)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3290, file: !1420, line: 1215, baseType: !332, size: 64, offset: 18112)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3290, file: !1420, line: 1217, baseType: !332, size: 64, offset: 18176)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3290, file: !1420, line: 1219, baseType: !332, size: 64, offset: 18240)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3290, file: !1420, line: 1223, baseType: !4041, size: 64, offset: 18304)
!4041 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4042, line: 99, baseType: !4043)
!4042 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4042, line: 99, size: 64, elements: !4044)
!4044 = !{!4045}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4043, file: !4042, line: 99, baseType: !3452, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3290, file: !1420, line: 1225, baseType: !300, size: 32, offset: 18368)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3290, file: !1420, line: 1226, baseType: !101, size: 32, offset: 18400)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3290, file: !1420, line: 1227, baseType: !101, size: 32, offset: 18432)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3290, file: !1420, line: 1231, baseType: !4050, size: 64, offset: 18496)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1420, line: 1231, flags: DIFlagFwdDecl)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3290, file: !1420, line: 1233, baseType: !268, size: 128, offset: 18560)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3290, file: !1420, line: 1240, baseType: !4054, size: 64, offset: 18688)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1420, line: 62, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3290, file: !1420, line: 1242, baseType: !4057, size: 64, offset: 18752)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1420, line: 1242, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3290, file: !1420, line: 1244, baseType: !268, size: 128, offset: 18816)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3290, file: !1420, line: 1245, baseType: !4061, size: 64, offset: 18944)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1420, line: 51, flags: DIFlagFwdDecl)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3290, file: !1420, line: 1246, baseType: !871, size: 256, offset: 19008)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3290, file: !1420, line: 1247, baseType: !7, size: 32, offset: 19264)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3290, file: !1420, line: 1250, baseType: !4066, size: 64, offset: 19328)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1420, line: 57, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3290, file: !1420, line: 1251, baseType: !871, size: 256, offset: 19392)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3290, file: !1420, line: 1252, baseType: !268, size: 128, offset: 19648)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3290, file: !1420, line: 1259, baseType: !1692, size: 64, offset: 19776)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3290, file: !1420, line: 1260, baseType: !1015, size: 16, offset: 19840)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3290, file: !1420, line: 1261, baseType: !1015, size: 16, offset: 19856)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3290, file: !1420, line: 1314, baseType: !4074, size: 64, offset: 19904)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4076, line: 62, size: 256, align: 256, elements: !4077)
!4076 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4084}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4075, file: !4076, line: 75, baseType: !241, size: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4075, file: !4076, line: 90, baseType: !241, size: 32, offset: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4075, file: !4076, line: 112, baseType: !333, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4075, file: !4076, line: 132, baseType: !241, size: 32, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4075, file: !4076, line: 140, baseType: !241, size: 32, offset: 160)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4075, file: !4076, line: 149, baseType: !241, size: 32, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4075, file: !4076, line: 154, baseType: !4085, offset: 224)
!4085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, elements: !945)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3290, file: !1420, line: 1315, baseType: !328, size: 32, offset: 19968)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3290, file: !1420, line: 1316, baseType: !328, size: 32, offset: 20000)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3290, file: !1420, line: 1321, baseType: !463, size: 64, offset: 20032)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3290, file: !1420, line: 1325, baseType: !101, size: 32, offset: 20096)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3290, file: !1420, line: 1326, baseType: !101, size: 32, offset: 20128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3290, file: !1420, line: 1327, baseType: !101, size: 32, offset: 20160)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3290, file: !1420, line: 1328, baseType: !101, size: 32, offset: 20192)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3290, file: !1420, line: 1329, baseType: !767, size: 128, align: 64, offset: 20224)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3290, file: !1420, line: 1332, baseType: !4095, size: 128, offset: 20352)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4096, line: 51, size: 128, elements: !4097)
!4096 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4097 = !{!4098, !4103, !4104}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4095, file: !4096, line: 60, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4100, line: 7, size: 64, elements: !4101)
!4100 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4101 = !{!4102}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4099, file: !4100, line: 12, baseType: !3449, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4095, file: !4096, line: 63, baseType: !763, size: 8, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4095, file: !4096, line: 70, baseType: !763, size: 8, offset: 72)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3290, file: !1420, line: 1335, baseType: !1418, size: 64, offset: 20480)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3290, file: !1420, line: 1337, baseType: !4107, size: 128, offset: 20544)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4096, line: 39, size: 128, elements: !4108)
!4108 = !{!4109, !4110, !4111}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4107, file: !4096, line: 40, baseType: !682, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4107, file: !4096, line: 42, baseType: !241, size: 32, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4107, file: !4096, line: 43, baseType: !241, size: 32, offset: 96)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3290, file: !1420, line: 1340, baseType: !4113, size: 64, offset: 20672)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1420, line: 69, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3290, file: !1420, line: 1351, baseType: !101, size: 32, offset: 20736)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3290, file: !1420, line: 1352, baseType: !101, size: 32, offset: 20768)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3290, file: !1420, line: 1354, baseType: !463, size: 64, offset: 20800)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3290, file: !1420, line: 1364, baseType: !332, size: 64, offset: 20864)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3290, file: !1420, line: 1365, baseType: !332, size: 64, offset: 20928)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3290, file: !1420, line: 1412, baseType: !463, size: 64, offset: 20992)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3290, file: !1420, line: 1453, baseType: !2706, size: 64, offset: 21056)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3290, file: !1420, line: 1457, baseType: !4123, size: 64, offset: 21120)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !152, line: 61, size: 576, elements: !4125)
!4125 = !{!4126, !4127, !4146, !4149, !4150, !4183, !4193}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4124, file: !152, line: 62, baseType: !151, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !152, line: 64, baseType: !4128, size: 192, offset: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4124, file: !152, line: 64, size: 192, elements: !4129)
!4129 = !{!4130, !4141}
!4130 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !152, line: 65, baseType: !4131, size: 192)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4128, file: !152, line: 65, size: 192, elements: !4132)
!4132 = !{!4133, !4140}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4131, file: !152, line: 66, baseType: !4134, size: 128)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4135, line: 50, size: 128, elements: !4136)
!4135 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4136 = !{!4137, !4138, !4139}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4134, file: !4135, line: 52, baseType: !463, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4134, file: !4135, line: 54, baseType: !7, size: 32, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4134, file: !4135, line: 55, baseType: !7, size: 32, offset: 96)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4131, file: !152, line: 67, baseType: !463, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !152, line: 70, baseType: !4142, size: 192)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4128, file: !152, line: 70, size: 192, elements: !4143)
!4143 = !{!4144, !4145}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4142, file: !152, line: 71, baseType: !767, size: 128, align: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4142, file: !152, line: 72, baseType: !463, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4124, file: !152, line: 76, baseType: !4147, size: 64, offset: 256)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !152, line: 76, flags: DIFlagFwdDecl)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4124, file: !152, line: 77, baseType: !463, size: 64, offset: 320)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4124, file: !152, line: 79, baseType: !4151, size: 64, offset: 384)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4135, line: 25, size: 256, elements: !4153)
!4153 = !{!4154, !4160, !4164}
!4154 = !DIDerivedType(tag: DW_TAG_member, scope: !4152, file: !4135, line: 26, baseType: !4155, size: 128)
!4155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4152, file: !4135, line: 26, size: 128, elements: !4156)
!4156 = !{!4157, !4159}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4155, file: !4135, line: 27, baseType: !4158, size: 128)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 128, elements: !3640)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4155, file: !4135, line: 28, baseType: !4158, size: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4152, file: !4135, line: 31, baseType: !4161, size: 64, offset: 128)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4163)
!4163 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4135, line: 23, flags: DIFlagFwdDecl)
!4164 = !DIDerivedType(tag: DW_TAG_member, scope: !4152, file: !4135, line: 33, baseType: !4165, size: 64, offset: 192)
!4165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4152, file: !4135, line: 33, size: 64, elements: !4166)
!4166 = !{!4167, !4173, !4178}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4165, file: !4135, line: 38, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4165, file: !4135, line: 34, size: 64, elements: !4169)
!4169 = !{!4170, !4171, !4172}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4168, file: !4135, line: 35, baseType: !987, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4168, file: !4135, line: 36, baseType: !385, size: 8, offset: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4168, file: !4135, line: 37, baseType: !385, size: 8, offset: 40)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4165, file: !4135, line: 42, baseType: !4174, size: 16)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4165, file: !4135, line: 39, size: 16, elements: !4175)
!4175 = !{!4176, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4174, file: !4135, line: 40, baseType: !385, size: 8)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4174, file: !4135, line: 41, baseType: !385, size: 8, offset: 8)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4165, file: !4135, line: 46, baseType: !4179, size: 16)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4165, file: !4135, line: 43, size: 16, elements: !4180)
!4180 = !{!4181, !4182}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4179, file: !4135, line: 44, baseType: !385, size: 8)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4179, file: !4135, line: 45, baseType: !385, size: 8, offset: 8)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4124, file: !152, line: 81, baseType: !4184, size: 64, offset: 448)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !152, line: 85, size: 384, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4185, file: !152, line: 86, baseType: !4147, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4185, file: !152, line: 87, baseType: !463, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4185, file: !152, line: 88, baseType: !463, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4185, file: !152, line: 89, baseType: !463, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4185, file: !152, line: 90, baseType: !763, size: 8, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4185, file: !152, line: 92, baseType: !4184, size: 64, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4124, file: !152, line: 82, baseType: !7, size: 32, offset: 512)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3290, file: !1420, line: 1463, baseType: !4195, offset: 21184)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1420, line: 739, elements: !846)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3290, file: !1420, line: 1470, baseType: !767, size: 128, align: 64, offset: 21184)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3290, file: !1420, line: 1471, baseType: !909, size: 32, offset: 21312)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3290, file: !1420, line: 1472, baseType: !101, size: 32, offset: 21344)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3290, file: !1420, line: 1474, baseType: !3289, size: 64, offset: 21376)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3290, file: !1420, line: 1475, baseType: !2299, size: 320, offset: 21440)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3290, file: !1420, line: 1478, baseType: !4202, size: 64, offset: 21760)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1420, line: 1478, flags: DIFlagFwdDecl)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3290, file: !1420, line: 1482, baseType: !909, size: 32, offset: 21824)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3290, file: !1420, line: 1489, baseType: !243, size: 64, offset: 21888)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3290, file: !1420, line: 1504, baseType: !243, size: 64, offset: 21952)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3290, file: !1420, line: 1505, baseType: !333, size: 64, offset: 22016)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3290, file: !1420, line: 1506, baseType: !332, size: 64, offset: 22080)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3290, file: !1420, line: 1507, baseType: !333, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3290, file: !1420, line: 1508, baseType: !333, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3290, file: !1420, line: 1509, baseType: !333, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3290, file: !1420, line: 1510, baseType: !767, size: 128, align: 64, offset: 22208)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3290, file: !1420, line: 1511, baseType: !101, size: 32, offset: 22336)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3290, file: !1420, line: 1515, baseType: !4215, size: 64, offset: 22400)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !861, line: 56, size: 64, elements: !4216)
!4216 = !{!4217}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4215, file: !861, line: 57, baseType: !864, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3290, file: !1420, line: 1518, baseType: !4215, size: 64, offset: 22464)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3290, file: !1420, line: 1528, baseType: !767, size: 128, align: 64, offset: 22528)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3290, file: !1420, line: 1552, baseType: !4221, size: 35328, offset: 23040)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4222, line: 430, size: 35328, elements: !4223)
!4222 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4223 = !{!4224, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4253, !4254, !4255, !4256, !4257, !4258, !4261, !4262, !4263, !4264}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4221, file: !4222, line: 432, baseType: !4225, size: 192)
!4225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4226, size: 192, elements: !548)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4227, line: 16, size: 64, elements: !4228)
!4227 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4226, file: !4227, line: 17, baseType: !392, size: 16)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4226, file: !4227, line: 18, baseType: !392, size: 16, offset: 16)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4226, file: !4227, line: 19, baseType: !392, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4226, file: !4227, line: 19, baseType: !392, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4226, file: !4227, line: 19, baseType: !392, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4226, file: !4227, line: 19, baseType: !392, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4226, file: !4227, line: 19, baseType: !392, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4226, file: !4227, line: 20, baseType: !392, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4226, file: !4227, line: 20, baseType: !392, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4226, file: !4227, line: 20, baseType: !392, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4226, file: !4227, line: 20, baseType: !392, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4226, file: !4227, line: 20, baseType: !392, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4226, file: !4227, line: 20, baseType: !392, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4221, file: !4222, line: 436, baseType: !463, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4221, file: !4222, line: 440, baseType: !256, size: 16, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4221, file: !4222, line: 441, baseType: !256, size: 16, offset: 272)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4221, file: !4222, line: 442, baseType: !256, size: 16, offset: 288)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4221, file: !4222, line: 443, baseType: !256, size: 16, offset: 304)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4221, file: !4222, line: 447, baseType: !463, size: 64, offset: 320)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4221, file: !4222, line: 448, baseType: !463, size: 64, offset: 384)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4221, file: !4222, line: 459, baseType: !4250, size: 256, offset: 448)
!4250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4251, size: 256, elements: !926)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4222, line: 428, flags: DIFlagFwdDecl)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4221, file: !4222, line: 461, baseType: !463, size: 64, offset: 704)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4221, file: !4222, line: 463, baseType: !463, size: 64, offset: 768)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4221, file: !4222, line: 465, baseType: !463, size: 64, offset: 832)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4221, file: !4222, line: 466, baseType: !463, size: 64, offset: 896)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4221, file: !4222, line: 467, baseType: !463, size: 64, offset: 960)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4221, file: !4222, line: 473, baseType: !4259, size: 64, offset: 1024)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4222, line: 10, flags: DIFlagFwdDecl)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4221, file: !4222, line: 480, baseType: !463, size: 64, offset: 1088)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4221, file: !4222, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4221, file: !4222, line: 491, baseType: !328, size: 32, offset: 1184)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4221, file: !4222, line: 501, baseType: !4265, size: 33792, offset: 1536)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4266, line: 448, size: 33792, elements: !4267)
!4266 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4267 = !{!4268, !4269, !4270, !4432, !4433, !4439, !4440}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4265, file: !4266, line: 461, baseType: !7, size: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4265, file: !4266, line: 468, baseType: !463, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4265, file: !4266, line: 476, baseType: !4271, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4266, line: 356, size: 33280, align: 512, elements: !4273)
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4272, file: !4266, line: 358, baseType: !7, size: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4272, file: !4266, line: 361, baseType: !7, size: 32, offset: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4272, file: !4266, line: 364, baseType: !332, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4272, file: !4266, line: 367, baseType: !332, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4272, file: !4266, line: 370, baseType: !332, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4272, file: !4266, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4272, file: !4266, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4272, file: !4266, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4272, file: !4266, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4272, file: !4266, line: 397, baseType: !4284, size: 32768, offset: 512)
!4284 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4266, line: 348, size: 32768, elements: !4285)
!4285 = !{!4286, !4301, !4338, !4415, !4428}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4284, file: !4266, line: 349, baseType: !4287, size: 896)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4266, line: 12, size: 896, elements: !4288)
!4288 = !{!4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4300}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4287, file: !4266, line: 13, baseType: !328, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4287, file: !4266, line: 14, baseType: !328, size: 32, offset: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4287, file: !4266, line: 15, baseType: !328, size: 32, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4287, file: !4266, line: 16, baseType: !328, size: 32, offset: 96)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4287, file: !4266, line: 17, baseType: !328, size: 32, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4287, file: !4266, line: 18, baseType: !328, size: 32, offset: 160)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4287, file: !4266, line: 19, baseType: !328, size: 32, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4287, file: !4266, line: 22, baseType: !4297, size: 640, offset: 224)
!4297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 640, elements: !4298)
!4298 = !{!4299}
!4299 = !DISubrange(count: 20)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4287, file: !4266, line: 25, baseType: !328, size: 32, offset: 864)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4284, file: !4266, line: 350, baseType: !4302, size: 4096, align: 128)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4266, line: 34, size: 4096, align: 128, elements: !4303)
!4303 = !{!4304, !4305, !4306, !4307, !4308, !4323, !4324, !4325, !4327, !4329, !4333}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4302, file: !4266, line: 35, baseType: !392, size: 16)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4302, file: !4266, line: 36, baseType: !392, size: 16, offset: 16)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4302, file: !4266, line: 37, baseType: !392, size: 16, offset: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4302, file: !4266, line: 38, baseType: !392, size: 16, offset: 48)
!4308 = !DIDerivedType(tag: DW_TAG_member, scope: !4302, file: !4266, line: 39, baseType: !4309, size: 128, offset: 64)
!4309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4302, file: !4266, line: 39, size: 128, elements: !4310)
!4310 = !{!4311, !4316}
!4311 = !DIDerivedType(tag: DW_TAG_member, scope: !4309, file: !4266, line: 40, baseType: !4312, size: 128)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4309, file: !4266, line: 40, size: 128, elements: !4313)
!4313 = !{!4314, !4315}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4312, file: !4266, line: 41, baseType: !332, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4312, file: !4266, line: 42, baseType: !332, size: 64, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, scope: !4309, file: !4266, line: 44, baseType: !4317, size: 128)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4309, file: !4266, line: 44, size: 128, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4317, file: !4266, line: 45, baseType: !328, size: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4317, file: !4266, line: 46, baseType: !328, size: 32, offset: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4317, file: !4266, line: 47, baseType: !328, size: 32, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4317, file: !4266, line: 48, baseType: !328, size: 32, offset: 96)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4302, file: !4266, line: 51, baseType: !328, size: 32, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4302, file: !4266, line: 52, baseType: !328, size: 32, offset: 224)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4302, file: !4266, line: 55, baseType: !4326, size: 1024, offset: 256)
!4326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 1024, elements: !343)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4302, file: !4266, line: 58, baseType: !4328, size: 2048, offset: 1280)
!4328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 2048, elements: !552)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4302, file: !4266, line: 60, baseType: !4330, size: 384, offset: 3328)
!4330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 384, elements: !4331)
!4331 = !{!4332}
!4332 = !DISubrange(count: 12)
!4333 = !DIDerivedType(tag: DW_TAG_member, scope: !4302, file: !4266, line: 62, baseType: !4334, size: 384, offset: 3712)
!4334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4302, file: !4266, line: 62, size: 384, elements: !4335)
!4335 = !{!4336, !4337}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4334, file: !4266, line: 63, baseType: !4330, size: 384)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4334, file: !4266, line: 64, baseType: !4330, size: 384)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4284, file: !4266, line: 351, baseType: !4339, size: 1088)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4266, line: 79, size: 1088, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4414}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4339, file: !4266, line: 80, baseType: !328, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4339, file: !4266, line: 81, baseType: !328, size: 32, offset: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4339, file: !4266, line: 82, baseType: !328, size: 32, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4339, file: !4266, line: 83, baseType: !328, size: 32, offset: 96)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4339, file: !4266, line: 84, baseType: !328, size: 32, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4339, file: !4266, line: 85, baseType: !328, size: 32, offset: 160)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4339, file: !4266, line: 86, baseType: !328, size: 32, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4339, file: !4266, line: 88, baseType: !4297, size: 640, offset: 224)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4339, file: !4266, line: 89, baseType: !385, size: 8, offset: 864)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4339, file: !4266, line: 90, baseType: !385, size: 8, offset: 872)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4339, file: !4266, line: 91, baseType: !385, size: 8, offset: 880)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4339, file: !4266, line: 92, baseType: !385, size: 8, offset: 888)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4339, file: !4266, line: 93, baseType: !385, size: 8, offset: 896)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4339, file: !4266, line: 94, baseType: !385, size: 8, offset: 904)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4339, file: !4266, line: 95, baseType: !4356, size: 64, offset: 960)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4358, line: 11, size: 128, elements: !4359)
!4358 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4359 = !{!4360, !4361}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4357, file: !4358, line: 12, baseType: !582, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4357, file: !4358, line: 13, baseType: !4362, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4364, line: 103, size: 1344, elements: !4365)
!4364 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4394, !4395, !4396}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4363, file: !4364, line: 109, baseType: !463, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4363, file: !4364, line: 110, baseType: !463, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4363, file: !4364, line: 111, baseType: !463, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4363, file: !4364, line: 112, baseType: !463, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4363, file: !4364, line: 113, baseType: !463, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4363, file: !4364, line: 114, baseType: !463, size: 64, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4363, file: !4364, line: 117, baseType: !463, size: 64, offset: 384)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4363, file: !4364, line: 118, baseType: !463, size: 64, offset: 448)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4363, file: !4364, line: 119, baseType: !463, size: 64, offset: 512)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4363, file: !4364, line: 120, baseType: !463, size: 64, offset: 576)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4363, file: !4364, line: 121, baseType: !463, size: 64, offset: 640)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4363, file: !4364, line: 122, baseType: !463, size: 64, offset: 704)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4363, file: !4364, line: 123, baseType: !463, size: 64, offset: 768)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4363, file: !4364, line: 124, baseType: !463, size: 64, offset: 832)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4363, file: !4364, line: 125, baseType: !463, size: 64, offset: 896)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4363, file: !4364, line: 139, baseType: !463, size: 64, offset: 960)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4363, file: !4364, line: 142, baseType: !463, size: 64, offset: 1024)
!4383 = !DIDerivedType(tag: DW_TAG_member, scope: !4363, file: !4364, line: 144, baseType: !4384, size: 64, offset: 1088)
!4384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4363, file: !4364, line: 144, size: 64, elements: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4384, file: !4364, line: 146, baseType: !392, size: 16)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4384, file: !4364, line: 148, baseType: !332, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4384, file: !4364, line: 150, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4364, line: 59, size: 64, elements: !4390)
!4390 = !{!4391, !4392, !4393}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4389, file: !4364, line: 61, baseType: !332, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4389, file: !4364, line: 63, baseType: !332, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4389, file: !4364, line: 65, baseType: !332, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4363, file: !4364, line: 153, baseType: !463, size: 64, offset: 1152)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4363, file: !4364, line: 154, baseType: !463, size: 64, offset: 1216)
!4396 = !DIDerivedType(tag: DW_TAG_member, scope: !4363, file: !4364, line: 156, baseType: !4397, size: 64, offset: 1280)
!4397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4363, file: !4364, line: 156, size: 64, elements: !4398)
!4398 = !{!4399, !4400, !4401}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4397, file: !4364, line: 158, baseType: !392, size: 16)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4397, file: !4364, line: 160, baseType: !332, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4397, file: !4364, line: 162, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4364, line: 69, size: 64, elements: !4403)
!4403 = !{!4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4402, file: !4364, line: 71, baseType: !332, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4402, file: !4364, line: 73, baseType: !332, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4402, file: !4364, line: 75, baseType: !332, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4402, file: !4364, line: 77, baseType: !332, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4402, file: !4364, line: 80, baseType: !332, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4402, file: !4364, line: 83, baseType: !332, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4402, file: !4364, line: 86, baseType: !332, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4402, file: !4364, line: 88, baseType: !332, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4402, file: !4364, line: 93, baseType: !332, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4402, file: !4364, line: 100, baseType: !332, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4339, file: !4266, line: 96, baseType: !328, size: 32, offset: 1024)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4284, file: !4266, line: 352, baseType: !4416, size: 4608, align: 512)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4266, line: 333, size: 4608, align: 512, elements: !4417)
!4417 = !{!4418, !4419, !4426}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4416, file: !4266, line: 334, baseType: !4302, size: 4096, align: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4416, file: !4266, line: 335, baseType: !4420, size: 512, offset: 4096)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4266, line: 312, size: 512, elements: !4421)
!4421 = !{!4422, !4423, !4424}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4420, file: !4266, line: 313, baseType: !332, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4420, file: !4266, line: 314, baseType: !332, size: 64, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4420, file: !4266, line: 315, baseType: !4425, size: 384, offset: 128)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 384, elements: !1033)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4416, file: !4266, line: 336, baseType: !4427, offset: 4608)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, elements: !945)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4284, file: !4266, line: 353, baseType: !4429, size: 32768)
!4429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 32768, elements: !4430)
!4430 = !{!4431}
!4431 = !DISubrange(count: 4096)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4265, file: !4266, line: 484, baseType: !4271, size: 64, offset: 192)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4265, file: !4266, line: 491, baseType: !4434, size: 128, offset: 256)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4266, line: 404, size: 128, elements: !4435)
!4435 = !{!4436, !4437, !4438}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4434, file: !4266, line: 424, baseType: !332, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4434, file: !4266, line: 432, baseType: !7, size: 32, offset: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4434, file: !4266, line: 440, baseType: !7, size: 32, offset: 96)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4265, file: !4266, line: 498, baseType: !4434, size: 128, offset: 384)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4265, file: !4266, line: 508, baseType: !4272, size: 33280, align: 512, offset: 512)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3272, file: !3273, line: 16, baseType: !930, size: 192, offset: 512)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3272, file: !3273, line: 17, baseType: !377, size: 32, offset: 704)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !455, file: !64, line: 1240, baseType: !243, size: 64, offset: 6912)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !455, file: !64, line: 1243, baseType: !328, size: 32, offset: 6976)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !455, file: !64, line: 1245, baseType: !1003, size: 64, offset: 7040)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !455, file: !64, line: 1246, baseType: !1003, size: 64, offset: 7104)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !455, file: !64, line: 1248, baseType: !241, size: 32, offset: 7168)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !455, file: !64, line: 1249, baseType: !4449, size: 64, offset: 7232)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !455, file: !64, line: 1252, baseType: !4452, size: 256, offset: 7296)
!4452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 256, elements: !343)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !455, file: !64, line: 1253, baseType: !4454, size: 128, offset: 7552)
!4454 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4455, line: 21, baseType: !4456)
!4455 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4455, line: 19, size: 128, elements: !4457)
!4457 = !{!4458}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4456, file: !4455, line: 20, baseType: !4459, size: 128)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 128, elements: !3640)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !455, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !455, file: !64, line: 1261, baseType: !871, size: 256, offset: 7744)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !455, file: !64, line: 1267, baseType: !417, size: 64, offset: 8000)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !455, file: !64, line: 1269, baseType: !397, size: 64, offset: 8064)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !455, file: !64, line: 1271, baseType: !4465, size: 448, offset: 8128)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2540, line: 63, size: 448, elements: !4466)
!4466 = !{!4467, !4472, !4473, !4474, !4475, !4476, !4477}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4465, file: !2540, line: 64, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!463, !4471, !2538}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4465, file: !2540, line: 66, baseType: !4468, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4465, file: !2540, line: 69, baseType: !582, size: 64, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4465, file: !2540, line: 70, baseType: !101, size: 32, offset: 192)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4465, file: !2540, line: 71, baseType: !7, size: 32, offset: 224)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4465, file: !2540, line: 74, baseType: !268, size: 128, offset: 256)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4465, file: !2540, line: 85, baseType: !4478, size: 64, offset: 384)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !455, file: !64, line: 1274, baseType: !637, size: 64, offset: 8576)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !455, file: !64, line: 1280, baseType: !637, size: 64, offset: 8640)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !455, file: !64, line: 1283, baseType: !101, size: 32, offset: 8704)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !455, file: !64, line: 1286, baseType: !1471, size: 32, offset: 8736)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !455, file: !64, line: 1289, baseType: !2361, size: 64, offset: 8768)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !455, file: !64, line: 1290, baseType: !917, size: 64, offset: 8832)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !455, file: !64, line: 1297, baseType: !1127, size: 64, offset: 8896)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !455, file: !64, line: 1304, baseType: !4487, size: 64, offset: 8960)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4488, line: 49, size: 64, elements: !4489)
!4488 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4489 = !{!4490}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4487, file: !4488, line: 50, baseType: !4491, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4488, line: 41, size: 512, align: 512, elements: !4493)
!4493 = !{!4494, !4495, !4500}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4492, file: !4488, line: 43, baseType: !357, size: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4492, file: !4488, line: 45, baseType: !4496, size: 192, offset: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4488, line: 29, size: 192, elements: !4497)
!4497 = !{!4498, !4499}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4496, file: !4488, line: 30, baseType: !268, size: 128)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4496, file: !4488, line: 32, baseType: !582, size: 64, offset: 128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4492, file: !4488, line: 46, baseType: !582, size: 64, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !455, file: !64, line: 1305, baseType: !4487, size: 64, offset: 9024)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !455, file: !64, line: 1306, baseType: !767, size: 128, align: 64, offset: 9088)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !455, file: !64, line: 1307, baseType: !1601, size: 256, offset: 9216)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !455, file: !64, line: 1309, baseType: !871, size: 256, offset: 9472)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !455, file: !64, line: 1314, baseType: !101, size: 32, offset: 9728)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !455, file: !64, line: 1317, baseType: !357, size: 32, align: 512, offset: 10240)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !455, file: !64, line: 1318, baseType: !268, size: 128, offset: 10304)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !455, file: !64, line: 1320, baseType: !357, size: 32, offset: 10432)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !455, file: !64, line: 1321, baseType: !268, size: 128, offset: 10496)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !449, file: !450, line: 73, baseType: !101, size: 32, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !449, file: !450, line: 74, baseType: !4512, size: 64, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !969, line: 42, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !399, file: !296, line: 141, baseType: !4516, size: 64, offset: 704)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!101, !2600, !763}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !399, file: !296, line: 142, baseType: !4520, size: 64, offset: 768)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!294, !294, !4523}
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !295, file: !296, line: 96, baseType: !454, size: 64, offset: 832)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !295, file: !296, line: 97, baseType: !463, size: 64, offset: 896)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !295, file: !296, line: 98, baseType: !243, size: 64, offset: 960)
!4528 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !296, line: 100, baseType: !4529, size: 128, offset: 1024)
!4529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !296, line: 100, size: 128, elements: !4530)
!4530 = !{!4531, !4532}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4529, file: !296, line: 101, baseType: !268, size: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4529, file: !296, line: 102, baseType: !4533, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !295, file: !296, line: 104, baseType: !268, size: 128, offset: 1152)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !295, file: !296, line: 105, baseType: !268, size: 128, offset: 1280)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !295, file: !296, line: 113, baseType: !4537, size: 128, offset: 1408)
!4537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !296, line: 109, size: 128, elements: !4538)
!4538 = !{!4539, !4540, !4541}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4537, file: !296, line: 110, baseType: !921, size: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4537, file: !296, line: 111, baseType: !310, size: 128)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4537, file: !296, line: 112, baseType: !767, size: 128, align: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !288, file: !64, line: 1968, baseType: !4543, size: 64, offset: 64)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!417, !294, !340, !4546}
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4548, line: 10, size: 128, elements: !4549)
!4548 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4549 = !{!4550, !4551}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4547, file: !4548, line: 11, baseType: !1931, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4547, file: !4548, line: 12, baseType: !243, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !288, file: !64, line: 1969, baseType: !4553, size: 64, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!101, !4512, !340, !101}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !288, file: !64, line: 1970, baseType: !4557, size: 64, offset: 192)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!282, !340, !101, !763}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !288, file: !64, line: 1972, baseType: !4561, size: 64, offset: 256)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!101, !294, !443, !101}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !288, file: !64, line: 1974, baseType: !4565, size: 64, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!101, !4512, !340, !294, !255, !763}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !288, file: !64, line: 1976, baseType: !4569, size: 64, offset: 384)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!101, !294, !340, !294}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !288, file: !64, line: 1977, baseType: !4573, size: 64, offset: 448)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!101, !340, !294}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !288, file: !64, line: 1978, baseType: !4577, size: 64, offset: 512)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!101, !4512, !340, !294, !417}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !288, file: !64, line: 1980, baseType: !4581, size: 64, offset: 576)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!101, !4512, !340, !294, !255}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !288, file: !64, line: 1982, baseType: !4573, size: 64, offset: 640)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !288, file: !64, line: 1983, baseType: !4586, size: 64, offset: 704)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!101, !4512, !340, !294, !255, !459}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !288, file: !64, line: 1985, baseType: !4590, size: 64, offset: 768)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!101, !4512, !340, !294, !340, !294, !7}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !288, file: !64, line: 1987, baseType: !4594, size: 64, offset: 832)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!101, !4512, !294, !4597}
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !4599)
!4599 = !{!4600, !4601, !4602, !4612, !4621, !4622, !4627, !4628, !4629}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4598, file: !64, line: 227, baseType: !7, size: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4598, file: !64, line: 228, baseType: !255, size: 16, offset: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, scope: !4598, file: !64, line: 241, baseType: !4603, size: 32, offset: 64)
!4603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4598, file: !64, line: 241, size: 32, elements: !4604)
!4604 = !{!4605, !4606}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4603, file: !64, line: 242, baseType: !259, size: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4603, file: !64, line: 243, baseType: !4607, size: 32)
!4607 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4608, line: 16, baseType: !4609)
!4608 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4608, line: 14, size: 32, elements: !4610)
!4610 = !{!4611}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4609, file: !4608, line: 15, baseType: !264, size: 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, scope: !4598, file: !64, line: 245, baseType: !4613, size: 32, offset: 96)
!4613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4598, file: !64, line: 245, size: 32, elements: !4614)
!4614 = !{!4615, !4616}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4613, file: !64, line: 246, baseType: !274, size: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4613, file: !64, line: 247, baseType: !4617, size: 32)
!4617 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4608, line: 20, baseType: !4618)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4608, line: 18, size: 32, elements: !4619)
!4619 = !{!4620}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4618, file: !4608, line: 19, baseType: !278, size: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4598, file: !64, line: 249, baseType: !465, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4598, file: !64, line: 250, baseType: !4623, size: 128, offset: 192)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1004, line: 13, size: 128, elements: !4624)
!4624 = !{!4625, !4626}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4623, file: !1004, line: 14, baseType: !1003, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4623, file: !1004, line: 15, baseType: !582, size: 64, offset: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4598, file: !64, line: 251, baseType: !4623, size: 128, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4598, file: !64, line: 252, baseType: !4623, size: 128, offset: 448)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4598, file: !64, line: 259, baseType: !853, size: 64, offset: 576)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !288, file: !64, line: 1988, baseType: !4631, size: 64, offset: 896)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!101, !4512, !2600, !4634, !328, !7}
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4636, line: 22, size: 1280, elements: !4637)
!4636 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4637 = !{!4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4635, file: !4636, line: 23, baseType: !328, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4635, file: !4636, line: 24, baseType: !255, size: 16, offset: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4635, file: !4636, line: 25, baseType: !7, size: 32, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4635, file: !4636, line: 26, baseType: !1011, size: 32, offset: 96)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4635, file: !4636, line: 27, baseType: !332, size: 64, offset: 128)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4635, file: !4636, line: 28, baseType: !332, size: 64, offset: 192)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4635, file: !4636, line: 41, baseType: !332, size: 64, offset: 256)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4635, file: !4636, line: 42, baseType: !459, size: 32, offset: 320)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4635, file: !4636, line: 43, baseType: !459, size: 32, offset: 352)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4635, file: !4636, line: 44, baseType: !259, size: 32, offset: 384)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4635, file: !4636, line: 45, baseType: !274, size: 32, offset: 416)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4635, file: !4636, line: 46, baseType: !465, size: 64, offset: 448)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4635, file: !4636, line: 47, baseType: !4623, size: 128, offset: 512)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4635, file: !4636, line: 48, baseType: !4623, size: 128, offset: 640)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4635, file: !4636, line: 49, baseType: !4623, size: 128, offset: 768)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4635, file: !4636, line: 50, baseType: !4623, size: 128, offset: 896)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4635, file: !4636, line: 51, baseType: !332, size: 64, offset: 1024)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4635, file: !4636, line: 52, baseType: !332, size: 64, offset: 1088)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4635, file: !4636, line: 53, baseType: !328, size: 32, offset: 1152)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4635, file: !4636, line: 54, baseType: !328, size: 32, offset: 1184)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4635, file: !4636, line: 55, baseType: !332, size: 64, offset: 1216)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !288, file: !64, line: 1990, baseType: !4660, size: 64, offset: 960)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!579, !294, !443, !592}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !288, file: !64, line: 1991, baseType: !4664, size: 64, offset: 1024)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!101, !340, !4667, !332, !332}
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !288, file: !64, line: 1993, baseType: !4670, size: 64, offset: 1088)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!101, !340, !101}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !288, file: !64, line: 1994, baseType: !4674, size: 64, offset: 1152)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!101, !340, !294, !853, !7, !255}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !288, file: !64, line: 1997, baseType: !4678, size: 64, offset: 1216)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!101, !4512, !340, !853, !255}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !288, file: !64, line: 1999, baseType: !4682, size: 64, offset: 1280)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!282, !4512, !294, !101}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !288, file: !64, line: 2001, baseType: !4686, size: 64, offset: 1344)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!101, !4512, !294, !282, !101}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !288, file: !64, line: 2003, baseType: !4690, size: 64, offset: 1408)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!101, !4512, !294, !4693}
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !288, file: !64, line: 2005, baseType: !4696, size: 64, offset: 1472)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!101, !294, !4693}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !288, file: !64, line: 2006, baseType: !4700, size: 64, offset: 1536)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!4703, !340}
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !4705)
!4705 = !{!4706, !4707}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4704, file: !64, line: 3193, baseType: !625, size: 128)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4704, file: !64, line: 3194, baseType: !328, size: 32, offset: 128)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !252, file: !64, line: 655, baseType: !454, size: 64, offset: 448)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !252, file: !64, line: 656, baseType: !620, size: 64, offset: 512)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !252, file: !64, line: 659, baseType: !243, size: 64, offset: 576)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !252, file: !64, line: 663, baseType: !463, size: 64, offset: 640)
!4712 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !64, line: 671, baseType: !4713, size: 32, offset: 704)
!4713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !64, line: 671, size: 32, elements: !4714)
!4714 = !{!4715, !4717}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4713, file: !64, line: 672, baseType: !4716, size: 32)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4713, file: !64, line: 673, baseType: !7, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !252, file: !64, line: 675, baseType: !459, size: 32, offset: 736)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !252, file: !64, line: 676, baseType: !465, size: 64, offset: 768)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !252, file: !64, line: 677, baseType: !4623, size: 128, offset: 832)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !252, file: !64, line: 678, baseType: !4623, size: 128, offset: 960)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !252, file: !64, line: 679, baseType: !4623, size: 128, offset: 1088)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !252, file: !64, line: 680, baseType: !357, size: 32, offset: 1216)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !252, file: !64, line: 681, baseType: !256, size: 16, offset: 1248)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !252, file: !64, line: 682, baseType: !385, size: 8, offset: 1264)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !252, file: !64, line: 683, baseType: !385, size: 8, offset: 1272)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !252, file: !64, line: 684, baseType: !2673, size: 64, offset: 1280)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !252, file: !64, line: 691, baseType: !463, size: 64, offset: 1344)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !252, file: !64, line: 692, baseType: !633, size: 320, offset: 1408)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !252, file: !64, line: 694, baseType: !463, size: 64, offset: 1728)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !252, file: !64, line: 695, baseType: !463, size: 64, offset: 1792)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !252, file: !64, line: 697, baseType: !921, size: 128, offset: 1856)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !252, file: !64, line: 698, baseType: !268, size: 128, offset: 1984)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !252, file: !64, line: 707, baseType: !268, size: 128, offset: 2112)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !252, file: !64, line: 708, baseType: !268, size: 128, offset: 2240)
!4736 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !64, line: 709, baseType: !4737, size: 128, offset: 2368)
!4737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !64, line: 709, size: 128, elements: !4738)
!4738 = !{!4739, !4740}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4737, file: !64, line: 710, baseType: !917, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4737, file: !64, line: 711, baseType: !767, size: 128, align: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !252, file: !64, line: 713, baseType: !639, size: 64, offset: 2496)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !252, file: !64, line: 714, baseType: !639, size: 64, offset: 2560)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !252, file: !64, line: 715, baseType: !377, size: 32, offset: 2624)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !252, file: !64, line: 716, baseType: !377, size: 32, offset: 2656)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !252, file: !64, line: 717, baseType: !377, size: 32, offset: 2688)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !252, file: !64, line: 719, baseType: !377, size: 32, offset: 2720)
!4747 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !64, line: 721, baseType: !4748, size: 64, offset: 2752)
!4748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !64, line: 721, size: 64, elements: !4749)
!4749 = !{!4750, !4751}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4748, file: !64, line: 722, baseType: !1163, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4748, file: !64, line: 723, baseType: !2429, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !252, file: !64, line: 725, baseType: !4753, size: 64, offset: 2816)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 725, flags: DIFlagFwdDecl)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !252, file: !64, line: 726, baseType: !621, size: 1536, align: 64, offset: 2880)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !252, file: !64, line: 727, baseType: !268, size: 128, offset: 4416)
!4757 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !64, line: 728, baseType: !4758, size: 64, offset: 4544)
!4758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !64, line: 728, size: 64, elements: !4759)
!4759 = !{!4760, !4761, !4764, !4765}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4758, file: !64, line: 729, baseType: !1418, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4758, file: !64, line: 730, baseType: !4762, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 730, flags: DIFlagFwdDecl)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4758, file: !64, line: 731, baseType: !443, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4758, file: !64, line: 732, baseType: !7, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !252, file: !64, line: 735, baseType: !241, size: 32, offset: 4608)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !252, file: !64, line: 738, baseType: !241, size: 32, offset: 4640)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !252, file: !64, line: 739, baseType: !4449, size: 64, offset: 4672)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !252, file: !64, line: 750, baseType: !243, size: 64, offset: 4736)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !249, file: !159, line: 127, baseType: !4771, size: 64, offset: 4800)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4773)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_request_ops", file: !159, line: 208, size: 576, elements: !4774)
!4774 = !{!4775, !4864, !4868, !4872, !4873, !4877, !4881, !4885, !4890}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !4773, file: !159, line: 209, baseType: !4776, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!101, !4779, !853}
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_request", file: !159, line: 177, size: 1536, elements: !4781)
!4781 = !{!4782, !4783, !4784, !4785, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4780, file: !159, line: 178, baseType: !1601, size: 256)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !4780, file: !159, line: 179, baseType: !340, size: 64, offset: 256)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4780, file: !159, line: 180, baseType: !620, size: 64, offset: 320)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "cache_resources", scope: !4780, file: !159, line: 181, baseType: !4786, size: 256, offset: 384)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_resources", file: !159, line: 137, size: 256, elements: !4787)
!4787 = !{!4788, !4845, !4846, !4847, !4848}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4786, file: !159, line: 138, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4791)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_ops", file: !159, line: 235, size: 512, elements: !4792)
!4792 = !{!4793, !4798, !4806, !4810, !4815, !4832, !4836, !4841}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "end_operation", scope: !4791, file: !159, line: 237, baseType: !4794, size: 64)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{null, !4797}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4791, file: !159, line: 240, baseType: !4799, size: 64, offset: 64)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!101, !4797, !465, !1290, !158, !4802, !243}
!4802 = !DIDerivedType(tag: DW_TAG_typedef, name: "netfs_io_terminated_t", file: !159, line: 119, baseType: !4803)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{null, !243, !579, !763}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4791, file: !159, line: 248, baseType: !4807, size: 64, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!101, !4797, !465, !1290, !4802, !243}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !4791, file: !159, line: 255, baseType: !4811, size: 64, offset: 192)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{null, !4797, !1176, !4814, !465}
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_read", scope: !4791, file: !159, line: 261, baseType: !4816, size: 64, offset: 256)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!164, !4819, !465}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_subrequest", file: !159, line: 148, size: 576, elements: !4821)
!4821 = !{!4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "rreq", scope: !4820, file: !159, line: 149, baseType: !4779, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "rreq_link", scope: !4820, file: !159, line: 150, baseType: !268, size: 128, offset: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4820, file: !159, line: 151, baseType: !465, size: 64, offset: 192)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4820, file: !159, line: 152, baseType: !592, size: 64, offset: 256)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "transferred", scope: !4820, file: !159, line: 153, baseType: !592, size: 64, offset: 320)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4820, file: !159, line: 154, baseType: !909, size: 32, offset: 384)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4820, file: !159, line: 155, baseType: !1015, size: 16, offset: 416)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "debug_index", scope: !4820, file: !159, line: 156, baseType: !256, size: 16, offset: 432)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4820, file: !159, line: 157, baseType: !164, size: 8, offset: 448)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4820, file: !159, line: 158, baseType: !463, size: 64, offset: 512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_write", scope: !4791, file: !159, line: 267, baseType: !4833, size: 64, offset: 320)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!101, !4797, !1176, !4814, !465, !763}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_ondemand_read", scope: !4791, file: !159, line: 274, baseType: !4837, size: 64, offset: 384)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!164, !4797, !465, !4814, !465, !2390, !4840}
!4840 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !238, line: 22, baseType: !594)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "query_occupancy", scope: !4791, file: !159, line: 282, baseType: !4842, size: 64, offset: 448)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!101, !4797, !465, !592, !592, !1176, !4814}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv", scope: !4786, file: !159, line: 139, baseType: !243, size: 64, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv2", scope: !4786, file: !159, line: 140, baseType: !243, size: 64, offset: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4786, file: !159, line: 141, baseType: !7, size: 32, offset: 192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "inval_counter", scope: !4786, file: !159, line: 142, baseType: !7, size: 32, offset: 224)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !4780, file: !159, line: 182, baseType: !268, size: 128, offset: 640)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_priv", scope: !4780, file: !159, line: 183, baseType: !243, size: 64, offset: 768)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4780, file: !159, line: 184, baseType: !7, size: 32, offset: 832)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_outstanding", scope: !4780, file: !159, line: 185, baseType: !377, size: 32, offset: 864)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_copy_ops", scope: !4780, file: !159, line: 186, baseType: !377, size: 32, offset: 896)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "submitted", scope: !4780, file: !159, line: 187, baseType: !592, size: 64, offset: 960)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4780, file: !159, line: 188, baseType: !592, size: 64, offset: 1024)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4780, file: !159, line: 189, baseType: !1015, size: 16, offset: 1088)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !4780, file: !159, line: 190, baseType: !171, size: 8, offset: 1104)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !4780, file: !159, line: 191, baseType: !465, size: 64, offset: 1152)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4780, file: !159, line: 192, baseType: !465, size: 64, offset: 1216)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "no_unlock_folio", scope: !4780, file: !159, line: 193, baseType: !463, size: 64, offset: 1280)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4780, file: !159, line: 194, baseType: !909, size: 32, offset: 1344)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4780, file: !159, line: 195, baseType: !463, size: 64, offset: 1408)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_ops", scope: !4780, file: !159, line: 202, baseType: !4771, size: 64, offset: 1472)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "free_request", scope: !4773, file: !159, line: 210, baseType: !4865, size: 64, offset: 64)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{null, !4779}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cache_operation", scope: !4773, file: !159, line: 211, baseType: !4869, size: 64, offset: 128)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!101, !4779}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !4773, file: !159, line: 213, baseType: !4865, size: 64, offset: 192)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "clamp_length", scope: !4773, file: !159, line: 214, baseType: !4874, size: 64, offset: 256)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!763, !4819}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "issue_read", scope: !4773, file: !159, line: 215, baseType: !4878, size: 64, offset: 320)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{null, !4819}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "is_still_valid", scope: !4773, file: !159, line: 216, baseType: !4882, size: 64, offset: 384)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!763, !4779}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "check_write_begin", scope: !4773, file: !159, line: 217, baseType: !4886, size: 64, offset: 448)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!101, !853, !465, !7, !4889, !1434}
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4773, file: !159, line: 219, baseType: !4865, size: 64, offset: 512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "remote_i_size", scope: !249, file: !159, line: 131, baseType: !465, size: 64, offset: 4864)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !245, file: !246, line: 138, baseType: !4893, size: 128, offset: 4928)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_qid", file: !220, line: 363, size: 128, elements: !4894)
!4894 = !{!4895, !4896, !4897}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4893, file: !220, line: 364, baseType: !385, size: 8)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4893, file: !220, line: 365, baseType: !328, size: 32, offset: 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !4893, file: !220, line: 366, baseType: !332, size: 64, offset: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "cache_validity", scope: !245, file: !246, line: 139, baseType: !7, size: 32, offset: 5056)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "v_mutex", scope: !245, file: !246, line: 140, baseType: !871, size: 256, offset: 5120)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !920)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !925)
!4904 = !{!0, !4905, !4907}
!4905 = !DIGlobalVariableExpression(var: !4906, expr: !DIExpression())
!4906 = distinct !DIGlobalVariable(name: "v9fs_dir_operations_dotl", scope: !2, file: !3, line: 247, type: !1164, isLocal: false, isDefinition: true)
!4907 = !DIGlobalVariableExpression(var: !4908, expr: !DIExpression())
!4908 = distinct !DIGlobalVariable(scope: null, file: !210, line: 480, type: !4909, isLocal: true, isDefinition: true)
!4909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 168, elements: !4910)
!4910 = !{!4911}
!4911 = !DISubrange(count: 21)
!4912 = !{i32 7, !"Dwarf Version", i32 5}
!4913 = !{i32 2, !"Debug Info Version", i32 3}
!4914 = !{i32 1, !"wchar_size", i32 2}
!4915 = !{i32 8, !"cf-protection-branch", i32 1}
!4916 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4917 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4918 = !{i32 1, !"Code Model", i32 2}
!4919 = !{i32 1, !"override-stack-alignment", i32 8}
!4920 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4921 = distinct !DISubprogram(name: "v9fs_dir_release", scope: !3, file: !3, line: 205, type: !1386, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4922)
!4922 = !{!4923, !4924, !4925, !4926, !4977, !4978, !4979, !4980}
!4923 = !DILocalVariable(name: "inode", arg: 1, scope: !4921, file: !3, line: 205, type: !340)
!4924 = !DILocalVariable(name: "filp", arg: 2, scope: !4921, file: !3, line: 205, type: !853)
!4925 = !DILocalVariable(name: "v9inode", scope: !4921, file: !3, line: 207, type: !244)
!4926 = !DILocalVariable(name: "fid", scope: !4921, file: !3, line: 208, type: !4927)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_fid", file: !177, line: 148, size: 704, elements: !4929)
!4929 = !{!4930, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !4928, file: !177, line: 149, baseType: !4931, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_client", file: !177, line: 102, size: 1408, elements: !4933)
!4933 = !{!4934, !4935, !4936, !4937, !4940, !4941, !4942, !4946, !4959, !4966, !4967}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4932, file: !177, line: 103, baseType: !357, size: 32)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "msize", scope: !4932, file: !177, line: 104, baseType: !7, size: 32, offset: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !4932, file: !177, line: 105, baseType: !338, size: 8, offset: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "trans_mod", scope: !4932, file: !177, line: 106, baseType: !4938, size: 64, offset: 128)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DICompositeType(tag: DW_TAG_structure_type, name: "p9_trans_module", file: !177, line: 106, flags: DIFlagFwdDecl)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4932, file: !177, line: 107, baseType: !176, size: 32, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "trans", scope: !4932, file: !177, line: 108, baseType: !243, size: 64, offset: 256)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "fcall_cache", scope: !4932, file: !177, line: 109, baseType: !4943, size: 64, offset: 320)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4945, line: 325, flags: DIFlagFwdDecl)
!4945 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "trans_opts", scope: !4932, file: !177, line: 121, baseType: !4947, size: 64, offset: 384)
!4947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4932, file: !177, line: 111, size: 64, elements: !4948)
!4948 = !{!4949, !4954}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4947, file: !177, line: 115, baseType: !4950, size: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4947, file: !177, line: 112, size: 64, elements: !4951)
!4951 = !{!4952, !4953}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "rfd", scope: !4950, file: !177, line: 113, baseType: !101, size: 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !4950, file: !177, line: 114, baseType: !101, size: 32, offset: 32)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !4947, file: !177, line: 120, baseType: !4955, size: 32)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4947, file: !177, line: 116, size: 32, elements: !4956)
!4956 = !{!4957, !4958}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4955, file: !177, line: 117, baseType: !392, size: 16)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "privport", scope: !4955, file: !177, line: 118, baseType: !763, size: 8, offset: 16)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "fids", scope: !4932, file: !177, line: 123, baseType: !4960, size: 192, offset: 448)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4961, line: 19, size: 192, elements: !4962)
!4961 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4962 = !{!4963, !4964, !4965}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4960, file: !4961, line: 20, baseType: !625, size: 128)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4960, file: !4961, line: 21, baseType: !7, size: 32, offset: 128)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4960, file: !4961, line: 22, baseType: !7, size: 32, offset: 160)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !4932, file: !177, line: 124, baseType: !4960, size: 192, offset: 640)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4932, file: !177, line: 126, baseType: !3682, size: 520, offset: 832)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !4928, file: !177, line: 150, baseType: !328, size: 32, offset: 64)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4928, file: !177, line: 151, baseType: !909, size: 32, offset: 96)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4928, file: !177, line: 152, baseType: !101, size: 32, offset: 128)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !4928, file: !177, line: 153, baseType: !4893, size: 128, offset: 192)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "iounit", scope: !4928, file: !177, line: 154, baseType: !328, size: 32, offset: 320)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4928, file: !177, line: 155, baseType: !259, size: 32, offset: 352)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "rdir", scope: !4928, file: !177, line: 157, baseType: !243, size: 64, offset: 384)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "dlist", scope: !4928, file: !177, line: 159, baseType: !921, size: 128, offset: 448)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "ilist", scope: !4928, file: !177, line: 160, baseType: !921, size: 128, offset: 576)
!4977 = !DILocalVariable(name: "version", scope: !4921, file: !3, line: 209, type: !239)
!4978 = !DILocalVariable(name: "i_size", scope: !4921, file: !3, line: 210, type: !465)
!4979 = !DILocalVariable(name: "retval", scope: !4921, file: !3, line: 211, type: !101)
!4980 = !DILocalVariable(name: "put_err", scope: !4921, file: !3, line: 211, type: !101)
!4981 = !DILocation(line: 205, column: 36, scope: !4921)
!4982 = !DILocation(line: 205, column: 56, scope: !4921)
!4983 = !DILocation(line: 207, column: 2, scope: !4921)
!4984 = !DILocation(line: 207, column: 21, scope: !4921)
!4985 = !DILocation(line: 207, column: 38, scope: !4921)
!4986 = !DILocation(line: 207, column: 31, scope: !4921)
!4987 = !DILocation(line: 208, column: 2, scope: !4921)
!4988 = !DILocation(line: 208, column: 17, scope: !4921)
!4989 = !DILocation(line: 209, column: 2, scope: !4921)
!4990 = !DILocation(line: 209, column: 9, scope: !4921)
!4991 = !DILocation(line: 210, column: 2, scope: !4921)
!4992 = !DILocation(line: 210, column: 9, scope: !4921)
!4993 = !DILocation(line: 211, column: 2, scope: !4921)
!4994 = !DILocation(line: 211, column: 6, scope: !4921)
!4995 = !DILocation(line: 211, column: 18, scope: !4921)
!4996 = !DILocation(line: 213, column: 8, scope: !4921)
!4997 = !DILocation(line: 213, column: 14, scope: !4921)
!4998 = !DILocation(line: 213, column: 6, scope: !4921)
!4999 = !DILocation(line: 214, column: 2, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 214, column: 2)
!5001 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 214, column: 2)
!5002 = !DILocation(line: 214, column: 2, scope: !5001)
!5003 = !DILocation(line: 217, column: 6, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 217, column: 6)
!5005 = !DILocation(line: 217, column: 6, scope: !4921)
!5006 = !DILocation(line: 218, column: 8, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 218, column: 7)
!5008 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 217, column: 11)
!5009 = !DILocation(line: 218, column: 32, scope: !5007)
!5010 = !DILocation(line: 218, column: 36, scope: !5007)
!5011 = !DILocation(line: 218, column: 42, scope: !5007)
!5012 = !DILocation(line: 218, column: 49, scope: !5007)
!5013 = !DILocation(line: 218, column: 7, scope: !5008)
!5014 = !DILocation(line: 219, column: 32, scope: !5007)
!5015 = !DILocation(line: 219, column: 39, scope: !5007)
!5016 = !DILocation(line: 219, column: 13, scope: !5007)
!5017 = !DILocation(line: 219, column: 11, scope: !5007)
!5018 = !DILocation(line: 219, column: 4, scope: !5007)
!5019 = !DILocation(line: 221, column: 14, scope: !5008)
!5020 = !DILocation(line: 221, column: 21, scope: !5008)
!5021 = !DILocation(line: 221, column: 3, scope: !5008)
!5022 = !DILocation(line: 222, column: 14, scope: !5008)
!5023 = !DILocation(line: 222, column: 19, scope: !5008)
!5024 = !DILocation(line: 222, column: 3, scope: !5008)
!5025 = !DILocation(line: 223, column: 16, scope: !5008)
!5026 = !DILocation(line: 223, column: 23, scope: !5008)
!5027 = !DILocation(line: 223, column: 3, scope: !5008)
!5028 = !DILocation(line: 224, column: 24, scope: !5008)
!5029 = !DILocation(line: 224, column: 13, scope: !5008)
!5030 = !DILocation(line: 224, column: 11, scope: !5008)
!5031 = !DILocation(line: 225, column: 12, scope: !5008)
!5032 = !DILocation(line: 225, column: 19, scope: !5008)
!5033 = !DILocation(line: 225, column: 25, scope: !5008)
!5034 = !DILocation(line: 225, column: 34, scope: !5008)
!5035 = !DILocation(line: 225, column: 10, scope: !5008)
!5036 = !DILocation(line: 226, column: 2, scope: !5008)
!5037 = !DILocation(line: 228, column: 7, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 228, column: 6)
!5039 = !DILocation(line: 228, column: 13, scope: !5038)
!5040 = !DILocation(line: 228, column: 20, scope: !5038)
!5041 = !DILocation(line: 228, column: 6, scope: !4921)
!5042 = !DILocation(line: 229, column: 13, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 228, column: 36)
!5044 = !DILocation(line: 229, column: 11, scope: !5043)
!5045 = !DILocation(line: 230, column: 24, scope: !5043)
!5046 = !DILocation(line: 230, column: 12, scope: !5043)
!5047 = !DILocation(line: 230, column: 10, scope: !5043)
!5048 = !DILocation(line: 231, column: 42, scope: !5043)
!5049 = !DILocation(line: 231, column: 24, scope: !5043)
!5050 = !DILocation(line: 231, column: 3, scope: !5043)
!5051 = !DILocation(line: 233, column: 2, scope: !5043)
!5052 = !DILocation(line: 234, column: 42, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 233, column: 9)
!5054 = !DILocation(line: 234, column: 24, scope: !5053)
!5055 = !DILocation(line: 234, column: 3, scope: !5053)
!5056 = !DILocation(line: 236, column: 9, scope: !4921)
!5057 = !DILocation(line: 237, column: 1, scope: !4921)
!5058 = !DILocation(line: 236, column: 2, scope: !4921)
!5059 = distinct !DISubprogram(name: "V9FS_I", scope: !246, file: !246, line: 143, type: !5060, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5062)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!244, !4523}
!5062 = !{!5063, !5064}
!5063 = !DILocalVariable(name: "inode", arg: 1, scope: !5059, file: !246, line: 143, type: !4523)
!5064 = !DILocalVariable(name: "__mptr", scope: !5065, file: !246, line: 145, type: !243)
!5065 = distinct !DILexicalBlock(scope: !5059, file: !246, line: 145, column: 9)
!5066 = !DILocation(line: 143, column: 61, scope: !5059)
!5067 = !DILocation(line: 145, column: 9, scope: !5065)
!5068 = !DILocation(line: 145, column: 9, scope: !5059)
!5069 = !DILocation(line: 145, column: 2, scope: !5059)
!5070 = !DISubprogram(name: "filemap_fdatawrite", scope: !1203, file: !1203, line: 37, type: !5071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!101, !620}
!5073 = distinct !DISubprogram(name: "spin_lock", scope: !5074, file: !5074, line: 349, type: !5075, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5077)
!5074 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5075 = !DISubroutineType(types: !5076)
!5076 = !{null, !1743}
!5077 = !{!5078}
!5078 = !DILocalVariable(name: "lock", arg: 1, scope: !5073, file: !5074, line: 349, type: !1743)
!5079 = !DILocation(line: 349, column: 51, scope: !5073)
!5080 = !DILocation(line: 351, column: 2, scope: !5073)
!5081 = !DILocation(line: 352, column: 1, scope: !5073)
!5082 = distinct !DISubprogram(name: "hlist_del", scope: !5083, file: !5083, line: 992, type: !5084, scopeLine: 993, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5086)
!5083 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5084 = !DISubroutineType(types: !5085)
!5085 = !{null, !920}
!5086 = !{!5087}
!5087 = !DILocalVariable(name: "n", arg: 1, scope: !5082, file: !5083, line: 992, type: !920)
!5088 = !DILocation(line: 992, column: 49, scope: !5082)
!5089 = !DILocation(line: 994, column: 14, scope: !5082)
!5090 = !DILocation(line: 994, column: 2, scope: !5082)
!5091 = !DILocation(line: 995, column: 2, scope: !5082)
!5092 = !DILocation(line: 995, column: 5, scope: !5082)
!5093 = !DILocation(line: 995, column: 10, scope: !5082)
!5094 = !DILocation(line: 996, column: 2, scope: !5082)
!5095 = !DILocation(line: 996, column: 5, scope: !5082)
!5096 = !DILocation(line: 996, column: 11, scope: !5082)
!5097 = !DILocation(line: 997, column: 1, scope: !5082)
!5098 = distinct !DISubprogram(name: "spin_unlock", scope: !5074, file: !5074, line: 389, type: !5075, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5099)
!5099 = !{!5100}
!5100 = !DILocalVariable(name: "lock", arg: 1, scope: !5098, file: !5074, line: 389, type: !1743)
!5101 = !DILocation(line: 389, column: 53, scope: !5098)
!5102 = !DILocation(line: 391, column: 2, scope: !5098)
!5103 = !DILocation(line: 392, column: 1, scope: !5098)
!5104 = distinct !DISubprogram(name: "p9_fid_put", scope: !177, file: !177, line: 267, type: !5105, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5107)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!101, !4927}
!5107 = !{!5108}
!5108 = !DILocalVariable(name: "fid", arg: 1, scope: !5104, file: !177, line: 267, type: !4927)
!5109 = !DILocation(line: 267, column: 45, scope: !5104)
!5110 = !DILocation(line: 269, column: 7, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5104, file: !177, line: 269, column: 6)
!5112 = !DILocation(line: 269, column: 11, scope: !5111)
!5113 = !DILocation(line: 269, column: 21, scope: !5111)
!5114 = !DILocation(line: 269, column: 14, scope: !5111)
!5115 = !DILocation(line: 269, column: 6, scope: !5104)
!5116 = !DILocation(line: 270, column: 3, scope: !5111)
!5117 = !DILocation(line: 272, column: 6, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5104, file: !177, line: 272, column: 6)
!5119 = !DILocation(line: 272, column: 6, scope: !5104)
!5120 = !DILocation(line: 273, column: 23, scope: !5118)
!5121 = !DILocation(line: 273, column: 3, scope: !5118)
!5122 = !DILocation(line: 275, column: 30, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5104, file: !177, line: 275, column: 6)
!5124 = !DILocation(line: 275, column: 35, scope: !5123)
!5125 = !DILocation(line: 275, column: 7, scope: !5123)
!5126 = !DILocation(line: 275, column: 6, scope: !5104)
!5127 = !DILocation(line: 276, column: 3, scope: !5123)
!5128 = !DILocation(line: 278, column: 25, scope: !5104)
!5129 = !DILocation(line: 278, column: 9, scope: !5104)
!5130 = !DILocation(line: 278, column: 2, scope: !5104)
!5131 = !DILocation(line: 279, column: 1, scope: !5104)
!5132 = distinct !DISubprogram(name: "i_size_read", scope: !64, file: !64, line: 893, type: !5133, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5135)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!465, !4523}
!5135 = !{!5136}
!5136 = !DILocalVariable(name: "inode", arg: 1, scope: !5132, file: !64, line: 893, type: !4523)
!5137 = !DILocation(line: 893, column: 54, scope: !5132)
!5138 = !DILocation(line: 912, column: 9, scope: !5132)
!5139 = !DILocation(line: 912, column: 16, scope: !5132)
!5140 = !DILocation(line: 912, column: 2, scope: !5132)
!5141 = distinct !DISubprogram(name: "fscache_unuse_cookie", scope: !197, file: !197, line: 284, type: !5142, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5201)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !5144, !1562, !5199}
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fscache_cookie", file: !197, line: 102, size: 1408, elements: !5146)
!5146 = !{!5147, !5148, !5149, !5150, !5151, !5152, !5153, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5193}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5145, file: !197, line: 103, baseType: !909, size: 32)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "n_active", scope: !5145, file: !197, line: 104, baseType: !377, size: 32, offset: 32)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "n_accesses", scope: !5145, file: !197, line: 105, baseType: !377, size: 32, offset: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !5145, file: !197, line: 106, baseType: !7, size: 32, offset: 96)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "inval_counter", scope: !5145, file: !197, line: 107, baseType: !7, size: 32, offset: 128)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5145, file: !197, line: 108, baseType: !357, size: 32, offset: 160)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "volume", scope: !5145, file: !197, line: 109, baseType: !5154, size: 64, offset: 192)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fscache_volume", file: !197, line: 72, size: 1088, elements: !5156)
!5156 = !{!5157, !5158, !5159, !5160, !5161, !5162, !5164, !5165, !5166, !5167, !5170, !5171, !5172, !5173, !5174}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5155, file: !197, line: 73, baseType: !909, size: 32)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "n_cookies", scope: !5155, file: !197, line: 74, baseType: !377, size: 32, offset: 32)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "n_accesses", scope: !5155, file: !197, line: 75, baseType: !377, size: 32, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !5155, file: !197, line: 76, baseType: !7, size: 32, offset: 96)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "key_hash", scope: !5155, file: !197, line: 77, baseType: !7, size: 32, offset: 128)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5155, file: !197, line: 78, baseType: !5163, size: 64, offset: 192)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "proc_link", scope: !5155, file: !197, line: 79, baseType: !268, size: 128, offset: 256)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "hash_link", scope: !5155, file: !197, line: 80, baseType: !310, size: 128, offset: 384)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5155, file: !197, line: 81, baseType: !1601, size: 256, offset: 512)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !5155, file: !197, line: 82, baseType: !5168, size: 64, offset: 768)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DICompositeType(tag: DW_TAG_structure_type, name: "fscache_cache", file: !197, line: 82, flags: DIFlagFwdDecl)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv", scope: !5155, file: !197, line: 83, baseType: !243, size: 64, offset: 832)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5155, file: !197, line: 84, baseType: !357, size: 32, offset: 896)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5155, file: !197, line: 85, baseType: !463, size: 64, offset: 960)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "coherency_len", scope: !5155, file: !197, line: 91, baseType: !385, size: 8, offset: 1024)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "coherency", scope: !5155, file: !197, line: 92, baseType: !4427, offset: 1032)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv", scope: !5145, file: !197, line: 110, baseType: !243, size: 64, offset: 256)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "hash_link", scope: !5145, file: !197, line: 111, baseType: !310, size: 128, offset: 320)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "proc_link", scope: !5145, file: !197, line: 112, baseType: !268, size: 128, offset: 448)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "commit_link", scope: !5145, file: !197, line: 113, baseType: !268, size: 128, offset: 576)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5145, file: !197, line: 114, baseType: !1601, size: 256, offset: 704)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "object_size", scope: !5145, file: !197, line: 115, baseType: !465, size: 64, offset: 960)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "unused_at", scope: !5145, file: !197, line: 116, baseType: !463, size: 64, offset: 1024)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5145, file: !197, line: 117, baseType: !463, size: 64, offset: 1088)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5145, file: !197, line: 135, baseType: !196, size: 8, offset: 1152)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "advice", scope: !5145, file: !197, line: 136, baseType: !385, size: 8, offset: 1160)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !5145, file: !197, line: 137, baseType: !385, size: 8, offset: 1168)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "aux_len", scope: !5145, file: !197, line: 138, baseType: !385, size: 8, offset: 1176)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "key_hash", scope: !5145, file: !197, line: 139, baseType: !328, size: 32, offset: 1184)
!5188 = !DIDerivedType(tag: DW_TAG_member, scope: !5145, file: !197, line: 140, baseType: !5189, size: 128, offset: 1216)
!5189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5145, file: !197, line: 140, size: 128, elements: !5190)
!5190 = !{!5191, !5192}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5189, file: !197, line: 141, baseType: !243, size: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "inline_key", scope: !5189, file: !197, line: 142, baseType: !4158, size: 128)
!5193 = !DIDerivedType(tag: DW_TAG_member, scope: !5145, file: !197, line: 144, baseType: !5194, size: 64, offset: 1344)
!5194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5145, file: !197, line: 144, size: 64, elements: !5195)
!5195 = !{!5196, !5197}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !5194, file: !197, line: 145, baseType: !243, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "inline_aux", scope: !5194, file: !197, line: 146, baseType: !5198, size: 64)
!5198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 64, elements: !2978)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!5201 = !{!5202, !5203, !5204}
!5202 = !DILocalVariable(name: "cookie", arg: 1, scope: !5141, file: !197, line: 284, type: !5144)
!5203 = !DILocalVariable(name: "aux_data", arg: 2, scope: !5141, file: !197, line: 285, type: !1562)
!5204 = !DILocalVariable(name: "object_size", arg: 3, scope: !5141, file: !197, line: 286, type: !5199)
!5205 = !DILocation(line: 284, column: 64, scope: !5141)
!5206 = !DILocation(line: 285, column: 18, scope: !5141)
!5207 = !DILocation(line: 286, column: 20, scope: !5141)
!5208 = !DILocation(line: 290, column: 1, scope: !5141)
!5209 = distinct !DISubprogram(name: "v9fs_inode_cookie", scope: !246, file: !246, line: 148, type: !5210, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5212)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!5144, !244}
!5212 = !{!5213}
!5213 = !DILocalVariable(name: "v9inode", arg: 1, scope: !5209, file: !246, line: 148, type: !244)
!5214 = !DILocation(line: 148, column: 75, scope: !5209)
!5215 = !DILocation(line: 153, column: 2, scope: !5209)
!5216 = distinct !DISubprogram(name: "v9fs_dir_readdir", scope: !3, file: !3, line: 84, type: !1356, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5217)
!5217 = !{!5218, !5219, !5220, !5221, !5240, !5241, !5242, !5243, !5252, !5253, !5257}
!5218 = !DILocalVariable(name: "file", arg: 1, scope: !5216, file: !3, line: 84, type: !853)
!5219 = !DILocalVariable(name: "ctx", arg: 2, scope: !5216, file: !3, line: 84, type: !1358)
!5220 = !DILocalVariable(name: "over", scope: !5216, file: !3, line: 86, type: !763)
!5221 = !DILocalVariable(name: "st", scope: !5216, file: !3, line: 87, type: !5222)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_wstat", file: !220, line: 391, size: 832, elements: !5223)
!5223 = !{!5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5222, file: !220, line: 392, baseType: !392, size: 16)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5222, file: !220, line: 393, baseType: !392, size: 16, offset: 16)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5222, file: !220, line: 394, baseType: !328, size: 32, offset: 32)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !5222, file: !220, line: 395, baseType: !4893, size: 128, offset: 64)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5222, file: !220, line: 396, baseType: !328, size: 32, offset: 192)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5222, file: !220, line: 397, baseType: !328, size: 32, offset: 224)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5222, file: !220, line: 398, baseType: !328, size: 32, offset: 256)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5222, file: !220, line: 399, baseType: !332, size: 64, offset: 320)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5222, file: !220, line: 400, baseType: !417, size: 64, offset: 384)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5222, file: !220, line: 401, baseType: !417, size: 64, offset: 448)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5222, file: !220, line: 402, baseType: !417, size: 64, offset: 512)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "muid", scope: !5222, file: !220, line: 403, baseType: !417, size: 64, offset: 576)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !5222, file: !220, line: 404, baseType: !443, size: 64, offset: 640)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "n_uid", scope: !5222, file: !220, line: 405, baseType: !259, size: 32, offset: 704)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "n_gid", scope: !5222, file: !220, line: 406, baseType: !274, size: 32, offset: 736)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "n_muid", scope: !5222, file: !220, line: 407, baseType: !259, size: 32, offset: 768)
!5240 = !DILocalVariable(name: "err", scope: !5216, file: !3, line: 88, type: !101)
!5241 = !DILocalVariable(name: "fid", scope: !5216, file: !3, line: 89, type: !4927)
!5242 = !DILocalVariable(name: "buflen", scope: !5216, file: !3, line: 90, type: !101)
!5243 = !DILocalVariable(name: "rdir", scope: !5216, file: !3, line: 91, type: !5244)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_rdir", file: !3, line: 36, size: 64, elements: !5246)
!5246 = !{!5247, !5248, !5249}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5245, file: !3, line: 37, baseType: !101, size: 32)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5245, file: !3, line: 38, baseType: !101, size: 32, offset: 32)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5245, file: !3, line: 39, baseType: !5250, offset: 64)
!5250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5251, elements: !945)
!5251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !238, line: 108, baseType: !385)
!5252 = !DILocalVariable(name: "kvec", scope: !5216, file: !3, line: 92, type: !1325)
!5253 = !DILocalVariable(name: "to", scope: !5254, file: !3, line: 107, type: !1291)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 106, column: 33)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 106, column: 7)
!5256 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 105, column: 12)
!5257 = !DILocalVariable(name: "n", scope: !5254, file: !3, line: 108, type: !101)
!5258 = !DILocation(line: 84, column: 42, scope: !5216)
!5259 = !DILocation(line: 84, column: 68, scope: !5216)
!5260 = !DILocation(line: 86, column: 2, scope: !5216)
!5261 = !DILocation(line: 86, column: 7, scope: !5216)
!5262 = !DILocation(line: 87, column: 2, scope: !5216)
!5263 = !DILocation(line: 87, column: 18, scope: !5216)
!5264 = !DILocation(line: 88, column: 2, scope: !5216)
!5265 = !DILocation(line: 88, column: 6, scope: !5216)
!5266 = !DILocation(line: 89, column: 2, scope: !5216)
!5267 = !DILocation(line: 89, column: 17, scope: !5216)
!5268 = !DILocation(line: 90, column: 2, scope: !5216)
!5269 = !DILocation(line: 90, column: 6, scope: !5216)
!5270 = !DILocation(line: 91, column: 2, scope: !5216)
!5271 = !DILocation(line: 91, column: 18, scope: !5216)
!5272 = !DILocation(line: 92, column: 2, scope: !5216)
!5273 = !DILocation(line: 92, column: 14, scope: !5216)
!5274 = !DILocation(line: 94, column: 2, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 94, column: 2)
!5276 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 94, column: 2)
!5277 = !DILocation(line: 94, column: 2, scope: !5276)
!5278 = !DILocation(line: 95, column: 8, scope: !5216)
!5279 = !DILocation(line: 95, column: 14, scope: !5216)
!5280 = !DILocation(line: 95, column: 6, scope: !5216)
!5281 = !DILocation(line: 97, column: 11, scope: !5216)
!5282 = !DILocation(line: 97, column: 16, scope: !5216)
!5283 = !DILocation(line: 97, column: 22, scope: !5216)
!5284 = !DILocation(line: 97, column: 28, scope: !5216)
!5285 = !DILocation(line: 97, column: 9, scope: !5216)
!5286 = !DILocation(line: 99, column: 29, scope: !5216)
!5287 = !DILocation(line: 99, column: 35, scope: !5216)
!5288 = !DILocation(line: 99, column: 9, scope: !5216)
!5289 = !DILocation(line: 99, column: 7, scope: !5216)
!5290 = !DILocation(line: 100, column: 7, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 100, column: 6)
!5292 = !DILocation(line: 100, column: 6, scope: !5216)
!5293 = !DILocation(line: 101, column: 3, scope: !5291)
!5294 = !DILocation(line: 102, column: 18, scope: !5216)
!5295 = !DILocation(line: 102, column: 24, scope: !5216)
!5296 = !DILocation(line: 102, column: 7, scope: !5216)
!5297 = !DILocation(line: 102, column: 16, scope: !5216)
!5298 = !DILocation(line: 103, column: 17, scope: !5216)
!5299 = !DILocation(line: 103, column: 7, scope: !5216)
!5300 = !DILocation(line: 103, column: 15, scope: !5216)
!5301 = !DILocation(line: 105, column: 2, scope: !5216)
!5302 = !DILocation(line: 106, column: 7, scope: !5255)
!5303 = !DILocation(line: 106, column: 13, scope: !5255)
!5304 = !DILocation(line: 106, column: 21, scope: !5255)
!5305 = !DILocation(line: 106, column: 27, scope: !5255)
!5306 = !DILocation(line: 106, column: 18, scope: !5255)
!5307 = !DILocation(line: 106, column: 7, scope: !5256)
!5308 = !DILocation(line: 107, column: 4, scope: !5254)
!5309 = !DILocation(line: 107, column: 20, scope: !5254)
!5310 = !DILocation(line: 108, column: 4, scope: !5254)
!5311 = !DILocation(line: 108, column: 8, scope: !5254)
!5312 = !DILocation(line: 110, column: 44, scope: !5254)
!5313 = !DILocation(line: 110, column: 4, scope: !5254)
!5314 = !DILocation(line: 111, column: 23, scope: !5254)
!5315 = !DILocation(line: 111, column: 29, scope: !5254)
!5316 = !DILocation(line: 111, column: 43, scope: !5254)
!5317 = !DILocation(line: 111, column: 48, scope: !5254)
!5318 = !DILocation(line: 111, column: 8, scope: !5254)
!5319 = !DILocation(line: 111, column: 6, scope: !5254)
!5320 = !DILocation(line: 113, column: 8, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 113, column: 8)
!5322 = !DILocation(line: 113, column: 8, scope: !5254)
!5323 = !DILocation(line: 114, column: 12, scope: !5321)
!5324 = !DILocation(line: 114, column: 5, scope: !5321)
!5325 = !DILocation(line: 115, column: 8, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 115, column: 8)
!5327 = !DILocation(line: 115, column: 10, scope: !5326)
!5328 = !DILocation(line: 115, column: 8, scope: !5254)
!5329 = !DILocation(line: 116, column: 5, scope: !5326)
!5330 = !DILocation(line: 118, column: 4, scope: !5254)
!5331 = !DILocation(line: 118, column: 10, scope: !5254)
!5332 = !DILocation(line: 118, column: 15, scope: !5254)
!5333 = !DILocation(line: 119, column: 17, scope: !5254)
!5334 = !DILocation(line: 119, column: 4, scope: !5254)
!5335 = !DILocation(line: 119, column: 10, scope: !5254)
!5336 = !DILocation(line: 119, column: 15, scope: !5254)
!5337 = !DILocation(line: 120, column: 3, scope: !5255)
!5338 = !DILocation(line: 120, column: 3, scope: !5254)
!5339 = !DILocation(line: 121, column: 3, scope: !5256)
!5340 = !DILocation(line: 121, column: 10, scope: !5256)
!5341 = !DILocation(line: 121, column: 16, scope: !5256)
!5342 = !DILocation(line: 121, column: 23, scope: !5256)
!5343 = !DILocation(line: 121, column: 29, scope: !5256)
!5344 = !DILocation(line: 121, column: 21, scope: !5256)
!5345 = !DILocation(line: 122, column: 22, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 121, column: 35)
!5347 = !DILocation(line: 122, column: 27, scope: !5346)
!5348 = !DILocation(line: 122, column: 33, scope: !5346)
!5349 = !DILocation(line: 122, column: 39, scope: !5346)
!5350 = !DILocation(line: 122, column: 45, scope: !5346)
!5351 = !DILocation(line: 122, column: 51, scope: !5346)
!5352 = !DILocation(line: 122, column: 43, scope: !5346)
!5353 = !DILocation(line: 123, column: 8, scope: !5346)
!5354 = !DILocation(line: 123, column: 14, scope: !5346)
!5355 = !DILocation(line: 123, column: 21, scope: !5346)
!5356 = !DILocation(line: 123, column: 27, scope: !5346)
!5357 = !DILocation(line: 123, column: 19, scope: !5346)
!5358 = !DILocation(line: 122, column: 10, scope: !5346)
!5359 = !DILocation(line: 122, column: 8, scope: !5346)
!5360 = !DILocation(line: 124, column: 8, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 124, column: 8)
!5362 = !DILocation(line: 124, column: 12, scope: !5361)
!5363 = !DILocation(line: 124, column: 8, scope: !5346)
!5364 = !DILocation(line: 125, column: 5, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 125, column: 5)
!5366 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 125, column: 5)
!5367 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 124, column: 18)
!5368 = !DILocation(line: 125, column: 5, scope: !5366)
!5369 = !DILocation(line: 126, column: 5, scope: !5367)
!5370 = !DILocation(line: 129, column: 21, scope: !5346)
!5371 = !DILocation(line: 129, column: 29, scope: !5346)
!5372 = !DILocation(line: 129, column: 45, scope: !5346)
!5373 = !DILocation(line: 129, column: 35, scope: !5346)
!5374 = !DILocation(line: 130, column: 24, scope: !5346)
!5375 = !DILocation(line: 130, column: 7, scope: !5346)
!5376 = !DILocation(line: 130, column: 30, scope: !5346)
!5377 = !DILocation(line: 129, column: 12, scope: !5346)
!5378 = !DILocation(line: 129, column: 11, scope: !5346)
!5379 = !DILocation(line: 129, column: 9, scope: !5346)
!5380 = !DILocation(line: 131, column: 4, scope: !5346)
!5381 = !DILocation(line: 132, column: 8, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 132, column: 8)
!5383 = !{i8 0, i8 2}
!5384 = !DILocation(line: 132, column: 8, scope: !5346)
!5385 = !DILocation(line: 133, column: 5, scope: !5382)
!5386 = !DILocation(line: 135, column: 18, scope: !5346)
!5387 = !DILocation(line: 135, column: 4, scope: !5346)
!5388 = !DILocation(line: 135, column: 10, scope: !5346)
!5389 = !DILocation(line: 135, column: 15, scope: !5346)
!5390 = !DILocation(line: 136, column: 16, scope: !5346)
!5391 = !DILocation(line: 136, column: 4, scope: !5346)
!5392 = !DILocation(line: 136, column: 9, scope: !5346)
!5393 = !DILocation(line: 136, column: 13, scope: !5346)
!5394 = distinct !{!5394, !5339, !5395, !5396, !5397}
!5395 = !DILocation(line: 137, column: 3, scope: !5256)
!5396 = !{!"llvm.loop.mustprogress"}
!5397 = !{!"llvm.loop.unroll.disable"}
!5398 = distinct !{!5398, !5301, !5399, !5397}
!5399 = !DILocation(line: 138, column: 2, scope: !5216)
!5400 = !DILocation(line: 139, column: 1, scope: !5216)
!5401 = distinct !DISubprogram(name: "v9fs_dir_readdir_dotl", scope: !3, file: !3, line: 147, type: !1356, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5402)
!5402 = !{!5403, !5404, !5405, !5406, !5407, !5408, !5409}
!5403 = !DILocalVariable(name: "file", arg: 1, scope: !5401, file: !3, line: 147, type: !853)
!5404 = !DILocalVariable(name: "ctx", arg: 2, scope: !5401, file: !3, line: 147, type: !1358)
!5405 = !DILocalVariable(name: "err", scope: !5401, file: !3, line: 149, type: !101)
!5406 = !DILocalVariable(name: "fid", scope: !5401, file: !3, line: 150, type: !4927)
!5407 = !DILocalVariable(name: "buflen", scope: !5401, file: !3, line: 151, type: !101)
!5408 = !DILocalVariable(name: "rdir", scope: !5401, file: !3, line: 152, type: !5244)
!5409 = !DILocalVariable(name: "curdirent", scope: !5401, file: !3, line: 153, type: !5410)
!5410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_dirent", file: !177, line: 171, size: 2304, elements: !5411)
!5411 = !{!5412, !5413, !5414, !5415}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !5410, file: !177, line: 172, baseType: !4893, size: 128)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !5410, file: !177, line: 173, baseType: !332, size: 64, offset: 128)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !5410, file: !177, line: 174, baseType: !338, size: 8, offset: 192)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !5410, file: !177, line: 175, baseType: !5416, size: 2048, offset: 200)
!5416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 2048, elements: !5417)
!5417 = !{!5418}
!5418 = !DISubrange(count: 256)
!5419 = !DILocation(line: 147, column: 47, scope: !5401)
!5420 = !DILocation(line: 147, column: 73, scope: !5401)
!5421 = !DILocation(line: 149, column: 2, scope: !5401)
!5422 = !DILocation(line: 149, column: 6, scope: !5401)
!5423 = !DILocation(line: 150, column: 2, scope: !5401)
!5424 = !DILocation(line: 150, column: 17, scope: !5401)
!5425 = !DILocation(line: 151, column: 2, scope: !5401)
!5426 = !DILocation(line: 151, column: 6, scope: !5401)
!5427 = !DILocation(line: 152, column: 2, scope: !5401)
!5428 = !DILocation(line: 152, column: 18, scope: !5401)
!5429 = !DILocation(line: 153, column: 2, scope: !5401)
!5430 = !DILocation(line: 153, column: 19, scope: !5401)
!5431 = !DILocation(line: 155, column: 2, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 155, column: 2)
!5433 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 155, column: 2)
!5434 = !DILocation(line: 155, column: 2, scope: !5433)
!5435 = !DILocation(line: 156, column: 8, scope: !5401)
!5436 = !DILocation(line: 156, column: 14, scope: !5401)
!5437 = !DILocation(line: 156, column: 6, scope: !5401)
!5438 = !DILocation(line: 158, column: 11, scope: !5401)
!5439 = !DILocation(line: 158, column: 16, scope: !5401)
!5440 = !DILocation(line: 158, column: 22, scope: !5401)
!5441 = !DILocation(line: 158, column: 28, scope: !5401)
!5442 = !DILocation(line: 158, column: 9, scope: !5401)
!5443 = !DILocation(line: 160, column: 29, scope: !5401)
!5444 = !DILocation(line: 160, column: 35, scope: !5401)
!5445 = !DILocation(line: 160, column: 9, scope: !5401)
!5446 = !DILocation(line: 160, column: 7, scope: !5401)
!5447 = !DILocation(line: 161, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 161, column: 6)
!5449 = !DILocation(line: 161, column: 6, scope: !5401)
!5450 = !DILocation(line: 162, column: 3, scope: !5448)
!5451 = !DILocation(line: 164, column: 2, scope: !5401)
!5452 = !DILocation(line: 165, column: 7, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 165, column: 7)
!5454 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 164, column: 12)
!5455 = !DILocation(line: 165, column: 13, scope: !5453)
!5456 = !DILocation(line: 165, column: 21, scope: !5453)
!5457 = !DILocation(line: 165, column: 27, scope: !5453)
!5458 = !DILocation(line: 165, column: 18, scope: !5453)
!5459 = !DILocation(line: 165, column: 7, scope: !5454)
!5460 = !DILocation(line: 166, column: 28, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 165, column: 33)
!5462 = !DILocation(line: 166, column: 33, scope: !5461)
!5463 = !DILocation(line: 166, column: 39, scope: !5461)
!5464 = !DILocation(line: 166, column: 44, scope: !5461)
!5465 = !DILocation(line: 167, column: 7, scope: !5461)
!5466 = !DILocation(line: 167, column: 12, scope: !5461)
!5467 = !DILocation(line: 166, column: 10, scope: !5461)
!5468 = !DILocation(line: 166, column: 8, scope: !5461)
!5469 = !DILocation(line: 168, column: 8, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 168, column: 8)
!5471 = !DILocation(line: 168, column: 12, scope: !5470)
!5472 = !DILocation(line: 168, column: 8, scope: !5461)
!5473 = !DILocation(line: 169, column: 12, scope: !5470)
!5474 = !DILocation(line: 169, column: 5, scope: !5470)
!5475 = !DILocation(line: 171, column: 4, scope: !5461)
!5476 = !DILocation(line: 171, column: 10, scope: !5461)
!5477 = !DILocation(line: 171, column: 15, scope: !5461)
!5478 = !DILocation(line: 172, column: 17, scope: !5461)
!5479 = !DILocation(line: 172, column: 4, scope: !5461)
!5480 = !DILocation(line: 172, column: 10, scope: !5461)
!5481 = !DILocation(line: 172, column: 15, scope: !5461)
!5482 = !DILocation(line: 173, column: 3, scope: !5461)
!5483 = !DILocation(line: 175, column: 3, scope: !5454)
!5484 = !DILocation(line: 175, column: 10, scope: !5454)
!5485 = !DILocation(line: 175, column: 16, scope: !5454)
!5486 = !DILocation(line: 175, column: 23, scope: !5454)
!5487 = !DILocation(line: 175, column: 29, scope: !5454)
!5488 = !DILocation(line: 175, column: 21, scope: !5454)
!5489 = !DILocation(line: 177, column: 24, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 175, column: 35)
!5491 = !DILocation(line: 177, column: 29, scope: !5490)
!5492 = !DILocation(line: 177, column: 35, scope: !5490)
!5493 = !DILocation(line: 177, column: 41, scope: !5490)
!5494 = !DILocation(line: 177, column: 47, scope: !5490)
!5495 = !DILocation(line: 177, column: 53, scope: !5490)
!5496 = !DILocation(line: 177, column: 45, scope: !5490)
!5497 = !DILocation(line: 178, column: 10, scope: !5490)
!5498 = !DILocation(line: 178, column: 16, scope: !5490)
!5499 = !DILocation(line: 178, column: 23, scope: !5490)
!5500 = !DILocation(line: 178, column: 29, scope: !5490)
!5501 = !DILocation(line: 178, column: 21, scope: !5490)
!5502 = !DILocation(line: 177, column: 10, scope: !5490)
!5503 = !DILocation(line: 177, column: 8, scope: !5490)
!5504 = !DILocation(line: 180, column: 8, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 180, column: 8)
!5506 = !DILocation(line: 180, column: 12, scope: !5505)
!5507 = !DILocation(line: 180, column: 8, scope: !5490)
!5508 = !DILocation(line: 181, column: 5, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 181, column: 5)
!5510 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 181, column: 5)
!5511 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 180, column: 17)
!5512 = !DILocation(line: 181, column: 5, scope: !5510)
!5513 = !DILocation(line: 182, column: 5, scope: !5511)
!5514 = !DILocation(line: 185, column: 18, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 185, column: 8)
!5516 = !DILocation(line: 185, column: 33, scope: !5515)
!5517 = !DILocation(line: 185, column: 23, scope: !5515)
!5518 = !DILocation(line: 186, column: 28, scope: !5515)
!5519 = !DILocation(line: 186, column: 18, scope: !5515)
!5520 = !DILocation(line: 186, column: 11, scope: !5515)
!5521 = !DILocation(line: 187, column: 35, scope: !5515)
!5522 = !DILocation(line: 187, column: 11, scope: !5515)
!5523 = !DILocation(line: 188, column: 21, scope: !5515)
!5524 = !DILocation(line: 188, column: 11, scope: !5515)
!5525 = !DILocation(line: 185, column: 9, scope: !5515)
!5526 = !DILocation(line: 185, column: 8, scope: !5490)
!5527 = !DILocation(line: 189, column: 5, scope: !5515)
!5528 = !DILocation(line: 191, column: 25, scope: !5490)
!5529 = !DILocation(line: 191, column: 4, scope: !5490)
!5530 = !DILocation(line: 191, column: 9, scope: !5490)
!5531 = !DILocation(line: 191, column: 13, scope: !5490)
!5532 = !DILocation(line: 192, column: 18, scope: !5490)
!5533 = !DILocation(line: 192, column: 4, scope: !5490)
!5534 = !DILocation(line: 192, column: 10, scope: !5490)
!5535 = !DILocation(line: 192, column: 15, scope: !5490)
!5536 = distinct !{!5536, !5483, !5537, !5396, !5397}
!5537 = !DILocation(line: 193, column: 3, scope: !5454)
!5538 = distinct !{!5538, !5451, !5539, !5397}
!5539 = !DILocation(line: 194, column: 2, scope: !5401)
!5540 = !DILocation(line: 195, column: 1, scope: !5401)
!5541 = !DISubprogram(name: "_raw_spin_lock", scope: !5542, file: !5542, line: 22, type: !5543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5542 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5543 = !DISubroutineType(types: !5544)
!5544 = !{null, !5545}
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!5546 = distinct !DISubprogram(name: "__hlist_del", scope: !5083, file: !5083, line: 975, type: !5084, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5547)
!5547 = !{!5548, !5549, !5550}
!5548 = !DILocalVariable(name: "n", arg: 1, scope: !5546, file: !5083, line: 975, type: !920)
!5549 = !DILocalVariable(name: "next", scope: !5546, file: !5083, line: 977, type: !920)
!5550 = !DILocalVariable(name: "pprev", scope: !5546, file: !5083, line: 978, type: !925)
!5551 = !DILocation(line: 975, column: 51, scope: !5546)
!5552 = !DILocation(line: 977, column: 2, scope: !5546)
!5553 = !DILocation(line: 977, column: 21, scope: !5546)
!5554 = !DILocation(line: 977, column: 28, scope: !5546)
!5555 = !DILocation(line: 977, column: 31, scope: !5546)
!5556 = !DILocation(line: 978, column: 2, scope: !5546)
!5557 = !DILocation(line: 978, column: 22, scope: !5546)
!5558 = !DILocation(line: 978, column: 30, scope: !5546)
!5559 = !DILocation(line: 978, column: 33, scope: !5546)
!5560 = !DILocation(line: 980, column: 2, scope: !5546)
!5561 = !DILocation(line: 980, column: 2, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5546, file: !5083, line: 980, column: 2)
!5563 = !DILocation(line: 980, column: 2, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5562, file: !5083, line: 980, column: 2)
!5565 = !DILocation(line: 980, column: 2, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5562, file: !5083, line: 980, column: 2)
!5567 = !DILocation(line: 981, column: 6, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5546, file: !5083, line: 981, column: 6)
!5569 = !DILocation(line: 981, column: 6, scope: !5546)
!5570 = !DILocation(line: 982, column: 3, scope: !5568)
!5571 = !DILocation(line: 982, column: 3, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5568, file: !5083, line: 982, column: 3)
!5573 = !DILocation(line: 982, column: 3, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5572, file: !5083, line: 982, column: 3)
!5575 = !DILocation(line: 982, column: 3, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5572, file: !5083, line: 982, column: 3)
!5577 = !DILocation(line: 983, column: 1, scope: !5546)
!5578 = !DISubprogram(name: "_raw_spin_unlock", scope: !5542, file: !5542, line: 39, type: !5543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5579 = distinct !DISubprogram(name: "IS_ERR", scope: !5580, file: !5580, line: 59, type: !5581, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5583)
!5580 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!763, !1562}
!5583 = !{!5584}
!5584 = !DILocalVariable(name: "ptr", arg: 1, scope: !5579, file: !5580, line: 59, type: !1562)
!5585 = !DILocation(line: 59, column: 60, scope: !5579)
!5586 = !DILocation(line: 61, column: 9, scope: !5579)
!5587 = !DILocation(line: 61, column: 2, scope: !5579)
!5588 = distinct !DISubprogram(name: "static_key_false", scope: !2368, file: !2368, line: 205, type: !5589, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5603)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{!763, !5591}
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2368, line: 85, size: 128, elements: !5593)
!5593 = !{!5594, !5595}
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5592, file: !2368, line: 86, baseType: !377, size: 32)
!5595 = !DIDerivedType(tag: DW_TAG_member, scope: !5592, file: !2368, line: 101, baseType: !5596, size: 64, offset: 64)
!5596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5592, file: !2368, line: 101, size: 64, elements: !5597)
!5597 = !{!5598, !5599, !5600}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5596, file: !2368, line: 102, baseType: !463, size: 64)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5596, file: !2368, line: 103, baseType: !2366, size: 64)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5596, file: !2368, line: 104, baseType: !5601, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2368, line: 104, flags: DIFlagFwdDecl)
!5603 = !{!5604}
!5604 = !DILocalVariable(name: "key", arg: 1, scope: !5588, file: !2368, line: 205, type: !5591)
!5605 = !DILocation(line: 205, column: 65, scope: !5588)
!5606 = !DILocation(line: 207, column: 28, scope: !5588)
!5607 = !DILocation(line: 207, column: 9, scope: !5588)
!5608 = !DILocation(line: 207, column: 2, scope: !5588)
!5609 = !DISubprogram(name: "do_trace_9p_fid_put", scope: !177, file: !177, line: 245, type: !5610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{null, !4927}
!5612 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !189, file: !189, line: 331, type: !5613, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!763, !5615}
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!5616 = !{!5617}
!5617 = !DILocalVariable(name: "r", arg: 1, scope: !5612, file: !189, line: 331, type: !5615)
!5618 = !DILocation(line: 331, column: 67, scope: !5612)
!5619 = !DILocation(line: 333, column: 33, scope: !5612)
!5620 = !DILocation(line: 333, column: 9, scope: !5612)
!5621 = !DILocation(line: 333, column: 2, scope: !5612)
!5622 = !DISubprogram(name: "p9_client_clunk", scope: !177, file: !177, line: 202, type: !5105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5623 = distinct !DISubprogram(name: "arch_static_branch", scope: !5624, file: !5624, line: 25, type: !5625, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5627)
!5624 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5625 = !DISubroutineType(types: !5626)
!5626 = !{!763, !5591, !763}
!5627 = !{!5628, !5629, !5630}
!5628 = !DILocalVariable(name: "key", arg: 1, scope: !5623, file: !5624, line: 25, type: !5591)
!5629 = !DILocalVariable(name: "branch", arg: 2, scope: !5623, file: !5624, line: 25, type: !763)
!5630 = !DILabel(scope: !5623, name: "l_yes", file: !5624, line: 33)
!5631 = !DILocation(line: 25, column: 67, scope: !5623)
!5632 = !DILocation(line: 25, column: 77, scope: !5623)
!5633 = !DILocation(line: 30, column: 13, scope: !5623)
!5634 = !DILocation(line: 30, column: 28, scope: !5623)
!5635 = !DILocation(line: 30, column: 26, scope: !5623)
!5636 = !DILocation(line: 27, column: 2, scope: !5623)
!5637 = !{i64 643972, i64 644016, i64 2148128699, i64 2148128720, i64 2148128746, i64 2148128779, i64 2148128813, i64 2148128837}
!5638 = !DILocation(line: 32, column: 2, scope: !5623)
!5639 = !DILocation(line: 33, column: 1, scope: !5623)
!5640 = !DILocation(line: 34, column: 2, scope: !5623)
!5641 = !DILocation(line: 35, column: 1, scope: !5623)
!5642 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !189, file: !189, line: 313, type: !5643, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5645)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!763, !5615, !2199}
!5645 = !{!5646, !5647}
!5646 = !DILocalVariable(name: "r", arg: 1, scope: !5642, file: !189, line: 313, type: !5615)
!5647 = !DILocalVariable(name: "oldp", arg: 2, scope: !5642, file: !189, line: 313, type: !2199)
!5648 = !DILocation(line: 313, column: 69, scope: !5642)
!5649 = !DILocation(line: 313, column: 77, scope: !5642)
!5650 = !DILocation(line: 315, column: 36, scope: !5642)
!5651 = !DILocation(line: 315, column: 39, scope: !5642)
!5652 = !DILocation(line: 315, column: 9, scope: !5642)
!5653 = !DILocation(line: 315, column: 2, scope: !5642)
!5654 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !189, file: !189, line: 270, type: !5655, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5657)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!763, !101, !5615, !2199}
!5657 = !{!5658, !5659, !5660, !5661}
!5658 = !DILocalVariable(name: "i", arg: 1, scope: !5654, file: !189, line: 270, type: !101)
!5659 = !DILocalVariable(name: "r", arg: 2, scope: !5654, file: !189, line: 270, type: !5615)
!5660 = !DILocalVariable(name: "oldp", arg: 3, scope: !5654, file: !189, line: 270, type: !2199)
!5661 = !DILocalVariable(name: "old", scope: !5654, file: !189, line: 272, type: !101)
!5662 = !DILocation(line: 270, column: 61, scope: !5654)
!5663 = !DILocation(line: 270, column: 76, scope: !5654)
!5664 = !DILocation(line: 270, column: 84, scope: !5654)
!5665 = !DILocation(line: 272, column: 2, scope: !5654)
!5666 = !DILocation(line: 272, column: 6, scope: !5654)
!5667 = !DILocation(line: 272, column: 37, scope: !5654)
!5668 = !DILocation(line: 272, column: 41, scope: !5654)
!5669 = !DILocation(line: 272, column: 44, scope: !5654)
!5670 = !DILocation(line: 272, column: 12, scope: !5654)
!5671 = !DILocation(line: 274, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5654, file: !189, line: 274, column: 6)
!5673 = !DILocation(line: 274, column: 6, scope: !5654)
!5674 = !DILocation(line: 275, column: 11, scope: !5672)
!5675 = !DILocation(line: 275, column: 4, scope: !5672)
!5676 = !DILocation(line: 275, column: 9, scope: !5672)
!5677 = !DILocation(line: 275, column: 3, scope: !5672)
!5678 = !DILocation(line: 277, column: 6, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5654, file: !189, line: 277, column: 6)
!5680 = !DILocation(line: 277, column: 13, scope: !5679)
!5681 = !DILocation(line: 277, column: 10, scope: !5679)
!5682 = !DILocation(line: 277, column: 6, scope: !5654)
!5683 = !DILocation(line: 278, column: 3, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5679, file: !189, line: 277, column: 16)
!5685 = !DILocation(line: 278, column: 3, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5684, file: !189, line: 278, column: 3)
!5687 = !DILocation(line: 278, column: 3, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5686, file: !189, line: 278, column: 3)
!5689 = !DILocation(line: 278, column: 3, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5686, file: !189, line: 278, column: 3)
!5691 = !DILocation(line: 278, column: 3, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5690, file: !189, line: 278, column: 3)
!5693 = !{i64 2149921464}
!5694 = !DILocation(line: 279, column: 3, scope: !5684)
!5695 = !DILocation(line: 282, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5654, file: !189, line: 282, column: 6)
!5697 = !DILocation(line: 282, column: 6, scope: !5654)
!5698 = !DILocation(line: 283, column: 26, scope: !5696)
!5699 = !DILocation(line: 283, column: 3, scope: !5696)
!5700 = !DILocation(line: 285, column: 2, scope: !5654)
!5701 = !DILocation(line: 286, column: 1, scope: !5654)
!5702 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5703, file: !5703, line: 397, type: !5704, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5707)
!5703 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!101, !101, !5706}
!5706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!5707 = !{!5708, !5709}
!5708 = !DILocalVariable(name: "i", arg: 1, scope: !5702, file: !5703, line: 397, type: !101)
!5709 = !DILocalVariable(name: "v", arg: 2, scope: !5702, file: !5703, line: 397, type: !5706)
!5710 = !DILocation(line: 397, column: 30, scope: !5702)
!5711 = !DILocation(line: 397, column: 43, scope: !5702)
!5712 = !DILocation(line: 399, column: 2, scope: !5702)
!5713 = !DILocation(line: 399, column: 2, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5702, file: !5703, line: 399, column: 2)
!5715 = !DILocation(line: 400, column: 31, scope: !5702)
!5716 = !DILocation(line: 400, column: 2, scope: !5702)
!5717 = !DILocation(line: 401, column: 38, scope: !5702)
!5718 = !DILocation(line: 401, column: 41, scope: !5702)
!5719 = !DILocation(line: 401, column: 9, scope: !5702)
!5720 = !DILocation(line: 401, column: 2, scope: !5702)
!5721 = !DISubprogram(name: "refcount_warn_saturate", scope: !189, file: !189, line: 127, type: !5722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{null, !5615, !188}
!5724 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5725, file: !5725, line: 94, type: !5726, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5731)
!5725 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5726 = !DISubroutineType(types: !5727)
!5727 = !{null, !5728, !592}
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5730)
!5730 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5731 = !{!5732, !5733}
!5732 = !DILocalVariable(name: "v", arg: 1, scope: !5724, file: !5725, line: 94, type: !5728)
!5733 = !DILocalVariable(name: "size", arg: 2, scope: !5724, file: !5725, line: 94, type: !592)
!5734 = !DILocation(line: 94, column: 79, scope: !5724)
!5735 = !DILocation(line: 94, column: 89, scope: !5724)
!5736 = !DILocation(line: 96, column: 20, scope: !5724)
!5737 = !DILocation(line: 96, column: 23, scope: !5724)
!5738 = !DILocation(line: 96, column: 2, scope: !5724)
!5739 = !DILocation(line: 97, column: 2, scope: !5724)
!5740 = !DILocation(line: 98, column: 1, scope: !5724)
!5741 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5742, file: !5742, line: 928, type: !5704, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5743)
!5742 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5743 = !{!5744, !5745}
!5744 = !DILocalVariable(name: "i", arg: 1, scope: !5741, file: !5742, line: 928, type: !101)
!5745 = !DILocalVariable(name: "v", arg: 2, scope: !5741, file: !5742, line: 928, type: !5706)
!5746 = !DILocation(line: 928, column: 34, scope: !5741)
!5747 = !DILocation(line: 928, column: 47, scope: !5741)
!5748 = !DILocation(line: 936, column: 31, scope: !5741)
!5749 = !DILocation(line: 936, column: 34, scope: !5741)
!5750 = !DILocation(line: 936, column: 9, scope: !5741)
!5751 = !DILocation(line: 936, column: 2, scope: !5741)
!5752 = distinct !DISubprogram(name: "kasan_check_write", scope: !5753, file: !5753, line: 44, type: !5754, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5756)
!5753 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5754 = !DISubroutineType(types: !5755)
!5755 = !{!763, !5728, !7}
!5756 = !{!5757, !5758}
!5757 = !DILocalVariable(name: "p", arg: 1, scope: !5752, file: !5753, line: 44, type: !5728)
!5758 = !DILocalVariable(name: "size", arg: 2, scope: !5752, file: !5753, line: 44, type: !7)
!5759 = !DILocation(line: 44, column: 59, scope: !5752)
!5760 = !DILocation(line: 44, column: 75, scope: !5752)
!5761 = !DILocation(line: 46, column: 2, scope: !5752)
!5762 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5763, file: !5763, line: 229, type: !5764, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5766)
!5763 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5764 = !DISubroutineType(types: !5765)
!5765 = !{null, !5728, !592, !101}
!5766 = !{!5767, !5768, !5769}
!5767 = !DILocalVariable(name: "ptr", arg: 1, scope: !5762, file: !5763, line: 229, type: !5728)
!5768 = !DILocalVariable(name: "size", arg: 2, scope: !5762, file: !5763, line: 229, type: !592)
!5769 = !DILocalVariable(name: "type", arg: 3, scope: !5762, file: !5763, line: 230, type: !101)
!5770 = !DILocation(line: 229, column: 60, scope: !5762)
!5771 = !DILocation(line: 229, column: 72, scope: !5762)
!5772 = !DILocation(line: 230, column: 15, scope: !5762)
!5773 = !DILocation(line: 230, column: 23, scope: !5762)
!5774 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5775, file: !5775, line: 101, type: !5704, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5776)
!5775 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5776 = !{!5777, !5778, !5779}
!5777 = !DILocalVariable(name: "i", arg: 1, scope: !5774, file: !5775, line: 101, type: !101)
!5778 = !DILocalVariable(name: "v", arg: 2, scope: !5774, file: !5775, line: 101, type: !5706)
!5779 = !DILocalVariable(name: "__ret", scope: !5780, file: !5775, line: 103, type: !101)
!5780 = distinct !DILexicalBlock(scope: !5774, file: !5775, line: 103, column: 9)
!5781 = !DILocation(line: 101, column: 54, scope: !5774)
!5782 = !DILocation(line: 101, column: 67, scope: !5774)
!5783 = !DILocation(line: 103, column: 9, scope: !5780)
!5784 = !{i64 2148798386, i64 2148798425, i64 2148798446, i64 2148798483, i64 2148798506, i64 2148798515}
!5785 = !DILocation(line: 103, column: 9, scope: !5774)
!5786 = !DILocation(line: 103, column: 2, scope: !5774)
!5787 = distinct !DISubprogram(name: "v9fs_alloc_rdir_buf", scope: !3, file: !3, line: 68, type: !5788, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5790)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{!5244, !853, !101}
!5790 = !{!5791, !5792, !5793}
!5791 = !DILocalVariable(name: "filp", arg: 1, scope: !5787, file: !3, line: 68, type: !853)
!5792 = !DILocalVariable(name: "buflen", arg: 2, scope: !5787, file: !3, line: 68, type: !101)
!5793 = !DILocalVariable(name: "fid", scope: !5787, file: !3, line: 70, type: !4927)
!5794 = !DILocation(line: 68, column: 57, scope: !5787)
!5795 = !DILocation(line: 68, column: 67, scope: !5787)
!5796 = !DILocation(line: 70, column: 2, scope: !5787)
!5797 = !DILocation(line: 70, column: 17, scope: !5787)
!5798 = !DILocation(line: 70, column: 23, scope: !5787)
!5799 = !DILocation(line: 70, column: 29, scope: !5787)
!5800 = !DILocation(line: 72, column: 7, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 72, column: 6)
!5802 = !DILocation(line: 72, column: 12, scope: !5801)
!5803 = !DILocation(line: 72, column: 6, scope: !5787)
!5804 = !DILocation(line: 73, column: 48, scope: !5801)
!5805 = !DILocation(line: 73, column: 46, scope: !5801)
!5806 = !DILocation(line: 73, column: 15, scope: !5801)
!5807 = !DILocation(line: 73, column: 3, scope: !5801)
!5808 = !DILocation(line: 73, column: 8, scope: !5801)
!5809 = !DILocation(line: 73, column: 13, scope: !5801)
!5810 = !DILocation(line: 74, column: 9, scope: !5787)
!5811 = !DILocation(line: 74, column: 14, scope: !5787)
!5812 = !DILocation(line: 75, column: 1, scope: !5787)
!5813 = !DILocation(line: 74, column: 2, scope: !5787)
!5814 = !DISubprogram(name: "iov_iter_kvec", scope: !1292, file: !1292, line: 280, type: !5815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{null, !1290, !7, !1323, !463, !592}
!5817 = !DISubprogram(name: "p9_client_read", scope: !177, file: !177, line: 206, type: !5818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5818 = !DISubroutineType(types: !5819)
!5819 = !{!101, !4927, !332, !1290, !2199}
!5820 = !DISubprogram(name: "p9stat_read", scope: !177, file: !177, line: 285, type: !5821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5821 = !DISubroutineType(types: !5822)
!5822 = !{!101, !4931, !443, !101, !5823}
!5823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5824 = distinct !DISubprogram(name: "dir_emit", scope: !64, file: !64, line: 3417, type: !5825, scopeLine: 3420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5827)
!5825 = !DISubroutineType(types: !5826)
!5826 = !{!763, !1358, !417, !101, !332, !7}
!5827 = !{!5828, !5829, !5830, !5831, !5832}
!5828 = !DILocalVariable(name: "ctx", arg: 1, scope: !5824, file: !64, line: 3417, type: !1358)
!5829 = !DILocalVariable(name: "name", arg: 2, scope: !5824, file: !64, line: 3418, type: !417)
!5830 = !DILocalVariable(name: "namelen", arg: 3, scope: !5824, file: !64, line: 3418, type: !101)
!5831 = !DILocalVariable(name: "ino", arg: 4, scope: !5824, file: !64, line: 3419, type: !332)
!5832 = !DILocalVariable(name: "type", arg: 5, scope: !5824, file: !64, line: 3419, type: !7)
!5833 = !DILocation(line: 3417, column: 49, scope: !5824)
!5834 = !DILocation(line: 3418, column: 20, scope: !5824)
!5835 = !DILocation(line: 3418, column: 30, scope: !5824)
!5836 = !DILocation(line: 3419, column: 12, scope: !5824)
!5837 = !DILocation(line: 3419, column: 26, scope: !5824)
!5838 = !DILocation(line: 3421, column: 9, scope: !5824)
!5839 = !DILocation(line: 3421, column: 14, scope: !5824)
!5840 = !DILocation(line: 3421, column: 20, scope: !5824)
!5841 = !DILocation(line: 3421, column: 25, scope: !5824)
!5842 = !DILocation(line: 3421, column: 31, scope: !5824)
!5843 = !DILocation(line: 3421, column: 40, scope: !5824)
!5844 = !DILocation(line: 3421, column: 45, scope: !5824)
!5845 = !DILocation(line: 3421, column: 50, scope: !5824)
!5846 = !DILocation(line: 3421, column: 55, scope: !5824)
!5847 = !DILocation(line: 3421, column: 2, scope: !5824)
!5848 = !DISubprogram(name: "strlen", scope: !5849, file: !5849, line: 128, type: !5850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5849 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5850 = !DISubroutineType(types: !5851)
!5851 = !{!463, !417}
!5852 = !DISubprogram(name: "v9fs_qid2ino", scope: !5853, file: !5853, line: 49, type: !5854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5853 = !DIFile(filename: "fs/9p/v9fs_vfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bbf97b2e768068e259cd64f8af0c9d7b")
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!4840, !5856}
!5856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!5857 = distinct !DISubprogram(name: "dt_type", scope: !3, file: !3, line: 48, type: !5858, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{!101, !5823}
!5860 = !{!5861, !5862, !5863}
!5861 = !DILocalVariable(name: "mistat", arg: 1, scope: !5857, file: !3, line: 48, type: !5823)
!5862 = !DILocalVariable(name: "perm", scope: !5857, file: !3, line: 50, type: !463)
!5863 = !DILocalVariable(name: "rettype", scope: !5857, file: !3, line: 51, type: !101)
!5864 = !DILocation(line: 48, column: 44, scope: !5857)
!5865 = !DILocation(line: 50, column: 2, scope: !5857)
!5866 = !DILocation(line: 50, column: 16, scope: !5857)
!5867 = !DILocation(line: 50, column: 23, scope: !5857)
!5868 = !DILocation(line: 50, column: 31, scope: !5857)
!5869 = !DILocation(line: 51, column: 2, scope: !5857)
!5870 = !DILocation(line: 51, column: 6, scope: !5857)
!5871 = !DILocation(line: 53, column: 6, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 53, column: 6)
!5873 = !DILocation(line: 53, column: 11, scope: !5872)
!5874 = !DILocation(line: 53, column: 6, scope: !5857)
!5875 = !DILocation(line: 54, column: 11, scope: !5872)
!5876 = !DILocation(line: 54, column: 3, scope: !5872)
!5877 = !DILocation(line: 55, column: 6, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 55, column: 6)
!5879 = !DILocation(line: 55, column: 11, scope: !5878)
!5880 = !DILocation(line: 55, column: 6, scope: !5857)
!5881 = !DILocation(line: 56, column: 11, scope: !5878)
!5882 = !DILocation(line: 56, column: 3, scope: !5878)
!5883 = !DILocation(line: 58, column: 9, scope: !5857)
!5884 = !DILocation(line: 59, column: 1, scope: !5857)
!5885 = !DILocation(line: 58, column: 2, scope: !5857)
!5886 = !DISubprogram(name: "p9stat_free", scope: !177, file: !177, line: 287, type: !5887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{null, !5823}
!5889 = distinct !DISubprogram(name: "kzalloc", scope: !210, file: !210, line: 719, type: !5890, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5892)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!243, !592, !630}
!5892 = !{!5893, !5894}
!5893 = !DILocalVariable(name: "size", arg: 1, scope: !5889, file: !210, line: 719, type: !592)
!5894 = !DILocalVariable(name: "flags", arg: 2, scope: !5889, file: !210, line: 719, type: !630)
!5895 = !DILocation(line: 719, column: 52, scope: !5889)
!5896 = !DILocation(line: 719, column: 64, scope: !5889)
!5897 = !DILocation(line: 721, column: 17, scope: !5889)
!5898 = !DILocation(line: 721, column: 23, scope: !5889)
!5899 = !DILocation(line: 721, column: 29, scope: !5889)
!5900 = !DILocation(line: 721, column: 9, scope: !5889)
!5901 = !DILocation(line: 721, column: 2, scope: !5889)
!5902 = distinct !DISubprogram(name: "kmalloc", scope: !210, file: !210, line: 591, type: !5890, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5903)
!5903 = !{!5904, !5905, !5906}
!5904 = !DILocalVariable(name: "size", arg: 1, scope: !5902, file: !210, line: 591, type: !592)
!5905 = !DILocalVariable(name: "flags", arg: 2, scope: !5902, file: !210, line: 591, type: !630)
!5906 = !DILocalVariable(name: "index", scope: !5907, file: !210, line: 594, type: !7)
!5907 = distinct !DILexicalBlock(scope: !5908, file: !210, line: 593, column: 42)
!5908 = distinct !DILexicalBlock(scope: !5902, file: !210, line: 593, column: 6)
!5909 = !DILocation(line: 591, column: 61, scope: !5902)
!5910 = !DILocation(line: 591, column: 73, scope: !5902)
!5911 = !DILocation(line: 593, column: 27, scope: !5908)
!5912 = !DILocation(line: 593, column: 6, scope: !5908)
!5913 = !DILocation(line: 593, column: 33, scope: !5908)
!5914 = !DILocation(line: 593, column: 36, scope: !5908)
!5915 = !DILocation(line: 593, column: 6, scope: !5902)
!5916 = !DILocation(line: 594, column: 3, scope: !5907)
!5917 = !DILocation(line: 594, column: 16, scope: !5907)
!5918 = !DILocation(line: 596, column: 7, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5907, file: !210, line: 596, column: 7)
!5920 = !DILocation(line: 596, column: 12, scope: !5919)
!5921 = !DILocation(line: 596, column: 7, scope: !5907)
!5922 = !DILocation(line: 597, column: 25, scope: !5919)
!5923 = !DILocation(line: 597, column: 31, scope: !5919)
!5924 = !DILocation(line: 597, column: 11, scope: !5919)
!5925 = !DILocation(line: 597, column: 4, scope: !5919)
!5926 = !DILocation(line: 599, column: 11, scope: !5907)
!5927 = !DILocation(line: 599, column: 9, scope: !5907)
!5928 = !DILocation(line: 601, column: 33, scope: !5907)
!5929 = !DILocation(line: 601, column: 40, scope: !5907)
!5930 = !DILocation(line: 601, column: 20, scope: !5907)
!5931 = !DILocation(line: 601, column: 5, scope: !5907)
!5932 = !DILocation(line: 601, column: 51, scope: !5907)
!5933 = !DILocation(line: 602, column: 5, scope: !5907)
!5934 = !DILocation(line: 602, column: 12, scope: !5907)
!5935 = !DILocation(line: 600, column: 10, scope: !5907)
!5936 = !DILocation(line: 600, column: 3, scope: !5907)
!5937 = !DILocation(line: 603, column: 2, scope: !5908)
!5938 = !DILocation(line: 604, column: 19, scope: !5902)
!5939 = !DILocation(line: 604, column: 25, scope: !5902)
!5940 = !DILocation(line: 604, column: 9, scope: !5902)
!5941 = !DILocation(line: 604, column: 2, scope: !5902)
!5942 = !DILocation(line: 605, column: 1, scope: !5902)
!5943 = !DISubprogram(name: "kmalloc_large", scope: !210, file: !210, line: 531, type: !5890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5944 = distinct !DISubprogram(name: "__kmalloc_index", scope: !210, file: !210, line: 444, type: !5945, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5947)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!7, !592, !763}
!5947 = !{!5948, !5949}
!5948 = !DILocalVariable(name: "size", arg: 1, scope: !5944, file: !210, line: 444, type: !592)
!5949 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5944, file: !210, line: 445, type: !763)
!5950 = !DILocation(line: 444, column: 60, scope: !5944)
!5951 = !DILocation(line: 445, column: 16, scope: !5944)
!5952 = !DILocation(line: 447, column: 7, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 447, column: 6)
!5954 = !DILocation(line: 447, column: 6, scope: !5944)
!5955 = !DILocation(line: 448, column: 3, scope: !5953)
!5956 = !DILocation(line: 450, column: 6, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 450, column: 6)
!5958 = !DILocation(line: 450, column: 11, scope: !5957)
!5959 = !DILocation(line: 450, column: 6, scope: !5944)
!5960 = !DILocation(line: 451, column: 3, scope: !5957)
!5961 = !DILocation(line: 453, column: 32, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 453, column: 6)
!5963 = !DILocation(line: 453, column: 37, scope: !5962)
!5964 = !DILocation(line: 453, column: 42, scope: !5962)
!5965 = !DILocation(line: 453, column: 45, scope: !5962)
!5966 = !DILocation(line: 453, column: 50, scope: !5962)
!5967 = !DILocation(line: 453, column: 6, scope: !5944)
!5968 = !DILocation(line: 454, column: 3, scope: !5962)
!5969 = !DILocation(line: 455, column: 32, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 455, column: 6)
!5971 = !DILocation(line: 455, column: 37, scope: !5970)
!5972 = !DILocation(line: 455, column: 43, scope: !5970)
!5973 = !DILocation(line: 455, column: 46, scope: !5970)
!5974 = !DILocation(line: 455, column: 51, scope: !5970)
!5975 = !DILocation(line: 455, column: 6, scope: !5944)
!5976 = !DILocation(line: 456, column: 3, scope: !5970)
!5977 = !DILocation(line: 457, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 457, column: 6)
!5979 = !DILocation(line: 457, column: 11, scope: !5978)
!5980 = !DILocation(line: 457, column: 6, scope: !5944)
!5981 = !DILocation(line: 457, column: 26, scope: !5978)
!5982 = !DILocation(line: 458, column: 6, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 458, column: 6)
!5984 = !DILocation(line: 458, column: 11, scope: !5983)
!5985 = !DILocation(line: 458, column: 6, scope: !5944)
!5986 = !DILocation(line: 458, column: 26, scope: !5983)
!5987 = !DILocation(line: 459, column: 6, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 459, column: 6)
!5989 = !DILocation(line: 459, column: 11, scope: !5988)
!5990 = !DILocation(line: 459, column: 6, scope: !5944)
!5991 = !DILocation(line: 459, column: 26, scope: !5988)
!5992 = !DILocation(line: 460, column: 6, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 460, column: 6)
!5994 = !DILocation(line: 460, column: 11, scope: !5993)
!5995 = !DILocation(line: 460, column: 6, scope: !5944)
!5996 = !DILocation(line: 460, column: 26, scope: !5993)
!5997 = !DILocation(line: 461, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 461, column: 6)
!5999 = !DILocation(line: 461, column: 11, scope: !5998)
!6000 = !DILocation(line: 461, column: 6, scope: !5944)
!6001 = !DILocation(line: 461, column: 26, scope: !5998)
!6002 = !DILocation(line: 462, column: 6, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 462, column: 6)
!6004 = !DILocation(line: 462, column: 11, scope: !6003)
!6005 = !DILocation(line: 462, column: 6, scope: !5944)
!6006 = !DILocation(line: 462, column: 26, scope: !6003)
!6007 = !DILocation(line: 463, column: 6, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 463, column: 6)
!6009 = !DILocation(line: 463, column: 11, scope: !6008)
!6010 = !DILocation(line: 463, column: 6, scope: !5944)
!6011 = !DILocation(line: 463, column: 26, scope: !6008)
!6012 = !DILocation(line: 464, column: 6, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 464, column: 6)
!6014 = !DILocation(line: 464, column: 11, scope: !6013)
!6015 = !DILocation(line: 464, column: 6, scope: !5944)
!6016 = !DILocation(line: 464, column: 26, scope: !6013)
!6017 = !DILocation(line: 465, column: 6, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 465, column: 6)
!6019 = !DILocation(line: 465, column: 11, scope: !6018)
!6020 = !DILocation(line: 465, column: 6, scope: !5944)
!6021 = !DILocation(line: 465, column: 26, scope: !6018)
!6022 = !DILocation(line: 466, column: 6, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 466, column: 6)
!6024 = !DILocation(line: 466, column: 11, scope: !6023)
!6025 = !DILocation(line: 466, column: 6, scope: !5944)
!6026 = !DILocation(line: 466, column: 26, scope: !6023)
!6027 = !DILocation(line: 467, column: 6, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 467, column: 6)
!6029 = !DILocation(line: 467, column: 11, scope: !6028)
!6030 = !DILocation(line: 467, column: 6, scope: !5944)
!6031 = !DILocation(line: 467, column: 26, scope: !6028)
!6032 = !DILocation(line: 468, column: 6, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 468, column: 6)
!6034 = !DILocation(line: 468, column: 11, scope: !6033)
!6035 = !DILocation(line: 468, column: 6, scope: !5944)
!6036 = !DILocation(line: 468, column: 26, scope: !6033)
!6037 = !DILocation(line: 469, column: 6, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 469, column: 6)
!6039 = !DILocation(line: 469, column: 11, scope: !6038)
!6040 = !DILocation(line: 469, column: 6, scope: !5944)
!6041 = !DILocation(line: 469, column: 26, scope: !6038)
!6042 = !DILocation(line: 470, column: 6, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 470, column: 6)
!6044 = !DILocation(line: 470, column: 11, scope: !6043)
!6045 = !DILocation(line: 470, column: 6, scope: !5944)
!6046 = !DILocation(line: 470, column: 26, scope: !6043)
!6047 = !DILocation(line: 471, column: 6, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 471, column: 6)
!6049 = !DILocation(line: 471, column: 11, scope: !6048)
!6050 = !DILocation(line: 471, column: 6, scope: !5944)
!6051 = !DILocation(line: 471, column: 26, scope: !6048)
!6052 = !DILocation(line: 472, column: 6, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 472, column: 6)
!6054 = !DILocation(line: 472, column: 11, scope: !6053)
!6055 = !DILocation(line: 472, column: 6, scope: !5944)
!6056 = !DILocation(line: 472, column: 26, scope: !6053)
!6057 = !DILocation(line: 473, column: 6, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 473, column: 6)
!6059 = !DILocation(line: 473, column: 11, scope: !6058)
!6060 = !DILocation(line: 473, column: 6, scope: !5944)
!6061 = !DILocation(line: 473, column: 26, scope: !6058)
!6062 = !DILocation(line: 474, column: 6, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 474, column: 6)
!6064 = !DILocation(line: 474, column: 11, scope: !6063)
!6065 = !DILocation(line: 474, column: 6, scope: !5944)
!6066 = !DILocation(line: 474, column: 27, scope: !6063)
!6067 = !DILocation(line: 475, column: 6, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 475, column: 6)
!6069 = !DILocation(line: 475, column: 11, scope: !6068)
!6070 = !DILocation(line: 475, column: 6, scope: !5944)
!6071 = !DILocation(line: 475, column: 32, scope: !6068)
!6072 = !DILocation(line: 477, column: 50, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !5944, file: !210, line: 477, column: 6)
!6074 = !DILocation(line: 477, column: 6, scope: !5944)
!6075 = !DILocation(line: 478, column: 3, scope: !6073)
!6076 = !DILocation(line: 478, column: 3, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6078, file: !210, line: 478, column: 3)
!6078 = distinct !DILexicalBlock(scope: !6073, file: !210, line: 478, column: 3)
!6079 = !{i32 -2141477276}
!6080 = !DILocation(line: 478, column: 3, scope: !6078)
!6081 = !DILocation(line: 480, column: 3, scope: !6073)
!6082 = !DILocation(line: 480, column: 3, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6073, file: !210, line: 480, column: 3)
!6084 = !DILocation(line: 480, column: 3, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6083, file: !210, line: 480, column: 3)
!6086 = !DILocation(line: 480, column: 3, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6083, file: !210, line: 480, column: 3)
!6088 = !{i64 2153490223, i64 2153490252, i64 2153490298, i64 2153490356, i64 2153490410, i64 2153490464, i64 2153490519, i64 2153490550}
!6089 = !DILocation(line: 483, column: 2, scope: !5944)
!6090 = !DILocation(line: 484, column: 1, scope: !5944)
!6091 = !DISubprogram(name: "kmalloc_trace", scope: !210, file: !210, line: 525, type: !6092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!243, !4943, !630, !592}
!6094 = distinct !DISubprogram(name: "kmalloc_type", scope: !210, file: !210, line: 401, type: !6095, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6097)
!6095 = !DISubroutineType(types: !6096)
!6096 = !{!209, !630, !463}
!6097 = !{!6098, !6099}
!6098 = !DILocalVariable(name: "flags", arg: 1, scope: !6094, file: !210, line: 401, type: !630)
!6099 = !DILocalVariable(name: "caller", arg: 2, scope: !6094, file: !210, line: 401, type: !463)
!6100 = !DILocation(line: 401, column: 67, scope: !6094)
!6101 = !DILocation(line: 401, column: 88, scope: !6094)
!6102 = !DILocation(line: 407, column: 6, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6094, file: !210, line: 407, column: 6)
!6104 = !DILocation(line: 407, column: 6, scope: !6094)
!6105 = !DILocation(line: 413, column: 3, scope: !6103)
!6106 = !DILocation(line: 423, column: 38, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6094, file: !210, line: 423, column: 6)
!6108 = !DILocation(line: 423, column: 44, scope: !6107)
!6109 = !DILocation(line: 423, column: 6, scope: !6094)
!6110 = !DILocation(line: 424, column: 3, scope: !6107)
!6111 = !DILocation(line: 426, column: 3, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6094, file: !210, line: 425, column: 6)
!6113 = !DILocation(line: 429, column: 1, scope: !6094)
!6114 = !DISubprogram(name: "__kmalloc", scope: !210, file: !210, line: 488, type: !5890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6115 = !DISubprogram(name: "__compiletime_assert_255", scope: !210, file: !210, line: 478, type: !2404, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6116 = !DISubprogram(name: "p9_client_readdir", scope: !177, file: !177, line: 210, type: !6117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6117 = !DISubroutineType(types: !6118)
!6118 = !{!101, !4927, !443, !328, !332}
!6119 = !DISubprogram(name: "p9dirent_read", scope: !177, file: !177, line: 211, type: !6120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6120 = !DISubroutineType(types: !6121)
!6121 = !{!101, !4931, !443, !101, !6122}
!6122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
