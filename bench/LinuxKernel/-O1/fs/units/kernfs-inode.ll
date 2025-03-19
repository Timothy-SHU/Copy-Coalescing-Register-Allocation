; ModuleID = 'fs/kernfs/inode.c'
source_filename = "fs/kernfs/inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnt_idmap = type opaque
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iattr = type { i32, i16, %union.anon.14, %union.anon.15, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%union.anon.14 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%union.anon.15 = type { %struct.kgid_t }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.simple_xattrs = type { %struct.rb_root, %struct.rwlock_t }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.16, %struct.qspinlock }
%union.anon.16 = type { %struct.atomic_t }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.18, ptr, i64, i16, i16, ptr, %struct.callback_head }
%struct.rb_node = type { i64, ptr, ptr }
%union.anon.18 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, ptr, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.callback_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%union.anon.19 = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.20 = type { %struct.callback_head }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.22 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.27, %struct.list_head, %struct.list_head, %union.anon.28 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.23, ptr }
%union.anon.23 = type { i64 }
%struct.lockref = type { %union.anon.25 }
%union.anon.25 = type { i64 }
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.simple_xattr = type { %struct.rb_node, ptr, i64, [0 x i8] }

@nop_mnt_idmap = external dso_local global %struct.mnt_idmap, align 1
@kernfs_trusted_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.1, i32 0, ptr null, ptr @kernfs_vfs_xattr_get, ptr @kernfs_vfs_xattr_set }, align 8, !dbg !0
@kernfs_security_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.2, i32 0, ptr null, ptr @kernfs_vfs_xattr_get, ptr @kernfs_vfs_xattr_set }, align 8, !dbg !4989
@kernfs_user_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.3, i32 0, ptr null, ptr @kernfs_vfs_xattr_get, ptr @kernfs_vfs_user_xattr_set }, align 8, !dbg !4993
@kernfs_xattr_handlers = hidden global [4 x ptr] [ptr @kernfs_trusted_xattr_handler, ptr @kernfs_security_xattr_handler, ptr @kernfs_user_xattr_handler, ptr null], align 16, !dbg !312
@__kernfs_iattrs.iattr_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @__kernfs_iattrs.iattr_mutex, i64 16), ptr getelementptr (i8, ptr @__kernfs_iattrs.iattr_mutex, i64 16) } }, align 8, !dbg !4964
@kernfs_iattrs_cache = external dso_local global ptr, align 8
@ram_aops = external dso_local constant %struct.address_space_operations, align 8
@kernfs_iops = internal constant %struct.inode_operations { ptr null, ptr null, ptr @kernfs_iop_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_iop_setattr, ptr @kernfs_iop_getattr, ptr @kernfs_iop_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4979
@kernfs_dir_iops = external dso_local constant %struct.inode_operations, align 64
@kernfs_dir_fops = external dso_local constant %struct.file_operations, align 8
@kernfs_file_fops = external dso_local constant %struct.file_operations, align 8
@kernfs_symlink_iops = external dso_local constant %struct.inode_operations, align 64
@.str = private unnamed_addr constant [18 x i8] c"fs/kernfs/inode.c\00", align 1, !dbg !4974
@.str.1 = private unnamed_addr constant [9 x i8] c"trusted.\00", align 1, !dbg !4981
@.str.2 = private unnamed_addr constant [10 x i8] c"security.\00", align 1, !dbg !4986
@.str.3 = private unnamed_addr constant [6 x i8] c"user.\00", align 1, !dbg !4991

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kernfs_setattr(ptr noundef %kn, ptr noundef %iattr) #0 align 16 !dbg !5004 {
entry:
  %retval = alloca i32, align 4
  %kn.addr = alloca ptr, align 8
  %iattr.addr = alloca ptr, align 8
  %attrs = alloca ptr, align 8
  %ia_valid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5010, metadata !DIExpression()), !dbg !5014
  store ptr %iattr, ptr %iattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iattr.addr, metadata !5011, metadata !DIExpression()), !dbg !5015
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #8, !dbg !5016
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !5012, metadata !DIExpression()), !dbg !5017
  call void @llvm.lifetime.start.p0(i64 4, ptr %ia_valid) #8, !dbg !5018
  call void @llvm.dbg.declare(metadata ptr %ia_valid, metadata !5013, metadata !DIExpression()), !dbg !5019
  %0 = load ptr, ptr %iattr.addr, align 8, !dbg !5020
  %ia_valid1 = getelementptr inbounds %struct.iattr, ptr %0, i32 0, i32 0, !dbg !5021
  %1 = load i32, ptr %ia_valid1, align 8, !dbg !5021
  store i32 %1, ptr %ia_valid, align 4, !dbg !5019
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !5022
  %call = call ptr @kernfs_iattrs(ptr noundef %2) #9, !dbg !5023
  store ptr %call, ptr %attrs, align 8, !dbg !5024
  %3 = load ptr, ptr %attrs, align 8, !dbg !5025
  %tobool = icmp ne ptr %3, null, !dbg !5025
  br i1 %tobool, label %if.end, label %if.then, !dbg !5027

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5028

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %ia_valid, align 4, !dbg !5029
  %and = and i32 %4, 2, !dbg !5031
  %tobool2 = icmp ne i32 %and, 0, !dbg !5031
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5032

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %attrs, align 8, !dbg !5033
  %ia_uid = getelementptr inbounds %struct.kernfs_iattrs, ptr %5, i32 0, i32 0, !dbg !5034
  %6 = load ptr, ptr %iattr.addr, align 8, !dbg !5035
  %7 = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 2, !dbg !5036
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_uid, ptr align 8 %7, i64 4, i1 false), !dbg !5036
  br label %if.end4, !dbg !5033

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load i32, ptr %ia_valid, align 4, !dbg !5037
  %and5 = and i32 %8, 4, !dbg !5039
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5039
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5040

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %attrs, align 8, !dbg !5041
  %ia_gid = getelementptr inbounds %struct.kernfs_iattrs, ptr %9, i32 0, i32 1, !dbg !5042
  %10 = load ptr, ptr %iattr.addr, align 8, !dbg !5043
  %11 = getelementptr inbounds %struct.iattr, ptr %10, i32 0, i32 3, !dbg !5044
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %ia_gid, ptr align 4 %11, i64 4, i1 false), !dbg !5044
  br label %if.end8, !dbg !5041

if.end8:                                          ; preds = %if.then7, %if.end4
  %12 = load i32, ptr %ia_valid, align 4, !dbg !5045
  %and9 = and i32 %12, 16, !dbg !5047
  %tobool10 = icmp ne i32 %and9, 0, !dbg !5047
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !5048

if.then11:                                        ; preds = %if.end8
  %13 = load ptr, ptr %attrs, align 8, !dbg !5049
  %ia_atime = getelementptr inbounds %struct.kernfs_iattrs, ptr %13, i32 0, i32 2, !dbg !5050
  %14 = load ptr, ptr %iattr.addr, align 8, !dbg !5051
  %ia_atime12 = getelementptr inbounds %struct.iattr, ptr %14, i32 0, i32 5, !dbg !5052
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_atime, ptr align 8 %ia_atime12, i64 16, i1 false), !dbg !5052
  br label %if.end13, !dbg !5049

if.end13:                                         ; preds = %if.then11, %if.end8
  %15 = load i32, ptr %ia_valid, align 4, !dbg !5053
  %and14 = and i32 %15, 32, !dbg !5055
  %tobool15 = icmp ne i32 %and14, 0, !dbg !5055
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !5056

if.then16:                                        ; preds = %if.end13
  %16 = load ptr, ptr %attrs, align 8, !dbg !5057
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, ptr %16, i32 0, i32 3, !dbg !5058
  %17 = load ptr, ptr %iattr.addr, align 8, !dbg !5059
  %ia_mtime17 = getelementptr inbounds %struct.iattr, ptr %17, i32 0, i32 6, !dbg !5060
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_mtime, ptr align 8 %ia_mtime17, i64 16, i1 false), !dbg !5060
  br label %if.end18, !dbg !5057

if.end18:                                         ; preds = %if.then16, %if.end13
  %18 = load i32, ptr %ia_valid, align 4, !dbg !5061
  %and19 = and i32 %18, 64, !dbg !5063
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5063
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !5064

if.then21:                                        ; preds = %if.end18
  %19 = load ptr, ptr %attrs, align 8, !dbg !5065
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, ptr %19, i32 0, i32 4, !dbg !5066
  %20 = load ptr, ptr %iattr.addr, align 8, !dbg !5067
  %ia_ctime22 = getelementptr inbounds %struct.iattr, ptr %20, i32 0, i32 7, !dbg !5068
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_ctime, ptr align 8 %ia_ctime22, i64 16, i1 false), !dbg !5068
  br label %if.end23, !dbg !5065

if.end23:                                         ; preds = %if.then21, %if.end18
  %21 = load i32, ptr %ia_valid, align 4, !dbg !5069
  %and24 = and i32 %21, 1, !dbg !5071
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5071
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5072

if.then26:                                        ; preds = %if.end23
  %22 = load ptr, ptr %iattr.addr, align 8, !dbg !5073
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %22, i32 0, i32 1, !dbg !5074
  %23 = load i16, ptr %ia_mode, align 4, !dbg !5074
  %24 = load ptr, ptr %kn.addr, align 8, !dbg !5075
  %mode = getelementptr inbounds %struct.kernfs_node, ptr %24, i32 0, i32 11, !dbg !5076
  store i16 %23, ptr %mode, align 2, !dbg !5077
  br label %if.end27, !dbg !5075

if.end27:                                         ; preds = %if.then26, %if.end23
  store i32 0, ptr %retval, align 4, !dbg !5078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5078

cleanup:                                          ; preds = %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ia_valid) #8, !dbg !5079
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #8, !dbg !5079
  %25 = load i32, ptr %retval, align 4, !dbg !5079
  ret i32 %25, !dbg !5079
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_iattrs(ptr noundef %kn) #0 align 16 !dbg !5080 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5084, metadata !DIExpression()), !dbg !5085
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5086
  %call = call ptr @__kernfs_iattrs(ptr noundef %0, i32 noundef 1) #9, !dbg !5087
  ret ptr %call, !dbg !5088
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kernfs_setattr(ptr noundef %kn, ptr noundef %iattr) #0 align 16 !dbg !5089 {
entry:
  %kn.addr = alloca ptr, align 8
  %iattr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %root = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5091, metadata !DIExpression()), !dbg !5095
  store ptr %iattr, ptr %iattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iattr.addr, metadata !5092, metadata !DIExpression()), !dbg !5096
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !5097
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5093, metadata !DIExpression()), !dbg !5098
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #8, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5094, metadata !DIExpression()), !dbg !5100
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5101
  %call = call ptr @kernfs_root(ptr noundef %0) #9, !dbg !5102
  store ptr %call, ptr %root, align 8, !dbg !5100
  %1 = load ptr, ptr %root, align 8, !dbg !5103
  %kernfs_iattr_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %1, i32 0, i32 9, !dbg !5104
  call void @down_write(ptr noundef %kernfs_iattr_rwsem) #9, !dbg !5105
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !5106
  %3 = load ptr, ptr %iattr.addr, align 8, !dbg !5107
  %call1 = call i32 @__kernfs_setattr(ptr noundef %2, ptr noundef %3) #9, !dbg !5108
  store i32 %call1, ptr %ret, align 4, !dbg !5109
  %4 = load ptr, ptr %root, align 8, !dbg !5110
  %kernfs_iattr_rwsem2 = getelementptr inbounds %struct.kernfs_root, ptr %4, i32 0, i32 9, !dbg !5111
  call void @up_write(ptr noundef %kernfs_iattr_rwsem2) #9, !dbg !5112
  %5 = load i32, ptr %ret, align 4, !dbg !5113
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #8, !dbg !5114
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !5114
  ret i32 %5, !dbg !5115
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_root(ptr noundef %kn) #4 align 16 !dbg !5116 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5122
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2, !dbg !5124
  %1 = load ptr, ptr %parent, align 8, !dbg !5124
  %tobool = icmp ne ptr %1, null, !dbg !5122
  br i1 %tobool, label %if.then, label %if.end, !dbg !5125

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !5126
  %parent1 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 2, !dbg !5127
  %3 = load ptr, ptr %parent1, align 8, !dbg !5127
  store ptr %3, ptr %kn.addr, align 8, !dbg !5128
  br label %if.end, !dbg !5129

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %kn.addr, align 8, !dbg !5130
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 7, !dbg !5131
  %root = getelementptr inbounds %struct.kernfs_elem_dir, ptr %5, i32 0, i32 2, !dbg !5132
  %6 = load ptr, ptr %root, align 8, !dbg !5132
  ret ptr %6, !dbg !5133
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5134 dso_local void @down_write(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5138 dso_local void @up_write(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kernfs_iop_setattr(ptr noundef %idmap, ptr noundef %dentry, ptr noundef %iattr) #0 align 16 !dbg !5139 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %iattr.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %root = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5141, metadata !DIExpression()), !dbg !5149
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5142, metadata !DIExpression()), !dbg !5150
  store ptr %iattr, ptr %iattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iattr.addr, metadata !5143, metadata !DIExpression()), !dbg !5151
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #8, !dbg !5152
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5144, metadata !DIExpression()), !dbg !5153
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5154
  %call = call ptr @d_inode(ptr noundef %0) #9, !dbg !5155
  store ptr %call, ptr %inode, align 8, !dbg !5153
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #8, !dbg !5156
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5145, metadata !DIExpression()), !dbg !5157
  %1 = load ptr, ptr %inode, align 8, !dbg !5158
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !5159
  %2 = load ptr, ptr %i_private, align 8, !dbg !5159
  store ptr %2, ptr %kn, align 8, !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #8, !dbg !5160
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5146, metadata !DIExpression()), !dbg !5161
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #8, !dbg !5162
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5147, metadata !DIExpression()), !dbg !5163
  %3 = load ptr, ptr %kn, align 8, !dbg !5164
  %tobool = icmp ne ptr %3, null, !dbg !5164
  br i1 %tobool, label %if.end, label %if.then, !dbg !5166

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5167

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %kn, align 8, !dbg !5168
  %call1 = call ptr @kernfs_root(ptr noundef %4) #9, !dbg !5169
  store ptr %call1, ptr %root, align 8, !dbg !5170
  %5 = load ptr, ptr %root, align 8, !dbg !5171
  %kernfs_iattr_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 9, !dbg !5172
  call void @down_write(ptr noundef %kernfs_iattr_rwsem) #9, !dbg !5173
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !5174
  %7 = load ptr, ptr %iattr.addr, align 8, !dbg !5175
  %call2 = call i32 @setattr_prepare(ptr noundef @nop_mnt_idmap, ptr noundef %6, ptr noundef %7) #9, !dbg !5176
  store i32 %call2, ptr %error, align 4, !dbg !5177
  %8 = load i32, ptr %error, align 4, !dbg !5178
  %tobool3 = icmp ne i32 %8, 0, !dbg !5178
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5180

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !5181

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %kn, align 8, !dbg !5182
  %10 = load ptr, ptr %iattr.addr, align 8, !dbg !5183
  %call6 = call i32 @__kernfs_setattr(ptr noundef %9, ptr noundef %10) #9, !dbg !5184
  store i32 %call6, ptr %error, align 4, !dbg !5185
  %11 = load i32, ptr %error, align 4, !dbg !5186
  %tobool7 = icmp ne i32 %11, 0, !dbg !5186
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5188

if.then8:                                         ; preds = %if.end5
  br label %out, !dbg !5189

if.end9:                                          ; preds = %if.end5
  %12 = load ptr, ptr %inode, align 8, !dbg !5190
  %13 = load ptr, ptr %iattr.addr, align 8, !dbg !5191
  call void @setattr_copy(ptr noundef @nop_mnt_idmap, ptr noundef %12, ptr noundef %13) #9, !dbg !5192
  br label %out, !dbg !5192

out:                                              ; preds = %if.end9, %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !5148), !dbg !5193
  %14 = load ptr, ptr %root, align 8, !dbg !5194
  %kernfs_iattr_rwsem10 = getelementptr inbounds %struct.kernfs_root, ptr %14, i32 0, i32 9, !dbg !5195
  call void @up_write(ptr noundef %kernfs_iattr_rwsem10) #9, !dbg !5196
  %15 = load i32, ptr %error, align 4, !dbg !5197
  store i32 %15, ptr %retval, align 4, !dbg !5198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5198

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #8, !dbg !5199
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #8, !dbg !5199
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #8, !dbg !5199
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #8, !dbg !5199
  %16 = load i32, ptr %retval, align 4, !dbg !5199
  ret i32 %16, !dbg !5199
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #4 align 16 !dbg !5200 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5204, metadata !DIExpression()), !dbg !5205
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5206
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5207
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5207
  ret ptr %1, !dbg !5208
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5209 dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5210 dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @kernfs_iop_listxattr(ptr noundef %dentry, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !5213 {
entry:
  %retval = alloca i64, align 8
  %dentry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %kn = alloca ptr, align 8
  %attrs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5215, metadata !DIExpression()), !dbg !5220
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5216, metadata !DIExpression()), !dbg !5221
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5217, metadata !DIExpression()), !dbg !5222
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #8, !dbg !5223
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5218, metadata !DIExpression()), !dbg !5224
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5225
  %call = call ptr @kernfs_dentry_node(ptr noundef %0) #9, !dbg !5226
  store ptr %call, ptr %kn, align 8, !dbg !5224
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #8, !dbg !5227
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !5219, metadata !DIExpression()), !dbg !5228
  %1 = load ptr, ptr %kn, align 8, !dbg !5229
  %call1 = call ptr @kernfs_iattrs(ptr noundef %1) #9, !dbg !5230
  store ptr %call1, ptr %attrs, align 8, !dbg !5231
  %2 = load ptr, ptr %attrs, align 8, !dbg !5232
  %tobool = icmp ne ptr %2, null, !dbg !5232
  br i1 %tobool, label %if.end, label %if.then, !dbg !5234

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5235

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5236
  %call2 = call ptr @d_inode(ptr noundef %3) #9, !dbg !5237
  %4 = load ptr, ptr %attrs, align 8, !dbg !5238
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %4, i32 0, i32 5, !dbg !5239
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5240
  %6 = load i64, ptr %size.addr, align 8, !dbg !5241
  %call3 = call i64 @simple_xattr_list(ptr noundef %call2, ptr noundef %xattrs, ptr noundef %5, i64 noundef %6) #9, !dbg !5242
  store i64 %call3, ptr %retval, align 8, !dbg !5243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5243

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #8, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #8, !dbg !5244
  %7 = load i64, ptr %retval, align 8, !dbg !5244
  ret i64 %7, !dbg !5244
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_dentry_node(ptr noundef %dentry) #4 align 16 !dbg !5245 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5251
  %call = call zeroext i1 @d_really_is_negative(ptr noundef %0) #9, !dbg !5253
  br i1 %call, label %if.then, label %if.end, !dbg !5254

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5255
  br label %return, !dbg !5255

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5256
  %call1 = call ptr @d_inode(ptr noundef %1) #9, !dbg !5257
  %i_private = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 47, !dbg !5258
  %2 = load ptr, ptr %i_private, align 8, !dbg !5258
  store ptr %2, ptr %retval, align 8, !dbg !5259
  br label %return, !dbg !5259

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !5260
  ret ptr %3, !dbg !5260
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5261 dso_local i64 @simple_xattr_list(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kernfs_iop_getattr(ptr noundef %idmap, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 align 16 !dbg !5265 {
entry:
  %idmap.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  %request_mask.addr = alloca i32, align 4
  %query_flags.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %root = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5267, metadata !DIExpression()), !dbg !5275
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !5268, metadata !DIExpression()), !dbg !5276
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !5269, metadata !DIExpression()), !dbg !5277
  store i32 %request_mask, ptr %request_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %request_mask.addr, metadata !5270, metadata !DIExpression()), !dbg !5278
  store i32 %query_flags, ptr %query_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %query_flags.addr, metadata !5271, metadata !DIExpression()), !dbg !5279
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #8, !dbg !5280
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5272, metadata !DIExpression()), !dbg !5281
  %0 = load ptr, ptr %path.addr, align 8, !dbg !5282
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !5283
  %1 = load ptr, ptr %dentry, align 8, !dbg !5283
  %call = call ptr @d_inode(ptr noundef %1) #9, !dbg !5284
  store ptr %call, ptr %inode, align 8, !dbg !5281
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #8, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5273, metadata !DIExpression()), !dbg !5286
  %2 = load ptr, ptr %inode, align 8, !dbg !5287
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 47, !dbg !5288
  %3 = load ptr, ptr %i_private, align 8, !dbg !5288
  store ptr %3, ptr %kn, align 8, !dbg !5286
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #8, !dbg !5289
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5274, metadata !DIExpression()), !dbg !5290
  %4 = load ptr, ptr %kn, align 8, !dbg !5291
  %call1 = call ptr @kernfs_root(ptr noundef %4) #9, !dbg !5292
  store ptr %call1, ptr %root, align 8, !dbg !5290
  %5 = load ptr, ptr %root, align 8, !dbg !5293
  %kernfs_iattr_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 9, !dbg !5294
  call void @down_read(ptr noundef %kernfs_iattr_rwsem) #9, !dbg !5295
  %6 = load ptr, ptr %kn, align 8, !dbg !5296
  %7 = load ptr, ptr %inode, align 8, !dbg !5297
  call void @kernfs_refresh_inode(ptr noundef %6, ptr noundef %7) #9, !dbg !5298
  %8 = load i32, ptr %request_mask.addr, align 4, !dbg !5299
  %9 = load ptr, ptr %inode, align 8, !dbg !5300
  %10 = load ptr, ptr %stat.addr, align 8, !dbg !5301
  call void @generic_fillattr(ptr noundef @nop_mnt_idmap, i32 noundef %8, ptr noundef %9, ptr noundef %10) #9, !dbg !5302
  %11 = load ptr, ptr %root, align 8, !dbg !5303
  %kernfs_iattr_rwsem2 = getelementptr inbounds %struct.kernfs_root, ptr %11, i32 0, i32 9, !dbg !5304
  call void @up_read(ptr noundef %kernfs_iattr_rwsem2) #9, !dbg !5305
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #8, !dbg !5306
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #8, !dbg !5306
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #8, !dbg !5306
  ret i32 0, !dbg !5307
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5308 dso_local void @down_read(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernfs_refresh_inode(ptr noundef %kn, ptr noundef %inode) #0 align 16 !dbg !5309 {
entry:
  %kn.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %attrs = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5313, metadata !DIExpression()), !dbg !5316
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5314, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #8, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !5315, metadata !DIExpression()), !dbg !5319
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5320
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 12, !dbg !5321
  %1 = load ptr, ptr %iattr, align 8, !dbg !5321
  store ptr %1, ptr %attrs, align 8, !dbg !5319
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !5322
  %mode = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 11, !dbg !5323
  %3 = load i16, ptr %mode, align 2, !dbg !5323
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5324
  %i_mode = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 0, !dbg !5325
  store i16 %3, ptr %i_mode, align 8, !dbg !5326
  %5 = load ptr, ptr %attrs, align 8, !dbg !5327
  %tobool = icmp ne ptr %5, null, !dbg !5327
  br i1 %tobool, label %if.then, label %if.end, !dbg !5329

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5330
  %7 = load ptr, ptr %attrs, align 8, !dbg !5331
  call void @set_inode_attr(ptr noundef %6, ptr noundef %7) #9, !dbg !5332
  br label %if.end, !dbg !5332

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %kn.addr, align 8, !dbg !5333
  %call = call i32 @kernfs_type(ptr noundef %8) #9, !dbg !5335
  %cmp = icmp eq i32 %call, 1, !dbg !5336
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5337

if.then1:                                         ; preds = %if.end
  %9 = load ptr, ptr %inode.addr, align 8, !dbg !5338
  %10 = load ptr, ptr %kn.addr, align 8, !dbg !5339
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 7, !dbg !5340
  %subdirs = getelementptr inbounds %struct.kernfs_elem_dir, ptr %11, i32 0, i32 0, !dbg !5341
  %12 = load i64, ptr %subdirs, align 8, !dbg !5341
  %add = add i64 %12, 2, !dbg !5342
  %conv = trunc i64 %add to i32, !dbg !5339
  call void @set_nlink(ptr noundef %9, i32 noundef %conv) #9, !dbg !5343
  br label %if.end2, !dbg !5343

if.end2:                                          ; preds = %if.then1, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #8, !dbg !5344
  ret void, !dbg !5344
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5345 dso_local void @generic_fillattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5348 dso_local void @up_read(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kernfs_get_inode(ptr noundef %sb, ptr noundef %kn) #0 align 16 !dbg !5349 {
entry:
  %sb.addr = alloca ptr, align 8
  %kn.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5353, metadata !DIExpression()), !dbg !5356
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5354, metadata !DIExpression()), !dbg !5357
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #8, !dbg !5358
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5355, metadata !DIExpression()), !dbg !5359
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5360
  %1 = load ptr, ptr %kn.addr, align 8, !dbg !5361
  %call = call i64 @kernfs_ino(ptr noundef %1) #9, !dbg !5362
  %call1 = call ptr @iget_locked(ptr noundef %0, i64 noundef %call) #9, !dbg !5363
  store ptr %call1, ptr %inode, align 8, !dbg !5364
  %2 = load ptr, ptr %inode, align 8, !dbg !5365
  %tobool = icmp ne ptr %2, null, !dbg !5365
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5367

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %inode, align 8, !dbg !5368
  %i_state = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 24, !dbg !5369
  %4 = load i64, ptr %i_state, align 8, !dbg !5369
  %and = and i64 %4, 8, !dbg !5370
  %tobool2 = icmp ne i64 %and, 0, !dbg !5370
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5371

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %kn.addr, align 8, !dbg !5372
  %6 = load ptr, ptr %inode, align 8, !dbg !5373
  call void @kernfs_init_inode(ptr noundef %5, ptr noundef %6) #9, !dbg !5374
  br label %if.end, !dbg !5374

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load ptr, ptr %inode, align 8, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #8, !dbg !5376
  ret ptr %7, !dbg !5377
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5378 dso_local ptr @iget_locked(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kernfs_ino(ptr noundef %kn) #4 align 16 !dbg !5381 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5386, metadata !DIExpression()), !dbg !5387
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5388
  %id = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 9, !dbg !5389
  %1 = load i64, ptr %id, align 8, !dbg !5389
  %call = call i64 @kernfs_id_ino(i64 noundef %1) #9, !dbg !5390
  ret i64 %call, !dbg !5391
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernfs_init_inode(ptr noundef %kn, ptr noundef %inode) #0 align 16 !dbg !5392 {
entry:
  %kn.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5394, metadata !DIExpression()), !dbg !5396
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5395, metadata !DIExpression()), !dbg !5397
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5398
  call void @kernfs_get(ptr noundef %0) #9, !dbg !5399
  %1 = load ptr, ptr %kn.addr, align 8, !dbg !5400
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5401
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 47, !dbg !5402
  store ptr %1, ptr %i_private, align 8, !dbg !5403
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5404
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10, !dbg !5405
  %4 = load ptr, ptr %i_mapping, align 8, !dbg !5405
  %a_ops = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 8, !dbg !5406
  store ptr @ram_aops, ptr %a_ops, align 8, !dbg !5407
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5408
  %i_op = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8, !dbg !5409
  store ptr @kernfs_iops, ptr %i_op, align 8, !dbg !5410
  %6 = load ptr, ptr %kn.addr, align 8, !dbg !5411
  %call = call i64 @kernfs_gen(ptr noundef %6) #9, !dbg !5412
  %conv = trunc i64 %call to i32, !dbg !5412
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !5413
  %i_generation = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 44, !dbg !5414
  store i32 %conv, ptr %i_generation, align 8, !dbg !5415
  %8 = load ptr, ptr %inode.addr, align 8, !dbg !5416
  %9 = load ptr, ptr %kn.addr, align 8, !dbg !5417
  %mode = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 11, !dbg !5418
  %10 = load i16, ptr %mode, align 2, !dbg !5418
  call void @set_default_inode_attr(ptr noundef %8, i16 noundef zeroext %10) #9, !dbg !5419
  %11 = load ptr, ptr %kn.addr, align 8, !dbg !5420
  %12 = load ptr, ptr %inode.addr, align 8, !dbg !5421
  call void @kernfs_refresh_inode(ptr noundef %11, ptr noundef %12) #9, !dbg !5422
  %13 = load ptr, ptr %kn.addr, align 8, !dbg !5423
  %call1 = call i32 @kernfs_type(ptr noundef %13) #9, !dbg !5424
  switch i32 %call1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb5
  ], !dbg !5425

sw.bb:                                            ; preds = %entry
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !5426
  %i_op2 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 8, !dbg !5428
  store ptr @kernfs_dir_iops, ptr %i_op2, align 8, !dbg !5429
  %15 = load ptr, ptr %inode.addr, align 8, !dbg !5430
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 39, !dbg !5431
  store ptr @kernfs_dir_fops, ptr %16, align 8, !dbg !5432
  %17 = load ptr, ptr %kn.addr, align 8, !dbg !5433
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 10, !dbg !5435
  %18 = load i16, ptr %flags, align 8, !dbg !5435
  %conv3 = zext i16 %18 to i32, !dbg !5433
  %and = and i32 %conv3, 4096, !dbg !5436
  %tobool = icmp ne i32 %and, 0, !dbg !5436
  br i1 %tobool, label %if.then, label %if.end, !dbg !5437

if.then:                                          ; preds = %sw.bb
  %19 = load ptr, ptr %inode.addr, align 8, !dbg !5438
  call void @make_empty_dir_inode(ptr noundef %19) #9, !dbg !5439
  br label %if.end, !dbg !5439

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !5440

sw.bb4:                                           ; preds = %entry
  %20 = load ptr, ptr %kn.addr, align 8, !dbg !5441
  %21 = getelementptr inbounds %struct.kernfs_node, ptr %20, i32 0, i32 7, !dbg !5442
  %size = getelementptr inbounds %struct.kernfs_elem_attr, ptr %21, i32 0, i32 2, !dbg !5443
  %22 = load i64, ptr %size, align 8, !dbg !5443
  %23 = load ptr, ptr %inode.addr, align 8, !dbg !5444
  %i_size = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 15, !dbg !5445
  store i64 %22, ptr %i_size, align 8, !dbg !5446
  %24 = load ptr, ptr %inode.addr, align 8, !dbg !5447
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 39, !dbg !5448
  store ptr @kernfs_file_fops, ptr %25, align 8, !dbg !5449
  br label %sw.epilog, !dbg !5450

sw.bb5:                                           ; preds = %entry
  %26 = load ptr, ptr %inode.addr, align 8, !dbg !5451
  %i_op6 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 8, !dbg !5452
  store ptr @kernfs_symlink_iops, ptr %i_op6, align 8, !dbg !5453
  br label %sw.epilog, !dbg !5454

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !5455

do.body:                                          ; preds = %sw.default
  br label %do.body7, !dbg !5456

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !5458

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !5456

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 226, i32 0, i64 12) #8, !dbg !5460, !srcloc !5462
  br label %do.end9, !dbg !5460

do.end9:                                          ; preds = %do.body8
  unreachable, !dbg !5456

do.end10:                                         ; No predecessors!
  br label %sw.epilog, !dbg !5463

sw.epilog:                                        ; preds = %do.end10, %sw.bb5, %sw.bb4, %if.end
  %27 = load ptr, ptr %inode.addr, align 8, !dbg !5464
  call void @unlock_new_inode(ptr noundef %27) #9, !dbg !5465
  ret void, !dbg !5466
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kernfs_evict_inode(ptr noundef %inode) #0 align 16 !dbg !5467 {
entry:
  %inode.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5469, metadata !DIExpression()), !dbg !5471
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #8, !dbg !5472
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5470, metadata !DIExpression()), !dbg !5473
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5474
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !5475
  %1 = load ptr, ptr %i_private, align 8, !dbg !5475
  store ptr %1, ptr %kn, align 8, !dbg !5473
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5476
  %i_data = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 41, !dbg !5477
  call void @truncate_inode_pages_final(ptr noundef %i_data) #9, !dbg !5478
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5479
  call void @clear_inode(ptr noundef %3) #9, !dbg !5480
  %4 = load ptr, ptr %kn, align 8, !dbg !5481
  call void @kernfs_put(ptr noundef %4) #9, !dbg !5482
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #8, !dbg !5483
  ret void, !dbg !5483
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5484 dso_local void @truncate_inode_pages_final(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5487 dso_local void @clear_inode(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5488 dso_local void @kernfs_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kernfs_iop_permission(ptr noundef %idmap, ptr noundef %inode, i32 noundef %mask) #0 align 16 !dbg !5491 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %kn = alloca ptr, align 8
  %root = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5493, metadata !DIExpression()), !dbg !5499
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5494, metadata !DIExpression()), !dbg !5500
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5495, metadata !DIExpression()), !dbg !5501
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #8, !dbg !5502
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5496, metadata !DIExpression()), !dbg !5503
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #8, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5497, metadata !DIExpression()), !dbg !5505
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5498, metadata !DIExpression()), !dbg !5507
  %0 = load i32, ptr %mask.addr, align 4, !dbg !5508
  %and = and i32 %0, 128, !dbg !5510
  %tobool = icmp ne i32 %and, 0, !dbg !5510
  br i1 %tobool, label %if.then, label %if.end, !dbg !5511

if.then:                                          ; preds = %entry
  store i32 -10, ptr %retval, align 4, !dbg !5512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5512

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5513
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !5514
  %2 = load ptr, ptr %i_private, align 8, !dbg !5514
  store ptr %2, ptr %kn, align 8, !dbg !5515
  %3 = load ptr, ptr %kn, align 8, !dbg !5516
  %call = call ptr @kernfs_root(ptr noundef %3) #9, !dbg !5517
  store ptr %call, ptr %root, align 8, !dbg !5518
  %4 = load ptr, ptr %root, align 8, !dbg !5519
  %kernfs_iattr_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %4, i32 0, i32 9, !dbg !5520
  call void @down_read(ptr noundef %kernfs_iattr_rwsem) #9, !dbg !5521
  %5 = load ptr, ptr %kn, align 8, !dbg !5522
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5523
  call void @kernfs_refresh_inode(ptr noundef %5, ptr noundef %6) #9, !dbg !5524
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !5525
  %8 = load i32, ptr %mask.addr, align 4, !dbg !5526
  %call1 = call i32 @generic_permission(ptr noundef @nop_mnt_idmap, ptr noundef %7, i32 noundef %8) #9, !dbg !5527
  store i32 %call1, ptr %ret, align 4, !dbg !5528
  %9 = load ptr, ptr %root, align 8, !dbg !5529
  %kernfs_iattr_rwsem2 = getelementptr inbounds %struct.kernfs_root, ptr %9, i32 0, i32 9, !dbg !5530
  call void @up_read(ptr noundef %kernfs_iattr_rwsem2) #9, !dbg !5531
  %10 = load i32, ptr %ret, align 4, !dbg !5532
  store i32 %10, ptr %retval, align 4, !dbg !5533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5533

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !5534
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #8, !dbg !5534
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #8, !dbg !5534
  %11 = load i32, ptr %retval, align 4, !dbg !5534
  ret i32 %11, !dbg !5534
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5535 dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kernfs_xattr_get(ptr noundef %kn, ptr noundef %name, ptr noundef %value, i64 noundef %size) #0 align 16 !dbg !5536 {
entry:
  %retval = alloca i32, align 4
  %kn.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %attrs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5540, metadata !DIExpression()), !dbg !5545
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5541, metadata !DIExpression()), !dbg !5546
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5542, metadata !DIExpression()), !dbg !5547
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5543, metadata !DIExpression()), !dbg !5548
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #8, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !5544, metadata !DIExpression()), !dbg !5550
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5551
  %call = call ptr @kernfs_iattrs_noalloc(ptr noundef %0) #9, !dbg !5552
  store ptr %call, ptr %attrs, align 8, !dbg !5550
  %1 = load ptr, ptr %attrs, align 8, !dbg !5553
  %tobool = icmp ne ptr %1, null, !dbg !5553
  br i1 %tobool, label %if.end, label %if.then, !dbg !5555

if.then:                                          ; preds = %entry
  store i32 -61, ptr %retval, align 4, !dbg !5556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5556

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %attrs, align 8, !dbg !5557
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %2, i32 0, i32 5, !dbg !5558
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5559
  %4 = load ptr, ptr %value.addr, align 8, !dbg !5560
  %5 = load i64, ptr %size.addr, align 8, !dbg !5561
  %call1 = call i32 @simple_xattr_get(ptr noundef %xattrs, ptr noundef %3, ptr noundef %4, i64 noundef %5) #9, !dbg !5562
  store i32 %call1, ptr %retval, align 4, !dbg !5563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5563

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #8, !dbg !5564
  %6 = load i32, ptr %retval, align 4, !dbg !5564
  ret i32 %6, !dbg !5564
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_iattrs_noalloc(ptr noundef %kn) #0 align 16 !dbg !5565 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5567, metadata !DIExpression()), !dbg !5568
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5569
  %call = call ptr @__kernfs_iattrs(ptr noundef %0, i32 noundef 0) #9, !dbg !5570
  ret ptr %call, !dbg !5571
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5572 dso_local i32 @simple_xattr_get(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kernfs_xattr_set(ptr noundef %kn, ptr noundef %name, ptr noundef %value, i64 noundef %size, i32 noundef %flags) #0 align 16 !dbg !5575 {
entry:
  %retval = alloca i32, align 4
  %kn.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %old_xattr = alloca ptr, align 8
  %attrs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5579, metadata !DIExpression()), !dbg !5593
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5580, metadata !DIExpression()), !dbg !5594
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5581, metadata !DIExpression()), !dbg !5595
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5582, metadata !DIExpression()), !dbg !5596
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5583, metadata !DIExpression()), !dbg !5597
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_xattr) #8, !dbg !5598
  call void @llvm.dbg.declare(metadata ptr %old_xattr, metadata !5584, metadata !DIExpression()), !dbg !5599
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #8, !dbg !5600
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !5592, metadata !DIExpression()), !dbg !5601
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5602
  %call = call ptr @kernfs_iattrs(ptr noundef %0) #9, !dbg !5603
  store ptr %call, ptr %attrs, align 8, !dbg !5601
  %1 = load ptr, ptr %attrs, align 8, !dbg !5604
  %tobool = icmp ne ptr %1, null, !dbg !5604
  br i1 %tobool, label %if.end, label %if.then, !dbg !5606

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5607

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %attrs, align 8, !dbg !5608
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %2, i32 0, i32 5, !dbg !5609
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5610
  %4 = load ptr, ptr %value.addr, align 8, !dbg !5611
  %5 = load i64, ptr %size.addr, align 8, !dbg !5612
  %6 = load i32, ptr %flags.addr, align 4, !dbg !5613
  %call1 = call ptr @simple_xattr_set(ptr noundef %xattrs, ptr noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) #9, !dbg !5614
  store ptr %call1, ptr %old_xattr, align 8, !dbg !5615
  %7 = load ptr, ptr %old_xattr, align 8, !dbg !5616
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %7) #9, !dbg !5618
  br i1 %call2, label %if.then3, label %if.end5, !dbg !5619

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %old_xattr, align 8, !dbg !5620
  %call4 = call i64 @PTR_ERR(ptr noundef %8) #9, !dbg !5621
  %conv = trunc i64 %call4 to i32, !dbg !5621
  store i32 %conv, ptr %retval, align 4, !dbg !5622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5622

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %old_xattr, align 8, !dbg !5623
  call void @simple_xattr_free(ptr noundef %9) #9, !dbg !5624
  store i32 0, ptr %retval, align 4, !dbg !5625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5625

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #8, !dbg !5626
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_xattr) #8, !dbg !5626
  %10 = load i32, ptr %retval, align 4, !dbg !5626
  ret i32 %10, !dbg !5626
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5627 dso_local ptr @simple_xattr_set(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5630 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5635, metadata !DIExpression()), !dbg !5636
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5637
  %1 = ptrtoint ptr %0 to i64, !dbg !5637
  %2 = inttoptr i64 %1 to ptr, !dbg !5637
  %3 = ptrtoint ptr %2 to i64, !dbg !5637
  %cmp = icmp uge i64 %3, -4095, !dbg !5637
  %lnot = xor i1 %cmp, true, !dbg !5637
  %lnot1 = xor i1 %lnot, true, !dbg !5637
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5637
  %conv = sext i32 %lnot.ext to i64, !dbg !5637
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5637
  %tobool = icmp ne i64 %expval, 0, !dbg !5637
  ret i1 %tobool, !dbg !5638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !5639 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5645
  %1 = ptrtoint ptr %0 to i64, !dbg !5646
  ret i64 %1, !dbg !5647
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5648 dso_local void @simple_xattr_free(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__kernfs_iattrs(ptr noundef %kn, i32 noundef %alloc) #0 align 16 !dbg !4966 {
entry:
  %kn.addr = alloca ptr, align 8
  %alloc.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral9 = alloca %struct.kgid_t, align 4
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4970, metadata !DIExpression()), !dbg !5651
  store i32 %alloc, ptr %alloc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %alloc.addr, metadata !4971, metadata !DIExpression()), !dbg !5652
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4972, metadata !DIExpression()), !dbg !5654
  call void @mutex_lock(ptr noundef @__kernfs_iattrs.iattr_mutex) #9, !dbg !5655
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5656
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 12, !dbg !5658
  %1 = load ptr, ptr %iattr, align 8, !dbg !5658
  %tobool = icmp ne ptr %1, null, !dbg !5656
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5659

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %alloc.addr, align 4, !dbg !5660
  %tobool1 = icmp ne i32 %2, 0, !dbg !5660
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5661

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out_unlock, !dbg !5662

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr @kernfs_iattrs_cache, align 8, !dbg !5663
  %call = call ptr @kmem_cache_zalloc(ptr noundef %3, i32 noundef 3264) #9, !dbg !5664
  %4 = load ptr, ptr %kn.addr, align 8, !dbg !5665
  %iattr2 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 12, !dbg !5666
  store ptr %call, ptr %iattr2, align 8, !dbg !5667
  %5 = load ptr, ptr %kn.addr, align 8, !dbg !5668
  %iattr3 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 12, !dbg !5670
  %6 = load ptr, ptr %iattr3, align 8, !dbg !5670
  %tobool4 = icmp ne ptr %6, null, !dbg !5668
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5671

if.then5:                                         ; preds = %if.end
  br label %out_unlock, !dbg !5672

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %kn.addr, align 8, !dbg !5673
  %iattr7 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 12, !dbg !5674
  %8 = load ptr, ptr %iattr7, align 8, !dbg !5674
  %ia_uid = getelementptr inbounds %struct.kernfs_iattrs, ptr %8, i32 0, i32 0, !dbg !5675
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5676
  store i32 0, ptr %val, align 4, !dbg !5676
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_uid, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5676
  %9 = load ptr, ptr %kn.addr, align 8, !dbg !5677
  %iattr8 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 12, !dbg !5678
  %10 = load ptr, ptr %iattr8, align 8, !dbg !5678
  %ia_gid = getelementptr inbounds %struct.kernfs_iattrs, ptr %10, i32 0, i32 1, !dbg !5679
  %val10 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral9, i32 0, i32 0, !dbg !5680
  store i32 0, ptr %val10, align 4, !dbg !5680
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %ia_gid, ptr align 4 %.compoundliteral9, i64 4, i1 false), !dbg !5680
  %11 = load ptr, ptr %kn.addr, align 8, !dbg !5681
  %iattr11 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 12, !dbg !5682
  %12 = load ptr, ptr %iattr11, align 8, !dbg !5682
  %ia_atime = getelementptr inbounds %struct.kernfs_iattrs, ptr %12, i32 0, i32 2, !dbg !5683
  call void @ktime_get_real_ts64(ptr noundef %ia_atime) #9, !dbg !5684
  %13 = load ptr, ptr %kn.addr, align 8, !dbg !5685
  %iattr12 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 12, !dbg !5686
  %14 = load ptr, ptr %iattr12, align 8, !dbg !5686
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, ptr %14, i32 0, i32 3, !dbg !5687
  %15 = load ptr, ptr %kn.addr, align 8, !dbg !5688
  %iattr13 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 12, !dbg !5689
  %16 = load ptr, ptr %iattr13, align 8, !dbg !5689
  %ia_atime14 = getelementptr inbounds %struct.kernfs_iattrs, ptr %16, i32 0, i32 2, !dbg !5690
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_mtime, ptr align 8 %ia_atime14, i64 16, i1 false), !dbg !5690
  %17 = load ptr, ptr %kn.addr, align 8, !dbg !5691
  %iattr15 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 12, !dbg !5692
  %18 = load ptr, ptr %iattr15, align 8, !dbg !5692
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 4, !dbg !5693
  %19 = load ptr, ptr %kn.addr, align 8, !dbg !5694
  %iattr16 = getelementptr inbounds %struct.kernfs_node, ptr %19, i32 0, i32 12, !dbg !5695
  %20 = load ptr, ptr %iattr16, align 8, !dbg !5695
  %ia_atime17 = getelementptr inbounds %struct.kernfs_iattrs, ptr %20, i32 0, i32 2, !dbg !5696
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_ctime, ptr align 8 %ia_atime17, i64 16, i1 false), !dbg !5696
  %21 = load ptr, ptr %kn.addr, align 8, !dbg !5697
  %iattr18 = getelementptr inbounds %struct.kernfs_node, ptr %21, i32 0, i32 12, !dbg !5698
  %22 = load ptr, ptr %iattr18, align 8, !dbg !5698
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %22, i32 0, i32 5, !dbg !5699
  call void @simple_xattrs_init(ptr noundef %xattrs) #9, !dbg !5700
  %23 = load ptr, ptr %kn.addr, align 8, !dbg !5701
  %iattr19 = getelementptr inbounds %struct.kernfs_node, ptr %23, i32 0, i32 12, !dbg !5702
  %24 = load ptr, ptr %iattr19, align 8, !dbg !5702
  %nr_user_xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %24, i32 0, i32 6, !dbg !5703
  call void @atomic_set(ptr noundef %nr_user_xattrs, i32 noundef 0) #9, !dbg !5704
  %25 = load ptr, ptr %kn.addr, align 8, !dbg !5705
  %iattr20 = getelementptr inbounds %struct.kernfs_node, ptr %25, i32 0, i32 12, !dbg !5706
  %26 = load ptr, ptr %iattr20, align 8, !dbg !5706
  %user_xattr_size = getelementptr inbounds %struct.kernfs_iattrs, ptr %26, i32 0, i32 7, !dbg !5707
  call void @atomic_set(ptr noundef %user_xattr_size, i32 noundef 0) #9, !dbg !5708
  br label %out_unlock, !dbg !5708

out_unlock:                                       ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !4973), !dbg !5709
  %27 = load ptr, ptr %kn.addr, align 8, !dbg !5710
  %iattr21 = getelementptr inbounds %struct.kernfs_node, ptr %27, i32 0, i32 12, !dbg !5711
  %28 = load ptr, ptr %iattr21, align 8, !dbg !5711
  store ptr %28, ptr %ret, align 8, !dbg !5712
  call void @mutex_unlock(ptr noundef @__kernfs_iattrs.iattr_mutex) #9, !dbg !5713
  %29 = load ptr, ptr %ret, align 8, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !5715
  ret ptr %29, !dbg !5716
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5717 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #4 align 16 !dbg !5721 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !5729, metadata !DIExpression()), !dbg !5731
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5730, metadata !DIExpression()), !dbg !5732
  %0 = load ptr, ptr %k.addr, align 8, !dbg !5733
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5734
  %or = or i32 %1, 256, !dbg !5735
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #9, !dbg !5736
  ret ptr %call, !dbg !5737
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5738 dso_local void @ktime_get_real_ts64(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5743 dso_local void @simple_xattrs_init(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !5746 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5752, metadata !DIExpression()), !dbg !5754
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5753, metadata !DIExpression()), !dbg !5755
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5756
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #9, !dbg !5757
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5758
  %2 = load i32, ptr %i.addr, align 4, !dbg !5759
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #9, !dbg !5760
  ret void, !dbg !5761
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5762 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5763 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5764 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5772, metadata !DIExpression()), !dbg !5774
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5773, metadata !DIExpression()), !dbg !5775
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5776
  %1 = load i64, ptr %size.addr, align 8, !dbg !5777
  %conv = trunc i64 %1 to i32, !dbg !5777
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !5778
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5779
  %3 = load i64, ptr %size.addr, align 8, !dbg !5779
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !5779
  ret void, !dbg !5780
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !5781 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5784, metadata !DIExpression()), !dbg !5786
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5785, metadata !DIExpression()), !dbg !5787
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5788
  %1 = load i32, ptr %i.addr, align 4, !dbg !5789
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #9, !dbg !5790
  ret void, !dbg !5791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5792 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5797, metadata !DIExpression()), !dbg !5799
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5798, metadata !DIExpression()), !dbg !5800
  ret i1 true, !dbg !5801
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5802 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5807, metadata !DIExpression()), !dbg !5810
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5808, metadata !DIExpression()), !dbg !5811
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5809, metadata !DIExpression()), !dbg !5812
  ret void, !dbg !5813
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !5814 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5817, metadata !DIExpression()), !dbg !5819
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5818, metadata !DIExpression()), !dbg !5820
  br label %do.body, !dbg !5821

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !5822
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5822
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5822
  store volatile i32 %0, ptr %counter, align 4, !dbg !5822
  br label %do.end, !dbg !5822

do.end:                                           ; preds = %do.body
  ret void, !dbg !5824
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_negative(ptr noundef %dentry) #4 align 16 !dbg !5825 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5829, metadata !DIExpression()), !dbg !5830
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5831
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5832
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5832
  %cmp = icmp eq ptr %1, null, !dbg !5833
  ret i1 %cmp, !dbg !5834
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_inode_attr(ptr noundef %inode, ptr noundef %attrs) #4 align 16 !dbg !5835 {
entry:
  %inode.addr = alloca ptr, align 8
  %attrs.addr = alloca ptr, align 8
  %coerce = alloca %struct.timespec64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5839, metadata !DIExpression()), !dbg !5841
  store ptr %attrs, ptr %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attrs.addr, metadata !5840, metadata !DIExpression()), !dbg !5842
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5843
  %i_uid = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2, !dbg !5844
  %1 = load ptr, ptr %attrs.addr, align 8, !dbg !5845
  %ia_uid = getelementptr inbounds %struct.kernfs_iattrs, ptr %1, i32 0, i32 0, !dbg !5846
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 8 %ia_uid, i64 4, i1 false), !dbg !5846
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5847
  %i_gid = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4, !dbg !5848
  %3 = load ptr, ptr %attrs.addr, align 8, !dbg !5849
  %ia_gid = getelementptr inbounds %struct.kernfs_iattrs, ptr %3, i32 0, i32 1, !dbg !5850
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %ia_gid, i64 4, i1 false), !dbg !5850
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5851
  %i_atime = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16, !dbg !5852
  %5 = load ptr, ptr %attrs.addr, align 8, !dbg !5853
  %ia_atime = getelementptr inbounds %struct.kernfs_iattrs, ptr %5, i32 0, i32 2, !dbg !5854
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %ia_atime, i64 16, i1 false), !dbg !5854
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5855
  %i_mtime = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 17, !dbg !5856
  %7 = load ptr, ptr %attrs.addr, align 8, !dbg !5857
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, ptr %7, i32 0, i32 3, !dbg !5858
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %ia_mtime, i64 16, i1 false), !dbg !5858
  %8 = load ptr, ptr %inode.addr, align 8, !dbg !5859
  %9 = load ptr, ptr %attrs.addr, align 8, !dbg !5860
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, ptr %9, i32 0, i32 4, !dbg !5861
  %10 = getelementptr inbounds { i64, i64 }, ptr %ia_ctime, i32 0, i32 0, !dbg !5862
  %11 = load i64, ptr %10, align 8, !dbg !5862
  %12 = getelementptr inbounds { i64, i64 }, ptr %ia_ctime, i32 0, i32 1, !dbg !5862
  %13 = load i64, ptr %12, align 8, !dbg !5862
  %call = call { i64, i64 } @inode_set_ctime_to_ts(ptr noundef %8, i64 %11, i64 %13) #9, !dbg !5862
  %14 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 0, !dbg !5862
  %15 = extractvalue { i64, i64 } %call, 0, !dbg !5862
  store i64 %15, ptr %14, align 8, !dbg !5862
  %16 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 1, !dbg !5862
  %17 = extractvalue { i64, i64 } %call, 1, !dbg !5862
  store i64 %17, ptr %16, align 8, !dbg !5862
  ret void, !dbg !5863
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_type(ptr noundef %kn) #4 align 16 !dbg !5864 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5868, metadata !DIExpression()), !dbg !5869
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5870
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10, !dbg !5871
  %1 = load i16, ptr %flags, align 8, !dbg !5871
  %conv = zext i16 %1 to i32, !dbg !5870
  %and = and i32 %conv, 15, !dbg !5872
  ret i32 %and, !dbg !5873
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5874 dso_local void @set_nlink(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @inode_set_ctime_to_ts(ptr noundef %inode, i64 %ts.coerce0, i64 %ts.coerce1) #4 align 16 !dbg !5877 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %ts = alloca %struct.timespec64, align 8
  %inode.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0
  store i64 %ts.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1
  store i64 %ts.coerce1, ptr %1, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5881, metadata !DIExpression()), !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !5882, metadata !DIExpression()), !dbg !5884
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5885
  %__i_ctime = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 18, !dbg !5886
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__i_ctime, ptr align 8 %ts, i64 16, i1 false), !dbg !5887
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %ts, i64 16, i1 false), !dbg !5888
  %3 = load { i64, i64 }, ptr %retval, align 8, !dbg !5889
  ret { i64, i64 } %3, !dbg !5889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kernfs_id_ino(i64 noundef %id) #4 align 16 !dbg !5890 {
entry:
  %id.addr = alloca i64, align 8
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load i64, ptr %id.addr, align 8, !dbg !5896
  ret i64 %0, !dbg !5898
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5899 dso_local void @kernfs_get(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kernfs_gen(ptr noundef %kn) #4 align 16 !dbg !5900 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5902, metadata !DIExpression()), !dbg !5903
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5904
  %id = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 9, !dbg !5905
  %1 = load i64, ptr %id, align 8, !dbg !5905
  %call = call i32 @kernfs_id_gen(i64 noundef %1) #9, !dbg !5906
  %conv = zext i32 %call to i64, !dbg !5906
  ret i64 %conv, !dbg !5907
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_default_inode_attr(ptr noundef %inode, i16 noundef zeroext %mode) #4 align 16 !dbg !5908 {
entry:
  %inode.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %tmp = alloca %struct.timespec64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5912, metadata !DIExpression()), !dbg !5914
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5913, metadata !DIExpression()), !dbg !5915
  %0 = load i16, ptr %mode.addr, align 2, !dbg !5916
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5917
  %i_mode = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 0, !dbg !5918
  store i16 %0, ptr %i_mode, align 8, !dbg !5919
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5920
  %i_atime = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 16, !dbg !5921
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5922
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17, !dbg !5923
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #8, !dbg !5924
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5925
  %call = call { i64, i64 } @inode_set_ctime_current(ptr noundef %4) #9, !dbg !5924
  %5 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !5924
  %6 = extractvalue { i64, i64 } %call, 0, !dbg !5924
  store i64 %6, ptr %5, align 8, !dbg !5924
  %7 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !5924
  %8 = extractvalue { i64, i64 } %call, 1, !dbg !5924
  store i64 %8, ptr %7, align 8, !dbg !5924
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !5924
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #8, !dbg !5924
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %i_mtime, i64 16, i1 false), !dbg !5926
  ret void, !dbg !5927
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5928 dso_local void @make_empty_dir_inode(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5929 dso_local void @unlock_new_inode(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_id_gen(i64 noundef %id) #4 align 16 !dbg !5930 {
entry:
  %id.addr = alloca i64, align 8
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5934, metadata !DIExpression()), !dbg !5935
  ret i32 1, !dbg !5936
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5938 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_vfs_xattr_get(ptr noundef %handler, ptr noundef %unused, ptr noundef %inode, ptr noundef %suffix, ptr noundef %value, i64 noundef %size) #0 align 16 !dbg !5941 {
entry:
  %handler.addr = alloca ptr, align 8
  %unused.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %name = alloca ptr, align 8
  %kn = alloca ptr, align 8
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !5943, metadata !DIExpression()), !dbg !5951
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !5944, metadata !DIExpression()), !dbg !5952
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5945, metadata !DIExpression()), !dbg !5953
  store ptr %suffix, ptr %suffix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %suffix.addr, metadata !5946, metadata !DIExpression()), !dbg !5954
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5947, metadata !DIExpression()), !dbg !5955
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5948, metadata !DIExpression()), !dbg !5956
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8, !dbg !5957
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5949, metadata !DIExpression()), !dbg !5958
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !5959
  %1 = load ptr, ptr %suffix.addr, align 8, !dbg !5960
  %call = call ptr @xattr_full_name(ptr noundef %0, ptr noundef %1) #9, !dbg !5961
  store ptr %call, ptr %name, align 8, !dbg !5958
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #8, !dbg !5962
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5950, metadata !DIExpression()), !dbg !5963
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5964
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 47, !dbg !5965
  %3 = load ptr, ptr %i_private, align 8, !dbg !5965
  store ptr %3, ptr %kn, align 8, !dbg !5963
  %4 = load ptr, ptr %kn, align 8, !dbg !5966
  %5 = load ptr, ptr %name, align 8, !dbg !5967
  %6 = load ptr, ptr %value.addr, align 8, !dbg !5968
  %7 = load i64, ptr %size.addr, align 8, !dbg !5969
  %call1 = call i32 @kernfs_xattr_get(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #9, !dbg !5970
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #8, !dbg !5971
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8, !dbg !5971
  ret i32 %call1, !dbg !5972
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_vfs_xattr_set(ptr noundef %handler, ptr noundef %idmap, ptr noundef %unused, ptr noundef %inode, ptr noundef %suffix, ptr noundef %value, i64 noundef %size, i32 noundef %flags) #0 align 16 !dbg !5973 {
entry:
  %handler.addr = alloca ptr, align 8
  %idmap.addr = alloca ptr, align 8
  %unused.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  %kn = alloca ptr, align 8
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !5975, metadata !DIExpression()), !dbg !5985
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5976, metadata !DIExpression()), !dbg !5986
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !5977, metadata !DIExpression()), !dbg !5987
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5978, metadata !DIExpression()), !dbg !5988
  store ptr %suffix, ptr %suffix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %suffix.addr, metadata !5979, metadata !DIExpression()), !dbg !5989
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5980, metadata !DIExpression()), !dbg !5990
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5981, metadata !DIExpression()), !dbg !5991
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5982, metadata !DIExpression()), !dbg !5992
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8, !dbg !5993
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5983, metadata !DIExpression()), !dbg !5994
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !5995
  %1 = load ptr, ptr %suffix.addr, align 8, !dbg !5996
  %call = call ptr @xattr_full_name(ptr noundef %0, ptr noundef %1) #9, !dbg !5997
  store ptr %call, ptr %name, align 8, !dbg !5994
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #8, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5984, metadata !DIExpression()), !dbg !5999
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6000
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 47, !dbg !6001
  %3 = load ptr, ptr %i_private, align 8, !dbg !6001
  store ptr %3, ptr %kn, align 8, !dbg !5999
  %4 = load ptr, ptr %kn, align 8, !dbg !6002
  %5 = load ptr, ptr %name, align 8, !dbg !6003
  %6 = load ptr, ptr %value.addr, align 8, !dbg !6004
  %7 = load i64, ptr %size.addr, align 8, !dbg !6005
  %8 = load i32, ptr %flags.addr, align 4, !dbg !6006
  %call1 = call i32 @kernfs_xattr_set(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #9, !dbg !6007
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #8, !dbg !6008
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8, !dbg !6008
  ret i32 %call1, !dbg !6009
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6010 dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_vfs_user_xattr_set(ptr noundef %handler, ptr noundef %idmap, ptr noundef %unused, ptr noundef %inode, ptr noundef %suffix, ptr noundef %value, i64 noundef %size, i32 noundef %flags) #0 align 16 !dbg !6013 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %idmap.addr = alloca ptr, align 8
  %unused.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %full_name = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %attrs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !6015, metadata !DIExpression()), !dbg !6026
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !6016, metadata !DIExpression()), !dbg !6027
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !6017, metadata !DIExpression()), !dbg !6028
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6018, metadata !DIExpression()), !dbg !6029
  store ptr %suffix, ptr %suffix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %suffix.addr, metadata !6019, metadata !DIExpression()), !dbg !6030
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6020, metadata !DIExpression()), !dbg !6031
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6021, metadata !DIExpression()), !dbg !6032
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6022, metadata !DIExpression()), !dbg !6033
  call void @llvm.lifetime.start.p0(i64 8, ptr %full_name) #8, !dbg !6034
  call void @llvm.dbg.declare(metadata ptr %full_name, metadata !6023, metadata !DIExpression()), !dbg !6035
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !6036
  %1 = load ptr, ptr %suffix.addr, align 8, !dbg !6037
  %call = call ptr @xattr_full_name(ptr noundef %0, ptr noundef %1) #9, !dbg !6038
  store ptr %call, ptr %full_name, align 8, !dbg !6035
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #8, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !6024, metadata !DIExpression()), !dbg !6040
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6041
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 47, !dbg !6042
  %3 = load ptr, ptr %i_private, align 8, !dbg !6042
  store ptr %3, ptr %kn, align 8, !dbg !6040
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #8, !dbg !6043
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !6025, metadata !DIExpression()), !dbg !6044
  %4 = load ptr, ptr %kn, align 8, !dbg !6045
  %call1 = call ptr @kernfs_root(ptr noundef %4) #9, !dbg !6047
  %flags2 = getelementptr inbounds %struct.kernfs_root, ptr %call1, i32 0, i32 1, !dbg !6048
  %5 = load i32, ptr %flags2, align 8, !dbg !6048
  %and = and i32 %5, 8, !dbg !6049
  %tobool = icmp ne i32 %and, 0, !dbg !6049
  br i1 %tobool, label %if.end, label %if.then, !dbg !6050

if.then:                                          ; preds = %entry
  store i32 -95, ptr %retval, align 4, !dbg !6051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6051

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %kn, align 8, !dbg !6052
  %call3 = call ptr @kernfs_iattrs(ptr noundef %6) #9, !dbg !6053
  store ptr %call3, ptr %attrs, align 8, !dbg !6054
  %7 = load ptr, ptr %attrs, align 8, !dbg !6055
  %tobool4 = icmp ne ptr %7, null, !dbg !6055
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6057

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6058

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %value.addr, align 8, !dbg !6059
  %tobool7 = icmp ne ptr %8, null, !dbg !6059
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !6061

if.then8:                                         ; preds = %if.end6
  %9 = load ptr, ptr %kn, align 8, !dbg !6062
  %10 = load ptr, ptr %full_name, align 8, !dbg !6063
  %11 = load ptr, ptr %attrs, align 8, !dbg !6064
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %11, i32 0, i32 5, !dbg !6065
  %12 = load ptr, ptr %value.addr, align 8, !dbg !6066
  %13 = load i64, ptr %size.addr, align 8, !dbg !6067
  %14 = load i32, ptr %flags.addr, align 4, !dbg !6068
  %call9 = call i32 @kernfs_vfs_user_xattr_add(ptr noundef %9, ptr noundef %10, ptr noundef %xattrs, ptr noundef %12, i64 noundef %13, i32 noundef %14) #9, !dbg !6069
  store i32 %call9, ptr %retval, align 4, !dbg !6070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6070

if.else:                                          ; preds = %if.end6
  %15 = load ptr, ptr %kn, align 8, !dbg !6071
  %16 = load ptr, ptr %full_name, align 8, !dbg !6072
  %17 = load ptr, ptr %attrs, align 8, !dbg !6073
  %xattrs10 = getelementptr inbounds %struct.kernfs_iattrs, ptr %17, i32 0, i32 5, !dbg !6074
  %18 = load ptr, ptr %value.addr, align 8, !dbg !6075
  %19 = load i64, ptr %size.addr, align 8, !dbg !6076
  %20 = load i32, ptr %flags.addr, align 4, !dbg !6077
  %call11 = call i32 @kernfs_vfs_user_xattr_rm(ptr noundef %15, ptr noundef %16, ptr noundef %xattrs10, ptr noundef %18, i64 noundef %19, i32 noundef %20) #9, !dbg !6078
  store i32 %call11, ptr %retval, align 4, !dbg !6079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6079

cleanup:                                          ; preds = %if.else, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #8, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #8, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %full_name) #8, !dbg !6080
  %21 = load i32, ptr %retval, align 4, !dbg !6080
  ret i32 %21, !dbg !6080
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_vfs_user_xattr_add(ptr noundef %kn, ptr noundef %full_name, ptr noundef %xattrs, ptr noundef %value, i64 noundef %size, i32 noundef %flags) #0 align 16 !dbg !6081 {
entry:
  %retval = alloca i32, align 4
  %kn.addr = alloca ptr, align 8
  %full_name.addr = alloca ptr, align 8
  %xattrs.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %sz = alloca ptr, align 8
  %nr = alloca ptr, align 8
  %old_xattr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !6085, metadata !DIExpression()), !dbg !6097
  store ptr %full_name, ptr %full_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %full_name.addr, metadata !6086, metadata !DIExpression()), !dbg !6098
  store ptr %xattrs, ptr %xattrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xattrs.addr, metadata !6087, metadata !DIExpression()), !dbg !6099
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6088, metadata !DIExpression()), !dbg !6100
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6089, metadata !DIExpression()), !dbg !6101
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6090, metadata !DIExpression()), !dbg !6102
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #8, !dbg !6103
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6091, metadata !DIExpression()), !dbg !6104
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !6105
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 12, !dbg !6106
  %1 = load ptr, ptr %iattr, align 8, !dbg !6106
  %user_xattr_size = getelementptr inbounds %struct.kernfs_iattrs, ptr %1, i32 0, i32 7, !dbg !6107
  store ptr %user_xattr_size, ptr %sz, align 8, !dbg !6104
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #8, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !6092, metadata !DIExpression()), !dbg !6109
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !6110
  %iattr1 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 12, !dbg !6111
  %3 = load ptr, ptr %iattr1, align 8, !dbg !6111
  %nr_user_xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %3, i32 0, i32 6, !dbg !6112
  store ptr %nr_user_xattrs, ptr %nr, align 8, !dbg !6109
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_xattr) #8, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %old_xattr, metadata !6093, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6094, metadata !DIExpression()), !dbg !6116
  %4 = load ptr, ptr %nr, align 8, !dbg !6117
  %call = call i32 @atomic_inc_return(ptr noundef %4) #9, !dbg !6119
  %cmp = icmp sgt i32 %call, 128, !dbg !6120
  br i1 %cmp, label %if.then, label %if.end, !dbg !6121

if.then:                                          ; preds = %entry
  store i32 -28, ptr %ret, align 4, !dbg !6122
  br label %dec_count_out, !dbg !6124

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %size.addr, align 8, !dbg !6125
  %conv = trunc i64 %5 to i32, !dbg !6125
  %6 = load ptr, ptr %sz, align 8, !dbg !6127
  %call2 = call i32 @atomic_add_return(i32 noundef %conv, ptr noundef %6) #9, !dbg !6128
  %cmp3 = icmp sgt i32 %call2, 131072, !dbg !6129
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6130

if.then5:                                         ; preds = %if.end
  store i32 -28, ptr %ret, align 4, !dbg !6131
  br label %dec_size_out, !dbg !6133

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %xattrs.addr, align 8, !dbg !6134
  %8 = load ptr, ptr %full_name.addr, align 8, !dbg !6135
  %9 = load ptr, ptr %value.addr, align 8, !dbg !6136
  %10 = load i64, ptr %size.addr, align 8, !dbg !6137
  %11 = load i32, ptr %flags.addr, align 4, !dbg !6138
  %call7 = call ptr @simple_xattr_set(ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, i32 noundef %11) #9, !dbg !6139
  store ptr %call7, ptr %old_xattr, align 8, !dbg !6140
  %12 = load ptr, ptr %old_xattr, align 8, !dbg !6141
  %tobool = icmp ne ptr %12, null, !dbg !6141
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !6143

if.then8:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !6144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6144

if.end9:                                          ; preds = %if.end6
  %13 = load ptr, ptr %old_xattr, align 8, !dbg !6145
  %call10 = call zeroext i1 @IS_ERR(ptr noundef %13) #9, !dbg !6147
  br i1 %call10, label %if.then11, label %if.end14, !dbg !6148

if.then11:                                        ; preds = %if.end9
  %14 = load ptr, ptr %old_xattr, align 8, !dbg !6149
  %call12 = call i64 @PTR_ERR(ptr noundef %14) #9, !dbg !6151
  %conv13 = trunc i64 %call12 to i32, !dbg !6151
  store i32 %conv13, ptr %ret, align 4, !dbg !6152
  br label %dec_size_out, !dbg !6153

if.end14:                                         ; preds = %if.end9
  store i32 0, ptr %ret, align 4, !dbg !6154
  %15 = load ptr, ptr %old_xattr, align 8, !dbg !6155
  %size15 = getelementptr inbounds %struct.simple_xattr, ptr %15, i32 0, i32 2, !dbg !6156
  %16 = load i64, ptr %size15, align 8, !dbg !6156
  store i64 %16, ptr %size.addr, align 8, !dbg !6157
  %17 = load ptr, ptr %old_xattr, align 8, !dbg !6158
  call void @simple_xattr_free(ptr noundef %17) #9, !dbg !6159
  br label %dec_size_out, !dbg !6159

dec_size_out:                                     ; preds = %if.end14, %if.then11, %if.then5
  call void @llvm.dbg.label(metadata !6095), !dbg !6160
  %18 = load i64, ptr %size.addr, align 8, !dbg !6161
  %conv16 = trunc i64 %18 to i32, !dbg !6161
  %19 = load ptr, ptr %sz, align 8, !dbg !6162
  call void @atomic_sub(i32 noundef %conv16, ptr noundef %19) #9, !dbg !6163
  br label %dec_count_out, !dbg !6163

dec_count_out:                                    ; preds = %dec_size_out, %if.then
  call void @llvm.dbg.label(metadata !6096), !dbg !6164
  %20 = load ptr, ptr %nr, align 8, !dbg !6165
  call void @atomic_dec(ptr noundef %20) #9, !dbg !6166
  %21 = load i32, ptr %ret, align 4, !dbg !6167
  store i32 %21, ptr %retval, align 4, !dbg !6168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6168

cleanup:                                          ; preds = %dec_count_out, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_xattr) #8, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #8, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #8, !dbg !6169
  %22 = load i32, ptr %retval, align 4, !dbg !6169
  ret i32 %22, !dbg !6169
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_vfs_user_xattr_rm(ptr noundef %kn, ptr noundef %full_name, ptr noundef %xattrs, ptr noundef %value, i64 noundef %size, i32 noundef %flags) #0 align 16 !dbg !6170 {
entry:
  %retval = alloca i32, align 4
  %kn.addr = alloca ptr, align 8
  %full_name.addr = alloca ptr, align 8
  %xattrs.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %sz = alloca ptr, align 8
  %nr = alloca ptr, align 8
  %old_xattr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !6172, metadata !DIExpression()), !dbg !6181
  store ptr %full_name, ptr %full_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %full_name.addr, metadata !6173, metadata !DIExpression()), !dbg !6182
  store ptr %xattrs, ptr %xattrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xattrs.addr, metadata !6174, metadata !DIExpression()), !dbg !6183
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6175, metadata !DIExpression()), !dbg !6184
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6176, metadata !DIExpression()), !dbg !6185
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6177, metadata !DIExpression()), !dbg !6186
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #8, !dbg !6187
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6178, metadata !DIExpression()), !dbg !6188
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !6189
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 12, !dbg !6190
  %1 = load ptr, ptr %iattr, align 8, !dbg !6190
  %user_xattr_size = getelementptr inbounds %struct.kernfs_iattrs, ptr %1, i32 0, i32 7, !dbg !6191
  store ptr %user_xattr_size, ptr %sz, align 8, !dbg !6188
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #8, !dbg !6192
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !6179, metadata !DIExpression()), !dbg !6193
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !6194
  %iattr1 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 12, !dbg !6195
  %3 = load ptr, ptr %iattr1, align 8, !dbg !6195
  %nr_user_xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %3, i32 0, i32 6, !dbg !6196
  store ptr %nr_user_xattrs, ptr %nr, align 8, !dbg !6193
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_xattr) #8, !dbg !6197
  call void @llvm.dbg.declare(metadata ptr %old_xattr, metadata !6180, metadata !DIExpression()), !dbg !6198
  %4 = load ptr, ptr %xattrs.addr, align 8, !dbg !6199
  %5 = load ptr, ptr %full_name.addr, align 8, !dbg !6200
  %6 = load ptr, ptr %value.addr, align 8, !dbg !6201
  %7 = load i64, ptr %size.addr, align 8, !dbg !6202
  %8 = load i32, ptr %flags.addr, align 4, !dbg !6203
  %call = call ptr @simple_xattr_set(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #9, !dbg !6204
  store ptr %call, ptr %old_xattr, align 8, !dbg !6205
  %9 = load ptr, ptr %old_xattr, align 8, !dbg !6206
  %tobool = icmp ne ptr %9, null, !dbg !6206
  br i1 %tobool, label %if.end, label %if.then, !dbg !6208

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6209

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %old_xattr, align 8, !dbg !6210
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %10) #9, !dbg !6212
  br i1 %call2, label %if.then3, label %if.end5, !dbg !6213

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %old_xattr, align 8, !dbg !6214
  %call4 = call i64 @PTR_ERR(ptr noundef %11) #9, !dbg !6215
  %conv = trunc i64 %call4 to i32, !dbg !6215
  store i32 %conv, ptr %retval, align 4, !dbg !6216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6216

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %old_xattr, align 8, !dbg !6217
  %size6 = getelementptr inbounds %struct.simple_xattr, ptr %12, i32 0, i32 2, !dbg !6218
  %13 = load i64, ptr %size6, align 8, !dbg !6218
  %conv7 = trunc i64 %13 to i32, !dbg !6217
  %14 = load ptr, ptr %sz, align 8, !dbg !6219
  call void @atomic_sub(i32 noundef %conv7, ptr noundef %14) #9, !dbg !6220
  %15 = load ptr, ptr %nr, align 8, !dbg !6221
  call void @atomic_dec(ptr noundef %15) #9, !dbg !6222
  %16 = load ptr, ptr %old_xattr, align 8, !dbg !6223
  call void @simple_xattr_free(ptr noundef %16) #9, !dbg !6224
  store i32 0, ptr %retval, align 4, !dbg !6225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6225

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_xattr) #8, !dbg !6226
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #8, !dbg !6226
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #8, !dbg !6226
  %17 = load i32, ptr %retval, align 4, !dbg !6226
  ret i32 %17, !dbg !6226
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #6 align 16 !dbg !6227 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6231, metadata !DIExpression()), !dbg !6232
  br label %do.body, !dbg !6233

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6234

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6236
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !6237
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6238
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #9, !dbg !6239
  ret i32 %call, !dbg !6240
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_add_return(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6241 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6245, metadata !DIExpression()), !dbg !6247
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6246, metadata !DIExpression()), !dbg !6248
  br label %do.body, !dbg !6249

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6250

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6252
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !6253
  %1 = load i32, ptr %i.addr, align 4, !dbg !6254
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6255
  %call = call i32 @raw_atomic_add_return(i32 noundef %1, ptr noundef %2) #9, !dbg !6256
  ret i32 %call, !dbg !6257
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6258 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6262, metadata !DIExpression()), !dbg !6264
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6263, metadata !DIExpression()), !dbg !6265
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6266
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !6267
  %1 = load i32, ptr %i.addr, align 4, !dbg !6268
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6269
  call void @raw_atomic_sub(i32 noundef %1, ptr noundef %2) #9, !dbg !6270
  ret void, !dbg !6271
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #6 align 16 !dbg !6272 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6276, metadata !DIExpression()), !dbg !6277
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6278
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !6279
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6280
  call void @raw_atomic_dec(ptr noundef %1) #9, !dbg !6281
  ret void, !dbg !6282
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6283 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6285, metadata !DIExpression()), !dbg !6287
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6286, metadata !DIExpression()), !dbg !6288
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6289
  %1 = load i64, ptr %size.addr, align 8, !dbg !6290
  %conv = trunc i64 %1 to i32, !dbg !6290
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !6291
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6292
  %3 = load i64, ptr %size.addr, align 8, !dbg !6292
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !6292
  ret void, !dbg !6293
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #6 align 16 !dbg !6294 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6296, metadata !DIExpression()), !dbg !6297
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6298
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #9, !dbg !6299
  ret i32 %call, !dbg !6300
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6301 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6303, metadata !DIExpression()), !dbg !6305
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6304, metadata !DIExpression()), !dbg !6306
  %0 = load i32, ptr %i.addr, align 4, !dbg !6307
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6308
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #9, !dbg !6309
  ret i32 %call, !dbg !6310
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6311 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6313, metadata !DIExpression()), !dbg !6317
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6314, metadata !DIExpression()), !dbg !6318
  %0 = load i32, ptr %i.addr, align 4, !dbg !6319
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #8, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6315, metadata !DIExpression()), !dbg !6320
  %1 = load i32, ptr %i.addr, align 4, !dbg !6320
  store i32 %1, ptr %__ret, align 4, !dbg !6320
  %2 = load i32, ptr %__ret, align 4, !dbg !6320
  %3 = load ptr, ptr %v.addr, align 8, !dbg !6320
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6320
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #8, !dbg !6320, !srcloc !6321
  store i32 %4, ptr %__ret, align 4, !dbg !6320
  %5 = load i32, ptr %__ret, align 4, !dbg !6320
  store i32 %5, ptr %tmp, align 4, !dbg !6320
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #8, !dbg !6322
  %6 = load i32, ptr %tmp, align 4, !dbg !6320
  %add = add i32 %0, %6, !dbg !6323
  ret i32 %add, !dbg !6324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6325 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6327, metadata !DIExpression()), !dbg !6329
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6328, metadata !DIExpression()), !dbg !6330
  %0 = load i32, ptr %i.addr, align 4, !dbg !6331
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6332
  call void @arch_atomic_sub(i32 noundef %0, ptr noundef %1) #9, !dbg !6333
  ret void, !dbg !6334
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6335 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6337, metadata !DIExpression()), !dbg !6339
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6338, metadata !DIExpression()), !dbg !6340
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6341
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6342
  %1 = load i32, ptr %i.addr, align 4, !dbg !6343
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subl $1,$0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #8, !dbg !6344, !srcloc !6345
  ret void, !dbg !6346
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #6 align 16 !dbg !6347 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6349, metadata !DIExpression()), !dbg !6350
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6351
  call void @arch_atomic_dec(ptr noundef %0) #9, !dbg !6352
  ret void, !dbg !6353
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #6 align 16 !dbg !6354 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6358
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6359
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #8, !dbg !6360, !srcloc !6361
  ret void, !dbg !6362
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002}
!llvm.ident = !{!5003}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "kernfs_trusted_xattr_handler", scope: !2, file: !3, line: 430, type: !316, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/kernfs/.inode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/kernfs/inode\22 -D KBUILD_BASENAME=\22inode\22 -D KBUILD_MODNAME=\22inode\22 -D __KBUILD_MODNAME=kmod_inode -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/kernfs/inode.ll fs/kernfs/inode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !306, globals: !311, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/kernfs/inode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6f15fb77202e13252efc8c98562c260")
!4 = !{!5, !14, !110, !119, !126, !134, !150, !155, !162, !168, !173, !182, !187, !193, !199, !206, !211, !219, !226, !235, !240, !245, !251, !263, !269, !276, !281, !287, !300}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !16, file: !15, line: 147, baseType: !7, size: 32, elements: !107)
!15 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !15, line: 135, size: 512, elements: !17)
!17 = !{!18, !22, !24, !26, !30, !31, !47, !105, !106}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !16, file: !15, line: 136, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 137, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !16, file: !15, line: 138, baseType: !25, size: 32, offset: 128)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !16, file: !15, line: 139, baseType: !27, size: 16, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !28, line: 24, baseType: !29)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !15, line: 150, baseType: !14, size: 32, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !16, file: !15, line: 151, baseType: !32, size: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !15, line: 64, baseType: !34)
!34 = !DISubroutineType(types: !35)
!35 = !{!25, !36, !25, !23, !37, !43}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 61, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !40, line: 72, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !40, line: 16, baseType: !42)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !28, line: 52, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !40, line: 88, baseType: !46)
!46 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !16, file: !15, line: 152, baseType: !48, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !15, line: 117, size: 256, elements: !50)
!50 = !{!51, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !15, line: 118, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !28, line: 174, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 172, size: 32, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !53, file: !28, line: 173, baseType: !25, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !49, file: !15, line: 119, baseType: !57, size: 192, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !58, line: 41, baseType: !59)
!58 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !58, line: 37, size: 192, elements: !60)
!60 = !{!61, !99}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !59, file: !58, line: 38, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !63, line: 29, baseType: !64)
!63 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !63, line: 17, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !63, line: 18, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 18, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !67, file: !63, line: 19, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !71, line: 14, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !70, file: !71, line: 15, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !75, line: 44, baseType: !76)
!75 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !75, line: 14, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !75, line: 15, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !75, line: 15, size: 32, elements: !80)
!80 = !{!81, !82, !92}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !75, line: 16, baseType: !52, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 24, baseType: !83, size: 16)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 24, size: 16, elements: !84)
!84 = !{!85, !91}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !83, file: !75, line: 25, baseType: !86, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !87, line: 17, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !89, line: 21, baseType: !90)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !83, file: !75, line: 26, baseType: !86, size: 8, offset: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 28, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 28, size: 32, elements: !94)
!94 = !{!95, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !93, file: !75, line: 29, baseType: !96, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !29)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !93, file: !75, line: 30, baseType: !96, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !59, file: !58, line: 39, baseType: !100, size: 128, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !28, line: 190, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !28, line: 191, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !28, line: 191, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !16, file: !15, line: 153, baseType: !23, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !16, file: !15, line: 154, baseType: !23, size: 64, offset: 448)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!109 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !111, line: 51, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!114 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!115 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!116 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!117 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!118 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !120, line: 312, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!123 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!124 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!125 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !127, line: 68, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!130 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !135, line: 1325, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!137 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!138 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!139 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!140 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!141 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!142 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!143 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!144 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!145 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!146 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!147 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!148 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!149 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !151, line: 32, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!152 = !{!153, !154}
!153 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!154 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !156, line: 15, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!159 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!160 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!161 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !163, line: 26, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!167 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !111, line: 29, baseType: !7, size: 32, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!171 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!172 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !111, line: 38, baseType: !7, size: 32, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!176 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!177 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!178 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!179 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!180 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!181 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !183, line: 2052, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!184 = !{!185, !186}
!185 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!186 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !188, line: 54, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "USRQUOTA", value: 0)
!191 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!192 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !194, line: 45, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!197 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!198 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !200, line: 487, baseType: !7, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!201 = !{!202, !203, !204, !205}
!202 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!203 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!204 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!205 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !207, line: 65, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!208 = !{!209, !210}
!209 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!210 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !212, line: 620, baseType: !7, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!215 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!216 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!217 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!218 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !212, line: 597, baseType: !25, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!222 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!223 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!224 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!225 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !200, line: 547, baseType: !7, size: 32, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234}
!228 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!229 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!230 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!231 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!232 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!233 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!234 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !200, line: 564, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!238 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!239 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !200, line: 577, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!243 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!244 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !200, line: 503, baseType: !7, size: 32, elements: !246)
!246 = !{!247, !248, !249, !250}
!247 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!248 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!249 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!250 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !252, line: 44, baseType: !7, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262}
!254 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!255 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!256 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!257 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!258 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!259 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!260 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!261 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!262 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !264, line: 16, baseType: !7, size: 32, elements: !265)
!264 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!265 = !{!266, !267, !268}
!266 = !DIEnumerator(name: "TT_NONE", value: 0)
!267 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!268 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !270, line: 51, baseType: !7, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!271 = !{!272, !273, !274, !275}
!272 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!273 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!274 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!275 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 10, baseType: !7, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!278 = !{!279, !280}
!279 = !DIEnumerator(name: "false", value: 0)
!280 = !DIEnumerator(name: "true", value: 1)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_type", file: !282, line: 94, baseType: !7, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!283 = !{!284, !285, !286}
!284 = !DIEnumerator(name: "KERNFS_DIR", value: 1)
!285 = !DIEnumerator(name: "KERNFS_FILE", value: 2)
!286 = !DIEnumerator(name: "KERNFS_LINK", value: 4)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_flag", file: !282, line: 105, baseType: !7, size: 32, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!289 = !DIEnumerator(name: "KERNFS_ACTIVATED", value: 16)
!290 = !DIEnumerator(name: "KERNFS_NS", value: 32)
!291 = !DIEnumerator(name: "KERNFS_HAS_SEQ_SHOW", value: 64)
!292 = !DIEnumerator(name: "KERNFS_HAS_MMAP", value: 128)
!293 = !DIEnumerator(name: "KERNFS_LOCKDEP", value: 256)
!294 = !DIEnumerator(name: "KERNFS_HIDDEN", value: 512)
!295 = !DIEnumerator(name: "KERNFS_SUICIDAL", value: 1024)
!296 = !DIEnumerator(name: "KERNFS_SUICIDED", value: 2048)
!297 = !DIEnumerator(name: "KERNFS_EMPTY_DIR", value: 4096)
!298 = !DIEnumerator(name: "KERNFS_HAS_RELEASE", value: 8192)
!299 = !DIEnumerator(name: "KERNFS_REMOVING", value: 16384)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_root_flag", file: !282, line: 120, baseType: !7, size: 32, elements: !301)
!301 = !{!302, !303, !304, !305}
!302 = !DIEnumerator(name: "KERNFS_ROOT_CREATE_DEACTIVATED", value: 1)
!303 = !DIEnumerator(name: "KERNFS_ROOT_EXTRA_OPEN_PERM_CHECK", value: 2)
!304 = !DIEnumerator(name: "KERNFS_ROOT_SUPPORT_EXPORTOP", value: 4)
!305 = !DIEnumerator(name: "KERNFS_ROOT_SUPPORT_USER_XATTR", value: 8)
!306 = !{!23, !307, !308, !42, !310}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 154, baseType: !7)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!310 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!311 = !{!312, !4964, !4974, !4979, !4981, !0, !4986, !4989, !4991, !4993}
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "kernfs_xattr_handlers", scope: !2, file: !3, line: 448, type: !314, isLocal: false, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !606)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !318, line: 36, size: 384, elements: !319)
!318 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!319 = !{!320, !321, !322, !323, !4956, !4960}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !318, line: 37, baseType: !19, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !317, file: !318, line: 38, baseType: !19, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !318, line: 39, baseType: !25, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !317, file: !318, line: 40, baseType: !324, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !329}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 35, baseType: !328)
!328 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !331, line: 82, size: 1536, elements: !332)
!331 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!332 = !{!333, !334, !344, !352, !353, !373, !4923, !4925, !4938, !4939, !4940, !4941, !4942, !4948, !4949, !4950}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !330, file: !331, line: 84, baseType: !7, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !330, file: !331, line: 85, baseType: !335, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !336, line: 275, baseType: !337)
!336 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !336, line: 275, size: 32, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !337, file: !336, line: 275, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !336, line: 69, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !336, line: 64, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !341, file: !336, line: 65, baseType: !7, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !330, file: !331, line: 86, baseType: !345, size: 128, offset: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !346, line: 38, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!347 = !{!348, !350}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !346, line: 39, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !345, file: !346, line: 39, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !330, file: !331, line: 87, baseType: !329, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !330, file: !331, line: 88, baseType: !354, size: 128, offset: 256)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !331, line: 49, size: 128, elements: !355)
!355 = !{!356, !370}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !331, line: 50, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !331, line: 50, size: 64, elements: !358)
!358 = !{!359, !366}
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !331, line: 51, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !357, file: !331, line: 51, size: 64, elements: !361)
!361 = !{!362, !365}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !360, file: !331, line: 52, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !360, file: !331, line: 52, baseType: !363, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !357, file: !331, line: 54, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !369)
!369 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !331, line: 56, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !330, file: !331, line: 89, baseType: !374, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !183, line: 641, size: 4800, elements: !376)
!376 = !{!377, !378, !379, !387, !388, !395, !396, !399, !400, !4861, !4862, !4863, !4864, !4865, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4905, !4908, !4909, !4910, !4919, !4920, !4921, !4922}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !375, file: !183, line: 642, baseType: !27, size: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !375, file: !183, line: 643, baseType: !29, size: 16, offset: 16)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !375, file: !183, line: 644, baseType: !380, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !381, line: 23, baseType: !382)
!381 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 21, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !382, file: !381, line: 22, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !28, line: 37, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !40, line: 49, baseType: !7)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !375, file: !183, line: 645, baseType: !100, size: 128, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !375, file: !183, line: 646, baseType: !389, size: 32, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !381, line: 28, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 26, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !390, file: !381, line: 27, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !28, line: 38, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !40, line: 50, baseType: !7)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !375, file: !183, line: 647, baseType: !7, size: 32, offset: 224)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !375, file: !183, line: 650, baseType: !397, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !183, line: 607, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !375, file: !183, line: 651, baseType: !397, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !375, file: !183, line: 654, baseType: !401, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !183, line: 1966, size: 2048, align: 512, elements: !404)
!404 = !{!405, !409, !422, !429, !433, !438, !442, !446, !450, !454, !458, !459, !465, !469, !4783, !4812, !4816, !4822, !4826, !4830, !4834, !4838, !4842, !4848, !4852}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !403, file: !183, line: 1967, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!329, !374, !329, !7}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !403, file: !183, line: 1968, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!19, !329, !374, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !415, line: 10, size: 128, elements: !416)
!415 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!416 = !{!417, !421}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !414, file: !415, line: 11, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !23}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !414, file: !415, line: 12, baseType: !23, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !403, file: !183, line: 1969, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!25, !426, !374, !25}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !428, line: 42, flags: DIFlagFwdDecl)
!428 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!429 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !403, file: !183, line: 1970, baseType: !430, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!397, !374, !25, !327}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !403, file: !183, line: 1972, baseType: !434, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!25, !329, !437, !25}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !403, file: !183, line: 1974, baseType: !439, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!25, !426, !374, !329, !27, !327}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !403, file: !183, line: 1976, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!25, !329, !374, !329}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !403, file: !183, line: 1977, baseType: !447, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!25, !374, !329}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !403, file: !183, line: 1978, baseType: !451, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!25, !426, !374, !329, !19}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !403, file: !183, line: 1980, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!25, !426, !374, !329, !27}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !403, file: !183, line: 1982, baseType: !447, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !403, file: !183, line: 1983, baseType: !460, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!25, !426, !374, !329, !27, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !28, line: 21, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !28, line: 18, baseType: !363)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !403, file: !183, line: 1985, baseType: !466, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!25, !426, !374, !329, !374, !329, !7}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !403, file: !183, line: 1987, baseType: !470, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!25, !426, !329, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !183, line: 226, size: 640, elements: !475)
!475 = !{!476, !477, !478, !488, !497, !498, !506, !507, !508}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !474, file: !183, line: 227, baseType: !7, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !474, file: !183, line: 228, baseType: !27, size: 16, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !183, line: 241, baseType: !479, size: 32, offset: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !183, line: 241, size: 32, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !479, file: !183, line: 242, baseType: !380, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !479, file: !183, line: 243, baseType: !483, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !484, line: 16, baseType: !485)
!484 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 14, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !485, file: !484, line: 15, baseType: !385, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !183, line: 245, baseType: !489, size: 32, offset: 96)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !183, line: 245, size: 32, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !489, file: !183, line: 246, baseType: !389, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !489, file: !183, line: 247, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !484, line: 20, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 18, size: 32, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !494, file: !484, line: 19, baseType: !393, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !474, file: !183, line: 249, baseType: !44, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !474, file: !183, line: 250, baseType: !499, size: 128, offset: 192)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !500, line: 13, size: 128, elements: !501)
!500 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!501 = !{!502, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !499, file: !500, line: 14, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !500, line: 8, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !46)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !499, file: !500, line: 15, baseType: !310, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !474, file: !183, line: 251, baseType: !499, size: 128, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !474, file: !183, line: 252, baseType: !499, size: 128, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !474, file: !183, line: 259, baseType: !509, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !183, line: 994, size: 1856, align: 64, elements: !511)
!511 = !{!512, !531, !532, !534, !542, !555, !556, !557, !625, !979, !988, !4650, !4651, !4775, !4776, !4777, !4778, !4780, !4781, !4782}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !183, line: 995, baseType: !513, size: 128)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !510, file: !183, line: 995, size: 128, elements: !514)
!514 = !{!515, !521, !530}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !513, file: !183, line: 996, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !517, line: 60, size: 64, elements: !518)
!517 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !517, line: 61, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !513, file: !183, line: 997, baseType: !522, size: 128, align: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !28, line: 232, size: 128, align: 64, elements: !523)
!523 = !{!524, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !522, file: !28, line: 233, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !522, file: !28, line: 234, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !525}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !513, file: !183, line: 998, baseType: !7, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !510, file: !183, line: 1005, baseType: !62, size: 32, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !510, file: !183, line: 1006, baseType: !533, size: 32, offset: 160)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !28, line: 156, baseType: !7)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !510, file: !183, line: 1007, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !536, line: 13, baseType: !537)
!536 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !28, line: 181, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 179, size: 64, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !538, file: !28, line: 180, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !504)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !510, file: !183, line: 1008, baseType: !543, size: 256, offset: 256)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !544, line: 66, size: 256, elements: !545)
!544 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!545 = !{!546, !547, !549, !554}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !543, file: !544, line: 67, baseType: !535, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !543, file: !544, line: 68, baseType: !548, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !71, line: 23, baseType: !70)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !543, file: !544, line: 70, baseType: !550, size: 32, offset: 96)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !551, line: 15, size: 32, elements: !552)
!551 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !550, file: !551, line: 20, baseType: !52, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !543, file: !544, line: 72, baseType: !100, size: 128, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !510, file: !183, line: 1009, baseType: !44, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !510, file: !183, line: 1010, baseType: !7, size: 32, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !510, file: !183, line: 1011, baseType: !558, size: 256, offset: 640)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !183, line: 948, size: 256, elements: !559)
!559 = !{!560, !583, !621, !622, !623, !624}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !558, file: !183, line: 949, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !562, line: 34, baseType: !563)
!562 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !562, line: 25, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !563, file: !562, line: 26, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !567, line: 27, baseType: !568)
!567 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !567, line: 13, size: 64, elements: !569)
!569 = !{!570, !582}
!570 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !567, line: 14, baseType: !571, size: 32)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !568, file: !567, line: 14, size: 32, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !571, file: !567, line: 15, baseType: !52, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !567, line: 16, baseType: !575, size: 32)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !567, line: 16, size: 32, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !575, file: !567, line: 18, baseType: !86, size: 8)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !575, file: !567, line: 19, baseType: !579, size: 24, offset: 8)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 3)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !568, file: !567, line: 26, baseType: !74, size: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !558, file: !183, line: 950, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !586)
!586 = !{!587, !593, !594, !595, !608, !609, !610, !611}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !585, file: !6, line: 61, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !589, line: 113, baseType: !590)
!589 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !589, line: 111, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !590, file: !589, line: 112, baseType: !52, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !585, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !585, file: !6, line: 63, baseType: !62, size: 32, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !585, file: !6, line: 65, baseType: !596, size: 256, offset: 128)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 256, elements: !606)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !28, line: 194, size: 64, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !597, file: !28, line: 195, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !28, line: 198, size: 128, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !601, file: !28, line: 199, baseType: !600, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !601, file: !28, line: 199, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!606 = !{!607}
!607 = !DISubrange(count: 4)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !585, file: !6, line: 66, baseType: !597, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !585, file: !6, line: 68, baseType: !57, size: 192, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !585, file: !6, line: 69, baseType: !522, size: 128, align: 64, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !585, file: !6, line: 70, baseType: !612, offset: 768)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, elements: !619)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !613, file: !6, line: 55, baseType: !25, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !613, file: !6, line: 56, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!619 = !{!620}
!620 = !DISubrange(count: -1)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !558, file: !183, line: 951, baseType: !5, size: 32, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !558, file: !183, line: 952, baseType: !380, size: 32, offset: 160)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !558, file: !183, line: 952, baseType: !380, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !558, file: !183, line: 953, baseType: !25, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !510, file: !183, line: 1012, baseType: !626, size: 64, offset: 896)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !629, line: 110, size: 1472, elements: !630)
!629 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !646, !647, !648, !649, !650, !651, !777, !778, !779, !780, !781, !812, !965, !966, !974}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !628, file: !629, line: 111, baseType: !535, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !628, file: !629, line: 112, baseType: !380, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !628, file: !629, line: 113, baseType: !389, size: 32, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !628, file: !629, line: 114, baseType: !380, size: 32, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !628, file: !629, line: 115, baseType: !389, size: 32, offset: 160)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !628, file: !629, line: 116, baseType: !380, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !628, file: !629, line: 117, baseType: !389, size: 32, offset: 224)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !628, file: !629, line: 118, baseType: !380, size: 32, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !628, file: !629, line: 119, baseType: !389, size: 32, offset: 288)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !628, file: !629, line: 120, baseType: !7, size: 32, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !628, file: !629, line: 121, baseType: !642, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !428, line: 24, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 24, size: 64, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !643, file: !428, line: 24, baseType: !367, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !628, file: !629, line: 122, baseType: !642, size: 64, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !628, file: !629, line: 123, baseType: !642, size: 64, offset: 512)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !628, file: !629, line: 124, baseType: !642, size: 64, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !628, file: !629, line: 125, baseType: !642, size: 64, offset: 640)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !628, file: !629, line: 127, baseType: !90, size: 8, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !628, file: !629, line: 129, baseType: !652, size: 64, offset: 768)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !654, line: 195, size: 1728, elements: !655)
!654 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!655 = !{!656, !657, !662, !674, !683, !686, !687, !692, !693, !694, !695, !698, !699, !700, !702, !703, !741, !762}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !653, file: !654, line: 196, baseType: !588, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !653, file: !654, line: 197, baseType: !658, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !654, line: 28, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !28, line: 104, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !25)
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !654, line: 198, baseType: !663, size: 192, offset: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !654, line: 198, size: 192, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !663, file: !654, line: 199, baseType: !100, size: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !663, file: !654, line: 200, baseType: !667, size: 192, align: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !668, line: 5, size: 192, align: 64, elements: !669)
!668 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!669 = !{!670, !671, !673}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !667, file: !668, line: 6, baseType: !42, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !667, file: !668, line: 7, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !667, file: !668, line: 8, baseType: !672, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !653, file: !654, line: 205, baseType: !675, size: 320, offset: 256)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !676, line: 48, size: 320, elements: !677)
!676 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!677 = !{!678, !679, !680, !681, !682}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !675, file: !676, line: 49, baseType: !535, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !675, file: !676, line: 55, baseType: !535, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !675, file: !676, line: 57, baseType: !550, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !675, file: !676, line: 59, baseType: !548, size: 32, offset: 160)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !675, file: !676, line: 60, baseType: !100, size: 128, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !653, file: !654, line: 206, baseType: !684, size: 64, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !654, line: 206, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !653, file: !654, line: 207, baseType: !23, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !654, line: 208, baseType: !688, size: 64, offset: 704)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !654, line: 208, size: 64, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !688, file: !654, line: 209, baseType: !503, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !688, file: !654, line: 210, baseType: !503, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !653, file: !654, line: 212, baseType: !503, size: 64, offset: 768)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !653, file: !654, line: 213, baseType: !380, size: 32, offset: 832)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !653, file: !654, line: 214, baseType: !389, size: 32, offset: 864)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !653, file: !654, line: 215, baseType: !696, size: 32, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !654, line: 31, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 110, baseType: !363)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !653, file: !654, line: 216, baseType: !29, size: 16, offset: 928)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !653, file: !654, line: 217, baseType: !29, size: 16, offset: 944)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !653, file: !654, line: 221, baseType: !701, size: 16, offset: 960)
!701 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !654, line: 228, baseType: !42, size: 64, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !654, line: 245, baseType: !704, size: 320, offset: 1088)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !654, line: 245, size: 320, elements: !705)
!705 = !{!706, !733}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !704, file: !654, line: 246, baseType: !707, size: 320)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !654, line: 114, size: 320, elements: !708)
!708 = !{!709, !710, !722, !725, !732}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !707, file: !654, line: 116, baseType: !42, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !654, line: 117, baseType: !711, size: 64, offset: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !654, line: 117, size: 64, elements: !712)
!712 = !{!713, !721}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !654, line: 118, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !654, line: 118, size: 64, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !714, file: !654, line: 120, baseType: !96, size: 16)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !714, file: !654, line: 121, baseType: !718, size: 48, offset: 16)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 48, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 6)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !711, file: !654, line: 127, baseType: !42, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !654, line: 129, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !654, line: 102, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !707, file: !654, line: 130, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !654, line: 108, size: 192, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !727, file: !654, line: 109, baseType: !522, size: 128, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !727, file: !654, line: 110, baseType: !588, size: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !727, file: !654, line: 111, baseType: !327, size: 8, offset: 160)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !707, file: !654, line: 131, baseType: !19, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !654, line: 247, baseType: !734, size: 320)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !654, line: 247, size: 320, elements: !735)
!735 = !{!736, !737, !738, !739, !740}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !734, file: !654, line: 248, baseType: !42, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !734, file: !654, line: 249, baseType: !42, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !654, line: 250, baseType: !723, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !734, file: !654, line: 251, baseType: !726, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !734, file: !654, line: 252, baseType: !437, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !654, line: 260, baseType: !742, size: 256, offset: 1408)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !654, line: 260, size: 256, elements: !743)
!743 = !{!744, !750}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !742, file: !654, line: 261, baseType: !745, size: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !654, line: 134, size: 256, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !745, file: !654, line: 135, baseType: !23, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !745, file: !654, line: 136, baseType: !749, size: 256)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !606)
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !654, line: 262, baseType: !751, size: 256)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !654, line: 262, size: 256, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !751, file: !654, line: 264, baseType: !100, size: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !751, file: !654, line: 265, baseType: !755, size: 128, offset: 128)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !756, line: 22, size: 128, elements: !757)
!756 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!757 = !{!758, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !755, file: !756, line: 23, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !756, line: 23, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !755, file: !756, line: 24, baseType: !42, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !653, file: !654, line: 280, baseType: !763, size: 64, offset: 1664)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !654, line: 176, size: 192, elements: !765)
!765 = !{!766, !775, !776}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !764, file: !654, line: 177, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !654, line: 171, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!25, !652, !771, !773, !652}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !764, file: !654, line: 178, baseType: !652, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !764, file: !654, line: 179, baseType: !723, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !628, file: !629, line: 130, baseType: !652, size: 64, offset: 832)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !628, file: !629, line: 131, baseType: !652, size: 64, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !628, file: !629, line: 132, baseType: !652, size: 64, offset: 960)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !628, file: !629, line: 135, baseType: !23, size: 64, offset: 1024)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !628, file: !629, line: 137, baseType: !782, size: 64, offset: 1088)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !784, line: 14, size: 1088, elements: !785)
!784 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!785 = !{!786, !787, !796, !797, !798, !799, !800, !801}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !783, file: !784, line: 15, baseType: !588, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !783, file: !784, line: 17, baseType: !788, size: 320, offset: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !789, line: 22, size: 320, elements: !790)
!789 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!790 = !{!791, !792, !793, !794}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !788, file: !789, line: 23, baseType: !548, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !788, file: !789, line: 24, baseType: !541, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !788, file: !789, line: 26, baseType: !100, size: 128, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !788, file: !789, line: 28, baseType: !795, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !783, file: !784, line: 19, baseType: !42, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !783, file: !784, line: 20, baseType: !535, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !783, file: !784, line: 23, baseType: !601, size: 128, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !783, file: !784, line: 24, baseType: !380, size: 32, offset: 640)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !783, file: !784, line: 29, baseType: !535, size: 64, offset: 704)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !783, file: !784, line: 36, baseType: !802, size: 320, offset: 768)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !803, line: 15, size: 320, elements: !804)
!803 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!804 = !{!805, !806, !807, !808, !809, !810, !811}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !802, file: !803, line: 16, baseType: !548, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !802, file: !803, line: 18, baseType: !25, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !802, file: !803, line: 19, baseType: !25, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !802, file: !803, line: 20, baseType: !25, size: 32, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !802, file: !803, line: 21, baseType: !25, size: 32, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !802, file: !803, line: 22, baseType: !42, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !802, file: !803, line: 23, baseType: !42, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !628, file: !629, line: 138, baseType: !813, size: 64, offset: 1152)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !815, line: 68, size: 4800, elements: !816)
!815 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!816 = !{!817, !839, !840, !841, !842, !843, !844, !845, !856, !857, !858, !859, !860, !861, !873, !946, !947, !961, !963}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !814, file: !815, line: 69, baseType: !818, size: 576)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !815, line: 23, size: 576, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !818, file: !815, line: 24, baseType: !363, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !815, line: 25, baseType: !822, size: 512, offset: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !815, line: 25, size: 512, elements: !823)
!823 = !{!824, !833}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !822, file: !815, line: 26, baseType: !825, size: 480)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 480, elements: !831)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !815, line: 17, size: 96, elements: !827)
!827 = !{!828, !829, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !826, file: !815, line: 18, baseType: !363, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !826, file: !815, line: 19, baseType: !363, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !826, file: !815, line: 20, baseType: !363, size: 32, offset: 64)
!831 = !{!832}
!832 = !DISubrange(count: 5)
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !815, line: 27, baseType: !834, size: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !822, file: !815, line: 27, size: 128, elements: !835)
!835 = !{!836, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !834, file: !815, line: 28, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !834, file: !815, line: 29, baseType: !837, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !814, file: !815, line: 70, baseType: !818, size: 576, offset: 576)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !814, file: !815, line: 71, baseType: !818, size: 576, offset: 1152)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !814, file: !815, line: 72, baseType: !813, size: 64, offset: 1728)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !814, file: !815, line: 73, baseType: !25, size: 32, offset: 1792)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !814, file: !815, line: 74, baseType: !380, size: 32, offset: 1824)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !814, file: !815, line: 75, baseType: !389, size: 32, offset: 1856)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !814, file: !815, line: 76, baseType: !846, size: 192, offset: 1920)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !847, line: 9, size: 192, elements: !848)
!847 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!848 = !{!849, !850, !854, !855}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !846, file: !847, line: 10, baseType: !535, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !846, file: !847, line: 11, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !847, line: 7, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !846, file: !847, line: 12, baseType: !7, size: 32, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !846, file: !847, line: 13, baseType: !588, size: 32, offset: 160)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !814, file: !815, line: 77, baseType: !42, size: 64, offset: 2112)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !814, file: !815, line: 80, baseType: !327, size: 8, offset: 2176)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !814, file: !815, line: 88, baseType: !100, size: 128, offset: 2240)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !814, file: !815, line: 89, baseType: !652, size: 64, offset: 2368)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !814, file: !815, line: 90, baseType: !675, size: 320, offset: 2432)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !814, file: !815, line: 97, baseType: !862, size: 256, offset: 2752)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !863, line: 98, size: 256, elements: !864)
!863 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !862, file: !863, line: 99, baseType: !535, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !862, file: !863, line: 100, baseType: !100, size: 128, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !862, file: !863, line: 101, baseType: !868, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !863, line: 21, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !814, file: !815, line: 99, baseType: !874, size: 768, offset: 3008)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !15, line: 199, size: 768, elements: !875)
!875 = !{!876, !881}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !874, file: !15, line: 200, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!25, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !874, file: !15, line: 201, baseType: !882, size: 704, offset: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !15, line: 193, size: 704, elements: !883)
!883 = !{!884, !942}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !882, file: !15, line: 195, baseType: !885, size: 640)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !15, line: 173, size: 640, elements: !886)
!886 = !{!887, !899, !911, !912, !932, !933, !935, !941}
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !15, line: 174, baseType: !888, size: 192)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !15, line: 174, size: 192, elements: !889)
!889 = !{!890, !898}
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !15, line: 175, baseType: !891, size: 192)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !15, line: 175, size: 192, elements: !892)
!892 = !{!893, !894, !895, !896, !897}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !891, file: !15, line: 176, baseType: !36, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !891, file: !15, line: 177, baseType: !25, size: 32, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !891, file: !15, line: 178, baseType: !25, size: 32, offset: 96)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !891, file: !15, line: 179, baseType: !25, size: 32, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !891, file: !15, line: 180, baseType: !25, size: 32, offset: 160)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !888, file: !15, line: 182, baseType: !522, size: 128, align: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !885, file: !15, line: 184, baseType: !900, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !902, line: 26, size: 256, elements: !903)
!902 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !901, file: !902, line: 27, baseType: !7, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !901, file: !902, line: 28, baseType: !906, size: 192, offset: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !907, line: 43, size: 192, elements: !908)
!907 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !906, file: !907, line: 44, baseType: !548, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !906, file: !907, line: 45, baseType: !100, size: 128, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !885, file: !15, line: 185, baseType: !36, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !885, file: !15, line: 186, baseType: !913, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !15, line: 204, size: 960, elements: !915)
!915 = !{!916, !917, !921, !928}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !914, file: !15, line: 205, baseType: !874, size: 768)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !914, file: !15, line: 206, baseType: !918, size: 64, offset: 768)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!880, !913}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !914, file: !15, line: 207, baseType: !922, size: 64, offset: 832)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !914, file: !15, line: 209, baseType: !929, size: 64, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!25, !925, !36}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !885, file: !15, line: 187, baseType: !880, size: 64, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !885, file: !15, line: 188, baseType: !934, size: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !885, file: !15, line: 189, baseType: !936, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !15, line: 157, size: 256, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !937, file: !15, line: 158, baseType: !667, size: 192, align: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !937, file: !15, line: 159, baseType: !925, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !885, file: !15, line: 190, baseType: !597, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !882, file: !15, line: 196, baseType: !943, size: 64, offset: 640)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !668, line: 12, size: 64, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !943, file: !668, line: 13, baseType: !672, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !814, file: !815, line: 100, baseType: !925, size: 64, offset: 3776)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !814, file: !815, line: 102, baseType: !948, size: 64, offset: 3840)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !815, line: 107, size: 1152, elements: !950)
!950 = !{!951, !952, !953, !954, !955, !959}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !949, file: !815, line: 108, baseType: !601, size: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !949, file: !815, line: 109, baseType: !813, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !949, file: !815, line: 110, baseType: !380, size: 32, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !949, file: !815, line: 111, baseType: !52, size: 32, offset: 224)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !949, file: !815, line: 112, baseType: !956, size: 640, offset: 256)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 640, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 10)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !949, file: !815, line: 113, baseType: !960, size: 256, offset: 896)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 256, elements: !606)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !814, file: !815, line: 103, baseType: !962, size: 640, offset: 3904)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 640, elements: !957)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !814, file: !815, line: 104, baseType: !964, size: 256, offset: 4544)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 256, elements: !606)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !628, file: !629, line: 139, baseType: !948, size: 64, offset: 1216)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !628, file: !629, line: 140, baseType: !967, size: 64, offset: 1280)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !629, line: 25, size: 64, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !968, file: !629, line: 26, baseType: !52, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !968, file: !629, line: 27, baseType: !25, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !968, file: !629, line: 28, baseType: !973, offset: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, elements: !619)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !628, file: !629, line: 142, baseType: !975, size: 128, offset: 1344)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !629, line: 142, size: 128, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !975, file: !629, line: 143, baseType: !25, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !975, file: !629, line: 144, baseType: !522, size: 128, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !510, file: !183, line: 1013, baseType: !980, size: 256, offset: 960)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !183, line: 970, size: 256, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !980, file: !183, line: 971, baseType: !42, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !980, file: !183, line: 972, baseType: !7, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !980, file: !183, line: 973, baseType: !7, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !980, file: !183, line: 974, baseType: !7, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !980, file: !183, line: 975, baseType: !7, size: 32, offset: 160)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !980, file: !183, line: 976, baseType: !44, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !510, file: !183, line: 1014, baseType: !989, size: 128, offset: 1216)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !990, line: 8, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!991 = !{!992, !4649}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !989, file: !990, line: 9, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !995, line: 70, size: 256, elements: !996)
!995 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!996 = !{!997, !998, !4647, !4648}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !994, file: !995, line: 71, baseType: !329, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !994, file: !995, line: 72, baseType: !999, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !183, line: 1190, size: 10752, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !2528, !2660, !2700, !2785, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2799, !2803, !2804, !3262, !3265, !3323, !3326, !3327, !3328, !3369, !4522, !4523, !4524, !4525, !4526, !4527, !4530, !4532, !4539, !4540, !4541, !4542, !4601, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1000, file: !183, line: 1191, baseType: !100, size: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1000, file: !183, line: 1192, baseType: !463, size: 32, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1000, file: !183, line: 1193, baseType: !90, size: 8, offset: 160)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1000, file: !183, line: 1194, baseType: !42, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1000, file: !183, line: 1195, baseType: !44, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1000, file: !183, line: 1196, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !183, line: 2366, size: 576, elements: !1010)
!1010 = !{!1011, !1012, !1013, !2503, !2507, !2511, !2515, !2516, !2517, !2518, !2520, !2521, !2522, !2524, !2525, !2526, !2527}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1009, file: !183, line: 2367, baseType: !19, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1009, file: !183, line: 2368, baseType: !25, size: 32, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1009, file: !183, line: 2376, baseType: !1014, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!25, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !111, line: 90, size: 1216, elements: !1019)
!1019 = !{!1020, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1077, !1078, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1018, file: !111, line: 91, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !111, line: 115, size: 384, elements: !1024)
!1024 = !{!1025, !1029, !1033, !1062, !1066, !1067}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1023, file: !111, line: 116, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1017}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1023, file: !111, line: 117, baseType: !1030, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!25, !1017, !1017}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !1023, file: !111, line: 118, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!25, !1017, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !111, line: 63, size: 320, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1060, !1061}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1038, file: !111, line: 64, baseType: !19, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1038, file: !111, line: 65, baseType: !110, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !111, line: 66, baseType: !1043, size: 64, offset: 128)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !111, line: 66, size: 64, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1059}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1043, file: !111, line: 67, baseType: !437, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1043, file: !111, line: 68, baseType: !23, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1043, file: !111, line: 69, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !183, line: 2470, size: 256, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1057}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1049, file: !183, line: 2471, baseType: !19, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1049, file: !183, line: 2472, baseType: !19, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1049, file: !183, line: 2473, baseType: !52, size: 32, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1049, file: !183, line: 2474, baseType: !1055, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !183, line: 2469, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1049, file: !183, line: 2475, baseType: !1058, offset: 256)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !619)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1043, file: !111, line: 70, baseType: !509, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1038, file: !111, line: 72, baseType: !38, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !1038, file: !111, line: 73, baseType: !25, size: 32, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !1023, file: !111, line: 119, baseType: !1063, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!25, !1017, !23}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !1023, file: !111, line: 120, baseType: !1014, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !1023, file: !111, line: 121, baseType: !1014, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !1018, file: !111, line: 92, baseType: !543, size: 256, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !1018, file: !111, line: 93, baseType: !1008, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !1018, file: !111, line: 94, baseType: !23, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !1018, file: !111, line: 95, baseType: !23, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1018, file: !111, line: 96, baseType: !329, size: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1018, file: !111, line: 97, baseType: !813, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1018, file: !111, line: 98, baseType: !1075, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !654, line: 34, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1018, file: !111, line: 99, baseType: !626, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1018, file: !111, line: 100, baseType: !1079, size: 128, offset: 768)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !111, line: 76, size: 128, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1079, file: !111, line: 77, baseType: !19, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1079, file: !111, line: 78, baseType: !1083, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !111, line: 173, size: 640, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1090, !2487}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1084, file: !111, line: 174, baseType: !588, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1084, file: !111, line: 175, baseType: !86, size: 8, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1084, file: !111, line: 176, baseType: !86, size: 8, offset: 40)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1084, file: !111, line: 177, baseType: !86, size: 8, offset: 48)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1084, file: !111, line: 178, baseType: !1091, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !120, line: 402, size: 9216, align: 512, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1100, !2144, !2170, !2171, !2172, !2173, !2177, !2180, !2181, !2182, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2250, !2254, !2274, !2292, !2293, !2294, !2295, !2304, !2327, !2328, !2331, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2345, !2346, !2445, !2453, !2454, !2455, !2457, !2461, !2462, !2466, !2467, !2468, !2469, !2471, !2472, !2473, !2480, !2481, !2482, !2486}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1092, file: !120, line: 403, baseType: !119, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1092, file: !120, line: 406, baseType: !100, size: 128, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1092, file: !120, line: 409, baseType: !1097, size: 448, offset: 192)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 448, elements: !1098)
!1098 = !{!1099}
!1099 = !DISubrange(count: 56)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1092, file: !120, line: 417, baseType: !1101, size: 768, offset: 640)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !120, line: 45, size: 768, elements: !1102)
!1102 = !{!1103, !2138, !2139, !2140, !2143}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1101, file: !120, line: 46, baseType: !1104, size: 512)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1105, line: 64, size: 512, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1106 = !{!1107, !1108, !1109, !1111, !1155, !1962, !2128, !2133, !2134, !2135, !2136, !2137}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1104, file: !1105, line: 65, baseType: !19, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1104, file: !1105, line: 66, baseType: !100, size: 128, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1104, file: !1105, line: 67, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1104, file: !1105, line: 68, baseType: !1112, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1105, line: 168, size: 768, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1113, file: !1105, line: 169, baseType: !100, size: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1113, file: !1105, line: 170, baseType: !62, size: 32, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1113, file: !1105, line: 171, baseType: !1104, size: 512, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1113, file: !1105, line: 172, baseType: !1119, size: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1105, line: 133, size: 192, elements: !1122)
!1122 = !{!1123, !1130, !1135}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1121, file: !1105, line: 134, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!25, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1104)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1121, file: !1105, line: 135, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!19, !1128}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1121, file: !1105, line: 136, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!25, !1128, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1105, line: 125, size: 20736, elements: !1142)
!1142 = !{!1143, !1145, !1149, !1150, !1154}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1141, file: !1105, line: 126, baseType: !1144, size: 192)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 192, elements: !580)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1141, file: !1105, line: 127, baseType: !1146, size: 4096, offset: 192)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 4096, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1141, file: !1105, line: 128, baseType: !25, size: 32, offset: 4288)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1141, file: !1105, line: 129, baseType: !1151, size: 16384, offset: 4320)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16384, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 2048)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1141, file: !1105, line: 130, baseType: !25, size: 32, offset: 20704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1104, file: !1105, line: 69, baseType: !1156, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1105, line: 116, size: 384, elements: !1159)
!1159 = !{!1160, !1164, !1186, !1926, !1954, !1958}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1158, file: !1105, line: 117, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1110}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1158, file: !1105, line: 118, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1168, line: 254, size: 128, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1169 = !{!1170, !1182}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1167, file: !1168, line: 255, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!1174, !1110, !1177, !437}
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 66, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !40, line: 73, baseType: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !40, line: 15, baseType: !310)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1168, line: 30, size: 128, elements: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1178, file: !1168, line: 31, baseType: !19, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1178, file: !1168, line: 32, baseType: !27, size: 16, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1167, file: !1168, line: 256, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!1174, !1110, !1177, !19, !38}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1158, file: !1105, line: 119, baseType: !1187, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1168, line: 84, size: 320, elements: !1191)
!1191 = !{!1192, !1193, !1197, !1922, !1924}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1190, file: !1168, line: 85, baseType: !19, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1190, file: !1168, line: 86, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!27, !1110, !1177, !25}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1190, file: !1168, line: 88, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!27, !1110, !1201, !25}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1168, line: 175, size: 512, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1913, !1917, !1918}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1202, file: !1168, line: 176, baseType: !1178, size: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1202, file: !1168, line: 177, baseType: !38, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1202, file: !1168, line: 178, baseType: !23, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1202, file: !1168, line: 179, baseType: !1208, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !183, line: 472, size: 1536, align: 64, elements: !1213)
!1213 = !{!1214, !1215, !1222, !1223, !1224, !1225, !1230, !1231, !1232, !1905, !1906, !1907, !1910, !1911, !1912}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1212, file: !183, line: 473, baseType: !374, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1212, file: !183, line: 474, baseType: !1216, size: 128, offset: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1217, line: 296, size: 128, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1218 = !{!1219, !1220, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1216, file: !1217, line: 297, baseType: !62, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1216, file: !1217, line: 299, baseType: !307, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1216, file: !1217, line: 300, baseType: !23, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1212, file: !183, line: 475, baseType: !675, size: 320, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1212, file: !183, line: 476, baseType: !307, size: 32, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1212, file: !183, line: 477, baseType: !52, size: 32, offset: 544)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1212, file: !183, line: 482, baseType: !1226, size: 128, offset: 576)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !668, line: 26, size: 128, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1226, file: !668, line: 27, baseType: !943, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1226, file: !668, line: 28, baseType: !672, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1212, file: !183, line: 483, baseType: !42, size: 64, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1212, file: !183, line: 484, baseType: !42, size: 64, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1212, file: !183, line: 485, baseType: !1233, size: 64, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !183, line: 404, size: 1280, elements: !1236)
!1236 = !{!1237, !1703, !1773, !1777, !1781, !1798, !1804, !1808, !1813, !1817, !1821, !1825, !1869, !1873, !1877, !1881, !1886, !1890, !1897, !1901}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1235, file: !183, line: 405, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!25, !1241, !1683}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !135, line: 74, size: 512, align: 128, elements: !1243)
!1243 = !{!1244, !1245, !1677, !1682}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !135, line: 75, baseType: !42, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !135, line: 83, baseType: !1246, size: 320, offset: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1242, file: !135, line: 83, size: 320, elements: !1247)
!1247 = !{!1248, !1269, !1283, !1287, !1676}
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !135, line: 84, baseType: !1249, size: 320)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !135, line: 84, size: 320, elements: !1250)
!1250 = !{!1251, !1262, !1263, !1268}
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !135, line: 90, baseType: !1252, size: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !135, line: 90, size: 128, elements: !1253)
!1253 = !{!1254, !1255, !1260, !1261}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1252, file: !135, line: 91, baseType: !100, size: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !135, line: 94, baseType: !1256, size: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !135, line: 94, size: 128, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1256, file: !135, line: 96, baseType: !23, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1256, file: !135, line: 98, baseType: !7, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1252, file: !135, line: 102, baseType: !100, size: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1252, file: !135, line: 103, baseType: !100, size: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1249, file: !135, line: 106, baseType: !1211, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !135, line: 107, baseType: !1264, size: 64, offset: 192)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !135, line: 107, size: 64, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1264, file: !135, line: 108, baseType: !42, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1264, file: !135, line: 109, baseType: !42, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1249, file: !135, line: 117, baseType: !42, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !135, line: 119, baseType: !1270, size: 320)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !135, line: 119, size: 320, elements: !1271)
!1271 = !{!1272, !1273, !1276, !1277, !1278}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1270, file: !135, line: 124, baseType: !42, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1270, file: !135, line: 125, baseType: !1274, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !135, line: 125, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1270, file: !135, line: 126, baseType: !42, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1270, file: !135, line: 127, baseType: !42, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !135, line: 128, baseType: !1279, size: 64, offset: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !135, line: 128, size: 64, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1279, file: !135, line: 133, baseType: !42, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1279, file: !135, line: 138, baseType: !535, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !135, line: 141, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !135, line: 141, size: 64, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1284, file: !135, line: 142, baseType: !42, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !135, line: 144, baseType: !1288, size: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !135, line: 144, size: 128, elements: !1289)
!1289 = !{!1290, !1675}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1288, file: !135, line: 146, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !127, line: 126, size: 1216, elements: !1293)
!1293 = !{!1294, !1304, !1325, !1326, !1327, !1328, !1329, !1657, !1658, !1659}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1292, file: !127, line: 127, baseType: !1295, size: 384)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !127, line: 21, size: 384, elements: !1296)
!1296 = !{!1297, !1298, !1300, !1301, !1302, !1303}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1295, file: !127, line: 22, baseType: !42, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1295, file: !127, line: 23, baseType: !1299, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1295, file: !127, line: 24, baseType: !1299, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1295, file: !127, line: 25, baseType: !42, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1295, file: !127, line: 26, baseType: !42, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1295, file: !127, line: 27, baseType: !42, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1292, file: !127, line: 128, baseType: !1305, size: 128, offset: 384)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1306, line: 105, size: 128, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1305, file: !1306, line: 110, baseType: !42, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1305, file: !1306, line: 118, baseType: !1310, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1306, line: 95, size: 448, elements: !1312)
!1312 = !{!1313, !1314, !1320, !1321, !1322, !1323, !1324}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1311, file: !1306, line: 96, baseType: !535, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1311, file: !1306, line: 97, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1306, line: 60, baseType: !1317)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1311, file: !1306, line: 98, baseType: !1315, size: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1311, file: !1306, line: 99, baseType: !327, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1311, file: !1306, line: 100, baseType: !327, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1311, file: !1306, line: 101, baseType: !522, size: 128, align: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1311, file: !1306, line: 102, baseType: !1319, size: 64, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1292, file: !127, line: 129, baseType: !901, size: 256, offset: 512)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1292, file: !127, line: 130, baseType: !126, size: 32, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1292, file: !127, line: 131, baseType: !7, size: 32, offset: 800)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1292, file: !127, line: 132, baseType: !42, size: 64, offset: 832)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1292, file: !127, line: 133, baseType: !1330, size: 64, offset: 896)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !127, line: 77, size: 192, elements: !1333)
!1333 = !{!1334, !1338, !1653}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1332, file: !127, line: 83, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !1241}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1332, file: !127, line: 89, baseType: !1339, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !135, line: 1184, baseType: !7)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1345, line: 512, size: 896, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1346 = !{!1347, !1620, !1621, !1628, !1635, !1645, !1646, !1647, !1649, !1651}
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !1345, line: 513, baseType: !1348, size: 320)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1344, file: !1345, line: 513, size: 320, elements: !1349)
!1349 = !{!1350, !1616, !1617, !1618, !1619}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1348, file: !1345, line: 514, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !135, line: 625, size: 1344, elements: !1353)
!1353 = !{!1354, !1363, !1521, !1527, !1534, !1535, !1540, !1541, !1546, !1547, !1550, !1609, !1610, !1611, !1612, !1613, !1614}
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1352, file: !135, line: 628, baseType: !1355, size: 128)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1352, file: !135, line: 628, size: 128, elements: !1356)
!1356 = !{!1357, !1362}
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1355, file: !135, line: 629, baseType: !1358, size: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1355, file: !135, line: 629, size: 128, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1358, file: !135, line: 631, baseType: !42, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1358, file: !135, line: 632, baseType: !42, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1355, file: !135, line: 635, baseType: !522, size: 128, align: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1352, file: !135, line: 639, baseType: !1364, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !135, line: 733, size: 10240, elements: !1366)
!1366 = !{!1367, !1519}
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !135, line: 734, baseType: !1368, size: 10240)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !135, line: 734, size: 10240, elements: !1369)
!1369 = !{!1370, !1374, !1388, !1392, !1393, !1394, !1395, !1396, !1397, !1406, !1407, !1408, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1447, !1449, !1452, !1499, !1500, !1501, !1504, !1505, !1506, !1509, !1510, !1511, !1517, !1518}
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !135, line: 739, baseType: !1371, size: 512, align: 512)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !135, line: 739, size: 512, align: 512, elements: !1372)
!1372 = !{!1373}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1371, file: !135, line: 747, baseType: !52, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1368, file: !135, line: 750, baseType: !1375, size: 128, offset: 512)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1376, line: 218, size: 128, elements: !1377)
!1376 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1377 = !{!1378, !1386, !1387}
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !1376, line: 219, baseType: !1379, size: 32)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1375, file: !1376, line: 219, size: 32, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1379, file: !1376, line: 220, baseType: !62, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1379, file: !1376, line: 221, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1376, line: 197, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1376, line: 197, elements: !1385)
!1385 = !{}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1375, file: !1376, line: 223, baseType: !7, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1375, file: !1376, line: 224, baseType: !23, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1368, file: !135, line: 752, baseType: !1389, size: 64, offset: 640)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!42, !509, !42, !42, !42, !42}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1368, file: !135, line: 756, baseType: !42, size: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1368, file: !135, line: 757, baseType: !42, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1368, file: !135, line: 760, baseType: !42, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1368, file: !135, line: 761, baseType: !42, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1368, file: !135, line: 763, baseType: !42, size: 64, offset: 960)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1368, file: !135, line: 764, baseType: !1398, size: 64, offset: 1024)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1400, line: 299, baseType: !1401)
!1400 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1400, line: 299, size: 64, elements: !1402)
!1402 = !{!1403}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1401, file: !1400, line: 299, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1405, line: 18, baseType: !42)
!1405 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1368, file: !135, line: 773, baseType: !52, size: 32, offset: 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1368, file: !135, line: 785, baseType: !52, size: 32, offset: 1120)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1368, file: !135, line: 795, baseType: !1409, size: 64, offset: 1152)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !135, line: 726, size: 128, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1410, file: !135, line: 727, baseType: !367, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1410, file: !135, line: 728, baseType: !25, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1368, file: !135, line: 801, baseType: !42, size: 64, offset: 1216)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1368, file: !135, line: 804, baseType: !535, size: 64, offset: 1280)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1368, file: !135, line: 806, baseType: !25, size: 32, offset: 1344)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1368, file: !135, line: 808, baseType: !62, size: 32, offset: 1376)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1368, file: !135, line: 823, baseType: !675, size: 320, offset: 1408)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1368, file: !135, line: 825, baseType: !100, size: 128, offset: 1728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1368, file: !135, line: 845, baseType: !25, size: 32, offset: 1856)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1368, file: !135, line: 849, baseType: !42, size: 64, offset: 1920)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1368, file: !135, line: 850, baseType: !42, size: 64, offset: 1984)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1368, file: !135, line: 852, baseType: !42, size: 64, offset: 2048)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1368, file: !135, line: 853, baseType: !42, size: 64, offset: 2112)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1368, file: !135, line: 854, baseType: !537, size: 64, offset: 2176)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1368, file: !135, line: 855, baseType: !42, size: 64, offset: 2240)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1368, file: !135, line: 856, baseType: !42, size: 64, offset: 2304)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1368, file: !135, line: 857, baseType: !42, size: 64, offset: 2368)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1368, file: !135, line: 858, baseType: !42, size: 64, offset: 2432)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1368, file: !135, line: 865, baseType: !340, size: 32, offset: 2496)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1368, file: !135, line: 867, baseType: !62, size: 32, offset: 2528)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1368, file: !135, line: 869, baseType: !42, size: 64, offset: 2560)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1368, file: !135, line: 869, baseType: !42, size: 64, offset: 2624)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1368, file: !135, line: 869, baseType: !42, size: 64, offset: 2688)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1368, file: !135, line: 869, baseType: !42, size: 64, offset: 2752)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1368, file: !135, line: 870, baseType: !42, size: 64, offset: 2816)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1368, file: !135, line: 870, baseType: !42, size: 64, offset: 2880)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1368, file: !135, line: 870, baseType: !42, size: 64, offset: 2944)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1368, file: !135, line: 871, baseType: !42, size: 64, offset: 3008)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1368, file: !135, line: 871, baseType: !42, size: 64, offset: 3072)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1368, file: !135, line: 871, baseType: !42, size: 64, offset: 3136)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1368, file: !135, line: 871, baseType: !42, size: 64, offset: 3200)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1368, file: !135, line: 873, baseType: !1444, size: 3328, offset: 3264)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3328, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 52)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1368, file: !135, line: 875, baseType: !1448, size: 1280, offset: 6592)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 1280, elements: !606)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1368, file: !135, line: 877, baseType: !1450, size: 64, offset: 7872)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !135, line: 877, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1368, file: !135, line: 880, baseType: !1453, size: 1088, offset: 7936)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1454, line: 72, baseType: !1455)
!1454 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1454, line: 23, size: 1088, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1464, !1465, !1466, !1467, !1494, !1495, !1496}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1455, file: !1454, line: 28, baseType: !367, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1455, file: !1454, line: 38, baseType: !537, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1455, file: !1454, line: 40, baseType: !42, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1455, file: !1454, line: 43, baseType: !675, size: 320, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1455, file: !1454, line: 44, baseType: !1462, size: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1454, line: 44, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !1454, line: 48, baseType: !42, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1455, file: !1454, line: 59, baseType: !543, size: 256, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1455, file: !1454, line: 60, baseType: !23, size: 64, offset: 896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1455, file: !1454, line: 61, baseType: !1468, size: 64, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1471, line: 13, size: 1216, elements: !1472)
!1471 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1470, file: !1471, line: 14, baseType: !23, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1470, file: !1471, line: 15, baseType: !42, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1470, file: !1471, line: 17, baseType: !42, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1470, file: !1471, line: 17, baseType: !42, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1470, file: !1471, line: 18, baseType: !42, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1470, file: !1471, line: 18, baseType: !42, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1470, file: !1471, line: 19, baseType: !1480, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1470, file: !1471, line: 21, baseType: !310, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1470, file: !1471, line: 23, baseType: !310, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1470, file: !1471, line: 24, baseType: !310, size: 64, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1470, file: !1471, line: 25, baseType: !310, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1470, file: !1471, line: 26, baseType: !310, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1470, file: !1471, line: 27, baseType: !310, size: 64, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1470, file: !1471, line: 28, baseType: !310, size: 64, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1470, file: !1471, line: 29, baseType: !310, size: 64, offset: 896)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1470, file: !1471, line: 30, baseType: !310, size: 64, offset: 960)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1470, file: !1471, line: 31, baseType: !310, size: 64, offset: 1024)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1470, file: !1471, line: 32, baseType: !310, size: 64, offset: 1088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1470, file: !1471, line: 33, baseType: !310, size: 64, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1455, file: !1454, line: 63, baseType: !52, size: 32, offset: 1024)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1455, file: !1454, line: 69, baseType: !96, size: 16, offset: 1056)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1455, file: !1454, line: 70, baseType: !1497, size: 16, offset: 1072)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !1498)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !701)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1368, file: !135, line: 882, baseType: !42, size: 64, offset: 9024)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1368, file: !135, line: 885, baseType: !62, size: 32, offset: 9088)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1368, file: !135, line: 886, baseType: !1502, size: 64, offset: 9152)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !135, line: 732, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1368, file: !135, line: 901, baseType: !813, size: 64, offset: 9216)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1368, file: !135, line: 904, baseType: !509, size: 64, offset: 9280)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1368, file: !135, line: 906, baseType: !1507, size: 64, offset: 9344)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !135, line: 906, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1368, file: !135, line: 930, baseType: !52, size: 32, offset: 9408)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1368, file: !135, line: 933, baseType: !52, size: 32, offset: 9440)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1368, file: !135, line: 935, baseType: !1512, size: 64, offset: 9472)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !270, line: 103, size: 64, elements: !1513)
!1513 = !{!1514}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1512, file: !270, line: 104, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !270, line: 101, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1368, file: !135, line: 940, baseType: !535, size: 64, offset: 9536)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1368, file: !135, line: 942, baseType: !862, size: 256, offset: 9600)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1365, file: !135, line: 986, baseType: !1520, offset: 10240)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !619)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1352, file: !135, line: 640, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1400, line: 297, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1400, line: 297, size: 64, elements: !1524)
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1523, file: !1400, line: 297, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1405, line: 19, baseType: !42)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1352, file: !135, line: 646, baseType: !1528, size: 64, offset: 256)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1352, file: !135, line: 646, size: 64, elements: !1529)
!1529 = !{!1530, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1528, file: !135, line: 647, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !135, line: 542, baseType: !42)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1528, file: !135, line: 648, baseType: !1532, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1352, file: !135, line: 666, baseType: !25, size: 32, offset: 320)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1352, file: !135, line: 667, baseType: !1536, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !135, line: 579, size: 320, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !135, line: 580, baseType: !675, size: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1352, file: !135, line: 670, baseType: !327, size: 8, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1352, file: !135, line: 681, baseType: !1542, size: 256, offset: 512)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1352, file: !135, line: 678, size: 256, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1542, file: !135, line: 679, baseType: !667, size: 192, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1542, file: !135, line: 680, baseType: !42, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1352, file: !135, line: 689, baseType: !100, size: 128, offset: 768)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1352, file: !135, line: 691, baseType: !1548, size: 64, offset: 896)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !135, line: 691, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1352, file: !135, line: 694, baseType: !1551, size: 64, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1553)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1345, line: 563, size: 1024, elements: !1554)
!1554 = !{!1555, !1559, !1560, !1564, !1568, !1572, !1573, !1577, !1581, !1585, !1586, !1587, !1591, !1595, !1601, !1605}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1553, file: !1345, line: 564, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !1351}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1553, file: !1345, line: 569, baseType: !1556, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1553, file: !1345, line: 571, baseType: !1561, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!25, !1351, !42}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1553, file: !1345, line: 572, baseType: !1565, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!25, !1351}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1553, file: !1345, line: 578, baseType: !1569, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!25, !1351, !42, !42, !42}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1553, file: !1345, line: 580, baseType: !1339, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1553, file: !1345, line: 581, baseType: !1574, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!1342, !1343, !7}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1553, file: !1345, line: 582, baseType: !1578, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!1342, !1343, !42, !42}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1553, file: !1345, line: 584, baseType: !1582, size: 64, offset: 512)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!42, !1351}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1553, file: !1345, line: 588, baseType: !1339, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1553, file: !1345, line: 591, baseType: !1339, size: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1553, file: !1345, line: 597, baseType: !1588, size: 64, offset: 704)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!25, !1351, !42, !23, !25, !25}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1553, file: !1345, line: 603, baseType: !1592, size: 64, offset: 768)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!19, !1351}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1553, file: !1345, line: 613, baseType: !1596, size: 64, offset: 832)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!25, !1351, !1599}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !135, line: 717, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1553, file: !1345, line: 625, baseType: !1602, size: 64, offset: 896)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!1599, !1351, !42}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1553, file: !1345, line: 633, baseType: !1606, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!1241, !1351, !42}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1352, file: !135, line: 697, baseType: !42, size: 64, offset: 1024)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1352, file: !135, line: 699, baseType: !509, size: 64, offset: 1088)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1352, file: !135, line: 700, baseType: !23, size: 64, offset: 1152)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1352, file: !135, line: 711, baseType: !535, size: 64, offset: 1216)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1352, file: !135, line: 717, baseType: !1599, size: 64, offset: 1280)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1352, file: !135, line: 722, baseType: !1615, offset: 1344)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !135, line: 570, elements: !1385)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1348, file: !1345, line: 515, baseType: !307, size: 32, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1348, file: !1345, line: 516, baseType: !42, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1348, file: !1345, line: 517, baseType: !42, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1348, file: !1345, line: 518, baseType: !42, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1344, file: !1345, line: 520, baseType: !134, size: 32, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1344, file: !1345, line: 522, baseType: !1622, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1405, line: 22, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1405, line: 22, size: 64, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1624, file: !1405, line: 22, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1405, line: 15, baseType: !42)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1344, file: !1345, line: 524, baseType: !1629, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1400, line: 372, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1400, line: 372, size: 64, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1631, file: !1400, line: 372, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1405, line: 16, baseType: !42)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !1345, line: 527, baseType: !1636, size: 64, offset: 512)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !1345, line: 527, size: 64, elements: !1637)
!1637 = !{!1638, !1644}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1636, file: !1345, line: 528, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1405, line: 21, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1405, line: 21, size: 64, elements: !1641)
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1640, file: !1405, line: 21, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1405, line: 14, baseType: !42)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1636, file: !1345, line: 529, baseType: !1623, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1344, file: !1345, line: 534, baseType: !1241, size: 64, offset: 576)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1344, file: !1345, line: 535, baseType: !1241, size: 64, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1344, file: !1345, line: 541, baseType: !1648, size: 64, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1344, file: !1345, line: 545, baseType: !1650, size: 64, offset: 768)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1344, file: !1345, line: 549, baseType: !1652, size: 64, offset: 832)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1400, line: 520, baseType: !1241)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1332, file: !127, line: 100, baseType: !1654, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!25, !1291, !42, !42, !25}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1292, file: !127, line: 134, baseType: !23, size: 64, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1292, file: !127, line: 135, baseType: !25, size: 32, offset: 1024)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !127, line: 136, baseType: !1660, size: 128, offset: 1088)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !127, line: 136, size: 128, elements: !1661)
!1661 = !{!1662, !1668}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1660, file: !127, line: 137, baseType: !1663, size: 128)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1664, line: 6, size: 128, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1663, file: !1664, line: 7, baseType: !367, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1663, file: !1664, line: 8, baseType: !367, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !127, line: 138, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1660, file: !127, line: 138, elements: !1670)
!1670 = !{!1671, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1669, file: !127, line: 138, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !127, line: 138, elements: !1385)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1669, file: !127, line: 138, baseType: !1674)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1663, elements: !619)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1288, file: !135, line: 147, baseType: !23, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1246, file: !135, line: 161, baseType: !522, size: 128, align: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !135, line: 164, baseType: !1678, size: 32, offset: 384)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1242, file: !135, line: 164, size: 32, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1678, file: !135, line: 169, baseType: !52, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1678, file: !135, line: 177, baseType: !7, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1242, file: !135, line: 181, baseType: !52, size: 32, offset: 416)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !151, line: 42, size: 384, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1684, file: !151, line: 43, baseType: !310, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1684, file: !151, line: 45, baseType: !310, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1684, file: !151, line: 52, baseType: !44, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1684, file: !151, line: 53, baseType: !44, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1684, file: !151, line: 55, baseType: !150, size: 32, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1684, file: !151, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1684, file: !151, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1684, file: !151, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1684, file: !151, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1684, file: !151, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1684, file: !151, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1684, file: !151, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1684, file: !151, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1684, file: !151, line: 78, baseType: !1700, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !151, line: 78, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1235, file: !183, line: 406, baseType: !1704, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!25, !509, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !135, line: 293, size: 1536, elements: !1709)
!1709 = !{!1710, !1740, !1754}
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !135, line: 295, baseType: !1711, size: 512)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !135, line: 295, size: 512, elements: !1712)
!1712 = !{!1713, !1739}
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !135, line: 296, baseType: !1714, size: 448)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1711, file: !135, line: 296, size: 448, elements: !1715)
!1715 = !{!1716, !1717, !1726, !1727, !1728, !1737, !1738}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1714, file: !135, line: 298, baseType: !42, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !135, line: 299, baseType: !1718, size: 128, offset: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1714, file: !135, line: 299, size: 128, elements: !1719)
!1719 = !{!1720, !1721}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1718, file: !135, line: 300, baseType: !100, size: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1718, file: !135, line: 302, baseType: !1722, size: 128)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1718, file: !135, line: 302, size: 128, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1722, file: !135, line: 303, baseType: !23, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1722, file: !135, line: 305, baseType: !7, size: 32, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1714, file: !135, line: 310, baseType: !1211, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1714, file: !135, line: 311, baseType: !42, size: 64, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !135, line: 312, baseType: !1729, size: 64, offset: 320)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1714, file: !135, line: 312, size: 64, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1729, file: !135, line: 313, baseType: !23, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1729, file: !135, line: 314, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !135, line: 257, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 255, size: 64, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1734, file: !135, line: 256, baseType: !42, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1714, file: !135, line: 316, baseType: !52, size: 32, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1714, file: !135, line: 317, baseType: !52, size: 32, offset: 416)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1711, file: !135, line: 323, baseType: !1242, size: 512, align: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !135, line: 325, baseType: !1741, size: 512, offset: 512)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !135, line: 325, size: 512, elements: !1742)
!1742 = !{!1743, !1753}
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !135, line: 326, baseType: !1744, size: 320)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !135, line: 326, size: 320, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1744, file: !135, line: 327, baseType: !42, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1744, file: !135, line: 328, baseType: !42, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1744, file: !135, line: 329, baseType: !42, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1744, file: !135, line: 331, baseType: !52, size: 32, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1744, file: !135, line: 332, baseType: !52, size: 32, offset: 224)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1744, file: !135, line: 333, baseType: !52, size: 32, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1744, file: !135, line: 335, baseType: !7, size: 32, offset: 288)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1741, file: !135, line: 339, baseType: !1242, size: 512, align: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !135, line: 341, baseType: !1755, size: 512, offset: 1024)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !135, line: 341, size: 512, elements: !1756)
!1756 = !{!1757, !1766, !1772}
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !135, line: 342, baseType: !1758, size: 384)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !135, line: 342, size: 384, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1758, file: !135, line: 343, baseType: !42, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1758, file: !135, line: 344, baseType: !42, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1758, file: !135, line: 346, baseType: !23, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1758, file: !135, line: 347, baseType: !23, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1758, file: !135, line: 348, baseType: !23, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1758, file: !135, line: 349, baseType: !23, size: 64, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !135, line: 352, baseType: !1767, size: 256)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !135, line: 352, size: 256, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1767, file: !135, line: 353, baseType: !42, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1767, file: !135, line: 354, baseType: !42, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1767, file: !135, line: 356, baseType: !100, size: 128, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1755, file: !135, line: 359, baseType: !1242, size: 512, align: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1235, file: !183, line: 409, baseType: !1774, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!25, !1211, !1683}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1235, file: !183, line: 412, baseType: !1778, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!327, !1211, !1707}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1235, file: !183, line: 414, baseType: !1782, size: 64, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1787, line: 1276, size: 448, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1788 = !{!1789, !1790, !1791, !1793, !1794, !1795, !1796, !1797}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1786, file: !1787, line: 1277, baseType: !509, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1786, file: !1787, line: 1278, baseType: !1211, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1786, file: !1787, line: 1279, baseType: !1792, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1786, file: !1787, line: 1281, baseType: !42, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1786, file: !1787, line: 1282, baseType: !7, size: 32, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1786, file: !1787, line: 1283, baseType: !7, size: 32, offset: 288)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1786, file: !1787, line: 1284, baseType: !327, size: 8, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1786, file: !1787, line: 1285, baseType: !42, size: 64, offset: 384)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1235, file: !183, line: 416, baseType: !1799, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!25, !509, !1211, !44, !7, !1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1235, file: !183, line: 419, baseType: !1805, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!25, !509, !1211, !44, !7, !7, !1241, !23}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1235, file: !183, line: 424, baseType: !1809, size: 64, offset: 448)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!1812, !1211, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !28, line: 131, baseType: !367)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1235, file: !183, line: 425, baseType: !1814, size: 64, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1707, !38, !38}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1235, file: !183, line: 426, baseType: !1818, size: 64, offset: 576)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!327, !1707, !307}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1235, file: !183, line: 427, baseType: !1822, size: 64, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !1707}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1235, file: !183, line: 428, baseType: !1826, size: 64, offset: 704)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1174, !1829, !1867}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !183, line: 373, size: 384, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1838, !1839, !1840, !1841}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1830, file: !183, line: 374, baseType: !509, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1830, file: !183, line: 375, baseType: !44, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1830, file: !183, line: 376, baseType: !1835, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1829, !310}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1830, file: !183, line: 377, baseType: !23, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1830, file: !183, line: 378, baseType: !25, size: 32, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1830, file: !183, line: 379, baseType: !96, size: 16, offset: 288)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !183, line: 380, baseType: !1842, size: 64, offset: 320)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !183, line: 380, size: 64, elements: !1843)
!1843 = !{!1844, !1863}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1842, file: !183, line: 386, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1787, line: 998, size: 448, elements: !1847)
!1847 = !{!1848, !1849, !1850}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1846, file: !1787, line: 999, baseType: !1707, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1846, file: !1787, line: 1000, baseType: !25, size: 32, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1846, file: !1787, line: 1001, baseType: !1851, size: 320, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !58, line: 14, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !58, line: 30, size: 320, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1862}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1852, file: !58, line: 31, baseType: !7, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1852, file: !58, line: 32, baseType: !23, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1852, file: !58, line: 33, baseType: !1857, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !58, line: 16, baseType: !1858)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!25, !1861, !7, !25, !23}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1852, file: !58, line: 34, baseType: !100, size: 128, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1842, file: !183, line: 395, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!1174, !23}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !183, line: 69, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1235, file: !183, line: 433, baseType: !1870, size: 64, offset: 768)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!25, !1211, !1707, !1707, !155}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1235, file: !183, line: 435, baseType: !1874, size: 64, offset: 832)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!25, !1707}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1235, file: !183, line: 436, baseType: !1878, size: 64, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!327, !1707, !38, !38}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1235, file: !183, line: 438, baseType: !1882, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1707, !1885, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1235, file: !183, line: 439, baseType: !1887, size: 64, offset: 1024)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!25, !1211, !1241}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1235, file: !183, line: 442, baseType: !1891, size: 64, offset: 1088)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!25, !1894, !509, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !183, line: 66, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1235, file: !183, line: 444, baseType: !1898, size: 64, offset: 1152)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !509}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1235, file: !183, line: 445, baseType: !1902, size: 64, offset: 1216)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!25, !1829, !1867}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !183, line: 486, baseType: !42, size: 64, offset: 896)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1212, file: !183, line: 487, baseType: !675, size: 320, offset: 960)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1212, file: !183, line: 488, baseType: !1908, size: 32, offset: 1280)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1909, line: 8, baseType: !363)
!1909 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1212, file: !183, line: 489, baseType: !62, size: 32, offset: 1312)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1212, file: !183, line: 490, baseType: !100, size: 128, offset: 1344)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1212, file: !183, line: 491, baseType: !23, size: 64, offset: 1472)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1202, file: !1168, line: 180, baseType: !1914, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1174, !509, !1110, !1201, !437, !44, !38}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1202, file: !1168, line: 182, baseType: !1914, size: 64, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1202, file: !1168, line: 184, baseType: !1919, size: 64, offset: 448)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!25, !509, !1110, !1201, !1351}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1190, file: !1168, line: 90, baseType: !1923, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1190, file: !1168, line: 91, baseType: !1925, size: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1158, file: !1105, line: 120, baseType: !1927, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1930, !1128}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !163, line: 39, size: 384, elements: !1933)
!1933 = !{!1934, !1935, !1939, !1943, !1949, !1953}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1932, file: !163, line: 40, baseType: !162, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1932, file: !163, line: 41, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!327}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1932, file: !163, line: 42, baseType: !1940, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!23}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1932, file: !163, line: 43, baseType: !1944, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1480, !1947}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !163, line: 19, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1932, file: !163, line: 44, baseType: !1950, size: 64, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1480}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1932, file: !163, line: 45, baseType: !418, size: 64, offset: 320)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1158, file: !1105, line: 121, baseType: !1955, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1480, !1128}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1158, file: !1105, line: 122, baseType: !1959, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1128, !926, !927}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1104, file: !1105, line: 70, baseType: !1963, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !282, line: 190, size: 1152, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !2107, !2108, !2109, !2110, !2111, !2127}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1964, file: !282, line: 191, baseType: !52, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1964, file: !282, line: 192, baseType: !52, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1964, file: !282, line: 202, baseType: !1963, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1964, file: !282, line: 203, baseType: !19, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1964, file: !282, line: 205, baseType: !667, size: 192, align: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1964, file: !282, line: 207, baseType: !1480, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1964, file: !282, line: 208, baseType: !7, size: 32, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !282, line: 209, baseType: !1974, size: 256, offset: 512)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1964, file: !282, line: 209, size: 256, elements: !1975)
!1975 = !{!1976, !2031, !2035}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1974, file: !282, line: 210, baseType: !1977, size: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !282, line: 153, size: 256, elements: !1978)
!1978 = !{!1979, !1980, !1981, !2030}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1977, file: !282, line: 154, baseType: !42, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1977, file: !282, line: 156, baseType: !943, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1977, file: !282, line: 162, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1984, line: 34, size: 1856, elements: !1985)
!1984 = !DIFile(filename: "fs/kernfs/kernfs-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "32718b52ec0a489d6666a316c4c2b870")
!1985 = !{!1986, !1987, !1988, !1995, !1996, !1997, !2024, !2025, !2026, !2027, !2028, !2029}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1983, file: !1984, line: 36, baseType: !1963, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1983, file: !1984, line: 37, baseType: !7, size: 32, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1983, file: !1984, line: 40, baseType: !1989, size: 192, offset: 128)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1990, line: 19, size: 192, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1991 = !{!1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1989, file: !1990, line: 20, baseType: !1216, size: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1989, file: !1990, line: 21, baseType: !7, size: 32, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1989, file: !1990, line: 22, baseType: !7, size: 32, offset: 160)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1983, file: !1984, line: 41, baseType: !363, size: 32, offset: 320)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1983, file: !1984, line: 42, baseType: !363, size: 32, offset: 352)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1983, file: !1984, line: 43, baseType: !1998, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !282, line: 237, size: 320, elements: !2000)
!2000 = !{!2001, !2008, !2012, !2016, !2020}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1999, file: !282, line: 238, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!25, !2005, !1982}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2007, line: 66, flags: DIFlagFwdDecl)
!2007 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1999, file: !282, line: 240, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!25, !1963, !19, !27}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1999, file: !282, line: 242, baseType: !2013, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!25, !1963}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1999, file: !282, line: 243, baseType: !2017, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!25, !1963, !1963, !19}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1999, file: !282, line: 245, baseType: !2021, size: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!25, !2005, !1963, !1982}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1983, file: !1984, line: 46, baseType: !100, size: 128, offset: 448)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1983, file: !1984, line: 48, baseType: !57, size: 192, offset: 576)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_rwsem", scope: !1983, file: !1984, line: 49, baseType: !675, size: 320, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_iattr_rwsem", scope: !1983, file: !1984, line: 50, baseType: !675, size: 320, offset: 1088)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_supers_rwsem", scope: !1983, file: !1984, line: 51, baseType: !675, size: 320, offset: 1408)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1983, file: !1984, line: 53, baseType: !522, size: 128, align: 64, offset: 1728)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1977, file: !282, line: 167, baseType: !42, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1974, file: !282, line: 211, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !282, line: 170, size: 64, elements: !2033)
!2033 = !{!2034}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2032, file: !282, line: 171, baseType: !1963, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1974, file: !282, line: 212, baseType: !2036, size: 256)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !282, line: 174, size: 256, elements: !2037)
!2037 = !{!2038, !2102, !2105, !2106}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2036, file: !282, line: 175, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !282, line: 271, size: 768, elements: !2042)
!2042 = !{!2043, !2063, !2067, !2071, !2075, !2079, !2083, !2087, !2088, !2089, !2090, !2098}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2041, file: !282, line: 276, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!25, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !282, line: 251, size: 1216, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2048, file: !282, line: 253, baseType: !1963, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2048, file: !282, line: 254, baseType: !509, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2048, file: !282, line: 255, baseType: !2005, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2048, file: !282, line: 256, baseType: !23, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2048, file: !282, line: 259, baseType: !543, size: 256, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2048, file: !282, line: 260, baseType: !543, size: 256, offset: 512)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2048, file: !282, line: 261, baseType: !25, size: 32, offset: 768)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2048, file: !282, line: 262, baseType: !100, size: 128, offset: 832)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2048, file: !282, line: 263, baseType: !437, size: 64, offset: 960)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2048, file: !282, line: 265, baseType: !38, size: 64, offset: 1024)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2048, file: !282, line: 266, baseType: !327, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2048, file: !282, line: 267, baseType: !327, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2048, file: !282, line: 268, baseType: !1551, size: 64, offset: 1152)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2041, file: !282, line: 277, baseType: !2064, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !2047}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2041, file: !282, line: 290, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!25, !2005, !23}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2041, file: !282, line: 292, baseType: !2072, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!23, !2005, !43}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2041, file: !282, line: 293, baseType: !2076, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!23, !2005, !23, !43}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2041, file: !282, line: 294, baseType: !2080, size: 64, offset: 320)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !2005, !23}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2041, file: !282, line: 296, baseType: !2084, size: 64, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!1174, !2047, !437, !38, !44}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2041, file: !282, line: 306, baseType: !38, size: 64, offset: 448)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2041, file: !282, line: 313, baseType: !327, size: 8, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2041, file: !282, line: 314, baseType: !2084, size: 64, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2041, file: !282, line: 317, baseType: !2091, size: 64, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!2094, !2047, !2096}
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2095, line: 59, baseType: !7)
!2095 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !183, line: 61, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2041, file: !282, line: 320, baseType: !2099, size: 64, offset: 704)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!25, !2047, !1351}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2036, file: !282, line: 176, baseType: !2103, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !282, line: 35, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2036, file: !282, line: 177, baseType: !44, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2036, file: !282, line: 178, baseType: !1963, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1964, file: !282, line: 215, baseType: !23, size: 64, offset: 768)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1964, file: !282, line: 221, baseType: !367, size: 64, offset: 832)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1964, file: !282, line: 223, baseType: !29, size: 16, offset: 896)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1964, file: !282, line: 224, baseType: !27, size: 16, offset: 912)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1964, file: !282, line: 225, baseType: !2112, size: 64, offset: 960)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1984, line: 22, size: 640, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120, !2125, !2126}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2113, file: !1984, line: 23, baseType: !380, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2113, file: !1984, line: 24, baseType: !389, size: 32, offset: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2113, file: !1984, line: 25, baseType: !499, size: 128, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2113, file: !1984, line: 26, baseType: !499, size: 128, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2113, file: !1984, line: 27, baseType: !499, size: 128, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "xattrs", scope: !2113, file: !1984, line: 29, baseType: !2121, size: 128, offset: 448)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_xattrs", file: !318, line: 104, size: 128, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2121, file: !318, line: 105, baseType: !943, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2121, file: !318, line: 106, baseType: !561, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_xattrs", scope: !2113, file: !1984, line: 30, baseType: !52, size: 32, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "user_xattr_size", scope: !2113, file: !1984, line: 31, baseType: !52, size: 32, offset: 608)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1964, file: !282, line: 227, baseType: !522, size: 128, align: 64, offset: 1024)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1104, file: !1105, line: 71, baseType: !2129, size: 32, offset: 448)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2130, line: 19, size: 32, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2131 = !{!2132}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2129, file: !2130, line: 20, baseType: !588, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1104, file: !1105, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1104, file: !1105, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1104, file: !1105, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1104, file: !1105, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1104, file: !1105, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1101, file: !120, line: 47, baseType: !1091, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1101, file: !120, line: 48, baseType: !1110, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1101, file: !120, line: 49, baseType: !2141, size: 64, offset: 640)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !120, line: 49, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1101, file: !120, line: 50, baseType: !900, size: 64, offset: 704)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1092, file: !120, line: 418, baseType: !2145, size: 64, offset: 1408)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !120, line: 53, size: 448, elements: !2147)
!2147 = !{!2148, !2149, !2154, !2158, !2162, !2166}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2146, file: !120, line: 54, baseType: !1178, size: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2146, file: !120, line: 55, baseType: !2150, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!1174, !2145, !2153, !437}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2146, file: !120, line: 57, baseType: !2155, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!1174, !2145, !2153, !19, !38}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2146, file: !120, line: 59, baseType: !2159, size: 64, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{null, !1091, !19}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2146, file: !120, line: 60, baseType: !2163, size: 64, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!25, !1091}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2146, file: !120, line: 61, baseType: !2167, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !1091}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1092, file: !120, line: 419, baseType: !19, size: 64, offset: 1472)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1092, file: !120, line: 420, baseType: !19, size: 64, offset: 1536)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1092, file: !120, line: 421, baseType: !1110, size: 64, offset: 1600)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1092, file: !120, line: 424, baseType: !2174, size: 64, offset: 1664)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2176)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !120, line: 424, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1092, file: !120, line: 425, baseType: !2178, size: 64, offset: 1728)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1092, file: !120, line: 426, baseType: !7, size: 32, offset: 1792)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1092, file: !120, line: 435, baseType: !543, size: 256, offset: 1856)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1092, file: !120, line: 437, baseType: !2183, size: 64, offset: 2112)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2185, line: 69, size: 320, elements: !2186)
!2185 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2186 = !{!2187, !2188, !2189, !2206, !2208, !2212, !2213}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2184, file: !2185, line: 70, baseType: !19, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2184, file: !2185, line: 71, baseType: !1091, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2184, file: !2185, line: 72, baseType: !2190, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2185, line: 47, size: 256, elements: !2193)
!2193 = !{!2194, !2195, !2201, !2205}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2192, file: !2185, line: 49, baseType: !7, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2192, file: !2185, line: 51, baseType: !2196, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!25, !19, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2184)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2192, file: !2185, line: 53, baseType: !2202, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!25, !437, !2199}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2192, file: !2185, line: 55, baseType: !418, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2184, file: !2185, line: 73, baseType: !2207, size: 16, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2184, file: !2185, line: 74, baseType: !2209, size: 8, offset: 208)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !87, line: 16, baseType: !2210)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !89, line: 20, baseType: !2211)
!2211 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2184, file: !2185, line: 75, baseType: !86, size: 8, offset: 216)
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2185, line: 76, baseType: !2214, size: 64, offset: 256)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !2185, line: 76, size: 64, elements: !2215)
!2215 = !{!2216, !2217, !2224}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2214, file: !2185, line: 77, baseType: !23, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2214, file: !2185, line: 78, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2185, line: 86, size: 128, elements: !2221)
!2221 = !{!2222, !2223}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2220, file: !2185, line: 87, baseType: !7, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2220, file: !2185, line: 88, baseType: !437, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2214, file: !2185, line: 79, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2185, line: 92, size: 256, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2233, !2234}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2227, file: !2185, line: 94, baseType: !7, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2227, file: !2185, line: 95, baseType: !7, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2227, file: !2185, line: 96, baseType: !2232, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2227, file: !2185, line: 97, baseType: !2190, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2227, file: !2185, line: 98, baseType: !23, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1092, file: !120, line: 438, baseType: !7, size: 32, offset: 2176)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1092, file: !120, line: 441, baseType: !7, size: 32, offset: 2208)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1092, file: !120, line: 442, baseType: !2174, size: 64, offset: 2240)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1092, file: !120, line: 443, baseType: !2178, size: 64, offset: 2304)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1092, file: !120, line: 444, baseType: !327, size: 8, offset: 2368)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1092, file: !120, line: 451, baseType: !327, size: 8, offset: 2376)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1092, file: !120, line: 454, baseType: !7, size: 32, offset: 2400)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1092, file: !120, line: 455, baseType: !2243, size: 64, offset: 2432)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2245, line: 23, size: 96, elements: !2246)
!2245 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2244, file: !2245, line: 24, baseType: !25, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2244, file: !2245, line: 24, baseType: !25, size: 32, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2244, file: !2245, line: 24, baseType: !25, size: 32, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1092, file: !120, line: 458, baseType: !2251, size: 64, offset: 2496)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!25}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1092, file: !120, line: 460, baseType: !2255, size: 4032, align: 512, offset: 2560)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2256, size: 4032, elements: !2272)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !120, line: 362, size: 576, elements: !2257)
!2257 = !{!2258, !2259, !2260}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2256, file: !120, line: 363, baseType: !23, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2256, file: !120, line: 364, baseType: !7, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2256, file: !120, line: 367, baseType: !2261, size: 448, offset: 128)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !120, line: 319, size: 448, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2261, file: !120, line: 320, baseType: !1091, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2261, file: !120, line: 321, baseType: !2265, size: 384, offset: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2266, line: 40, size: 384, elements: !2267)
!2266 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2267 = !{!2268}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2265, file: !2266, line: 41, baseType: !2269, size: 384, align: 64)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 384, align: 64, elements: !2270)
!2270 = !{!2271}
!2271 = !DISubrange(count: 2)
!2272 = !{!2273}
!2273 = !DISubrange(count: 7)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1092, file: !120, line: 463, baseType: !2275, size: 192, offset: 6592)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2276, line: 8, size: 192, elements: !2277)
!2276 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2277 = !{!2278, !2279, !2281}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2275, file: !2276, line: 10, baseType: !7, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2275, file: !2276, line: 11, baseType: !2280, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2275, file: !2276, line: 12, baseType: !2282, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2284, line: 59, size: 48, elements: !2285)
!2284 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2283, file: !2284, line: 60, baseType: !1497, size: 16)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2283, file: !2284, line: 61, baseType: !1497, size: 16, offset: 16)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2283, file: !2284, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2283, file: !2284, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2283, file: !2284, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2283, file: !2284, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1092, file: !120, line: 465, baseType: !42, size: 64, offset: 6784)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1092, file: !120, line: 469, baseType: !7, size: 32, offset: 6848)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1092, file: !120, line: 470, baseType: !100, size: 128, offset: 6912)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1092, file: !120, line: 471, baseType: !2296, size: 64, offset: 7040)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2298, line: 33, size: 96, elements: !2299)
!2298 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2299 = !{!2300, !2301, !2302, !2303}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2297, file: !2298, line: 37, baseType: !25, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2297, file: !2298, line: 43, baseType: !25, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2297, file: !2298, line: 45, baseType: !29, size: 16, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2297, file: !2298, line: 47, baseType: !29, size: 16, offset: 80)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1092, file: !120, line: 476, baseType: !2305, size: 64, offset: 7104)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !120, line: 378, size: 256, elements: !2307)
!2307 = !{!2308, !2324, !2325, !2326}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2306, file: !120, line: 379, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2311, line: 204, baseType: !2312)
!2311 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2311, line: 197, size: 192, elements: !2313)
!2313 = !{!2314, !2316, !2317, !2318, !2320, !2322}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2312, file: !2311, line: 198, baseType: !2315, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2311, line: 21, baseType: !364)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2312, file: !2311, line: 199, baseType: !90, size: 8, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2312, file: !2311, line: 200, baseType: !90, size: 8, offset: 40)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2312, file: !2311, line: 201, baseType: !2319, size: 16, offset: 48)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2311, line: 17, baseType: !97)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2312, file: !2311, line: 202, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2311, line: 16, baseType: !368)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2312, file: !2311, line: 203, baseType: !2323, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2311, line: 22, baseType: !368)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2306, file: !120, line: 380, baseType: !7, size: 32, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2306, file: !120, line: 381, baseType: !437, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2306, file: !120, line: 382, baseType: !437, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1092, file: !120, line: 477, baseType: !2306, size: 256, offset: 7168)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1092, file: !120, line: 480, baseType: !2329, size: 64, offset: 7424)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !120, line: 480, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1092, file: !120, line: 483, baseType: !2332, size: 64, offset: 7488)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !120, line: 483, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1092, file: !120, line: 488, baseType: !437, size: 64, offset: 7552)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1092, file: !120, line: 492, baseType: !23, size: 64, offset: 7616)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1092, file: !120, line: 493, baseType: !7, size: 32, offset: 7680)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1092, file: !120, line: 495, baseType: !23, size: 64, offset: 7744)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1092, file: !120, line: 496, baseType: !7, size: 32, offset: 7808)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1092, file: !120, line: 499, baseType: !7, size: 32, offset: 7840)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1092, file: !120, line: 500, baseType: !2341, size: 64, offset: 7872)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2343, line: 45, baseType: !2344)
!2343 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1092, file: !120, line: 503, baseType: !7, size: 32, offset: 7936)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1092, file: !120, line: 504, baseType: !2347, size: 64, offset: 8000)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2350, line: 96, size: 192, elements: !2351)
!2350 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2351 = !{!2352, !2353, !2406, !2409}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2349, file: !2350, line: 97, baseType: !7, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2349, file: !2350, line: 98, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2350, line: 24, size: 3072, elements: !2356)
!2356 = !{!2357, !2359, !2360, !2361, !2362, !2375, !2376, !2377, !2378, !2390, !2391, !2392, !2403, !2404, !2405}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2355, file: !2350, line: 26, baseType: !2358, size: 128)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 128, elements: !2270)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2355, file: !2350, line: 27, baseType: !2358, size: 128, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2355, file: !2350, line: 28, baseType: !25, size: 32, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2355, file: !2350, line: 31, baseType: !62, size: 32, align: 512, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2355, file: !2350, line: 32, baseType: !2363, size: 960, offset: 576)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2364, line: 206, size: 960, elements: !2365)
!2364 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2365 = !{!2366, !2367, !2370, !2372, !2373, !2374}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2363, file: !2364, line: 207, baseType: !525, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2363, file: !2364, line: 208, baseType: !2368, size: 256, offset: 64)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2369, size: 256, elements: !606)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2363, file: !2364, line: 209, baseType: !2371, size: 256, offset: 320)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !606)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2363, file: !2364, line: 213, baseType: !310, size: 64, offset: 576)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2363, file: !2364, line: 215, baseType: !964, size: 256, offset: 640)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2363, file: !2364, line: 216, baseType: !86, size: 8, offset: 896)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2355, file: !2350, line: 33, baseType: !42, size: 64, offset: 1536)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2355, file: !2350, line: 34, baseType: !42, size: 64, offset: 1600)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2355, file: !2350, line: 35, baseType: !327, size: 8, offset: 1664)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2355, file: !2350, line: 36, baseType: !2379, size: 320, offset: 1728)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2380, line: 11, size: 320, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2381 = !{!2382, !2383, !2384, !2389}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2379, file: !2380, line: 16, baseType: !601, size: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2379, file: !2380, line: 17, baseType: !42, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2379, file: !2380, line: 18, baseType: !2385, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2379, file: !2380, line: 19, baseType: !363, size: 32, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2355, file: !2350, line: 37, baseType: !862, size: 256, offset: 2048)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2355, file: !2350, line: 38, baseType: !522, size: 128, align: 64, offset: 2304)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2355, file: !2350, line: 39, baseType: !2393, size: 64, offset: 2432)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2350, line: 49, size: 768, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2394, file: !2350, line: 50, baseType: !62, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2394, file: !2350, line: 51, baseType: !2371, size: 256, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2394, file: !2350, line: 53, baseType: !2371, size: 256, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2394, file: !2350, line: 54, baseType: !42, size: 64, offset: 576)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2394, file: !2350, line: 55, baseType: !2393, size: 64, offset: 640)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2394, file: !2350, line: 56, baseType: !25, size: 32, offset: 704)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2394, file: !2350, line: 57, baseType: !25, size: 32, offset: 736)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2355, file: !2350, line: 40, baseType: !42, size: 64, offset: 2496)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2355, file: !2350, line: 42, baseType: !25, size: 32, offset: 2560)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2355, file: !2350, line: 43, baseType: !2348, size: 64, offset: 2624)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2349, file: !2350, line: 99, baseType: !2407, offset: 128)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2408, line: 211, elements: !1385)
!2408 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2349, file: !2350, line: 100, baseType: !2410, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2350, line: 63, size: 3008, elements: !2412)
!2412 = !{!2413, !2414, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2444}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2411, file: !2350, line: 64, baseType: !2393, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2411, file: !2350, line: 65, baseType: !2415, size: 192, offset: 64)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2393, size: 192, elements: !580)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2411, file: !2350, line: 67, baseType: !25, size: 32, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2411, file: !2350, line: 68, baseType: !543, size: 256, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2411, file: !2350, line: 69, baseType: !62, size: 32, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2411, file: !2350, line: 70, baseType: !543, size: 256, offset: 640)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2411, file: !2350, line: 71, baseType: !42, size: 64, offset: 896)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2411, file: !2350, line: 72, baseType: !42, size: 64, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2411, file: !2350, line: 73, baseType: !42, size: 64, offset: 1024)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2411, file: !2350, line: 74, baseType: !42, size: 64, offset: 1088)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2411, file: !2350, line: 75, baseType: !42, size: 64, offset: 1152)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2411, file: !2350, line: 76, baseType: !42, size: 64, offset: 1216)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2411, file: !2350, line: 77, baseType: !42, size: 64, offset: 1280)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2411, file: !2350, line: 78, baseType: !42, size: 64, offset: 1344)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2411, file: !2350, line: 79, baseType: !327, size: 8, offset: 1408)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2411, file: !2350, line: 80, baseType: !42, size: 64, offset: 1472)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2411, file: !2350, line: 81, baseType: !543, size: 256, offset: 1536)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2411, file: !2350, line: 82, baseType: !901, size: 256, offset: 1792)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2411, file: !2350, line: 84, baseType: !52, size: 32, offset: 2048)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2411, file: !2350, line: 87, baseType: !42, size: 64, offset: 2112)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2411, file: !2350, line: 88, baseType: !42, size: 64, offset: 2176)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2411, file: !2350, line: 89, baseType: !2436, size: 704, offset: 2240)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !863, line: 111, size: 704, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2443}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2436, file: !863, line: 112, baseType: !862, size: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2436, file: !863, line: 113, baseType: !2379, size: 320, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2436, file: !863, line: 116, baseType: !2441, size: 64, offset: 576)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !863, line: 18, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2436, file: !863, line: 117, baseType: !25, size: 32, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2411, file: !2350, line: 90, baseType: !2348, size: 64, offset: 2944)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1092, file: !120, line: 515, baseType: !2446, size: 64, offset: 8064)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2448, line: 117, size: 128, elements: !2449)
!2448 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2449 = !{!2450, !2451, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2447, file: !2448, line: 118, baseType: !660, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2447, file: !2448, line: 119, baseType: !660, size: 32, offset: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2447, file: !2448, line: 120, baseType: !310, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1092, file: !120, line: 516, baseType: !7, size: 32, offset: 8128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1092, file: !120, line: 519, baseType: !7, size: 32, offset: 8160)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1092, file: !120, line: 520, baseType: !2456, size: 64, offset: 8192)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1092, file: !120, line: 523, baseType: !2458, size: 64, offset: 8256)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !120, line: 523, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1092, file: !120, line: 524, baseType: !7, size: 32, offset: 8320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1092, file: !120, line: 525, baseType: !2463, size: 64, offset: 8384)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !120, line: 525, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1092, file: !120, line: 526, baseType: !7, size: 32, offset: 8448)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1092, file: !120, line: 533, baseType: !23, size: 64, offset: 8512)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1092, file: !120, line: 534, baseType: !7, size: 32, offset: 8576)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1092, file: !120, line: 535, baseType: !2470, size: 64, offset: 8640)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1092, file: !120, line: 536, baseType: !7, size: 32, offset: 8704)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1092, file: !120, line: 539, baseType: !25, size: 32, offset: 8736)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1092, file: !120, line: 540, baseType: !2474, size: 64, offset: 8768)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2476, line: 32, size: 64, elements: !2477)
!2476 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2477 = !{!2478, !2479}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2475, file: !2476, line: 33, baseType: !660, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2475, file: !2476, line: 34, baseType: !660, size: 32, offset: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1092, file: !120, line: 563, baseType: !100, size: 128, offset: 8832)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1092, file: !120, line: 565, baseType: !100, size: 128, offset: 8960)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1092, file: !120, line: 568, baseType: !2483, size: 64, offset: 9088)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1092, file: !120, line: 570, baseType: !52, size: 32, offset: 9152)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1084, file: !111, line: 179, baseType: !2488, size: 512, offset: 128)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 512, elements: !2489)
!2489 = !{!2490}
!2490 = !DISubrange(count: 8)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1018, file: !111, line: 101, baseType: !19, size: 64, offset: 896)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1018, file: !111, line: 102, baseType: !23, size: 64, offset: 960)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1018, file: !111, line: 103, baseType: !23, size: 64, offset: 1024)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !1018, file: !111, line: 104, baseType: !7, size: 32, offset: 1088)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !1018, file: !111, line: 105, baseType: !7, size: 32, offset: 1120)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1018, file: !111, line: 106, baseType: !7, size: 32, offset: 1152)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1018, file: !111, line: 107, baseType: !168, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !1018, file: !111, line: 108, baseType: !173, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1018, file: !111, line: 109, baseType: !327, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1018, file: !111, line: 110, baseType: !327, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !1018, file: !111, line: 111, baseType: !327, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1018, file: !111, line: 112, baseType: !327, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1009, file: !183, line: 2377, baseType: !2504, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2506)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !183, line: 75, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1009, file: !183, line: 2378, baseType: !2508, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!329, !1008, !25, !19, !23}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1009, file: !183, line: 2380, baseType: !2512, size: 64, offset: 320)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !999}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1009, file: !183, line: 2381, baseType: !1091, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1009, file: !183, line: 2382, baseType: !1008, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1009, file: !183, line: 2383, baseType: !597, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1009, file: !183, line: 2385, baseType: !2519, offset: 576)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2408, line: 206, elements: !1385)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1009, file: !183, line: 2386, baseType: !2519, offset: 576)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1009, file: !183, line: 2387, baseType: !2519, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1009, file: !183, line: 2388, baseType: !2523, offset: 576)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2519, elements: !580)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1009, file: !183, line: 2390, baseType: !2519, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1009, file: !183, line: 2391, baseType: !2519, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1009, file: !183, line: 2392, baseType: !2519, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1009, file: !183, line: 2393, baseType: !2519, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1000, file: !183, line: 1197, baseType: !2529, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2531)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !183, line: 2057, size: 1664, elements: !2532)
!2532 = !{!2533, !2537, !2541, !2542, !2546, !2550, !2554, !2555, !2556, !2560, !2564, !2568, !2569, !2570, !2576, !2580, !2581, !2585, !2586, !2587, !2588, !2592, !2596, !2643, !2658, !2659}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2531, file: !183, line: 2058, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!374, !999}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2531, file: !183, line: 2059, baseType: !2538, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !374}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2531, file: !183, line: 2060, baseType: !2538, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2531, file: !183, line: 2062, baseType: !2543, size: 64, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !374, !25}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2531, file: !183, line: 2063, baseType: !2547, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!25, !374, !1683}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2531, file: !183, line: 2064, baseType: !2551, size: 64, offset: 320)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!25, !374}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2531, file: !183, line: 2065, baseType: !2538, size: 64, offset: 384)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2531, file: !183, line: 2066, baseType: !2512, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2531, file: !183, line: 2067, baseType: !2557, size: 64, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!25, !999, !25}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2531, file: !183, line: 2068, baseType: !2561, size: 64, offset: 576)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!25, !999, !182}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2531, file: !183, line: 2069, baseType: !2565, size: 64, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!25, !999}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2531, file: !183, line: 2070, baseType: !2561, size: 64, offset: 704)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2531, file: !183, line: 2071, baseType: !2565, size: 64, offset: 768)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2531, file: !183, line: 2072, baseType: !2571, size: 64, offset: 832)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!25, !329, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !183, line: 62, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2531, file: !183, line: 2073, baseType: !2577, size: 64, offset: 896)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!25, !999, !2280, !437}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2531, file: !183, line: 2074, baseType: !2512, size: 64, offset: 960)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2531, file: !183, line: 2076, baseType: !2582, size: 64, offset: 1024)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!25, !2005, !329}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2531, file: !183, line: 2077, baseType: !2582, size: 64, offset: 1088)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2531, file: !183, line: 2078, baseType: !2582, size: 64, offset: 1152)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2531, file: !183, line: 2079, baseType: !2582, size: 64, offset: 1216)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2531, file: !183, line: 2081, baseType: !2589, size: 64, offset: 1280)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!1174, !999, !25, !437, !38, !44}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2531, file: !183, line: 2082, baseType: !2593, size: 64, offset: 1344)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!1174, !999, !25, !19, !38, !44}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2531, file: !183, line: 2083, baseType: !2597, size: 64, offset: 1408)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!2600, !374}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !188, line: 296, size: 1664, elements: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2628, !2629, !2630}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2602, file: !188, line: 297, baseType: !601, size: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2602, file: !188, line: 298, baseType: !100, size: 128, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2602, file: !188, line: 299, baseType: !100, size: 128, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2602, file: !188, line: 300, baseType: !100, size: 128, offset: 384)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2602, file: !188, line: 301, baseType: !543, size: 256, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2602, file: !188, line: 302, baseType: !62, size: 32, offset: 768)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2602, file: !188, line: 303, baseType: !52, size: 32, offset: 800)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2602, file: !188, line: 304, baseType: !999, size: 64, offset: 832)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2602, file: !188, line: 305, baseType: !2613, size: 64, offset: 896)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !188, line: 68, size: 64, elements: !2614)
!2614 = !{!2615, !2627}
!2615 = !DIDerivedType(tag: DW_TAG_member, scope: !2613, file: !188, line: 69, baseType: !2616, size: 32)
!2616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2613, file: !188, line: 69, size: 32, elements: !2617)
!2617 = !{!2618, !2619, !2620}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2616, file: !188, line: 70, baseType: !380, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2616, file: !188, line: 71, baseType: !389, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2616, file: !188, line: 72, baseType: !2621, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2622, line: 24, baseType: !2623)
!2622 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2622, line: 22, size: 32, elements: !2624)
!2624 = !{!2625}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2623, file: !2622, line: 23, baseType: !2626, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2622, line: 20, baseType: !386)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2613, file: !188, line: 74, baseType: !187, size: 32, offset: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2602, file: !188, line: 306, baseType: !44, size: 64, offset: 960)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2602, file: !188, line: 307, baseType: !42, size: 64, offset: 1024)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2602, file: !188, line: 308, baseType: !2631, size: 576, offset: 1088)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !188, line: 205, size: 576, elements: !2632)
!2632 = !{!2633, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2631, file: !188, line: 206, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !188, line: 66, baseType: !46)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2631, file: !188, line: 207, baseType: !2634, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2631, file: !188, line: 208, baseType: !2634, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2631, file: !188, line: 209, baseType: !2634, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2631, file: !188, line: 210, baseType: !2634, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2631, file: !188, line: 211, baseType: !2634, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2631, file: !188, line: 212, baseType: !2634, size: 64, offset: 384)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2631, file: !188, line: 213, baseType: !503, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2631, file: !188, line: 214, baseType: !503, size: 64, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2531, file: !183, line: 2085, baseType: !2644, size: 64, offset: 1472)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!310, !999, !2647}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2649, line: 15, size: 256, elements: !2650)
!2649 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2650 = !{!2651, !2652, !2653, !2654, !2655}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2648, file: !2649, line: 16, baseType: !307, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2648, file: !2649, line: 19, baseType: !25, size: 32, offset: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2648, file: !2649, line: 26, baseType: !42, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2648, file: !2649, line: 33, baseType: !42, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2648, file: !2649, line: 36, baseType: !2656, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !135, line: 33, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2531, file: !183, line: 2087, baseType: !2644, size: 64, offset: 1536)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2531, file: !183, line: 2089, baseType: !2512, size: 64, offset: 1600)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1000, file: !183, line: 1198, baseType: !2661, size: 64, offset: 448)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2663)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !188, line: 324, size: 704, elements: !2664)
!2664 = !{!2665, !2669, !2673, !2677, !2678, !2679, !2680, !2681, !2686, !2691, !2695}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2663, file: !188, line: 325, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!25, !2601}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2663, file: !188, line: 326, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!2601, !999, !25}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2663, file: !188, line: 327, baseType: !2674, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !2601}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2663, file: !188, line: 328, baseType: !2666, size: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2663, file: !188, line: 329, baseType: !2666, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2663, file: !188, line: 330, baseType: !2666, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2663, file: !188, line: 331, baseType: !2557, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2663, file: !188, line: 334, baseType: !2682, size: 64, offset: 448)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!2685, !374}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2663, file: !188, line: 335, baseType: !2687, size: 64, offset: 512)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!25, !374, !2690}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2663, file: !188, line: 337, baseType: !2692, size: 64, offset: 576)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!25, !374, !2685}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2663, file: !188, line: 339, baseType: !2696, size: 64, offset: 640)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!25, !999, !2699}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1000, file: !183, line: 1199, baseType: !2701, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2703)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !188, line: 430, size: 704, elements: !2704)
!2704 = !{!2705, !2711, !2712, !2716, !2717, !2718, !2733, !2756, !2760, !2761, !2784}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2703, file: !188, line: 431, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!25, !999, !25, !25, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2703, file: !188, line: 432, baseType: !2557, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2703, file: !188, line: 433, baseType: !2713, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!25, !999, !7}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2703, file: !188, line: 434, baseType: !2713, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2703, file: !188, line: 435, baseType: !2557, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2703, file: !188, line: 436, baseType: !2719, size: 64, offset: 320)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!25, !999, !25, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !188, line: 417, size: 256, elements: !2724)
!2724 = !{!2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2723, file: !188, line: 418, baseType: !25, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2723, file: !188, line: 419, baseType: !7, size: 32, offset: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2723, file: !188, line: 420, baseType: !7, size: 32, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2723, file: !188, line: 422, baseType: !7, size: 32, offset: 96)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2723, file: !188, line: 423, baseType: !7, size: 32, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2723, file: !188, line: 424, baseType: !7, size: 32, offset: 160)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2723, file: !188, line: 425, baseType: !7, size: 32, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2723, file: !188, line: 426, baseType: !7, size: 32, offset: 224)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2703, file: !188, line: 437, baseType: !2734, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!25, !999, !2613, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !188, line: 345, size: 960, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2738, file: !188, line: 346, baseType: !25, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2738, file: !188, line: 347, baseType: !367, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2738, file: !188, line: 348, baseType: !367, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2738, file: !188, line: 349, baseType: !367, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2738, file: !188, line: 350, baseType: !367, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2738, file: !188, line: 351, baseType: !367, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2738, file: !188, line: 352, baseType: !367, size: 64, offset: 384)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2738, file: !188, line: 353, baseType: !541, size: 64, offset: 448)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2738, file: !188, line: 355, baseType: !541, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2738, file: !188, line: 356, baseType: !25, size: 32, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2738, file: !188, line: 357, baseType: !25, size: 32, offset: 608)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2738, file: !188, line: 358, baseType: !367, size: 64, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2738, file: !188, line: 359, baseType: !367, size: 64, offset: 704)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2738, file: !188, line: 360, baseType: !367, size: 64, offset: 768)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2738, file: !188, line: 361, baseType: !541, size: 64, offset: 832)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2738, file: !188, line: 362, baseType: !25, size: 32, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2703, file: !188, line: 438, baseType: !2757, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!25, !999, !2699, !2737}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2703, file: !188, line: 440, baseType: !2734, size: 64, offset: 512)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2703, file: !188, line: 441, baseType: !2762, size: 64, offset: 576)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!25, !999, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !188, line: 411, size: 1408, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2766, file: !188, line: 412, baseType: !7, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2766, file: !188, line: 413, baseType: !2770, size: 1344, offset: 64)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2771, size: 1344, elements: !580)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !188, line: 397, size: 448, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2783}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2771, file: !188, line: 398, baseType: !7, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2771, file: !188, line: 399, baseType: !7, size: 32, offset: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2771, file: !188, line: 401, baseType: !7, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2771, file: !188, line: 402, baseType: !7, size: 32, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2771, file: !188, line: 403, baseType: !7, size: 32, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2771, file: !188, line: 404, baseType: !7, size: 32, offset: 160)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2771, file: !188, line: 405, baseType: !7, size: 32, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2771, file: !188, line: 406, baseType: !369, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2771, file: !188, line: 407, baseType: !2782, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !28, line: 132, baseType: !367)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2771, file: !188, line: 408, baseType: !2782, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2703, file: !188, line: 442, baseType: !2713, size: 64, offset: 640)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1000, file: !183, line: 1200, baseType: !2786, size: 64, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !183, line: 54, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1000, file: !183, line: 1201, baseType: !42, size: 64, offset: 640)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1000, file: !183, line: 1202, baseType: !42, size: 64, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1000, file: !183, line: 1203, baseType: !42, size: 64, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1000, file: !183, line: 1204, baseType: !329, size: 64, offset: 832)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1000, file: !183, line: 1205, baseType: !675, size: 320, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1000, file: !183, line: 1206, baseType: !25, size: 32, offset: 1216)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1000, file: !183, line: 1207, baseType: !52, size: 32, offset: 1248)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1000, file: !183, line: 1209, baseType: !23, size: 64, offset: 1280)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1000, file: !183, line: 1211, baseType: !2798, size: 64, offset: 1344)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1000, file: !183, line: 1223, baseType: !2800, size: 64, offset: 1408)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !346, line: 34, size: 64, elements: !2801)
!2801 = !{!2802}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2800, file: !346, line: 35, baseType: !349, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1000, file: !183, line: 1224, baseType: !100, size: 128, offset: 1472)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1000, file: !183, line: 1225, baseType: !2805, size: 64, offset: 1600)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2807, line: 40, size: 7424, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2808 = !{!2809, !2810, !2811, !2814, !2818, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2845, !2846}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2806, file: !2807, line: 41, baseType: !1812, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2806, file: !2807, line: 42, baseType: !1812, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2806, file: !2807, line: 43, baseType: !2812, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2007, line: 1453, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2806, file: !2807, line: 44, baseType: !2815, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2817, line: 74, flags: DIFlagFwdDecl)
!2817 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2806, file: !2807, line: 45, baseType: !2819, size: 64, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2807, line: 45, flags: DIFlagFwdDecl)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2806, file: !2807, line: 46, baseType: !42, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2806, file: !2807, line: 47, baseType: !327, size: 8, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2806, file: !2807, line: 48, baseType: !86, size: 8, offset: 392)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2806, file: !2807, line: 49, baseType: !327, size: 8, offset: 400)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2806, file: !2807, line: 50, baseType: !327, size: 8, offset: 408)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2806, file: !2807, line: 51, baseType: !463, size: 32, offset: 416)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2806, file: !2807, line: 52, baseType: !52, size: 32, offset: 448)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2806, file: !2807, line: 53, baseType: !62, size: 32, offset: 480)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2806, file: !2807, line: 54, baseType: !374, size: 64, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2806, file: !2807, line: 55, baseType: !23, size: 64, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2806, file: !2807, line: 56, baseType: !23, size: 64, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2806, file: !2807, line: 57, baseType: !2833, size: 64, offset: 704)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2835)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2807, line: 57, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2806, file: !2807, line: 58, baseType: !543, size: 256, offset: 768)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2806, file: !2807, line: 60, baseType: !25, size: 32, offset: 1024)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2806, file: !2807, line: 61, baseType: !25, size: 32, offset: 1056)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2806, file: !2807, line: 62, baseType: !1110, size: 64, offset: 1088)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2806, file: !2807, line: 65, baseType: !543, size: 256, offset: 1152)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2806, file: !2807, line: 66, baseType: !999, size: 64, offset: 1408)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2806, file: !2807, line: 68, baseType: !2843, size: 64, offset: 1472)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2807, line: 68, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2806, file: !2807, line: 72, baseType: !327, size: 8, offset: 1536)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2806, file: !2807, line: 77, baseType: !2847, size: 5824, offset: 1600)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !200, line: 705, size: 5824, elements: !2848)
!2848 = !{!2849, !2850, !2852, !2855, !2856, !2909, !2979, !2980, !2981, !2982, !2983, !2990, !3148, !3161, !3171, !3175, !3177, !3178, !3179, !3183, !3190, !3191, !3194, !3197, !3201, !3204, !3205, !3206, !3207, !3208, !3209, !3239, !3240, !3241, !3244, !3247, !3256, !3257, !3258, !3259, !3260, !3261}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2847, file: !200, line: 706, baseType: !1104, size: 512)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2847, file: !200, line: 707, baseType: !2851, size: 64, offset: 512)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2847, file: !200, line: 709, baseType: !2853, size: 64, offset: 576)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !200, line: 37, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2847, file: !200, line: 711, baseType: !19, size: 64, offset: 640)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2847, file: !200, line: 712, baseType: !2857, size: 64, offset: 704)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2859)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !200, line: 89, size: 384, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2869, !2874, !2878}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2859, file: !200, line: 90, baseType: !19, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2859, file: !200, line: 91, baseType: !1187, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2859, file: !200, line: 92, baseType: !2864, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!25, !2867, !1140}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2847)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2859, file: !200, line: 93, baseType: !2870, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!437, !2867, !2873, !926, !927}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2859, file: !200, line: 95, baseType: !2875, size: 64, offset: 256)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !2851}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2859, file: !200, line: 97, baseType: !2879, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2881)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !212, line: 286, size: 1472, elements: !2882)
!2882 = !{!2883, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2881, file: !212, line: 287, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!25, !2851}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2881, file: !212, line: 288, baseType: !2875, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2881, file: !212, line: 289, baseType: !2884, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2881, file: !212, line: 290, baseType: !2884, size: 64, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2881, file: !212, line: 291, baseType: !2884, size: 64, offset: 256)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2881, file: !212, line: 292, baseType: !2884, size: 64, offset: 320)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2881, file: !212, line: 293, baseType: !2884, size: 64, offset: 384)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2881, file: !212, line: 294, baseType: !2884, size: 64, offset: 448)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2881, file: !212, line: 295, baseType: !2884, size: 64, offset: 512)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2881, file: !212, line: 296, baseType: !2884, size: 64, offset: 576)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2881, file: !212, line: 297, baseType: !2884, size: 64, offset: 640)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2881, file: !212, line: 298, baseType: !2884, size: 64, offset: 704)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2881, file: !212, line: 299, baseType: !2884, size: 64, offset: 768)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2881, file: !212, line: 300, baseType: !2884, size: 64, offset: 832)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2881, file: !212, line: 301, baseType: !2884, size: 64, offset: 896)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2881, file: !212, line: 302, baseType: !2884, size: 64, offset: 960)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2881, file: !212, line: 303, baseType: !2884, size: 64, offset: 1024)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2881, file: !212, line: 304, baseType: !2884, size: 64, offset: 1088)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2881, file: !212, line: 305, baseType: !2884, size: 64, offset: 1152)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2881, file: !212, line: 306, baseType: !2884, size: 64, offset: 1216)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2881, file: !212, line: 307, baseType: !2884, size: 64, offset: 1280)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2881, file: !212, line: 308, baseType: !2884, size: 64, offset: 1344)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2881, file: !212, line: 309, baseType: !2884, size: 64, offset: 1408)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2847, file: !200, line: 714, baseType: !2910, size: 64, offset: 768)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2912)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2913, line: 80, size: 1344, elements: !2914)
!2913 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2978}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2912, file: !2913, line: 81, baseType: !19, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2912, file: !2913, line: 82, baseType: !19, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2912, file: !2913, line: 83, baseType: !1187, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2912, file: !2913, line: 84, baseType: !1187, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2912, file: !2913, line: 85, baseType: !1187, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2912, file: !2913, line: 87, baseType: !2921, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!25, !2851, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !194, line: 96, size: 1152, elements: !2926)
!2926 = !{!2927, !2928, !2929, !2930, !2931, !2932, !2933, !2937, !2941, !2942, !2943, !2944, !2945, !2953, !2954, !2955, !2956, !2957, !2958}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2925, file: !194, line: 97, baseType: !19, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2925, file: !194, line: 98, baseType: !2910, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2925, file: !194, line: 100, baseType: !1091, size: 64, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2925, file: !194, line: 101, baseType: !19, size: 64, offset: 192)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2925, file: !194, line: 103, baseType: !327, size: 8, offset: 256)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2925, file: !194, line: 104, baseType: !193, size: 32, offset: 288)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2925, file: !194, line: 106, baseType: !2934, size: 64, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2936)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !194, line: 106, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2925, file: !194, line: 107, baseType: !2938, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2940)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !194, line: 107, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2925, file: !194, line: 109, baseType: !2884, size: 64, offset: 448)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2925, file: !194, line: 110, baseType: !2875, size: 64, offset: 512)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2925, file: !194, line: 111, baseType: !2884, size: 64, offset: 576)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2925, file: !194, line: 112, baseType: !2875, size: 64, offset: 640)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2925, file: !194, line: 113, baseType: !2946, size: 64, offset: 704)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!25, !2851, !2949}
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !212, line: 60, baseType: !2950)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !212, line: 58, size: 32, elements: !2951)
!2951 = !{!2952}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2950, file: !212, line: 59, baseType: !25, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2925, file: !194, line: 114, baseType: !2884, size: 64, offset: 768)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2925, file: !194, line: 115, baseType: !1187, size: 64, offset: 832)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2925, file: !194, line: 116, baseType: !1187, size: 64, offset: 896)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2925, file: !194, line: 118, baseType: !2879, size: 64, offset: 960)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2925, file: !194, line: 119, baseType: !2875, size: 64, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2925, file: !194, line: 121, baseType: !2959, size: 64, offset: 1088)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !194, line: 121, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2912, file: !2913, line: 88, baseType: !2864, size: 64, offset: 384)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2912, file: !2913, line: 89, baseType: !2884, size: 64, offset: 448)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2912, file: !2913, line: 90, baseType: !2875, size: 64, offset: 512)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2912, file: !2913, line: 91, baseType: !2875, size: 64, offset: 576)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2912, file: !2913, line: 92, baseType: !2875, size: 64, offset: 640)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2912, file: !2913, line: 94, baseType: !2884, size: 64, offset: 704)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2912, file: !2913, line: 95, baseType: !2884, size: 64, offset: 768)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2912, file: !2913, line: 97, baseType: !2946, size: 64, offset: 832)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2912, file: !2913, line: 98, baseType: !2884, size: 64, offset: 896)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2912, file: !2913, line: 100, baseType: !2884, size: 64, offset: 960)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2912, file: !2913, line: 102, baseType: !2884, size: 64, offset: 1024)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2912, file: !2913, line: 103, baseType: !2875, size: 64, offset: 1088)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2912, file: !2913, line: 105, baseType: !2879, size: 64, offset: 1152)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2912, file: !2913, line: 107, baseType: !2975, size: 64, offset: 1216)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2977)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2913, line: 107, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2912, file: !2913, line: 109, baseType: !327, size: 8, offset: 1280)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2847, file: !200, line: 715, baseType: !2924, size: 64, offset: 832)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2847, file: !200, line: 717, baseType: !23, size: 64, offset: 896)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2847, file: !200, line: 719, baseType: !23, size: 64, offset: 960)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2847, file: !200, line: 721, baseType: !543, size: 256, offset: 1024)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2847, file: !200, line: 725, baseType: !2984, size: 448, offset: 1280)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !200, line: 517, size: 448, elements: !2985)
!2985 = !{!2986, !2987, !2988, !2989}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2984, file: !200, line: 518, baseType: !100, size: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2984, file: !200, line: 519, baseType: !100, size: 128, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2984, file: !200, line: 520, baseType: !100, size: 128, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2984, file: !200, line: 521, baseType: !199, size: 32, offset: 384)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2847, file: !200, line: 726, baseType: !2991, size: 2496, offset: 1728)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !212, line: 663, size: 2496, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3037, !3038, !3039, !3040, !3041, !3042, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3141, !3145}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2991, file: !212, line: 664, baseType: !2949, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2991, file: !212, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2991, file: !212, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2991, file: !212, line: 667, baseType: !327, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2991, file: !212, line: 668, baseType: !327, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2991, file: !212, line: 669, baseType: !327, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2991, file: !212, line: 670, baseType: !327, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2991, file: !212, line: 671, baseType: !327, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2991, file: !212, line: 672, baseType: !327, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2991, file: !212, line: 673, baseType: !327, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2991, file: !212, line: 674, baseType: !327, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2991, file: !212, line: 675, baseType: !363, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2991, file: !212, line: 676, baseType: !62, size: 32, offset: 96)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2991, file: !212, line: 678, baseType: !100, size: 128, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2991, file: !212, line: 679, baseType: !901, size: 256, offset: 256)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2991, file: !212, line: 680, baseType: !3009, size: 64, offset: 512)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3011, line: 43, size: 1536, elements: !3012)
!3011 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3012 = !{!3013, !3014, !3015, !3016, !3017, !3020, !3021, !3022, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3010, file: !3011, line: 44, baseType: !19, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3010, file: !3011, line: 45, baseType: !25, size: 32, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3010, file: !3011, line: 46, baseType: !100, size: 128, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3010, file: !3011, line: 47, baseType: !62, size: 32, offset: 256)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3010, file: !3011, line: 48, baseType: !3018, size: 64, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !212, line: 629, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3010, file: !3011, line: 49, baseType: !2379, size: 320, offset: 384)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3010, file: !3011, line: 50, baseType: !42, size: 64, offset: 704)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3010, file: !3011, line: 51, baseType: !3023, size: 64, offset: 768)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3024, line: 29, baseType: !541)
!3024 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3010, file: !3011, line: 52, baseType: !3023, size: 64, offset: 832)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3010, file: !3011, line: 53, baseType: !3023, size: 64, offset: 896)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3010, file: !3011, line: 54, baseType: !3023, size: 64, offset: 960)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3010, file: !3011, line: 55, baseType: !3023, size: 64, offset: 1024)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3010, file: !3011, line: 56, baseType: !42, size: 64, offset: 1088)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3010, file: !3011, line: 57, baseType: !42, size: 64, offset: 1152)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3010, file: !3011, line: 58, baseType: !42, size: 64, offset: 1216)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3010, file: !3011, line: 59, baseType: !42, size: 64, offset: 1280)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3010, file: !3011, line: 60, baseType: !42, size: 64, offset: 1344)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3010, file: !3011, line: 61, baseType: !2851, size: 64, offset: 1408)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3010, file: !3011, line: 62, baseType: !327, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3010, file: !3011, line: 63, baseType: !327, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2991, file: !212, line: 681, baseType: !327, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2991, file: !212, line: 682, baseType: !327, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2991, file: !212, line: 683, baseType: !327, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2991, file: !212, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2991, file: !212, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2991, file: !212, line: 690, baseType: !3043, size: 512, offset: 640)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !207, line: 118, size: 512, elements: !3044)
!3044 = !{!3045, !3051, !3052, !3057, !3103, !3104, !3105, !3106}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3043, file: !207, line: 119, baseType: !3046, size: 256)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3047, line: 9, size: 256, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3046, file: !3047, line: 10, baseType: !667, size: 192, align: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3046, file: !3047, line: 11, baseType: !3023, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3043, file: !207, line: 120, baseType: !3023, size: 64, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3043, file: !207, line: 121, baseType: !3053, size: 64, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!206, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3043, file: !207, line: 122, baseType: !3058, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !207, line: 159, size: 512, align: 512, elements: !3060)
!3060 = !{!3061, !3084, !3085, !3088, !3093, !3094, !3098, !3102}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3059, file: !207, line: 160, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !207, line: 215, size: 4608, align: 512, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3063, file: !207, line: 216, baseType: !548, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3063, file: !207, line: 217, baseType: !7, size: 32, offset: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3063, file: !207, line: 218, baseType: !7, size: 32, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3063, file: !207, line: 219, baseType: !7, size: 32, offset: 96)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3063, file: !207, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3063, file: !207, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3063, file: !207, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3063, file: !207, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3063, file: !207, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3063, file: !207, line: 226, baseType: !7, size: 32, offset: 160)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3063, file: !207, line: 227, baseType: !29, size: 16, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3063, file: !207, line: 228, baseType: !29, size: 16, offset: 208)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3063, file: !207, line: 229, baseType: !7, size: 32, offset: 224)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3063, file: !207, line: 235, baseType: !3023, size: 64, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3063, file: !207, line: 236, baseType: !3056, size: 64, offset: 320)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3063, file: !207, line: 237, baseType: !3023, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3063, file: !207, line: 238, baseType: !3056, size: 64, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3063, file: !207, line: 239, baseType: !3083, size: 4096, align: 512, offset: 512)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3059, size: 4096, align: 512, elements: !2489)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3059, file: !207, line: 161, baseType: !7, size: 32, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3059, file: !207, line: 162, baseType: !3086, size: 32, offset: 96)
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !28, line: 32, baseType: !3087)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !40, line: 96, baseType: !25)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3059, file: !207, line: 163, baseType: !3089, size: 32, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !336, line: 274, baseType: !3090)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !336, line: 274, size: 32, elements: !3091)
!3091 = !{!3092}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3090, file: !336, line: 274, baseType: !340, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3059, file: !207, line: 164, baseType: !3056, size: 64, offset: 192)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3059, file: !207, line: 165, baseType: !3095, size: 128, offset: 256)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3047, line: 14, size: 128, elements: !3096)
!3096 = !{!3097}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3095, file: !3047, line: 15, baseType: !1226, size: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3059, file: !207, line: 166, baseType: !3099, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!3023}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3059, file: !207, line: 167, baseType: !3023, size: 64, offset: 448)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3043, file: !207, line: 123, baseType: !86, size: 8, offset: 448)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3043, file: !207, line: 124, baseType: !86, size: 8, offset: 456)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3043, file: !207, line: 125, baseType: !86, size: 8, offset: 464)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3043, file: !207, line: 126, baseType: !86, size: 8, offset: 472)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2991, file: !212, line: 691, baseType: !367, size: 64, offset: 1152)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2991, file: !212, line: 692, baseType: !862, size: 256, offset: 1216)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2991, file: !212, line: 693, baseType: !57, size: 192, offset: 1472)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2991, file: !212, line: 694, baseType: !3018, size: 64, offset: 1664)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2991, file: !212, line: 695, baseType: !52, size: 32, offset: 1728)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2991, file: !212, line: 696, baseType: !52, size: 32, offset: 1760)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2991, file: !212, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2991, file: !212, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2991, file: !212, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2991, file: !212, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2991, file: !212, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2991, file: !212, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2991, file: !212, line: 703, baseType: !327, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2991, file: !212, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2991, file: !212, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2991, file: !212, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2991, file: !212, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2991, file: !212, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2991, file: !212, line: 709, baseType: !7, size: 32, offset: 1824)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2991, file: !212, line: 710, baseType: !211, size: 32, offset: 1856)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2991, file: !212, line: 711, baseType: !219, size: 32, offset: 1888)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2991, file: !212, line: 712, baseType: !219, size: 32, offset: 1920)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2991, file: !212, line: 713, baseType: !25, size: 32, offset: 1952)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2991, file: !212, line: 714, baseType: !25, size: 32, offset: 1984)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2991, file: !212, line: 715, baseType: !367, size: 64, offset: 2048)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2991, file: !212, line: 716, baseType: !367, size: 64, offset: 2112)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2991, file: !212, line: 717, baseType: !367, size: 64, offset: 2176)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2991, file: !212, line: 718, baseType: !367, size: 64, offset: 2240)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2991, file: !212, line: 720, baseType: !3136, size: 64, offset: 2304)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !212, line: 632, size: 64, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3137, file: !212, line: 633, baseType: !62, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3137, file: !212, line: 634, baseType: !7, size: 32, offset: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2991, file: !212, line: 721, baseType: !3142, size: 64, offset: 2368)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !2851, !660}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2991, file: !212, line: 722, baseType: !3146, size: 64, offset: 2432)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !212, line: 722, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2847, file: !200, line: 727, baseType: !3149, size: 64, offset: 4224)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !212, line: 742, size: 1792, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3158, !3159, !3160}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3150, file: !212, line: 743, baseType: !2881, size: 1472)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3150, file: !212, line: 744, baseType: !2884, size: 64, offset: 1472)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3150, file: !212, line: 745, baseType: !3155, size: 64, offset: 1536)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !2851, !327}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3150, file: !212, line: 746, baseType: !2884, size: 64, offset: 1600)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3150, file: !212, line: 747, baseType: !2875, size: 64, offset: 1664)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3150, file: !212, line: 748, baseType: !2875, size: 64, offset: 1728)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2847, file: !200, line: 736, baseType: !3162, size: 128, offset: 4288)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !200, line: 529, size: 128, elements: !3163)
!3163 = !{!3164, !3168}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3162, file: !200, line: 531, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3167, line: 13, flags: DIFlagFwdDecl)
!3167 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3162, file: !200, line: 532, baseType: !3169, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !200, line: 49, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2847, file: !200, line: 738, baseType: !3172, size: 64, offset: 4416)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !200, line: 738, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2847, file: !200, line: 740, baseType: !3176, size: 64, offset: 4480)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2847, file: !200, line: 741, baseType: !367, size: 64, offset: 4544)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2847, file: !200, line: 746, baseType: !367, size: 64, offset: 4608)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2847, file: !200, line: 747, baseType: !3180, size: 64, offset: 4672)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !200, line: 747, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2847, file: !200, line: 749, baseType: !3184, size: 64, offset: 4736)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !200, line: 428, size: 128, elements: !3186)
!3186 = !{!3187, !3188, !3189}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3185, file: !200, line: 433, baseType: !7, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3185, file: !200, line: 434, baseType: !7, size: 32, offset: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3185, file: !200, line: 435, baseType: !42, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2847, file: !200, line: 751, baseType: !100, size: 128, offset: 4800)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2847, file: !200, line: 762, baseType: !3192, size: 64, offset: 4928)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !200, line: 762, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2847, file: !200, line: 770, baseType: !3195, offset: 4992)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3196, line: 5, elements: !1385)
!3196 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2847, file: !200, line: 772, baseType: !3198, size: 64, offset: 4992)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3200, line: 18, flags: DIFlagFwdDecl)
!3200 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2847, file: !200, line: 773, baseType: !3202, size: 64, offset: 5056)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2913, line: 22, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2847, file: !200, line: 776, baseType: !25, size: 32, offset: 5120)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2847, file: !200, line: 778, baseType: !463, size: 32, offset: 5152)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2847, file: !200, line: 779, baseType: !363, size: 32, offset: 5184)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2847, file: !200, line: 781, baseType: !62, size: 32, offset: 5216)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2847, file: !200, line: 782, baseType: !100, size: 128, offset: 5248)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2847, file: !200, line: 784, baseType: !3210, size: 64, offset: 5376)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3212)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3213, line: 52, size: 768, elements: !3214)
!3213 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3223, !3227, !3228, !3229, !3230, !3234, !3238}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3212, file: !3213, line: 53, baseType: !19, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3212, file: !3213, line: 55, baseType: !1187, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3212, file: !3213, line: 56, baseType: !1187, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3212, file: !3213, line: 58, baseType: !2864, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3212, file: !3213, line: 59, baseType: !3220, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!437, !2867, !2873}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3212, file: !3213, line: 61, baseType: !3224, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !3210}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3212, file: !3213, line: 62, baseType: !2875, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3212, file: !3213, line: 64, baseType: !2884, size: 64, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3212, file: !3213, line: 66, baseType: !1930, size: 64, offset: 512)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3212, file: !3213, line: 67, baseType: !3231, size: 64, offset: 576)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!1480, !2867}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3212, file: !3213, line: 69, baseType: !3235, size: 64, offset: 640)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !2867, !926, !927}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3212, file: !3213, line: 71, baseType: !2879, size: 64, offset: 704)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2847, file: !200, line: 785, baseType: !1187, size: 64, offset: 5440)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2847, file: !200, line: 787, baseType: !2875, size: 64, offset: 5504)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2847, file: !200, line: 788, baseType: !3242, size: 64, offset: 5568)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !200, line: 46, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2847, file: !200, line: 789, baseType: !3245, size: 64, offset: 5632)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !200, line: 48, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2847, file: !200, line: 791, baseType: !3248, size: 64, offset: 5696)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !200, line: 597, size: 128, elements: !3250)
!3250 = !{!3251, !3252, !3253, !3254, !3255}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3249, file: !200, line: 598, baseType: !226, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3249, file: !200, line: 599, baseType: !235, size: 32, offset: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3249, file: !200, line: 600, baseType: !240, size: 32, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3249, file: !200, line: 601, baseType: !327, size: 8, offset: 96)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3249, file: !200, line: 602, baseType: !327, size: 8, offset: 104)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2847, file: !200, line: 793, baseType: !245, size: 32, offset: 5760)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2847, file: !200, line: 795, baseType: !327, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2847, file: !200, line: 796, baseType: !327, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2847, file: !200, line: 797, baseType: !327, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2847, file: !200, line: 798, baseType: !327, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2847, file: !200, line: 799, baseType: !327, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1000, file: !183, line: 1226, baseType: !3263, size: 64, offset: 1664)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !183, line: 1226, flags: DIFlagFwdDecl)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1000, file: !183, line: 1227, baseType: !3266, size: 64, offset: 1728)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !252, line: 163, size: 6848, elements: !3268)
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3315, !3316, !3317, !3318, !3320, !3321, !3322}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3267, file: !252, line: 164, baseType: !367, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3267, file: !252, line: 165, baseType: !667, size: 192, align: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3267, file: !252, line: 166, baseType: !100, size: 128, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3267, file: !252, line: 167, baseType: !42, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3267, file: !252, line: 168, baseType: !42, size: 64, offset: 448)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3267, file: !252, line: 170, baseType: !2129, size: 32, offset: 512)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3267, file: !252, line: 171, baseType: !7, size: 32, offset: 544)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3267, file: !252, line: 172, baseType: !7, size: 32, offset: 576)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3267, file: !252, line: 173, baseType: !7, size: 32, offset: 608)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3267, file: !252, line: 173, baseType: !7, size: 32, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3267, file: !252, line: 179, baseType: !535, size: 64, offset: 704)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3267, file: !252, line: 184, baseType: !42, size: 64, offset: 768)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3267, file: !252, line: 186, baseType: !3282, size: 4672, offset: 832)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !252, line: 105, size: 4672, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3282, file: !252, line: 106, baseType: !3266, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3282, file: !252, line: 108, baseType: !42, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3282, file: !252, line: 109, baseType: !42, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3282, file: !252, line: 111, baseType: !100, size: 128, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3282, file: !252, line: 112, baseType: !100, size: 128, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3282, file: !252, line: 113, baseType: !100, size: 128, offset: 448)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3282, file: !252, line: 114, baseType: !100, size: 128, offset: 576)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3282, file: !252, line: 115, baseType: !62, size: 32, offset: 704)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3282, file: !252, line: 117, baseType: !52, size: 32, offset: 736)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3282, file: !252, line: 118, baseType: !1448, size: 1280, offset: 768)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3282, file: !252, line: 120, baseType: !42, size: 64, offset: 2048)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3282, file: !252, line: 121, baseType: !42, size: 64, offset: 2112)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3282, file: !252, line: 122, baseType: !42, size: 64, offset: 2176)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3282, file: !252, line: 123, baseType: !42, size: 64, offset: 2240)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3282, file: !252, line: 124, baseType: !42, size: 64, offset: 2304)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3282, file: !252, line: 132, baseType: !42, size: 64, offset: 2368)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3282, file: !252, line: 133, baseType: !42, size: 64, offset: 2432)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3282, file: !252, line: 135, baseType: !3302, size: 384, offset: 2496)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3303, line: 76, size: 384, elements: !3304)
!3303 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3304 = !{!3305, !3306, !3307}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3302, file: !3303, line: 78, baseType: !788, size: 320)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3302, file: !3303, line: 80, baseType: !7, size: 32, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3302, file: !3303, line: 81, baseType: !548, size: 32, offset: 352)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3282, file: !252, line: 136, baseType: !25, size: 32, offset: 2880)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3282, file: !252, line: 137, baseType: !251, size: 32, offset: 2912)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3282, file: !252, line: 139, baseType: !62, size: 32, offset: 2944)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3282, file: !252, line: 140, baseType: !100, size: 128, offset: 3008)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3282, file: !252, line: 141, baseType: !2436, size: 704, offset: 3136)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3282, file: !252, line: 142, baseType: !2436, size: 704, offset: 3840)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3282, file: !252, line: 144, baseType: !100, size: 128, offset: 4544)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3267, file: !252, line: 187, baseType: !100, size: 128, offset: 5504)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3267, file: !252, line: 193, baseType: !57, size: 192, offset: 5632)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3267, file: !252, line: 195, baseType: !2851, size: 64, offset: 5824)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3267, file: !252, line: 196, baseType: !3319, size: 512, offset: 5888)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !1147)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3267, file: !252, line: 197, baseType: !2851, size: 64, offset: 6400)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3267, file: !252, line: 199, baseType: !2379, size: 320, offset: 6464)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3267, file: !252, line: 202, baseType: !329, size: 64, offset: 6784)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1000, file: !183, line: 1228, baseType: !3324, size: 64, offset: 1792)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !183, line: 1228, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1000, file: !183, line: 1229, baseType: !601, size: 128, offset: 1856)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1000, file: !183, line: 1230, baseType: !7, size: 32, offset: 1984)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1000, file: !183, line: 1231, baseType: !3329, size: 2496, offset: 2048)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !188, line: 521, size: 2496, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3335, !3367}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3329, file: !188, line: 522, baseType: !7, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3329, file: !188, line: 523, baseType: !675, size: 320, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3329, file: !188, line: 524, baseType: !3334, size: 192, offset: 384)
!3334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 192, elements: !580)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3329, file: !188, line: 525, baseType: !3336, size: 1728, offset: 576)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3337, size: 1728, elements: !580)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !188, line: 222, size: 576, elements: !3338)
!3338 = !{!3339, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3337, file: !188, line: 223, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !188, line: 445, size: 256, elements: !3342)
!3342 = !{!3343, !3344, !3357, !3358}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3341, file: !188, line: 446, baseType: !25, size: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3341, file: !188, line: 447, baseType: !3345, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3347)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !188, line: 312, size: 512, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3347, file: !188, line: 313, baseType: !2557, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3347, file: !188, line: 314, baseType: !2557, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3347, file: !188, line: 315, baseType: !2557, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3347, file: !188, line: 316, baseType: !2557, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3347, file: !188, line: 317, baseType: !2666, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3347, file: !188, line: 318, baseType: !2666, size: 64, offset: 320)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3347, file: !188, line: 319, baseType: !2666, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3347, file: !188, line: 320, baseType: !2696, size: 64, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3341, file: !188, line: 448, baseType: !1091, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3341, file: !188, line: 449, baseType: !3340, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3337, file: !188, line: 224, baseType: !25, size: 32, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3337, file: !188, line: 226, baseType: !100, size: 128, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3337, file: !188, line: 227, baseType: !42, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3337, file: !188, line: 228, baseType: !7, size: 32, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3337, file: !188, line: 229, baseType: !7, size: 32, offset: 352)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3337, file: !188, line: 230, baseType: !2634, size: 64, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3337, file: !188, line: 231, baseType: !2634, size: 64, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3337, file: !188, line: 232, baseType: !23, size: 64, offset: 512)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3329, file: !188, line: 526, baseType: !3368, size: 192, offset: 2304)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3345, size: 192, elements: !580)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1000, file: !183, line: 1233, baseType: !3370, size: 2368, offset: 4544)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !183, line: 1184, size: 2368, elements: !3371)
!3371 = !{!3372, !3373, !3374}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3370, file: !183, line: 1185, baseType: !29, size: 16)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3370, file: !183, line: 1186, baseType: !29, size: 16, offset: 16)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3370, file: !183, line: 1187, baseType: !3375, size: 2304, offset: 64)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3376, size: 2304, elements: !580)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3377, line: 12, size: 768, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3378 = !{!3379, !3387, !3388, !4520, !4521}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3376, file: !3377, line: 13, baseType: !3380, size: 384)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3381, line: 17, size: 384, elements: !3382)
!3381 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3382 = !{!3383, !3384, !3385, !3386}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3380, file: !3381, line: 18, baseType: !25, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3380, file: !3381, line: 19, baseType: !25, size: 32, offset: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3380, file: !3381, line: 20, baseType: !57, size: 192, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3380, file: !3381, line: 22, baseType: !522, size: 128, align: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3376, file: !3377, line: 14, baseType: !2232, size: 64, offset: 384)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3376, file: !3377, line: 15, baseType: !3389, size: 64, offset: 448)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3390, line: 16, size: 64, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3391 = !{!3392}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3389, file: !3390, line: 17, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2007, line: 746, size: 58368, elements: !3395)
!3395 = !{!3396, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3476, !3487, !3507, !3511, !3514, !3545, !3546, !3547, !3548, !3559, !3561, !3562, !3563, !3564, !3565, !3566, !3577, !3578, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3595, !3596, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3684, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3732, !3738, !3739, !3740, !3741, !3742, !3746, !3749, !3756, !3761, !3764, !3767, !3770, !3794, !3933, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3971, !3972, !3973, !3982, !3990, !3991, !3992, !3993, !3994, !3999, !4000, !4001, !4004, !4005, !4008, !4011, !4014, !4021, !4024, !4025, !4111, !4112, !4113, !4114, !4115, !4121, !4122, !4123, !4124, !4127, !4128, !4131, !4134, !4135, !4138, !4139, !4140, !4143, !4144, !4145, !4146, !4147, !4148, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4180, !4183, !4189, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4271, !4273, !4274, !4275, !4276, !4277, !4278, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4295, !4296, !4297}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3394, file: !2007, line: 752, baseType: !3397, size: 192)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3398, line: 56, size: 192, elements: !3399)
!3398 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3399 = !{!3400, !3401, !3402, !3403}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3397, file: !3398, line: 57, baseType: !42, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3397, file: !3398, line: 58, baseType: !42, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3397, file: !3398, line: 59, baseType: !363, size: 32, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3397, file: !3398, line: 61, baseType: !363, size: 32, offset: 160)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3394, file: !2007, line: 754, baseType: !7, size: 32, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3394, file: !2007, line: 767, baseType: !23, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3394, file: !2007, line: 768, baseType: !588, size: 32, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3394, file: !2007, line: 770, baseType: !7, size: 32, offset: 352)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3394, file: !2007, line: 771, baseType: !7, size: 32, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3394, file: !2007, line: 774, baseType: !25, size: 32, offset: 416)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3394, file: !2007, line: 775, baseType: !3411, size: 128, offset: 448)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3412, line: 58, size: 128, elements: !3413)
!3412 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3413 = !{!3414, !3415, !3420, !3421}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3411, file: !3412, line: 59, baseType: !516, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, scope: !3411, file: !3412, line: 60, baseType: !3416, size: 32, offset: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3411, file: !3412, line: 60, size: 32, elements: !3417)
!3417 = !{!3418, !3419}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3416, file: !3412, line: 61, baseType: !7, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3416, file: !3412, line: 62, baseType: !52, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3411, file: !3412, line: 65, baseType: !96, size: 16, offset: 96)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3411, file: !3412, line: 65, baseType: !96, size: 16, offset: 112)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3394, file: !2007, line: 776, baseType: !7, size: 32, offset: 576)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3394, file: !2007, line: 777, baseType: !42, size: 64, offset: 640)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3394, file: !2007, line: 778, baseType: !3393, size: 64, offset: 704)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3394, file: !2007, line: 787, baseType: !25, size: 32, offset: 768)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3394, file: !2007, line: 788, baseType: !25, size: 32, offset: 800)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3394, file: !2007, line: 790, baseType: !25, size: 32, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3394, file: !2007, line: 792, baseType: !25, size: 32, offset: 864)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3394, file: !2007, line: 793, baseType: !25, size: 32, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3394, file: !2007, line: 794, baseType: !25, size: 32, offset: 928)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3394, file: !2007, line: 795, baseType: !7, size: 32, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3394, file: !2007, line: 797, baseType: !3433, size: 2048, offset: 1024)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2007, line: 551, size: 2048, elements: !3434)
!3434 = !{!3435, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3455, !3458, !3459, !3460}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3433, file: !2007, line: 553, baseType: !3436, size: 128)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2007, line: 411, size: 128, elements: !3437)
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3436, file: !2007, line: 412, baseType: !42, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3436, file: !2007, line: 413, baseType: !363, size: 32, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3433, file: !2007, line: 554, baseType: !667, size: 192, align: 64, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3433, file: !2007, line: 555, baseType: !367, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3433, file: !2007, line: 556, baseType: !367, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3433, file: !2007, line: 558, baseType: !100, size: 128, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3433, file: !2007, line: 559, baseType: !7, size: 32, offset: 576)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3433, file: !2007, line: 561, baseType: !367, size: 64, offset: 640)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3433, file: !2007, line: 562, baseType: !367, size: 64, offset: 704)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3433, file: !2007, line: 563, baseType: !367, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3433, file: !2007, line: 564, baseType: !367, size: 64, offset: 832)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3433, file: !2007, line: 565, baseType: !541, size: 64, offset: 896)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3433, file: !2007, line: 566, baseType: !367, size: 64, offset: 960)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3433, file: !2007, line: 568, baseType: !367, size: 64, offset: 1024)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3433, file: !2007, line: 571, baseType: !25, size: 32, offset: 1088)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3433, file: !2007, line: 572, baseType: !3454, size: 64, offset: 1152)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3433, file: !2007, line: 574, baseType: !3456, size: 64, offset: 1216)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2007, line: 49, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3433, file: !2007, line: 576, baseType: !3456, size: 64, offset: 1280)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3433, file: !2007, line: 578, baseType: !42, size: 64, offset: 1344)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3433, file: !2007, line: 588, baseType: !3461, size: 512, align: 512, offset: 1536)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2007, line: 497, size: 512, align: 512, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3461, file: !2007, line: 498, baseType: !367, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3461, file: !2007, line: 499, baseType: !367, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3461, file: !2007, line: 500, baseType: !367, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3461, file: !2007, line: 501, baseType: !363, size: 32, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3461, file: !2007, line: 502, baseType: !363, size: 32, offset: 224)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3461, file: !2007, line: 503, baseType: !42, size: 64, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3461, file: !2007, line: 504, baseType: !42, size: 64, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3461, file: !2007, line: 505, baseType: !42, size: 64, offset: 384)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3461, file: !2007, line: 506, baseType: !3472, size: 64, align: 64, offset: 448)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2007, line: 445, size: 64, align: 64, elements: !3473)
!3473 = !{!3474, !3475}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3472, file: !2007, line: 446, baseType: !7, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3472, file: !2007, line: 447, baseType: !7, size: 32, offset: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3394, file: !2007, line: 798, baseType: !3477, size: 384, offset: 3072)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2007, line: 592, size: 384, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3477, file: !2007, line: 593, baseType: !100, size: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3477, file: !2007, line: 594, baseType: !42, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3477, file: !2007, line: 595, baseType: !42, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3477, file: !2007, line: 596, baseType: !7, size: 32, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3477, file: !2007, line: 597, baseType: !29, size: 16, offset: 288)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3477, file: !2007, line: 598, baseType: !29, size: 16, offset: 304)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3477, file: !2007, line: 600, baseType: !3486, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3394, file: !2007, line: 799, baseType: !3488, size: 1792, offset: 3456)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2007, line: 610, size: 1792, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3488, file: !2007, line: 611, baseType: !667, size: 192, align: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3488, file: !2007, line: 618, baseType: !367, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3488, file: !2007, line: 619, baseType: !367, size: 64, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3488, file: !2007, line: 620, baseType: !367, size: 64, offset: 320)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3488, file: !2007, line: 621, baseType: !367, size: 64, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3488, file: !2007, line: 622, baseType: !367, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3488, file: !2007, line: 629, baseType: !541, size: 64, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3488, file: !2007, line: 630, baseType: !367, size: 64, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3488, file: !2007, line: 631, baseType: !7, size: 32, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3488, file: !2007, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3488, file: !2007, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3488, file: !2007, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3488, file: !2007, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3488, file: !2007, line: 662, baseType: !3043, size: 512, offset: 704)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3488, file: !2007, line: 671, baseType: !3043, size: 512, offset: 1216)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3488, file: !2007, line: 679, baseType: !3506, size: 64, offset: 1728)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3394, file: !2007, line: 800, baseType: !3508, size: 64, offset: 5248)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3510)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2007, line: 800, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3394, file: !2007, line: 809, baseType: !3512, size: 64, offset: 5312)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2007, line: 70, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3394, file: !2007, line: 825, baseType: !3515, size: 2048, align: 512, offset: 5632)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2007, line: 509, size: 2048, align: 512, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3515, file: !2007, line: 511, baseType: !367, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3515, file: !2007, line: 512, baseType: !367, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3515, file: !2007, line: 513, baseType: !367, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3515, file: !2007, line: 514, baseType: !367, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3515, file: !2007, line: 515, baseType: !367, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3515, file: !2007, line: 516, baseType: !367, size: 64, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3515, file: !2007, line: 518, baseType: !367, size: 64, offset: 384)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3515, file: !2007, line: 519, baseType: !367, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3515, file: !2007, line: 520, baseType: !541, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3515, file: !2007, line: 522, baseType: !367, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3515, file: !2007, line: 523, baseType: !367, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3515, file: !2007, line: 524, baseType: !541, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3515, file: !2007, line: 526, baseType: !541, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3515, file: !2007, line: 527, baseType: !367, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3515, file: !2007, line: 529, baseType: !367, size: 64, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3515, file: !2007, line: 530, baseType: !367, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3515, file: !2007, line: 531, baseType: !367, size: 64, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3515, file: !2007, line: 532, baseType: !367, size: 64, offset: 1088)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3515, file: !2007, line: 533, baseType: !367, size: 64, offset: 1152)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3515, file: !2007, line: 535, baseType: !367, size: 64, offset: 1216)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3515, file: !2007, line: 536, baseType: !367, size: 64, offset: 1280)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3515, file: !2007, line: 537, baseType: !367, size: 64, offset: 1344)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3515, file: !2007, line: 538, baseType: !367, size: 64, offset: 1408)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3515, file: !2007, line: 539, baseType: !367, size: 64, offset: 1472)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3515, file: !2007, line: 540, baseType: !367, size: 64, offset: 1536)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3515, file: !2007, line: 541, baseType: !367, size: 64, offset: 1600)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3515, file: !2007, line: 542, baseType: !367, size: 64, offset: 1664)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3515, file: !2007, line: 543, baseType: !367, size: 64, offset: 1728)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3394, file: !2007, line: 833, baseType: !7, size: 32, offset: 7680)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3394, file: !2007, line: 836, baseType: !7, size: 32, offset: 7712)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3394, file: !2007, line: 837, baseType: !25, size: 32, offset: 7744)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3394, file: !2007, line: 838, baseType: !3549, size: 64, offset: 7808)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3551)
!3551 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3552, line: 19, baseType: !3553)
!3552 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3552, line: 19, size: 64, elements: !3554)
!3554 = !{!3555}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3553, file: !3552, line: 19, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !3557)
!3557 = !{!3558}
!3558 = !DISubrange(count: 1)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3394, file: !2007, line: 839, baseType: !3560, size: 64, offset: 7872)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3394, file: !2007, line: 840, baseType: !3551, size: 64, offset: 7936)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3394, file: !2007, line: 841, baseType: !23, size: 64, offset: 8000)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3394, file: !2007, line: 843, baseType: !29, size: 16, offset: 8064)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3394, file: !2007, line: 845, baseType: !29, size: 16, offset: 8080)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3394, file: !2007, line: 848, baseType: !25, size: 32, offset: 8096)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3394, file: !2007, line: 849, baseType: !3567, size: 32, offset: 8128)
!3567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2007, line: 718, size: 32, elements: !3568)
!3568 = !{!3569, !3576}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3567, file: !2007, line: 724, baseType: !3570, size: 32)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3567, file: !2007, line: 719, size: 32, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3570, file: !2007, line: 720, baseType: !86, size: 8)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3570, file: !2007, line: 721, baseType: !86, size: 8, offset: 8)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3570, file: !2007, line: 722, baseType: !86, size: 8, offset: 16)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3570, file: !2007, line: 723, baseType: !86, size: 8, offset: 24)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3567, file: !2007, line: 725, baseType: !363, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3394, file: !2007, line: 850, baseType: !100, size: 128, offset: 8192)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3394, file: !2007, line: 851, baseType: !3579, size: 64, offset: 8320)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2007, line: 60, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3394, file: !2007, line: 855, baseType: !42, size: 64, offset: 8384)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3394, file: !2007, line: 856, baseType: !86, size: 8, offset: 8448)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3394, file: !2007, line: 857, baseType: !86, size: 8, offset: 8456)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3394, file: !2007, line: 858, baseType: !25, size: 32, offset: 8480)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3394, file: !2007, line: 859, baseType: !100, size: 128, offset: 8512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3394, file: !2007, line: 860, baseType: !25, size: 32, offset: 8640)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3394, file: !2007, line: 861, baseType: !100, size: 128, offset: 8704)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3394, file: !2007, line: 873, baseType: !3589, size: 256, offset: 8832)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2007, line: 376, size: 256, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3589, file: !2007, line: 381, baseType: !42, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3589, file: !2007, line: 384, baseType: !369, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3589, file: !2007, line: 389, baseType: !369, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3589, file: !2007, line: 392, baseType: !369, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3394, file: !2007, line: 875, baseType: !100, size: 128, offset: 9088)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3394, file: !2007, line: 877, baseType: !3597, size: 320, offset: 9216)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3598, line: 86, size: 320, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3599 = !{!3600, !3601, !3602}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3597, file: !3598, line: 87, baseType: !25, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3597, file: !3598, line: 88, baseType: !100, size: 128, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3597, file: !3598, line: 89, baseType: !100, size: 128, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3394, file: !2007, line: 878, baseType: !667, size: 192, align: 64, offset: 9536)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3394, file: !2007, line: 881, baseType: !1364, size: 64, offset: 9728)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3394, file: !2007, line: 882, baseType: !1364, size: 64, offset: 9792)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3394, file: !2007, line: 884, baseType: !25, size: 32, offset: 9856)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3394, file: !2007, line: 885, baseType: !25, size: 32, offset: 9888)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3394, file: !2007, line: 886, baseType: !25, size: 32, offset: 9920)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3394, file: !2007, line: 888, baseType: !25, size: 32, offset: 9952)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3394, file: !2007, line: 890, baseType: !42, size: 64, offset: 9984)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3394, file: !2007, line: 893, baseType: !7, size: 32, offset: 10048)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3394, file: !2007, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3394, file: !2007, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3394, file: !2007, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3394, file: !2007, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3394, file: !2007, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3394, file: !2007, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3394, file: !2007, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3394, file: !2007, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3394, file: !2007, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3394, file: !2007, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3394, file: !2007, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3394, file: !2007, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3394, file: !2007, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3394, file: !2007, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3394, file: !2007, line: 969, baseType: !42, size: 64, offset: 10176)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3394, file: !2007, line: 971, baseType: !3628, size: 448, offset: 10240)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !264, line: 25, size: 448, elements: !3629)
!3629 = !{!3630, !3631, !3636}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3628, file: !264, line: 26, baseType: !42, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3628, file: !264, line: 27, baseType: !3632, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!310, !3635}
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, scope: !3628, file: !264, line: 28, baseType: !3637, size: 320, offset: 128)
!3637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3628, file: !264, line: 28, size: 320, elements: !3638)
!3638 = !{!3639, !3649, !3674}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3637, file: !264, line: 37, baseType: !3640, size: 320)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3637, file: !264, line: 30, size: 320, elements: !3641)
!3641 = !{!3642, !3644, !3645, !3646, !3647, !3648}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3640, file: !264, line: 31, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3640, file: !264, line: 32, baseType: !363, size: 32, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3640, file: !264, line: 33, baseType: !363, size: 32, offset: 96)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3640, file: !264, line: 34, baseType: !363, size: 32, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3640, file: !264, line: 35, baseType: !367, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3640, file: !264, line: 36, baseType: !3643, size: 64, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3637, file: !264, line: 47, baseType: !3650, size: 192)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3637, file: !264, line: 39, size: 192, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3673}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3650, file: !264, line: 40, baseType: !3086, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3650, file: !264, line: 41, baseType: !263, size: 32, offset: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3650, file: !264, line: 42, baseType: !3655, size: 64, offset: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3650, file: !264, line: 42, size: 64, elements: !3656)
!3656 = !{!3657, !3665}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3655, file: !264, line: 43, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3660, line: 7, size: 128, elements: !3661)
!3660 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3661 = !{!3662, !3664}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3659, file: !3660, line: 8, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !40, line: 93, baseType: !46)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3659, file: !3660, line: 9, baseType: !46, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3655, file: !264, line: 44, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3668, line: 7, size: 64, elements: !3669)
!3668 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3669 = !{!3670, !3672}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3667, file: !3668, line: 8, baseType: !3671, size: 32)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3668, line: 5, baseType: !660)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3667, file: !3668, line: 9, baseType: !660, size: 32, offset: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3650, file: !264, line: 46, baseType: !367, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3637, file: !264, line: 55, baseType: !3675, size: 256)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3637, file: !264, line: 49, size: 256, elements: !3676)
!3676 = !{!3677, !3680, !3681, !3682, !3683}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3675, file: !264, line: 50, baseType: !3678, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !264, line: 14, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3675, file: !264, line: 51, baseType: !25, size: 32, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3675, file: !264, line: 52, baseType: !25, size: 32, offset: 96)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3675, file: !264, line: 53, baseType: !42, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3675, file: !264, line: 54, baseType: !42, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3394, file: !2007, line: 973, baseType: !3685, size: 32, offset: 10688)
!3685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !28, line: 27, baseType: !3686)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !40, line: 28, baseType: !25)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3394, file: !2007, line: 974, baseType: !3685, size: 32, offset: 10720)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3394, file: !2007, line: 978, baseType: !42, size: 64, offset: 10752)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3394, file: !2007, line: 987, baseType: !3393, size: 64, offset: 10816)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3394, file: !2007, line: 990, baseType: !3393, size: 64, offset: 10880)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3394, file: !2007, line: 995, baseType: !100, size: 128, offset: 10944)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3394, file: !2007, line: 996, baseType: !100, size: 128, offset: 11072)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3394, file: !2007, line: 997, baseType: !3393, size: 64, offset: 11200)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3394, file: !2007, line: 1005, baseType: !100, size: 128, offset: 11264)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3394, file: !2007, line: 1006, baseType: !100, size: 128, offset: 11392)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3394, file: !2007, line: 1009, baseType: !584, size: 64, offset: 11520)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3394, file: !2007, line: 1010, baseType: !3698, size: 512, offset: 11584)
!3698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 512, elements: !606)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3394, file: !2007, line: 1011, baseType: !100, size: 128, offset: 12096)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3394, file: !2007, line: 1012, baseType: !100, size: 128, offset: 12224)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3394, file: !2007, line: 1014, baseType: !900, size: 64, offset: 12352)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3394, file: !2007, line: 1017, baseType: !2280, size: 64, offset: 12416)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3394, file: !2007, line: 1020, baseType: !2280, size: 64, offset: 12480)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3394, file: !2007, line: 1023, baseType: !23, size: 64, offset: 12544)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3394, file: !2007, line: 1025, baseType: !367, size: 64, offset: 12608)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3394, file: !2007, line: 1026, baseType: !367, size: 64, offset: 12672)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3394, file: !2007, line: 1031, baseType: !367, size: 64, offset: 12736)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3394, file: !2007, line: 1032, baseType: !3709, size: 192, offset: 12800)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2007, line: 324, size: 192, elements: !3710)
!3710 = !{!3711, !3712, !3713}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3709, file: !2007, line: 326, baseType: !367, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3709, file: !2007, line: 327, baseType: !367, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3709, file: !2007, line: 328, baseType: !548, size: 32, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3394, file: !2007, line: 1041, baseType: !42, size: 64, offset: 12992)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3394, file: !2007, line: 1042, baseType: !42, size: 64, offset: 13056)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3394, file: !2007, line: 1045, baseType: !367, size: 64, offset: 13120)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3394, file: !2007, line: 1048, baseType: !367, size: 64, offset: 13184)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3394, file: !2007, line: 1051, baseType: !42, size: 64, offset: 13248)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3394, file: !2007, line: 1052, baseType: !42, size: 64, offset: 13312)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3394, file: !2007, line: 1055, baseType: !3721, size: 640, offset: 13376)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3722, line: 132, size: 640, elements: !3723)
!3722 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3723 = !{!3724, !3730, !3731}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3721, file: !3722, line: 133, baseType: !3725, size: 576)
!3725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3726, size: 576, elements: !580)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3722, line: 117, size: 192, elements: !3727)
!3727 = !{!3728, !3729}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3726, file: !3722, line: 118, baseType: !367, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3726, file: !3722, line: 119, baseType: !3095, size: 128, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3721, file: !3722, line: 134, baseType: !7, size: 32, offset: 576)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3721, file: !3722, line: 135, baseType: !7, size: 32, offset: 608)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3394, file: !2007, line: 1058, baseType: !3733, size: 448, offset: 14016)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3722, line: 144, size: 448, elements: !3734)
!3734 = !{!3735, !3736, !3737}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3733, file: !3722, line: 145, baseType: !522, size: 128, align: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3733, file: !3722, line: 146, baseType: !543, size: 256, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3733, file: !3722, line: 147, baseType: !7, size: 32, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3394, file: !2007, line: 1064, baseType: !626, size: 64, offset: 14464)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3394, file: !2007, line: 1067, baseType: !626, size: 64, offset: 14528)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3394, file: !2007, line: 1070, baseType: !626, size: 64, offset: 14592)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3394, file: !2007, line: 1074, baseType: !652, size: 64, offset: 14656)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3394, file: !2007, line: 1084, baseType: !3743, size: 128, offset: 14720)
!3743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !3744)
!3744 = !{!3745}
!3745 = !DISubrange(count: 16)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3394, file: !2007, line: 1086, baseType: !3747, size: 64, offset: 14848)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2007, line: 55, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3394, file: !2007, line: 1089, baseType: !3750, size: 64, offset: 14912)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3751, line: 12, size: 64, elements: !3752)
!3751 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3752 = !{!3753}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3750, file: !3751, line: 13, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3751, line: 8, flags: DIFlagFwdDecl)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3394, file: !2007, line: 1090, baseType: !3757, size: 128, offset: 14976)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3758, line: 13, size: 128, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3759 = !{!3760}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3757, file: !3758, line: 14, baseType: !100, size: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3394, file: !2007, line: 1097, baseType: !3762, size: 64, offset: 15104)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2007, line: 50, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3394, file: !2007, line: 1100, baseType: !3765, size: 64, offset: 15168)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2007, line: 1100, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3394, file: !2007, line: 1103, baseType: !3768, size: 64, offset: 15232)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2007, line: 53, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3394, file: !2007, line: 1107, baseType: !3771, size: 64, offset: 15296)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3773, line: 31, size: 576, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3774 = !{!3775, !3776, !3779, !3782, !3785, !3786, !3787, !3790, !3791}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3772, file: !3773, line: 32, baseType: !588, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3772, file: !3773, line: 33, baseType: !3777, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3773, line: 9, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3772, file: !3773, line: 34, baseType: !3780, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3773, line: 10, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3772, file: !3773, line: 35, baseType: !3783, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3773, line: 8, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3772, file: !3773, line: 36, baseType: !617, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3772, file: !3773, line: 37, baseType: !1075, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3772, file: !3773, line: 38, baseType: !3788, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3773, line: 38, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3772, file: !3773, line: 39, baseType: !3788, size: 64, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3772, file: !3773, line: 40, baseType: !3792, size: 64, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3773, line: 12, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3394, file: !2007, line: 1110, baseType: !3795, size: 64, offset: 15360)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3797, line: 93, size: 8768, elements: !3798)
!3797 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3847, !3856, !3857, !3859, !3860, !3861, !3864, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3902, !3903, !3910, !3920, !3923, !3924, !3927, !3928, !3929, !3930, !3931, !3932}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3796, file: !3797, line: 94, baseType: !588, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3796, file: !3797, line: 95, baseType: !52, size: 32, offset: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3796, file: !3797, line: 96, baseType: !25, size: 32, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3796, file: !3797, line: 97, baseType: !25, size: 32, offset: 96)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3796, file: !3797, line: 98, baseType: !100, size: 128, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3796, file: !3797, line: 100, baseType: !57, size: 192, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3796, file: !3797, line: 103, baseType: !3393, size: 64, offset: 448)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3796, file: !3797, line: 106, baseType: !3807, size: 192, offset: 512)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3808, line: 32, size: 192, elements: !3809)
!3808 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3807, file: !3808, line: 33, baseType: !100, size: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3807, file: !3808, line: 34, baseType: !3812, size: 64, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3813, line: 25, baseType: !3814)
!3813 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3813, line: 23, size: 64, elements: !3815)
!3815 = !{!3816}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3814, file: !3813, line: 24, baseType: !3556, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3796, file: !3797, line: 109, baseType: !597, size: 64, offset: 704)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3796, file: !3797, line: 112, baseType: !25, size: 32, offset: 768)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3796, file: !3797, line: 114, baseType: !25, size: 32, offset: 800)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3796, file: !3797, line: 115, baseType: !3393, size: 64, offset: 832)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3796, file: !3797, line: 118, baseType: !25, size: 32, offset: 896)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3796, file: !3797, line: 119, baseType: !7, size: 32, offset: 928)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3796, file: !3797, line: 121, baseType: !3824, size: 64, offset: 960)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3797, line: 80, size: 448, elements: !3826)
!3826 = !{!3827, !3828, !3834}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3825, file: !3797, line: 81, baseType: !52, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3825, file: !3797, line: 82, baseType: !3829, size: 128, offset: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3797, line: 75, size: 128, elements: !3830)
!3830 = !{!3831, !3832}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3829, file: !3797, line: 76, baseType: !3393, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3829, file: !3797, line: 77, baseType: !3833, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3825, file: !3797, line: 83, baseType: !901, size: 256, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3796, file: !3797, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3796, file: !3797, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3796, file: !3797, line: 138, baseType: !7, size: 32, offset: 1056)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3796, file: !3797, line: 139, baseType: !100, size: 128, offset: 1088)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3796, file: !3797, line: 142, baseType: !3043, size: 512, offset: 1216)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3796, file: !3797, line: 143, baseType: !3023, size: 64, offset: 1728)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3796, file: !3797, line: 150, baseType: !3842, size: 256, offset: 1792)
!3842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3843, size: 256, elements: !2270)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3797, line: 38, size: 128, elements: !3844)
!3844 = !{!3845, !3846}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3843, file: !3797, line: 39, baseType: !367, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3843, file: !3797, line: 40, baseType: !367, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3796, file: !3797, line: 156, baseType: !3848, size: 192, offset: 2048)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3797, line: 66, size: 192, elements: !3849)
!3849 = !{!3850}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3848, file: !3797, line: 67, baseType: !3851, size: 192)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3797, line: 47, size: 192, elements: !3852)
!3852 = !{!3853, !3854, !3855}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3851, file: !3797, line: 48, baseType: !537, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3851, file: !3797, line: 49, baseType: !537, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3851, file: !3797, line: 50, baseType: !537, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3796, file: !3797, line: 160, baseType: !3721, size: 640, offset: 2240)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3796, file: !3797, line: 163, baseType: !3858, size: 256, offset: 2880)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 256, elements: !606)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3796, file: !3797, line: 169, baseType: !584, size: 64, offset: 3136)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3796, file: !3797, line: 172, baseType: !25, size: 32, offset: 3200)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3796, file: !3797, line: 174, baseType: !3862, size: 64, offset: 3264)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3797, line: 174, flags: DIFlagFwdDecl)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3796, file: !3797, line: 185, baseType: !3865, size: 64, offset: 3328)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !336, line: 860, baseType: !3866)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 853, size: 64, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3866, file: !336, line: 858, baseType: !335, size: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3866, file: !336, line: 859, baseType: !62, size: 32, offset: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3796, file: !3797, line: 186, baseType: !367, size: 64, offset: 3392)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3796, file: !3797, line: 186, baseType: !367, size: 64, offset: 3456)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3796, file: !3797, line: 186, baseType: !367, size: 64, offset: 3520)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3796, file: !3797, line: 186, baseType: !367, size: 64, offset: 3584)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3796, file: !3797, line: 187, baseType: !367, size: 64, offset: 3648)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3796, file: !3797, line: 188, baseType: !367, size: 64, offset: 3712)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3796, file: !3797, line: 189, baseType: !3709, size: 192, offset: 3776)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3796, file: !3797, line: 190, baseType: !42, size: 64, offset: 3968)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3796, file: !3797, line: 190, baseType: !42, size: 64, offset: 4032)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3796, file: !3797, line: 190, baseType: !42, size: 64, offset: 4096)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3796, file: !3797, line: 190, baseType: !42, size: 64, offset: 4160)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3796, file: !3797, line: 191, baseType: !42, size: 64, offset: 4224)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3796, file: !3797, line: 191, baseType: !42, size: 64, offset: 4288)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3796, file: !3797, line: 191, baseType: !42, size: 64, offset: 4352)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3796, file: !3797, line: 191, baseType: !42, size: 64, offset: 4416)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3796, file: !3797, line: 192, baseType: !42, size: 64, offset: 4480)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3796, file: !3797, line: 192, baseType: !42, size: 64, offset: 4544)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3796, file: !3797, line: 192, baseType: !42, size: 64, offset: 4608)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3796, file: !3797, line: 192, baseType: !42, size: 64, offset: 4672)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3796, file: !3797, line: 193, baseType: !42, size: 64, offset: 4736)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3796, file: !3797, line: 193, baseType: !42, size: 64, offset: 4800)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3796, file: !3797, line: 194, baseType: !3892, size: 448, offset: 4864)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3893, line: 12, size: 448, elements: !3894)
!3893 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3894 = !{!3895, !3896, !3897, !3898, !3899, !3900, !3901}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3892, file: !3893, line: 15, baseType: !367, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3892, file: !3893, line: 17, baseType: !367, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3892, file: !3893, line: 19, baseType: !367, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3892, file: !3893, line: 21, baseType: !367, size: 64, offset: 192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3892, file: !3893, line: 29, baseType: !367, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3892, file: !3893, line: 35, baseType: !367, size: 64, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3892, file: !3893, line: 44, baseType: !367, size: 64, offset: 384)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3796, file: !3797, line: 202, baseType: !369, size: 64, offset: 5312)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3796, file: !3797, line: 213, baseType: !3904, size: 2048, offset: 5376)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, size: 2048, elements: !3744)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3906, line: 43, size: 128, elements: !3907)
!3906 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3905, file: !3906, line: 44, baseType: !41, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3905, file: !3906, line: 45, baseType: !41, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3796, file: !3797, line: 216, baseType: !3911, size: 448, offset: 7424)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3797, line: 30, size: 448, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3916, !3917, !3918, !3919}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3911, file: !3797, line: 31, baseType: !25, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3911, file: !3797, line: 32, baseType: !310, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3911, file: !3797, line: 33, baseType: !42, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3911, file: !3797, line: 34, baseType: !367, size: 64, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3911, file: !3797, line: 34, baseType: !367, size: 64, offset: 256)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3911, file: !3797, line: 35, baseType: !42, size: 64, offset: 320)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3911, file: !3797, line: 35, baseType: !42, size: 64, offset: 384)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3796, file: !3797, line: 219, baseType: !3921, size: 64, offset: 7872)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3797, line: 219, flags: DIFlagFwdDecl)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3796, file: !3797, line: 222, baseType: !7, size: 32, offset: 7936)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3796, file: !3797, line: 223, baseType: !3925, size: 64, offset: 8000)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3797, line: 223, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3796, file: !3797, line: 230, baseType: !327, size: 8, offset: 8064)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3796, file: !3797, line: 231, baseType: !701, size: 16, offset: 8080)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3796, file: !3797, line: 232, baseType: !701, size: 16, offset: 8096)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3796, file: !3797, line: 234, baseType: !1364, size: 64, offset: 8128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3796, file: !3797, line: 237, baseType: !543, size: 256, offset: 8192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3796, file: !3797, line: 243, baseType: !675, size: 320, offset: 8448)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3394, file: !2007, line: 1111, baseType: !3934, size: 64, offset: 15424)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3797, line: 20, size: 16640, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3935, file: !3797, line: 21, baseType: !62, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3935, file: !3797, line: 22, baseType: !588, size: 32, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3935, file: !3797, line: 23, baseType: !57, size: 192, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3935, file: !3797, line: 24, baseType: !3941, size: 16384, offset: 256)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3942, size: 16384, elements: !1147)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3808, line: 51, size: 256, elements: !3943)
!3943 = !{!3944}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3942, file: !3808, line: 52, baseType: !3945, size: 256)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3808, line: 37, size: 256, elements: !3946)
!3946 = !{!3947, !3954, !3955, !3959}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3945, file: !3808, line: 39, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3949, line: 83, baseType: !3950)
!3949 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3949, line: 82, baseType: !3952)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{null, !25}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3945, file: !3808, line: 40, baseType: !42, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3945, file: !3808, line: 46, baseType: !3956, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3949, line: 86, baseType: !3957)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3949, line: 85, baseType: !2484)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3945, file: !3808, line: 48, baseType: !3812, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3394, file: !2007, line: 1112, baseType: !3812, size: 64, offset: 15488)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3394, file: !2007, line: 1113, baseType: !3812, size: 64, offset: 15552)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3394, file: !2007, line: 1115, baseType: !3812, size: 64, offset: 15616)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3394, file: !2007, line: 1116, baseType: !3807, size: 192, offset: 15680)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3394, file: !2007, line: 1117, baseType: !42, size: 64, offset: 15872)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3394, file: !2007, line: 1118, baseType: !38, size: 64, offset: 15936)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3394, file: !2007, line: 1119, baseType: !7, size: 32, offset: 16000)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3394, file: !2007, line: 1121, baseType: !525, size: 64, offset: 16064)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3394, file: !2007, line: 1125, baseType: !3969, size: 64, offset: 16128)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2007, line: 43, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3394, file: !2007, line: 1127, baseType: !380, size: 32, offset: 16192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3394, file: !2007, line: 1128, baseType: !7, size: 32, offset: 16224)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3394, file: !2007, line: 1130, baseType: !3974, size: 128, offset: 16256)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3975, line: 37, size: 128, elements: !3976)
!3975 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3976 = !{!3977, !3978, !3979}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3974, file: !3975, line: 38, baseType: !25, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3974, file: !3975, line: 39, baseType: !52, size: 32, offset: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3974, file: !3975, line: 40, baseType: !3980, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3975, line: 24, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3394, file: !2007, line: 1131, baseType: !3983, size: 256, offset: 16384)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3984, line: 12, size: 256, elements: !3985)
!3984 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3985 = !{!3986, !3987, !3988, !3989}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3983, file: !3984, line: 13, baseType: !437, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3983, file: !3984, line: 14, baseType: !42, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3983, file: !3984, line: 15, baseType: !42, size: 64, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3983, file: !3984, line: 16, baseType: !327, size: 8, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3394, file: !2007, line: 1134, baseType: !367, size: 64, offset: 16640)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3394, file: !2007, line: 1135, baseType: !367, size: 64, offset: 16704)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3394, file: !2007, line: 1138, baseType: !62, size: 32, offset: 16768)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3394, file: !2007, line: 1141, baseType: !548, size: 32, offset: 16800)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3394, file: !2007, line: 1143, baseType: !3995, size: 64, offset: 16832)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2007, line: 735, size: 64, elements: !3996)
!3996 = !{!3997}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3995, file: !2007, line: 736, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3394, file: !2007, line: 1147, baseType: !1226, size: 128, offset: 16896)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3394, file: !2007, line: 1149, baseType: !3393, size: 64, offset: 17024)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3394, file: !2007, line: 1151, baseType: !4002, size: 64, offset: 17088)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2007, line: 1151, flags: DIFlagFwdDecl)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3394, file: !2007, line: 1188, baseType: !23, size: 64, offset: 17152)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3394, file: !2007, line: 1191, baseType: !4006, size: 64, offset: 17216)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2007, line: 44, flags: DIFlagFwdDecl)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3394, file: !2007, line: 1194, baseType: !4009, size: 64, offset: 17280)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2007, line: 45, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3394, file: !2007, line: 1197, baseType: !4012, size: 64, offset: 17344)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2007, line: 61, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3394, file: !2007, line: 1199, baseType: !4015, size: 64, offset: 17408)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2817, line: 99, size: 128, elements: !4017)
!4017 = !{!4018, !4019, !4020}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4016, file: !2817, line: 100, baseType: !535, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4016, file: !2817, line: 101, baseType: !52, size: 32, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4016, file: !2817, line: 103, baseType: !29, size: 16, offset: 96)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3394, file: !2007, line: 1202, baseType: !4022, size: 64, offset: 17472)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2007, line: 48, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3394, file: !2007, line: 1205, baseType: !42, size: 64, offset: 17536)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3394, file: !2007, line: 1206, baseType: !4026, size: 64, offset: 17600)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3808, line: 14, baseType: !4028)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3808, line: 12, size: 384, elements: !4029)
!4029 = !{!4030}
!4030 = !DIDerivedType(tag: DW_TAG_member, scope: !4028, file: !3808, line: 13, baseType: !4031, size: 384)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !3808, line: 13, size: 384, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4031, file: !3808, line: 13, baseType: !25, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4031, file: !3808, line: 13, baseType: !25, size: 32, offset: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4031, file: !3808, line: 13, baseType: !25, size: 32, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4031, file: !3808, line: 13, baseType: !4037, size: 256, offset: 128)
!4037 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4038, line: 37, size: 256, elements: !4039)
!4038 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4039 = !{!4040, !4045, !4058, !4064, !4073, !4100, !4105}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4037, file: !4038, line: 42, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4037, file: !4038, line: 39, size: 64, elements: !4042)
!4042 = !{!4043, !4044}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4041, file: !4038, line: 40, baseType: !3686, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4041, file: !4038, line: 41, baseType: !386, size: 32, offset: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4037, file: !4038, line: 50, baseType: !4046, size: 192)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4037, file: !4038, line: 45, size: 192, elements: !4047)
!4047 = !{!4048, !4050, !4051, !4057}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4046, file: !4038, line: 46, baseType: !4049, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !40, line: 95, baseType: !25)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4046, file: !4038, line: 47, baseType: !25, size: 32, offset: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4046, file: !4038, line: 48, baseType: !4052, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4038, line: 11, baseType: !4053)
!4053 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4038, line: 8, size: 64, elements: !4054)
!4054 = !{!4055, !4056}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4053, file: !4038, line: 9, baseType: !25, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4053, file: !4038, line: 10, baseType: !23, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4046, file: !4038, line: 49, baseType: !25, size: 32, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4037, file: !4038, line: 57, baseType: !4059, size: 128)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4037, file: !4038, line: 53, size: 128, elements: !4060)
!4060 = !{!4061, !4062, !4063}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4059, file: !4038, line: 54, baseType: !3686, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4059, file: !4038, line: 55, baseType: !386, size: 32, offset: 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4059, file: !4038, line: 56, baseType: !4052, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4037, file: !4038, line: 66, baseType: !4065, size: 256)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4037, file: !4038, line: 60, size: 256, elements: !4066)
!4066 = !{!4067, !4068, !4069, !4070, !4072}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4065, file: !4038, line: 61, baseType: !3686, size: 32)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4065, file: !4038, line: 62, baseType: !386, size: 32, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4065, file: !4038, line: 63, baseType: !25, size: 32, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4065, file: !4038, line: 64, baseType: !4071, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !40, line: 94, baseType: !1176)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4065, file: !4038, line: 65, baseType: !4071, size: 64, offset: 192)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4037, file: !4038, line: 105, baseType: !4074, size: 256)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4037, file: !4038, line: 69, size: 256, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4074, file: !4038, line: 70, baseType: !23, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, scope: !4074, file: !4038, line: 79, baseType: !4078, size: 192, offset: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4074, file: !4038, line: 79, size: 192, elements: !4079)
!4079 = !{!4080, !4081, !4082, !4089, !4094}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4078, file: !4038, line: 81, baseType: !25, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4078, file: !4038, line: 86, baseType: !701, size: 16)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4078, file: !4038, line: 92, baseType: !4083, size: 192)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4038, line: 88, size: 192, elements: !4084)
!4084 = !{!4085, !4087, !4088}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4083, file: !4038, line: 89, baseType: !4086, size: 64)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !2489)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4083, file: !4038, line: 90, baseType: !23, size: 64, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4083, file: !4038, line: 91, baseType: !23, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4078, file: !4038, line: 97, baseType: !4090, size: 96)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4038, line: 94, size: 96, elements: !4091)
!4091 = !{!4092, !4093}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4090, file: !4038, line: 95, baseType: !4086, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4090, file: !4038, line: 96, baseType: !364, size: 32, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4078, file: !4038, line: 103, baseType: !4095, size: 128)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4078, file: !4038, line: 99, size: 128, elements: !4096)
!4096 = !{!4097, !4098, !4099}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4095, file: !4038, line: 100, baseType: !42, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4095, file: !4038, line: 101, baseType: !364, size: 32, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4095, file: !4038, line: 102, baseType: !364, size: 32, offset: 96)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4037, file: !4038, line: 111, baseType: !4101, size: 128)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4037, file: !4038, line: 108, size: 128, elements: !4102)
!4102 = !{!4103, !4104}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4101, file: !4038, line: 109, baseType: !310, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4101, file: !4038, line: 110, baseType: !25, size: 32, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4037, file: !4038, line: 118, baseType: !4106, size: 128)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4037, file: !4038, line: 114, size: 128, elements: !4107)
!4107 = !{!4108, !4109, !4110}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4106, file: !4038, line: 115, baseType: !23, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4106, file: !4038, line: 116, baseType: !25, size: 32, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4106, file: !4038, line: 117, baseType: !7, size: 32, offset: 96)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3394, file: !2007, line: 1208, baseType: !3892, size: 448, offset: 17664)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3394, file: !2007, line: 1215, baseType: !367, size: 64, offset: 18112)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3394, file: !2007, line: 1217, baseType: !367, size: 64, offset: 18176)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3394, file: !2007, line: 1219, baseType: !367, size: 64, offset: 18240)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3394, file: !2007, line: 1223, baseType: !4116, size: 64, offset: 18304)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4117, line: 99, baseType: !4118)
!4117 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4117, line: 99, size: 64, elements: !4119)
!4119 = !{!4120}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4118, file: !4117, line: 99, baseType: !3556, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3394, file: !2007, line: 1225, baseType: !335, size: 32, offset: 18368)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3394, file: !2007, line: 1226, baseType: !25, size: 32, offset: 18400)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3394, file: !2007, line: 1227, baseType: !25, size: 32, offset: 18432)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3394, file: !2007, line: 1231, baseType: !4125, size: 64, offset: 18496)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2007, line: 1231, flags: DIFlagFwdDecl)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3394, file: !2007, line: 1233, baseType: !100, size: 128, offset: 18560)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3394, file: !2007, line: 1240, baseType: !4129, size: 64, offset: 18688)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2007, line: 62, flags: DIFlagFwdDecl)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3394, file: !2007, line: 1242, baseType: !4132, size: 64, offset: 18752)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2007, line: 1242, flags: DIFlagFwdDecl)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3394, file: !2007, line: 1244, baseType: !100, size: 128, offset: 18816)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3394, file: !2007, line: 1245, baseType: !4136, size: 64, offset: 18944)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2007, line: 51, flags: DIFlagFwdDecl)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3394, file: !2007, line: 1246, baseType: !543, size: 256, offset: 19008)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3394, file: !2007, line: 1247, baseType: !7, size: 32, offset: 19264)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3394, file: !2007, line: 1250, baseType: !4141, size: 64, offset: 19328)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2007, line: 57, flags: DIFlagFwdDecl)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3394, file: !2007, line: 1251, baseType: !543, size: 256, offset: 19392)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3394, file: !2007, line: 1252, baseType: !100, size: 128, offset: 19648)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3394, file: !2007, line: 1259, baseType: !1599, size: 64, offset: 19776)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3394, file: !2007, line: 1260, baseType: !701, size: 16, offset: 19840)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3394, file: !2007, line: 1261, baseType: !701, size: 16, offset: 19856)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3394, file: !2007, line: 1314, baseType: !4149, size: 64, offset: 19904)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4151, line: 62, size: 256, align: 256, elements: !4152)
!4151 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4152 = !{!4153, !4154, !4155, !4156, !4157, !4158, !4159}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4150, file: !4151, line: 75, baseType: !364, size: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4150, file: !4151, line: 90, baseType: !364, size: 32, offset: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4150, file: !4151, line: 112, baseType: !368, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4150, file: !4151, line: 132, baseType: !364, size: 32, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4150, file: !4151, line: 140, baseType: !364, size: 32, offset: 160)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4150, file: !4151, line: 149, baseType: !364, size: 32, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4150, file: !4151, line: 154, baseType: !4160, offset: 224)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !619)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3394, file: !2007, line: 1315, baseType: !363, size: 32, offset: 19968)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3394, file: !2007, line: 1316, baseType: !363, size: 32, offset: 20000)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3394, file: !2007, line: 1321, baseType: !42, size: 64, offset: 20032)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3394, file: !2007, line: 1325, baseType: !25, size: 32, offset: 20096)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3394, file: !2007, line: 1326, baseType: !25, size: 32, offset: 20128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3394, file: !2007, line: 1327, baseType: !25, size: 32, offset: 20160)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3394, file: !2007, line: 1328, baseType: !25, size: 32, offset: 20192)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3394, file: !2007, line: 1329, baseType: !522, size: 128, align: 64, offset: 20224)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3394, file: !2007, line: 1332, baseType: !4170, size: 128, offset: 20352)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4171, line: 51, size: 128, elements: !4172)
!4171 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4172 = !{!4173, !4178, !4179}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4170, file: !4171, line: 60, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4175, line: 7, size: 64, elements: !4176)
!4175 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4176 = !{!4177}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4174, file: !4175, line: 12, baseType: !3553, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4170, file: !4171, line: 63, baseType: !327, size: 8, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4170, file: !4171, line: 70, baseType: !327, size: 8, offset: 72)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3394, file: !2007, line: 1335, baseType: !4181, size: 64, offset: 20480)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2007, line: 59, flags: DIFlagFwdDecl)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3394, file: !2007, line: 1337, baseType: !4184, size: 128, offset: 20544)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4171, line: 39, size: 128, elements: !4185)
!4185 = !{!4186, !4187, !4188}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4184, file: !4171, line: 40, baseType: !1241, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4184, file: !4171, line: 42, baseType: !364, size: 32, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4184, file: !4171, line: 43, baseType: !364, size: 32, offset: 96)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3394, file: !2007, line: 1340, baseType: !4190, size: 64, offset: 20672)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2007, line: 69, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3394, file: !2007, line: 1351, baseType: !25, size: 32, offset: 20736)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3394, file: !2007, line: 1352, baseType: !25, size: 32, offset: 20768)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3394, file: !2007, line: 1354, baseType: !42, size: 64, offset: 20800)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3394, file: !2007, line: 1364, baseType: !367, size: 64, offset: 20864)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3394, file: !2007, line: 1365, baseType: !367, size: 64, offset: 20928)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3394, file: !2007, line: 1412, baseType: !42, size: 64, offset: 20992)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3394, file: !2007, line: 1453, baseType: !2812, size: 64, offset: 21056)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3394, file: !2007, line: 1457, baseType: !4200, size: 64, offset: 21120)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !270, line: 61, size: 576, elements: !4202)
!4202 = !{!4203, !4204, !4223, !4226, !4227, !4260, !4270}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4201, file: !270, line: 62, baseType: !269, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, scope: !4201, file: !270, line: 64, baseType: !4205, size: 192, offset: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4201, file: !270, line: 64, size: 192, elements: !4206)
!4206 = !{!4207, !4218}
!4207 = !DIDerivedType(tag: DW_TAG_member, scope: !4205, file: !270, line: 65, baseType: !4208, size: 192)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4205, file: !270, line: 65, size: 192, elements: !4209)
!4209 = !{!4210, !4217}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4208, file: !270, line: 66, baseType: !4211, size: 128)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4212, line: 50, size: 128, elements: !4213)
!4212 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4213 = !{!4214, !4215, !4216}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4211, file: !4212, line: 52, baseType: !42, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4211, file: !4212, line: 54, baseType: !7, size: 32, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4211, file: !4212, line: 55, baseType: !7, size: 32, offset: 96)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4208, file: !270, line: 67, baseType: !42, size: 64, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, scope: !4205, file: !270, line: 70, baseType: !4219, size: 192)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4205, file: !270, line: 70, size: 192, elements: !4220)
!4220 = !{!4221, !4222}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4219, file: !270, line: 71, baseType: !522, size: 128, align: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4219, file: !270, line: 72, baseType: !42, size: 64, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4201, file: !270, line: 76, baseType: !4224, size: 64, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !270, line: 76, flags: DIFlagFwdDecl)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4201, file: !270, line: 77, baseType: !42, size: 64, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4201, file: !270, line: 79, baseType: !4228, size: 64, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4212, line: 25, size: 256, elements: !4230)
!4230 = !{!4231, !4237, !4241}
!4231 = !DIDerivedType(tag: DW_TAG_member, scope: !4229, file: !4212, line: 26, baseType: !4232, size: 128)
!4232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4229, file: !4212, line: 26, size: 128, elements: !4233)
!4233 = !{!4234, !4236}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4232, file: !4212, line: 27, baseType: !4235, size: 128)
!4235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !3744)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4232, file: !4212, line: 28, baseType: !4235, size: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4229, file: !4212, line: 31, baseType: !4238, size: 64, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4240)
!4240 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4212, line: 23, flags: DIFlagFwdDecl)
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4229, file: !4212, line: 33, baseType: !4242, size: 64, offset: 192)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4229, file: !4212, line: 33, size: 64, elements: !4243)
!4243 = !{!4244, !4250, !4255}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4242, file: !4212, line: 38, baseType: !4245, size: 64)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4242, file: !4212, line: 34, size: 64, elements: !4246)
!4246 = !{!4247, !4248, !4249}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4245, file: !4212, line: 35, baseType: !660, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4245, file: !4212, line: 36, baseType: !86, size: 8, offset: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4245, file: !4212, line: 37, baseType: !86, size: 8, offset: 40)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4242, file: !4212, line: 42, baseType: !4251, size: 16)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4242, file: !4212, line: 39, size: 16, elements: !4252)
!4252 = !{!4253, !4254}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4251, file: !4212, line: 40, baseType: !86, size: 8)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4251, file: !4212, line: 41, baseType: !86, size: 8, offset: 8)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4242, file: !4212, line: 46, baseType: !4256, size: 16)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4242, file: !4212, line: 43, size: 16, elements: !4257)
!4257 = !{!4258, !4259}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4256, file: !4212, line: 44, baseType: !86, size: 8)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4256, file: !4212, line: 45, baseType: !86, size: 8, offset: 8)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4201, file: !270, line: 81, baseType: !4261, size: 64, offset: 448)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !270, line: 85, size: 384, elements: !4263)
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4262, file: !270, line: 86, baseType: !4224, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4262, file: !270, line: 87, baseType: !42, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4262, file: !270, line: 88, baseType: !42, size: 64, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4262, file: !270, line: 89, baseType: !42, size: 64, offset: 192)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4262, file: !270, line: 90, baseType: !327, size: 8, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4262, file: !270, line: 92, baseType: !4261, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4201, file: !270, line: 82, baseType: !7, size: 32, offset: 512)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3394, file: !2007, line: 1463, baseType: !4272, offset: 21184)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2007, line: 739, elements: !1385)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3394, file: !2007, line: 1470, baseType: !522, size: 128, align: 64, offset: 21184)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3394, file: !2007, line: 1471, baseType: !588, size: 32, offset: 21312)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3394, file: !2007, line: 1472, baseType: !25, size: 32, offset: 21344)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3394, file: !2007, line: 1474, baseType: !3393, size: 64, offset: 21376)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3394, file: !2007, line: 1475, baseType: !2379, size: 320, offset: 21440)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3394, file: !2007, line: 1478, baseType: !4279, size: 64, offset: 21760)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2007, line: 1478, flags: DIFlagFwdDecl)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3394, file: !2007, line: 1482, baseType: !588, size: 32, offset: 21824)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3394, file: !2007, line: 1489, baseType: !23, size: 64, offset: 21888)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3394, file: !2007, line: 1504, baseType: !23, size: 64, offset: 21952)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3394, file: !2007, line: 1505, baseType: !368, size: 64, offset: 22016)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3394, file: !2007, line: 1506, baseType: !367, size: 64, offset: 22080)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3394, file: !2007, line: 1507, baseType: !368, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3394, file: !2007, line: 1508, baseType: !368, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3394, file: !2007, line: 1509, baseType: !368, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3394, file: !2007, line: 1510, baseType: !522, size: 128, align: 64, offset: 22208)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3394, file: !2007, line: 1511, baseType: !25, size: 32, offset: 22336)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3394, file: !2007, line: 1515, baseType: !4292, size: 64, offset: 22400)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !517, line: 56, size: 64, elements: !4293)
!4293 = !{!4294}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4292, file: !517, line: 57, baseType: !520, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3394, file: !2007, line: 1518, baseType: !4292, size: 64, offset: 22464)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3394, file: !2007, line: 1528, baseType: !522, size: 128, align: 64, offset: 22528)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3394, file: !2007, line: 1552, baseType: !4298, size: 35328, offset: 23040)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4299, line: 430, size: 35328, elements: !4300)
!4299 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4300 = !{!4301, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4330, !4331, !4332, !4333, !4334, !4335, !4338, !4339, !4340, !4341}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4298, file: !4299, line: 432, baseType: !4302, size: 192)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4303, size: 192, elements: !580)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4304, line: 16, size: 64, elements: !4305)
!4304 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4303, file: !4304, line: 17, baseType: !96, size: 16)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4303, file: !4304, line: 18, baseType: !96, size: 16, offset: 16)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4303, file: !4304, line: 19, baseType: !96, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4303, file: !4304, line: 19, baseType: !96, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4303, file: !4304, line: 19, baseType: !96, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4303, file: !4304, line: 19, baseType: !96, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4303, file: !4304, line: 19, baseType: !96, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4303, file: !4304, line: 20, baseType: !96, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4303, file: !4304, line: 20, baseType: !96, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4303, file: !4304, line: 20, baseType: !96, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4303, file: !4304, line: 20, baseType: !96, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4303, file: !4304, line: 20, baseType: !96, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4303, file: !4304, line: 20, baseType: !96, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4298, file: !4299, line: 436, baseType: !42, size: 64, offset: 192)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4298, file: !4299, line: 440, baseType: !29, size: 16, offset: 256)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4298, file: !4299, line: 441, baseType: !29, size: 16, offset: 272)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4298, file: !4299, line: 442, baseType: !29, size: 16, offset: 288)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4298, file: !4299, line: 443, baseType: !29, size: 16, offset: 304)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4298, file: !4299, line: 447, baseType: !42, size: 64, offset: 320)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4298, file: !4299, line: 448, baseType: !42, size: 64, offset: 384)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4298, file: !4299, line: 459, baseType: !4327, size: 256, offset: 448)
!4327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4328, size: 256, elements: !606)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4299, line: 428, flags: DIFlagFwdDecl)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4298, file: !4299, line: 461, baseType: !42, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4298, file: !4299, line: 463, baseType: !42, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4298, file: !4299, line: 465, baseType: !42, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4298, file: !4299, line: 466, baseType: !42, size: 64, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4298, file: !4299, line: 467, baseType: !42, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4298, file: !4299, line: 473, baseType: !4336, size: 64, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4299, line: 10, flags: DIFlagFwdDecl)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4298, file: !4299, line: 480, baseType: !42, size: 64, offset: 1088)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4298, file: !4299, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4298, file: !4299, line: 491, baseType: !363, size: 32, offset: 1184)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4298, file: !4299, line: 501, baseType: !4342, size: 33792, offset: 1536)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4343, line: 448, size: 33792, elements: !4344)
!4343 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4344 = !{!4345, !4346, !4347, !4511, !4512, !4518, !4519}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4342, file: !4343, line: 461, baseType: !7, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4342, file: !4343, line: 468, baseType: !42, size: 64, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4342, file: !4343, line: 476, baseType: !4348, size: 64, offset: 128)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4343, line: 356, size: 33280, align: 512, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4349, file: !4343, line: 358, baseType: !7, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4349, file: !4343, line: 361, baseType: !7, size: 32, offset: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4349, file: !4343, line: 364, baseType: !367, size: 64, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4349, file: !4343, line: 367, baseType: !367, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4349, file: !4343, line: 370, baseType: !367, size: 64, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4349, file: !4343, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4349, file: !4343, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4349, file: !4343, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4349, file: !4343, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4349, file: !4343, line: 397, baseType: !4361, size: 32768, offset: 512)
!4361 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4343, line: 348, size: 32768, elements: !4362)
!4362 = !{!4363, !4378, !4417, !4494, !4507}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4361, file: !4343, line: 349, baseType: !4364, size: 896)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4343, line: 12, size: 896, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4377}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4364, file: !4343, line: 13, baseType: !363, size: 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4364, file: !4343, line: 14, baseType: !363, size: 32, offset: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4364, file: !4343, line: 15, baseType: !363, size: 32, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4364, file: !4343, line: 16, baseType: !363, size: 32, offset: 96)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4364, file: !4343, line: 17, baseType: !363, size: 32, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4364, file: !4343, line: 18, baseType: !363, size: 32, offset: 160)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4364, file: !4343, line: 19, baseType: !363, size: 32, offset: 192)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4364, file: !4343, line: 22, baseType: !4374, size: 640, offset: 224)
!4374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 640, elements: !4375)
!4375 = !{!4376}
!4376 = !DISubrange(count: 20)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4364, file: !4343, line: 25, baseType: !363, size: 32, offset: 864)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4361, file: !4343, line: 350, baseType: !4379, size: 4096, align: 128)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4343, line: 34, size: 4096, align: 128, elements: !4380)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4400, !4401, !4402, !4406, !4408, !4412}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4379, file: !4343, line: 35, baseType: !96, size: 16)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4379, file: !4343, line: 36, baseType: !96, size: 16, offset: 16)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4379, file: !4343, line: 37, baseType: !96, size: 16, offset: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4379, file: !4343, line: 38, baseType: !96, size: 16, offset: 48)
!4385 = !DIDerivedType(tag: DW_TAG_member, scope: !4379, file: !4343, line: 39, baseType: !4386, size: 128, offset: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4379, file: !4343, line: 39, size: 128, elements: !4387)
!4387 = !{!4388, !4393}
!4388 = !DIDerivedType(tag: DW_TAG_member, scope: !4386, file: !4343, line: 40, baseType: !4389, size: 128)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4386, file: !4343, line: 40, size: 128, elements: !4390)
!4390 = !{!4391, !4392}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4389, file: !4343, line: 41, baseType: !367, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4389, file: !4343, line: 42, baseType: !367, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, scope: !4386, file: !4343, line: 44, baseType: !4394, size: 128)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4386, file: !4343, line: 44, size: 128, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4399}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4394, file: !4343, line: 45, baseType: !363, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4394, file: !4343, line: 46, baseType: !363, size: 32, offset: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4394, file: !4343, line: 47, baseType: !363, size: 32, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4394, file: !4343, line: 48, baseType: !363, size: 32, offset: 96)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4379, file: !4343, line: 51, baseType: !363, size: 32, offset: 192)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4379, file: !4343, line: 52, baseType: !363, size: 32, offset: 224)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4379, file: !4343, line: 55, baseType: !4403, size: 1024, offset: 256)
!4403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 1024, elements: !4404)
!4404 = !{!4405}
!4405 = !DISubrange(count: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4379, file: !4343, line: 58, baseType: !4407, size: 2048, offset: 1280)
!4407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 2048, elements: !1147)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4379, file: !4343, line: 60, baseType: !4409, size: 384, offset: 3328)
!4409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, elements: !4410)
!4410 = !{!4411}
!4411 = !DISubrange(count: 12)
!4412 = !DIDerivedType(tag: DW_TAG_member, scope: !4379, file: !4343, line: 62, baseType: !4413, size: 384, offset: 3712)
!4413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4379, file: !4343, line: 62, size: 384, elements: !4414)
!4414 = !{!4415, !4416}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4413, file: !4343, line: 63, baseType: !4409, size: 384)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4413, file: !4343, line: 64, baseType: !4409, size: 384)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4361, file: !4343, line: 351, baseType: !4418, size: 1088)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4343, line: 79, size: 1088, elements: !4419)
!4419 = !{!4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4493}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4418, file: !4343, line: 80, baseType: !363, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4418, file: !4343, line: 81, baseType: !363, size: 32, offset: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4418, file: !4343, line: 82, baseType: !363, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4418, file: !4343, line: 83, baseType: !363, size: 32, offset: 96)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4418, file: !4343, line: 84, baseType: !363, size: 32, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4418, file: !4343, line: 85, baseType: !363, size: 32, offset: 160)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4418, file: !4343, line: 86, baseType: !363, size: 32, offset: 192)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4418, file: !4343, line: 88, baseType: !4374, size: 640, offset: 224)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4418, file: !4343, line: 89, baseType: !86, size: 8, offset: 864)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4418, file: !4343, line: 90, baseType: !86, size: 8, offset: 872)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4418, file: !4343, line: 91, baseType: !86, size: 8, offset: 880)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4418, file: !4343, line: 92, baseType: !86, size: 8, offset: 888)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4418, file: !4343, line: 93, baseType: !86, size: 8, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4418, file: !4343, line: 94, baseType: !86, size: 8, offset: 904)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4418, file: !4343, line: 95, baseType: !4435, size: 64, offset: 960)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4437, line: 11, size: 128, elements: !4438)
!4437 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4436, file: !4437, line: 12, baseType: !310, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4436, file: !4437, line: 13, baseType: !4441, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4443, line: 103, size: 1344, elements: !4444)
!4443 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4444 = !{!4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4473, !4474, !4475}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4442, file: !4443, line: 109, baseType: !42, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4442, file: !4443, line: 110, baseType: !42, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4442, file: !4443, line: 111, baseType: !42, size: 64, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4442, file: !4443, line: 112, baseType: !42, size: 64, offset: 192)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4442, file: !4443, line: 113, baseType: !42, size: 64, offset: 256)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4442, file: !4443, line: 114, baseType: !42, size: 64, offset: 320)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4442, file: !4443, line: 117, baseType: !42, size: 64, offset: 384)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4442, file: !4443, line: 118, baseType: !42, size: 64, offset: 448)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4442, file: !4443, line: 119, baseType: !42, size: 64, offset: 512)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4442, file: !4443, line: 120, baseType: !42, size: 64, offset: 576)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4442, file: !4443, line: 121, baseType: !42, size: 64, offset: 640)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4442, file: !4443, line: 122, baseType: !42, size: 64, offset: 704)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4442, file: !4443, line: 123, baseType: !42, size: 64, offset: 768)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4442, file: !4443, line: 124, baseType: !42, size: 64, offset: 832)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4442, file: !4443, line: 125, baseType: !42, size: 64, offset: 896)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4442, file: !4443, line: 139, baseType: !42, size: 64, offset: 960)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4442, file: !4443, line: 142, baseType: !42, size: 64, offset: 1024)
!4462 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !4443, line: 144, baseType: !4463, size: 64, offset: 1088)
!4463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4442, file: !4443, line: 144, size: 64, elements: !4464)
!4464 = !{!4465, !4466, !4467}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4463, file: !4443, line: 146, baseType: !96, size: 16)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4463, file: !4443, line: 148, baseType: !367, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4463, file: !4443, line: 150, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4443, line: 59, size: 64, elements: !4469)
!4469 = !{!4470, !4471, !4472}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4468, file: !4443, line: 61, baseType: !367, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4468, file: !4443, line: 63, baseType: !367, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4468, file: !4443, line: 65, baseType: !367, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4442, file: !4443, line: 153, baseType: !42, size: 64, offset: 1152)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4442, file: !4443, line: 154, baseType: !42, size: 64, offset: 1216)
!4475 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !4443, line: 156, baseType: !4476, size: 64, offset: 1280)
!4476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4442, file: !4443, line: 156, size: 64, elements: !4477)
!4477 = !{!4478, !4479, !4480}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4476, file: !4443, line: 158, baseType: !96, size: 16)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4476, file: !4443, line: 160, baseType: !367, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4476, file: !4443, line: 162, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4443, line: 69, size: 64, elements: !4482)
!4482 = !{!4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4481, file: !4443, line: 71, baseType: !367, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4481, file: !4443, line: 73, baseType: !367, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4481, file: !4443, line: 75, baseType: !367, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4481, file: !4443, line: 77, baseType: !367, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4481, file: !4443, line: 80, baseType: !367, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4481, file: !4443, line: 83, baseType: !367, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4481, file: !4443, line: 86, baseType: !367, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4481, file: !4443, line: 88, baseType: !367, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4481, file: !4443, line: 93, baseType: !367, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4481, file: !4443, line: 100, baseType: !367, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4418, file: !4343, line: 96, baseType: !363, size: 32, offset: 1024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4361, file: !4343, line: 352, baseType: !4495, size: 4608, align: 512)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4343, line: 333, size: 4608, align: 512, elements: !4496)
!4496 = !{!4497, !4498, !4505}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4495, file: !4343, line: 334, baseType: !4379, size: 4096, align: 128)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4495, file: !4343, line: 335, baseType: !4499, size: 512, offset: 4096)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4343, line: 312, size: 512, elements: !4500)
!4500 = !{!4501, !4502, !4503}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4499, file: !4343, line: 313, baseType: !367, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4499, file: !4343, line: 314, baseType: !367, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4499, file: !4343, line: 315, baseType: !4504, size: 384, offset: 128)
!4504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 384, elements: !719)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4495, file: !4343, line: 336, baseType: !4506, offset: 4608)
!4506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, elements: !619)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4361, file: !4343, line: 353, baseType: !4508, size: 32768)
!4508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 32768, elements: !4509)
!4509 = !{!4510}
!4510 = !DISubrange(count: 4096)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4342, file: !4343, line: 484, baseType: !4348, size: 64, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4342, file: !4343, line: 491, baseType: !4513, size: 128, offset: 256)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4343, line: 404, size: 128, elements: !4514)
!4514 = !{!4515, !4516, !4517}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4513, file: !4343, line: 424, baseType: !367, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4513, file: !4343, line: 432, baseType: !7, size: 32, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4513, file: !4343, line: 440, baseType: !7, size: 32, offset: 96)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4342, file: !4343, line: 498, baseType: !4513, size: 128, offset: 384)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4342, file: !4343, line: 508, baseType: !4349, size: 33280, align: 512, offset: 512)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3376, file: !3377, line: 16, baseType: !57, size: 192, offset: 512)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3376, file: !3377, line: 17, baseType: !52, size: 32, offset: 704)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1000, file: !183, line: 1240, baseType: !23, size: 64, offset: 6912)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1000, file: !183, line: 1243, baseType: !363, size: 32, offset: 6976)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1000, file: !183, line: 1245, baseType: !503, size: 64, offset: 7040)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1000, file: !183, line: 1246, baseType: !503, size: 64, offset: 7104)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1000, file: !183, line: 1248, baseType: !364, size: 32, offset: 7168)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1000, file: !183, line: 1249, baseType: !4528, size: 64, offset: 7232)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !183, line: 634, flags: DIFlagFwdDecl)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1000, file: !183, line: 1252, baseType: !4531, size: 256, offset: 7296)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !4404)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1000, file: !183, line: 1253, baseType: !4533, size: 128, offset: 7552)
!4533 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4534, line: 21, baseType: !4535)
!4534 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4534, line: 19, size: 128, elements: !4536)
!4536 = !{!4537}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4535, file: !4534, line: 20, baseType: !4538, size: 128)
!4538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !3744)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1000, file: !183, line: 1255, baseType: !7, size: 32, offset: 7680)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1000, file: !183, line: 1261, baseType: !543, size: 256, offset: 7744)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1000, file: !183, line: 1267, baseType: !19, size: 64, offset: 8000)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1000, file: !183, line: 1269, baseType: !4543, size: 64, offset: 8064)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4545)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !331, line: 128, size: 1024, align: 512, elements: !4546)
!4546 = !{!4547, !4551, !4552, !4559, !4565, !4569, !4573, !4577, !4578, !4582, !4586, !4591, !4595}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4545, file: !331, line: 129, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!25, !329, !7}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4545, file: !331, line: 130, baseType: !4548, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4545, file: !331, line: 131, baseType: !4553, size: 64, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!25, !4556, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4545, file: !331, line: 132, baseType: !4560, size: 64, offset: 192)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!25, !4556, !7, !19, !4563}
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4545, file: !331, line: 134, baseType: !4566, size: 64, offset: 256)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!25, !4556}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4545, file: !331, line: 135, baseType: !4570, size: 64, offset: 320)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!25, !329}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4545, file: !331, line: 136, baseType: !4574, size: 64, offset: 384)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !329}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4545, file: !331, line: 137, baseType: !4574, size: 64, offset: 448)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4545, file: !331, line: 138, baseType: !4579, size: 64, offset: 512)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{null, !329, !374}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4545, file: !331, line: 139, baseType: !4583, size: 64, offset: 576)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!437, !329, !437, !25}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4545, file: !331, line: 140, baseType: !4587, size: 64, offset: 640)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!993, !4590}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4545, file: !331, line: 141, baseType: !4592, size: 64, offset: 704)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!25, !2709, !327}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4545, file: !331, line: 142, baseType: !4596, size: 64, offset: 768)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!329, !329, !4599}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1000, file: !183, line: 1271, baseType: !4602, size: 448, offset: 8128)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2649, line: 63, size: 448, elements: !4603)
!4603 = !{!4604, !4609, !4610, !4611, !4612, !4613, !4614}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4602, file: !2649, line: 64, baseType: !4605, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!42, !4608, !2647}
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4602, file: !2649, line: 66, baseType: !4605, size: 64, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4602, file: !2649, line: 69, baseType: !310, size: 64, offset: 128)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4602, file: !2649, line: 70, baseType: !25, size: 32, offset: 192)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4602, file: !2649, line: 71, baseType: !7, size: 32, offset: 224)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4602, file: !2649, line: 74, baseType: !100, size: 128, offset: 256)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4602, file: !2649, line: 85, baseType: !4615, size: 64, offset: 384)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1000, file: !183, line: 1274, baseType: !535, size: 64, offset: 8576)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1000, file: !183, line: 1280, baseType: !535, size: 64, offset: 8640)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1000, file: !183, line: 1283, baseType: !25, size: 32, offset: 8704)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1000, file: !183, line: 1286, baseType: !1908, size: 32, offset: 8736)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1000, file: !183, line: 1289, baseType: !2441, size: 64, offset: 8768)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1000, file: !183, line: 1290, baseType: !597, size: 64, offset: 8832)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1000, file: !183, line: 1297, baseType: !813, size: 64, offset: 8896)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1000, file: !183, line: 1304, baseType: !4624, size: 64, offset: 8960)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4625, line: 49, size: 64, elements: !4626)
!4625 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4626 = !{!4627}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4624, file: !4625, line: 50, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4625, line: 41, size: 512, align: 512, elements: !4630)
!4630 = !{!4631, !4632, !4637}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4629, file: !4625, line: 43, baseType: !62, size: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4629, file: !4625, line: 45, baseType: !4633, size: 192, offset: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4625, line: 29, size: 192, elements: !4634)
!4634 = !{!4635, !4636}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4633, file: !4625, line: 30, baseType: !100, size: 128)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4633, file: !4625, line: 32, baseType: !310, size: 64, offset: 128)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4629, file: !4625, line: 46, baseType: !310, size: 64, offset: 256)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1000, file: !183, line: 1305, baseType: !4624, size: 64, offset: 9024)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1000, file: !183, line: 1306, baseType: !522, size: 128, align: 64, offset: 9088)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1000, file: !183, line: 1307, baseType: !862, size: 256, offset: 9216)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1000, file: !183, line: 1309, baseType: !543, size: 256, offset: 9472)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1000, file: !183, line: 1314, baseType: !25, size: 32, offset: 9728)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1000, file: !183, line: 1317, baseType: !62, size: 32, align: 512, offset: 10240)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1000, file: !183, line: 1318, baseType: !100, size: 128, offset: 10304)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1000, file: !183, line: 1320, baseType: !62, size: 32, offset: 10432)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1000, file: !183, line: 1321, baseType: !100, size: 128, offset: 10496)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !994, file: !995, line: 73, baseType: !25, size: 32, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !994, file: !995, line: 74, baseType: !426, size: 64, offset: 192)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !989, file: !990, line: 10, baseType: !329, size: 64, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !510, file: !183, line: 1015, baseType: !374, size: 64, offset: 1344)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !510, file: !183, line: 1016, baseType: !4652, size: 64, offset: 1408)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4654)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !183, line: 1914, size: 2112, elements: !4655)
!4655 = !{!4656, !4657, !4661, !4665, !4669, !4670, !4671, !4677, !4690, !4694, !4698, !4699, !4703, !4704, !4708, !4713, !4714, !4718, !4722, !4728, !4729, !4733, !4734, !4738, !4742, !4743, !4748, !4752, !4756, !4760, !4764, !4765, !4771}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4654, file: !183, line: 1915, baseType: !1091, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4654, file: !183, line: 1916, baseType: !4658, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!44, !509, !44, !25}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4654, file: !183, line: 1917, baseType: !4662, size: 64, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!1174, !509, !437, !38, !43}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4654, file: !183, line: 1918, baseType: !4666, size: 64, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!1174, !509, !19, !38, !43}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4654, file: !183, line: 1919, baseType: !1826, size: 64, offset: 256)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4654, file: !183, line: 1920, baseType: !1826, size: 64, offset: 320)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4654, file: !183, line: 1921, baseType: !4672, size: 64, offset: 384)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!25, !1829, !4675, !7}
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !183, line: 53, flags: DIFlagFwdDecl)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4654, file: !183, line: 1923, baseType: !4678, size: 64, offset: 448)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!25, !509, !4681}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !183, line: 1858, size: 128, elements: !4683)
!4683 = !{!4684, !4689}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4682, file: !183, line: 1859, baseType: !4685, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !183, line: 1855, baseType: !4686)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!327, !4681, !19, !25, !44, !367, !7}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4682, file: !183, line: 1860, baseType: !44, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4654, file: !183, line: 1924, baseType: !4691, size: 64, offset: 512)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!2094, !509, !2096}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4654, file: !183, line: 1925, baseType: !4695, size: 64, offset: 576)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!310, !509, !7, !42}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4654, file: !183, line: 1926, baseType: !4695, size: 64, offset: 640)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4654, file: !183, line: 1927, baseType: !4700, size: 64, offset: 704)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!25, !509, !1351}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4654, file: !183, line: 1928, baseType: !42, size: 64, offset: 768)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4654, file: !183, line: 1929, baseType: !4705, size: 64, offset: 832)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!25, !374, !509}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4654, file: !183, line: 1930, baseType: !4709, size: 64, offset: 896)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!25, !509, !4712}
!4712 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !183, line: 1061, baseType: !23)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4654, file: !183, line: 1931, baseType: !4705, size: 64, offset: 960)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4654, file: !183, line: 1932, baseType: !4715, size: 64, offset: 1024)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!25, !509, !44, !44, !25}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4654, file: !183, line: 1933, baseType: !4719, size: 64, offset: 1088)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!25, !25, !509, !25}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4654, file: !183, line: 1934, baseType: !4723, size: 64, offset: 1152)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!25, !509, !25, !4726}
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !183, line: 1063, flags: DIFlagFwdDecl)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4654, file: !183, line: 1935, baseType: !1389, size: 64, offset: 1216)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4654, file: !183, line: 1936, baseType: !4730, size: 64, offset: 1280)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!25, !25}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4654, file: !183, line: 1937, baseType: !4723, size: 64, offset: 1344)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4654, file: !183, line: 1938, baseType: !4735, size: 64, offset: 1408)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!1174, !4181, !509, !43, !38, !7}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4654, file: !183, line: 1939, baseType: !4739, size: 64, offset: 1472)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!1174, !509, !43, !4181, !38, !7}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4654, file: !183, line: 1940, baseType: !1898, size: 64, offset: 1536)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4654, file: !183, line: 1941, baseType: !4744, size: 64, offset: 1600)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!25, !509, !25, !4747, !1803}
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4654, file: !183, line: 1942, baseType: !4749, size: 64, offset: 1664)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!310, !509, !25, !44, !44}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4654, file: !183, line: 1944, baseType: !4753, size: 64, offset: 1728)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{null, !2005, !509}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4654, file: !183, line: 1948, baseType: !4757, size: 64, offset: 1792)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!1174, !509, !44, !509, !44, !38, !7}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4654, file: !183, line: 1950, baseType: !4761, size: 64, offset: 1856)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!44, !509, !44, !509, !44, !44, !7}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4654, file: !183, line: 1953, baseType: !4715, size: 64, offset: 1920)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4654, file: !183, line: 1954, baseType: !4766, size: 64, offset: 1984)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!25, !4769, !7}
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !183, line: 1911, flags: DIFlagFwdDecl)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4654, file: !183, line: 1955, baseType: !4772, size: 64, offset: 2048)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!25, !4769, !4675, !7}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !510, file: !183, line: 1018, baseType: !367, size: 64, offset: 1472)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !510, file: !183, line: 1020, baseType: !23, size: 64, offset: 1536)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !510, file: !183, line: 1023, baseType: !23, size: 64, offset: 1600)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !510, file: !183, line: 1027, baseType: !4779, size: 64, offset: 1664)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !510, file: !183, line: 1029, baseType: !1211, size: 64, offset: 1728)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !510, file: !183, line: 1030, baseType: !1908, size: 32, offset: 1792)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !510, file: !183, line: 1031, baseType: !1908, size: 32, offset: 1824)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !403, file: !183, line: 1988, baseType: !4784, size: 64, offset: 896)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!25, !426, !2709, !4787, !363, !7}
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4789, line: 22, size: 1280, elements: !4790)
!4789 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4790 = !{!4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4788, file: !4789, line: 23, baseType: !363, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4788, file: !4789, line: 24, baseType: !27, size: 16, offset: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4788, file: !4789, line: 25, baseType: !7, size: 32, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4788, file: !4789, line: 26, baseType: !697, size: 32, offset: 96)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4788, file: !4789, line: 27, baseType: !367, size: 64, offset: 128)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4788, file: !4789, line: 28, baseType: !367, size: 64, offset: 192)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4788, file: !4789, line: 41, baseType: !367, size: 64, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4788, file: !4789, line: 42, baseType: !463, size: 32, offset: 320)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4788, file: !4789, line: 43, baseType: !463, size: 32, offset: 352)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4788, file: !4789, line: 44, baseType: !380, size: 32, offset: 384)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4788, file: !4789, line: 45, baseType: !389, size: 32, offset: 416)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4788, file: !4789, line: 46, baseType: !44, size: 64, offset: 448)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4788, file: !4789, line: 47, baseType: !499, size: 128, offset: 512)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4788, file: !4789, line: 48, baseType: !499, size: 128, offset: 640)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4788, file: !4789, line: 49, baseType: !499, size: 128, offset: 768)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4788, file: !4789, line: 50, baseType: !499, size: 128, offset: 896)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4788, file: !4789, line: 51, baseType: !367, size: 64, offset: 1024)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4788, file: !4789, line: 52, baseType: !367, size: 64, offset: 1088)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4788, file: !4789, line: 53, baseType: !363, size: 32, offset: 1152)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4788, file: !4789, line: 54, baseType: !363, size: 32, offset: 1184)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4788, file: !4789, line: 55, baseType: !367, size: 64, offset: 1216)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !403, file: !183, line: 1990, baseType: !4813, size: 64, offset: 960)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!1174, !329, !437, !38}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !403, file: !183, line: 1991, baseType: !4817, size: 64, offset: 1024)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!25, !374, !4820, !367, !367}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !183, line: 55, flags: DIFlagFwdDecl)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !403, file: !183, line: 1993, baseType: !4823, size: 64, offset: 1088)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!25, !374, !25}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !403, file: !183, line: 1994, baseType: !4827, size: 64, offset: 1152)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!25, !374, !329, !509, !7, !27}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !403, file: !183, line: 1997, baseType: !4831, size: 64, offset: 1216)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!25, !426, !374, !509, !27}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !403, file: !183, line: 1999, baseType: !4835, size: 64, offset: 1280)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!397, !426, !329, !25}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !403, file: !183, line: 2001, baseType: !4839, size: 64, offset: 1344)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!25, !426, !329, !397, !25}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !403, file: !183, line: 2003, baseType: !4843, size: 64, offset: 1408)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!25, !426, !329, !4846}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !183, line: 76, flags: DIFlagFwdDecl)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !403, file: !183, line: 2005, baseType: !4849, size: 64, offset: 1472)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!25, !329, !4846}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !403, file: !183, line: 2006, baseType: !4853, size: 64, offset: 1536)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!4856, !374}
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !183, line: 3192, size: 192, elements: !4858)
!4858 = !{!4859, !4860}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4857, file: !183, line: 3193, baseType: !1216, size: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4857, file: !183, line: 3194, baseType: !363, size: 32, offset: 128)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !375, file: !183, line: 655, baseType: !999, size: 64, offset: 448)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !375, file: !183, line: 656, baseType: !1211, size: 64, offset: 512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !375, file: !183, line: 659, baseType: !23, size: 64, offset: 576)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !375, file: !183, line: 663, baseType: !42, size: 64, offset: 640)
!4865 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !183, line: 671, baseType: !4866, size: 32, offset: 704)
!4866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !183, line: 671, size: 32, elements: !4867)
!4867 = !{!4868, !4870}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4866, file: !183, line: 672, baseType: !4869, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4866, file: !183, line: 673, baseType: !7, size: 32)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !375, file: !183, line: 675, baseType: !463, size: 32, offset: 736)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !375, file: !183, line: 676, baseType: !44, size: 64, offset: 768)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !375, file: !183, line: 677, baseType: !499, size: 128, offset: 832)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !375, file: !183, line: 678, baseType: !499, size: 128, offset: 960)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !375, file: !183, line: 679, baseType: !499, size: 128, offset: 1088)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !375, file: !183, line: 680, baseType: !62, size: 32, offset: 1216)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !375, file: !183, line: 681, baseType: !29, size: 16, offset: 1248)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !375, file: !183, line: 682, baseType: !86, size: 8, offset: 1264)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !375, file: !183, line: 683, baseType: !86, size: 8, offset: 1272)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !375, file: !183, line: 684, baseType: !2782, size: 64, offset: 1280)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !375, file: !183, line: 691, baseType: !42, size: 64, offset: 1344)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !375, file: !183, line: 692, baseType: !675, size: 320, offset: 1408)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !375, file: !183, line: 694, baseType: !42, size: 64, offset: 1728)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !375, file: !183, line: 695, baseType: !42, size: 64, offset: 1792)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !375, file: !183, line: 697, baseType: !601, size: 128, offset: 1856)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !375, file: !183, line: 698, baseType: !100, size: 128, offset: 1984)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !375, file: !183, line: 707, baseType: !100, size: 128, offset: 2112)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !375, file: !183, line: 708, baseType: !100, size: 128, offset: 2240)
!4889 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !183, line: 709, baseType: !4890, size: 128, offset: 2368)
!4890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !183, line: 709, size: 128, elements: !4891)
!4891 = !{!4892, !4893}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4890, file: !183, line: 710, baseType: !597, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4890, file: !183, line: 711, baseType: !522, size: 128, align: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !375, file: !183, line: 713, baseType: !537, size: 64, offset: 2496)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !375, file: !183, line: 714, baseType: !537, size: 64, offset: 2560)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !375, file: !183, line: 715, baseType: !52, size: 32, offset: 2624)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !375, file: !183, line: 716, baseType: !52, size: 32, offset: 2656)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !375, file: !183, line: 717, baseType: !52, size: 32, offset: 2688)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !375, file: !183, line: 719, baseType: !52, size: 32, offset: 2720)
!4900 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !183, line: 721, baseType: !4901, size: 64, offset: 2752)
!4901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !183, line: 721, size: 64, elements: !4902)
!4902 = !{!4903, !4904}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4901, file: !183, line: 722, baseType: !4652, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4901, file: !183, line: 723, baseType: !2538, size: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !375, file: !183, line: 725, baseType: !4906, size: 64, offset: 2816)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !183, line: 725, flags: DIFlagFwdDecl)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !375, file: !183, line: 726, baseType: !1212, size: 1536, align: 64, offset: 2880)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !375, file: !183, line: 727, baseType: !100, size: 128, offset: 4416)
!4910 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !183, line: 728, baseType: !4911, size: 64, offset: 4544)
!4911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !183, line: 728, size: 64, elements: !4912)
!4912 = !{!4913, !4914, !4917, !4918}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4911, file: !183, line: 729, baseType: !4181, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4911, file: !183, line: 730, baseType: !4915, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !183, line: 730, flags: DIFlagFwdDecl)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4911, file: !183, line: 731, baseType: !437, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4911, file: !183, line: 732, baseType: !7, size: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !375, file: !183, line: 735, baseType: !364, size: 32, offset: 4608)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !375, file: !183, line: 738, baseType: !364, size: 32, offset: 4640)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !375, file: !183, line: 739, baseType: !4528, size: 64, offset: 4672)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !375, file: !183, line: 750, baseType: !23, size: 64, offset: 4736)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !330, file: !331, line: 91, baseType: !4924, size: 256, offset: 448)
!4924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !4404)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !330, file: !331, line: 94, baseType: !4926, size: 64, offset: 704)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4927, line: 25, size: 64, elements: !4928)
!4927 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4928 = !{!4929}
!4929 = !DIDerivedType(tag: DW_TAG_member, scope: !4926, file: !4927, line: 26, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4926, file: !4927, line: 26, size: 64, elements: !4931)
!4931 = !{!4932, !4933}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4930, file: !4927, line: 28, baseType: !368, size: 64, align: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, scope: !4930, file: !4927, line: 30, baseType: !4934, size: 64)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4930, file: !4927, line: 30, size: 64, elements: !4935)
!4935 = !{!4936, !4937}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4934, file: !4927, line: 31, baseType: !62, size: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4934, file: !4927, line: 32, baseType: !25, size: 32, offset: 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !330, file: !331, line: 95, baseType: !4543, size: 64, offset: 768)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !330, file: !331, line: 96, baseType: !999, size: 64, offset: 832)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !330, file: !331, line: 97, baseType: !42, size: 64, offset: 896)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !330, file: !331, line: 98, baseType: !23, size: 64, offset: 960)
!4942 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !331, line: 100, baseType: !4943, size: 128, offset: 1024)
!4943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !331, line: 100, size: 128, elements: !4944)
!4944 = !{!4945, !4946}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4943, file: !331, line: 101, baseType: !100, size: 128)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4943, file: !331, line: 102, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !330, file: !331, line: 104, baseType: !100, size: 128, offset: 1152)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !330, file: !331, line: 105, baseType: !100, size: 128, offset: 1280)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !330, file: !331, line: 113, baseType: !4951, size: 128, offset: 1408)
!4951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !331, line: 109, size: 128, elements: !4952)
!4952 = !{!4953, !4954, !4955}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4951, file: !331, line: 110, baseType: !601, size: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4951, file: !331, line: 111, baseType: !345, size: 128)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4951, file: !331, line: 112, baseType: !522, size: 128, align: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !317, file: !318, line: 41, baseType: !4957, size: 64, offset: 256)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!25, !315, !329, !374, !19, !23, !38}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !317, file: !318, line: 44, baseType: !4961, size: 64, offset: 320)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!25, !315, !426, !329, !374, !19, !1480, !38, !25}
!4964 = !DIGlobalVariableExpression(var: !4965, expr: !DIExpression())
!4965 = distinct !DIGlobalVariable(name: "iattr_mutex", scope: !4966, file: !3, line: 29, type: !543, isLocal: true, isDefinition: true)
!4966 = distinct !DISubprogram(name: "__kernfs_iattrs", scope: !3, file: !3, line: 27, type: !4967, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4969)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!2112, !1963, !25}
!4969 = !{!4970, !4971, !4972, !4973}
!4970 = !DILocalVariable(name: "kn", arg: 1, scope: !4966, file: !3, line: 27, type: !1963)
!4971 = !DILocalVariable(name: "alloc", arg: 2, scope: !4966, file: !3, line: 27, type: !25)
!4972 = !DILocalVariable(name: "ret", scope: !4966, file: !3, line: 30, type: !2112)
!4973 = !DILabel(scope: !4966, name: "out_unlock", file: !3, line: 52)
!4974 = !DIGlobalVariableExpression(var: !4975, expr: !DIExpression())
!4975 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !4976, isLocal: true, isDefinition: true)
!4976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 144, elements: !4977)
!4977 = !{!4978}
!4978 = !DISubrange(count: 18)
!4979 = !DIGlobalVariableExpression(var: !4980, expr: !DIExpression())
!4980 = distinct !DIGlobalVariable(name: "kernfs_iops", scope: !2, file: !3, line: 20, type: !402, isLocal: true, isDefinition: true)
!4981 = !DIGlobalVariableExpression(var: !4982, expr: !DIExpression())
!4982 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !4983, isLocal: true, isDefinition: true)
!4983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 72, elements: !4984)
!4984 = !{!4985}
!4985 = !DISubrange(count: 9)
!4986 = !DIGlobalVariableExpression(var: !4987, expr: !DIExpression())
!4987 = distinct !DIGlobalVariable(scope: null, file: !3, line: 437, type: !4988, isLocal: true, isDefinition: true)
!4988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !957)
!4989 = !DIGlobalVariableExpression(var: !4990, expr: !DIExpression())
!4990 = distinct !DIGlobalVariable(name: "kernfs_security_xattr_handler", scope: !2, file: !3, line: 436, type: !316, isLocal: true, isDefinition: true)
!4991 = !DIGlobalVariableExpression(var: !4992, expr: !DIExpression())
!4992 = distinct !DIGlobalVariable(scope: null, file: !3, line: 443, type: !718, isLocal: true, isDefinition: true)
!4993 = !DIGlobalVariableExpression(var: !4994, expr: !DIExpression())
!4994 = distinct !DIGlobalVariable(name: "kernfs_user_xattr_handler", scope: !2, file: !3, line: 442, type: !316, isLocal: true, isDefinition: true)
!4995 = !{i32 7, !"Dwarf Version", i32 5}
!4996 = !{i32 2, !"Debug Info Version", i32 3}
!4997 = !{i32 1, !"wchar_size", i32 2}
!4998 = !{i32 8, !"cf-protection-branch", i32 1}
!4999 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5000 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5001 = !{i32 1, !"Code Model", i32 2}
!5002 = !{i32 1, !"override-stack-alignment", i32 8}
!5003 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5004 = distinct !DISubprogram(name: "__kernfs_setattr", scope: !3, file: !3, line: 68, type: !5005, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5009)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!25, !1963, !5007}
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!5009 = !{!5010, !5011, !5012, !5013}
!5010 = !DILocalVariable(name: "kn", arg: 1, scope: !5004, file: !3, line: 68, type: !1963)
!5011 = !DILocalVariable(name: "iattr", arg: 2, scope: !5004, file: !3, line: 68, type: !5007)
!5012 = !DILocalVariable(name: "attrs", scope: !5004, file: !3, line: 70, type: !2112)
!5013 = !DILocalVariable(name: "ia_valid", scope: !5004, file: !3, line: 71, type: !7)
!5014 = !DILocation(line: 68, column: 42, scope: !5004)
!5015 = !DILocation(line: 68, column: 66, scope: !5004)
!5016 = !DILocation(line: 70, column: 2, scope: !5004)
!5017 = !DILocation(line: 70, column: 24, scope: !5004)
!5018 = !DILocation(line: 71, column: 2, scope: !5004)
!5019 = !DILocation(line: 71, column: 15, scope: !5004)
!5020 = !DILocation(line: 71, column: 26, scope: !5004)
!5021 = !DILocation(line: 71, column: 33, scope: !5004)
!5022 = !DILocation(line: 73, column: 24, scope: !5004)
!5023 = !DILocation(line: 73, column: 10, scope: !5004)
!5024 = !DILocation(line: 73, column: 8, scope: !5004)
!5025 = !DILocation(line: 74, column: 7, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 74, column: 6)
!5027 = !DILocation(line: 74, column: 6, scope: !5004)
!5028 = !DILocation(line: 75, column: 3, scope: !5026)
!5029 = !DILocation(line: 77, column: 6, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 77, column: 6)
!5031 = !DILocation(line: 77, column: 15, scope: !5030)
!5032 = !DILocation(line: 77, column: 6, scope: !5004)
!5033 = !DILocation(line: 78, column: 3, scope: !5030)
!5034 = !DILocation(line: 78, column: 10, scope: !5030)
!5035 = !DILocation(line: 78, column: 19, scope: !5030)
!5036 = !DILocation(line: 78, column: 26, scope: !5030)
!5037 = !DILocation(line: 79, column: 6, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 79, column: 6)
!5039 = !DILocation(line: 79, column: 15, scope: !5038)
!5040 = !DILocation(line: 79, column: 6, scope: !5004)
!5041 = !DILocation(line: 80, column: 3, scope: !5038)
!5042 = !DILocation(line: 80, column: 10, scope: !5038)
!5043 = !DILocation(line: 80, column: 19, scope: !5038)
!5044 = !DILocation(line: 80, column: 26, scope: !5038)
!5045 = !DILocation(line: 81, column: 6, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 81, column: 6)
!5047 = !DILocation(line: 81, column: 15, scope: !5046)
!5048 = !DILocation(line: 81, column: 6, scope: !5004)
!5049 = !DILocation(line: 82, column: 3, scope: !5046)
!5050 = !DILocation(line: 82, column: 10, scope: !5046)
!5051 = !DILocation(line: 82, column: 21, scope: !5046)
!5052 = !DILocation(line: 82, column: 28, scope: !5046)
!5053 = !DILocation(line: 83, column: 6, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 83, column: 6)
!5055 = !DILocation(line: 83, column: 15, scope: !5054)
!5056 = !DILocation(line: 83, column: 6, scope: !5004)
!5057 = !DILocation(line: 84, column: 3, scope: !5054)
!5058 = !DILocation(line: 84, column: 10, scope: !5054)
!5059 = !DILocation(line: 84, column: 21, scope: !5054)
!5060 = !DILocation(line: 84, column: 28, scope: !5054)
!5061 = !DILocation(line: 85, column: 6, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 85, column: 6)
!5063 = !DILocation(line: 85, column: 15, scope: !5062)
!5064 = !DILocation(line: 85, column: 6, scope: !5004)
!5065 = !DILocation(line: 86, column: 3, scope: !5062)
!5066 = !DILocation(line: 86, column: 10, scope: !5062)
!5067 = !DILocation(line: 86, column: 21, scope: !5062)
!5068 = !DILocation(line: 86, column: 28, scope: !5062)
!5069 = !DILocation(line: 87, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 87, column: 6)
!5071 = !DILocation(line: 87, column: 15, scope: !5070)
!5072 = !DILocation(line: 87, column: 6, scope: !5004)
!5073 = !DILocation(line: 88, column: 14, scope: !5070)
!5074 = !DILocation(line: 88, column: 21, scope: !5070)
!5075 = !DILocation(line: 88, column: 3, scope: !5070)
!5076 = !DILocation(line: 88, column: 7, scope: !5070)
!5077 = !DILocation(line: 88, column: 12, scope: !5070)
!5078 = !DILocation(line: 89, column: 2, scope: !5004)
!5079 = !DILocation(line: 90, column: 1, scope: !5004)
!5080 = distinct !DISubprogram(name: "kernfs_iattrs", scope: !3, file: !3, line: 58, type: !5081, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5083)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!2112, !1963}
!5083 = !{!5084}
!5084 = !DILocalVariable(name: "kn", arg: 1, scope: !5080, file: !3, line: 58, type: !1963)
!5085 = !DILocation(line: 58, column: 64, scope: !5080)
!5086 = !DILocation(line: 60, column: 25, scope: !5080)
!5087 = !DILocation(line: 60, column: 9, scope: !5080)
!5088 = !DILocation(line: 60, column: 2, scope: !5080)
!5089 = distinct !DISubprogram(name: "kernfs_setattr", scope: !3, file: !3, line: 99, type: !5005, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5090)
!5090 = !{!5091, !5092, !5093, !5094}
!5091 = !DILocalVariable(name: "kn", arg: 1, scope: !5089, file: !3, line: 99, type: !1963)
!5092 = !DILocalVariable(name: "iattr", arg: 2, scope: !5089, file: !3, line: 99, type: !5007)
!5093 = !DILocalVariable(name: "ret", scope: !5089, file: !3, line: 101, type: !25)
!5094 = !DILocalVariable(name: "root", scope: !5089, file: !3, line: 102, type: !1982)
!5095 = !DILocation(line: 99, column: 40, scope: !5089)
!5096 = !DILocation(line: 99, column: 64, scope: !5089)
!5097 = !DILocation(line: 101, column: 2, scope: !5089)
!5098 = !DILocation(line: 101, column: 6, scope: !5089)
!5099 = !DILocation(line: 102, column: 2, scope: !5089)
!5100 = !DILocation(line: 102, column: 22, scope: !5089)
!5101 = !DILocation(line: 102, column: 41, scope: !5089)
!5102 = !DILocation(line: 102, column: 29, scope: !5089)
!5103 = !DILocation(line: 104, column: 14, scope: !5089)
!5104 = !DILocation(line: 104, column: 20, scope: !5089)
!5105 = !DILocation(line: 104, column: 2, scope: !5089)
!5106 = !DILocation(line: 105, column: 25, scope: !5089)
!5107 = !DILocation(line: 105, column: 29, scope: !5089)
!5108 = !DILocation(line: 105, column: 8, scope: !5089)
!5109 = !DILocation(line: 105, column: 6, scope: !5089)
!5110 = !DILocation(line: 106, column: 12, scope: !5089)
!5111 = !DILocation(line: 106, column: 18, scope: !5089)
!5112 = !DILocation(line: 106, column: 2, scope: !5089)
!5113 = !DILocation(line: 107, column: 9, scope: !5089)
!5114 = !DILocation(line: 108, column: 1, scope: !5089)
!5115 = !DILocation(line: 107, column: 2, scope: !5089)
!5116 = distinct !DISubprogram(name: "kernfs_root", scope: !1984, file: !1984, line: 67, type: !5117, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5119)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!1982, !1963}
!5119 = !{!5120}
!5120 = !DILocalVariable(name: "kn", arg: 1, scope: !5116, file: !1984, line: 67, type: !1963)
!5121 = !DILocation(line: 67, column: 67, scope: !5116)
!5122 = !DILocation(line: 70, column: 6, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5116, file: !1984, line: 70, column: 6)
!5124 = !DILocation(line: 70, column: 10, scope: !5123)
!5125 = !DILocation(line: 70, column: 6, scope: !5116)
!5126 = !DILocation(line: 71, column: 8, scope: !5123)
!5127 = !DILocation(line: 71, column: 12, scope: !5123)
!5128 = !DILocation(line: 71, column: 6, scope: !5123)
!5129 = !DILocation(line: 71, column: 3, scope: !5123)
!5130 = !DILocation(line: 72, column: 9, scope: !5116)
!5131 = !DILocation(line: 72, column: 13, scope: !5116)
!5132 = !DILocation(line: 72, column: 17, scope: !5116)
!5133 = !DILocation(line: 72, column: 2, scope: !5116)
!5134 = !DISubprogram(name: "down_write", scope: !676, file: !676, line: 187, type: !5135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{null, !5137}
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!5138 = !DISubprogram(name: "up_write", scope: !676, file: !676, line: 203, type: !5135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5139 = distinct !DISubprogram(name: "kernfs_iop_setattr", scope: !3, file: !3, line: 110, type: !471, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5140)
!5140 = !{!5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148}
!5141 = !DILocalVariable(name: "idmap", arg: 1, scope: !5139, file: !3, line: 110, type: !426)
!5142 = !DILocalVariable(name: "dentry", arg: 2, scope: !5139, file: !3, line: 110, type: !329)
!5143 = !DILocalVariable(name: "iattr", arg: 3, scope: !5139, file: !3, line: 111, type: !473)
!5144 = !DILocalVariable(name: "inode", scope: !5139, file: !3, line: 113, type: !374)
!5145 = !DILocalVariable(name: "kn", scope: !5139, file: !3, line: 114, type: !1963)
!5146 = !DILocalVariable(name: "root", scope: !5139, file: !3, line: 115, type: !1982)
!5147 = !DILocalVariable(name: "error", scope: !5139, file: !3, line: 116, type: !25)
!5148 = !DILabel(scope: !5139, name: "out", file: !3, line: 134)
!5149 = !DILocation(line: 110, column: 42, scope: !5139)
!5150 = !DILocation(line: 110, column: 64, scope: !5139)
!5151 = !DILocation(line: 111, column: 24, scope: !5139)
!5152 = !DILocation(line: 113, column: 2, scope: !5139)
!5153 = !DILocation(line: 113, column: 16, scope: !5139)
!5154 = !DILocation(line: 113, column: 32, scope: !5139)
!5155 = !DILocation(line: 113, column: 24, scope: !5139)
!5156 = !DILocation(line: 114, column: 2, scope: !5139)
!5157 = !DILocation(line: 114, column: 22, scope: !5139)
!5158 = !DILocation(line: 114, column: 27, scope: !5139)
!5159 = !DILocation(line: 114, column: 34, scope: !5139)
!5160 = !DILocation(line: 115, column: 2, scope: !5139)
!5161 = !DILocation(line: 115, column: 22, scope: !5139)
!5162 = !DILocation(line: 116, column: 2, scope: !5139)
!5163 = !DILocation(line: 116, column: 6, scope: !5139)
!5164 = !DILocation(line: 118, column: 7, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 118, column: 6)
!5166 = !DILocation(line: 118, column: 6, scope: !5139)
!5167 = !DILocation(line: 119, column: 3, scope: !5165)
!5168 = !DILocation(line: 121, column: 21, scope: !5139)
!5169 = !DILocation(line: 121, column: 9, scope: !5139)
!5170 = !DILocation(line: 121, column: 7, scope: !5139)
!5171 = !DILocation(line: 122, column: 14, scope: !5139)
!5172 = !DILocation(line: 122, column: 20, scope: !5139)
!5173 = !DILocation(line: 122, column: 2, scope: !5139)
!5174 = !DILocation(line: 123, column: 42, scope: !5139)
!5175 = !DILocation(line: 123, column: 50, scope: !5139)
!5176 = !DILocation(line: 123, column: 10, scope: !5139)
!5177 = !DILocation(line: 123, column: 8, scope: !5139)
!5178 = !DILocation(line: 124, column: 6, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 124, column: 6)
!5180 = !DILocation(line: 124, column: 6, scope: !5139)
!5181 = !DILocation(line: 125, column: 3, scope: !5179)
!5182 = !DILocation(line: 127, column: 27, scope: !5139)
!5183 = !DILocation(line: 127, column: 31, scope: !5139)
!5184 = !DILocation(line: 127, column: 10, scope: !5139)
!5185 = !DILocation(line: 127, column: 8, scope: !5139)
!5186 = !DILocation(line: 128, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 128, column: 6)
!5188 = !DILocation(line: 128, column: 6, scope: !5139)
!5189 = !DILocation(line: 129, column: 3, scope: !5187)
!5190 = !DILocation(line: 132, column: 31, scope: !5139)
!5191 = !DILocation(line: 132, column: 38, scope: !5139)
!5192 = !DILocation(line: 132, column: 2, scope: !5139)
!5193 = !DILocation(line: 134, column: 1, scope: !5139)
!5194 = !DILocation(line: 135, column: 12, scope: !5139)
!5195 = !DILocation(line: 135, column: 18, scope: !5139)
!5196 = !DILocation(line: 135, column: 2, scope: !5139)
!5197 = !DILocation(line: 136, column: 9, scope: !5139)
!5198 = !DILocation(line: 136, column: 2, scope: !5139)
!5199 = !DILocation(line: 137, column: 1, scope: !5139)
!5200 = distinct !DISubprogram(name: "d_inode", scope: !331, file: !331, line: 514, type: !5201, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5203)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!374, !4556}
!5203 = !{!5204}
!5204 = !DILocalVariable(name: "dentry", arg: 1, scope: !5200, file: !331, line: 514, type: !4556)
!5205 = !DILocation(line: 514, column: 58, scope: !5200)
!5206 = !DILocation(line: 516, column: 9, scope: !5200)
!5207 = !DILocation(line: 516, column: 17, scope: !5200)
!5208 = !DILocation(line: 516, column: 2, scope: !5200)
!5209 = !DISubprogram(name: "setattr_prepare", scope: !183, file: !183, line: 3228, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5210 = !DISubprogram(name: "setattr_copy", scope: !183, file: !183, line: 3230, type: !5211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{null, !426, !374, !5007}
!5213 = distinct !DISubprogram(name: "kernfs_iop_listxattr", scope: !3, file: !3, line: 139, type: !4814, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5214 = !{!5215, !5216, !5217, !5218, !5219}
!5215 = !DILocalVariable(name: "dentry", arg: 1, scope: !5213, file: !3, line: 139, type: !329)
!5216 = !DILocalVariable(name: "buf", arg: 2, scope: !5213, file: !3, line: 139, type: !437)
!5217 = !DILocalVariable(name: "size", arg: 3, scope: !5213, file: !3, line: 139, type: !38)
!5218 = !DILocalVariable(name: "kn", scope: !5213, file: !3, line: 141, type: !1963)
!5219 = !DILocalVariable(name: "attrs", scope: !5213, file: !3, line: 142, type: !2112)
!5220 = !DILocation(line: 139, column: 45, scope: !5213)
!5221 = !DILocation(line: 139, column: 59, scope: !5213)
!5222 = !DILocation(line: 139, column: 71, scope: !5213)
!5223 = !DILocation(line: 141, column: 2, scope: !5213)
!5224 = !DILocation(line: 141, column: 22, scope: !5213)
!5225 = !DILocation(line: 141, column: 46, scope: !5213)
!5226 = !DILocation(line: 141, column: 27, scope: !5213)
!5227 = !DILocation(line: 142, column: 2, scope: !5213)
!5228 = !DILocation(line: 142, column: 24, scope: !5213)
!5229 = !DILocation(line: 144, column: 24, scope: !5213)
!5230 = !DILocation(line: 144, column: 10, scope: !5213)
!5231 = !DILocation(line: 144, column: 8, scope: !5213)
!5232 = !DILocation(line: 145, column: 7, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 145, column: 6)
!5234 = !DILocation(line: 145, column: 6, scope: !5213)
!5235 = !DILocation(line: 146, column: 3, scope: !5233)
!5236 = !DILocation(line: 148, column: 35, scope: !5213)
!5237 = !DILocation(line: 148, column: 27, scope: !5213)
!5238 = !DILocation(line: 148, column: 45, scope: !5213)
!5239 = !DILocation(line: 148, column: 52, scope: !5213)
!5240 = !DILocation(line: 148, column: 60, scope: !5213)
!5241 = !DILocation(line: 148, column: 65, scope: !5213)
!5242 = !DILocation(line: 148, column: 9, scope: !5213)
!5243 = !DILocation(line: 148, column: 2, scope: !5213)
!5244 = !DILocation(line: 149, column: 1, scope: !5213)
!5245 = distinct !DISubprogram(name: "kernfs_dentry_node", scope: !1984, file: !1984, line: 100, type: !5246, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5248)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!1963, !329}
!5248 = !{!5249}
!5249 = !DILocalVariable(name: "dentry", arg: 1, scope: !5245, file: !1984, line: 100, type: !329)
!5250 = !DILocation(line: 100, column: 69, scope: !5245)
!5251 = !DILocation(line: 102, column: 27, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5245, file: !1984, line: 102, column: 6)
!5253 = !DILocation(line: 102, column: 6, scope: !5252)
!5254 = !DILocation(line: 102, column: 6, scope: !5245)
!5255 = !DILocation(line: 103, column: 3, scope: !5252)
!5256 = !DILocation(line: 104, column: 17, scope: !5245)
!5257 = !DILocation(line: 104, column: 9, scope: !5245)
!5258 = !DILocation(line: 104, column: 26, scope: !5245)
!5259 = !DILocation(line: 104, column: 2, scope: !5245)
!5260 = !DILocation(line: 105, column: 1, scope: !5245)
!5261 = !DISubprogram(name: "simple_xattr_list", scope: !318, file: !318, line: 126, type: !5262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!1174, !374, !5264, !437, !38}
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!5265 = distinct !DISubprogram(name: "kernfs_iop_getattr", scope: !3, file: !3, line: 183, type: !4785, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5266)
!5266 = !{!5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274}
!5267 = !DILocalVariable(name: "idmap", arg: 1, scope: !5265, file: !3, line: 183, type: !426)
!5268 = !DILocalVariable(name: "path", arg: 2, scope: !5265, file: !3, line: 184, type: !2709)
!5269 = !DILocalVariable(name: "stat", arg: 3, scope: !5265, file: !3, line: 184, type: !4787)
!5270 = !DILocalVariable(name: "request_mask", arg: 4, scope: !5265, file: !3, line: 185, type: !363)
!5271 = !DILocalVariable(name: "query_flags", arg: 5, scope: !5265, file: !3, line: 185, type: !7)
!5272 = !DILocalVariable(name: "inode", scope: !5265, file: !3, line: 187, type: !374)
!5273 = !DILocalVariable(name: "kn", scope: !5265, file: !3, line: 188, type: !1963)
!5274 = !DILocalVariable(name: "root", scope: !5265, file: !3, line: 189, type: !1982)
!5275 = !DILocation(line: 183, column: 42, scope: !5265)
!5276 = !DILocation(line: 184, column: 29, scope: !5265)
!5277 = !DILocation(line: 184, column: 49, scope: !5265)
!5278 = !DILocation(line: 185, column: 14, scope: !5265)
!5279 = !DILocation(line: 185, column: 41, scope: !5265)
!5280 = !DILocation(line: 187, column: 2, scope: !5265)
!5281 = !DILocation(line: 187, column: 16, scope: !5265)
!5282 = !DILocation(line: 187, column: 32, scope: !5265)
!5283 = !DILocation(line: 187, column: 38, scope: !5265)
!5284 = !DILocation(line: 187, column: 24, scope: !5265)
!5285 = !DILocation(line: 188, column: 2, scope: !5265)
!5286 = !DILocation(line: 188, column: 22, scope: !5265)
!5287 = !DILocation(line: 188, column: 27, scope: !5265)
!5288 = !DILocation(line: 188, column: 34, scope: !5265)
!5289 = !DILocation(line: 189, column: 2, scope: !5265)
!5290 = !DILocation(line: 189, column: 22, scope: !5265)
!5291 = !DILocation(line: 189, column: 41, scope: !5265)
!5292 = !DILocation(line: 189, column: 29, scope: !5265)
!5293 = !DILocation(line: 191, column: 13, scope: !5265)
!5294 = !DILocation(line: 191, column: 19, scope: !5265)
!5295 = !DILocation(line: 191, column: 2, scope: !5265)
!5296 = !DILocation(line: 192, column: 23, scope: !5265)
!5297 = !DILocation(line: 192, column: 27, scope: !5265)
!5298 = !DILocation(line: 192, column: 2, scope: !5265)
!5299 = !DILocation(line: 193, column: 35, scope: !5265)
!5300 = !DILocation(line: 193, column: 49, scope: !5265)
!5301 = !DILocation(line: 193, column: 56, scope: !5265)
!5302 = !DILocation(line: 193, column: 2, scope: !5265)
!5303 = !DILocation(line: 194, column: 11, scope: !5265)
!5304 = !DILocation(line: 194, column: 17, scope: !5265)
!5305 = !DILocation(line: 194, column: 2, scope: !5265)
!5306 = !DILocation(line: 197, column: 1, scope: !5265)
!5307 = !DILocation(line: 196, column: 2, scope: !5265)
!5308 = !DISubprogram(name: "down_read", scope: !676, file: !676, line: 175, type: !5135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5309 = distinct !DISubprogram(name: "kernfs_refresh_inode", scope: !3, file: !3, line: 167, type: !5310, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5312)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{null, !1963, !374}
!5312 = !{!5313, !5314, !5315}
!5313 = !DILocalVariable(name: "kn", arg: 1, scope: !5309, file: !3, line: 167, type: !1963)
!5314 = !DILocalVariable(name: "inode", arg: 2, scope: !5309, file: !3, line: 167, type: !374)
!5315 = !DILocalVariable(name: "attrs", scope: !5309, file: !3, line: 169, type: !2112)
!5316 = !DILocation(line: 167, column: 54, scope: !5309)
!5317 = !DILocation(line: 167, column: 72, scope: !5309)
!5318 = !DILocation(line: 169, column: 2, scope: !5309)
!5319 = !DILocation(line: 169, column: 24, scope: !5309)
!5320 = !DILocation(line: 169, column: 32, scope: !5309)
!5321 = !DILocation(line: 169, column: 36, scope: !5309)
!5322 = !DILocation(line: 171, column: 18, scope: !5309)
!5323 = !DILocation(line: 171, column: 22, scope: !5309)
!5324 = !DILocation(line: 171, column: 2, scope: !5309)
!5325 = !DILocation(line: 171, column: 9, scope: !5309)
!5326 = !DILocation(line: 171, column: 16, scope: !5309)
!5327 = !DILocation(line: 172, column: 6, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 172, column: 6)
!5329 = !DILocation(line: 172, column: 6, scope: !5309)
!5330 = !DILocation(line: 177, column: 18, scope: !5328)
!5331 = !DILocation(line: 177, column: 25, scope: !5328)
!5332 = !DILocation(line: 177, column: 3, scope: !5328)
!5333 = !DILocation(line: 179, column: 18, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 179, column: 6)
!5335 = !DILocation(line: 179, column: 6, scope: !5334)
!5336 = !DILocation(line: 179, column: 22, scope: !5334)
!5337 = !DILocation(line: 179, column: 6, scope: !5309)
!5338 = !DILocation(line: 180, column: 13, scope: !5334)
!5339 = !DILocation(line: 180, column: 20, scope: !5334)
!5340 = !DILocation(line: 180, column: 24, scope: !5334)
!5341 = !DILocation(line: 180, column: 28, scope: !5334)
!5342 = !DILocation(line: 180, column: 36, scope: !5334)
!5343 = !DILocation(line: 180, column: 3, scope: !5334)
!5344 = !DILocation(line: 181, column: 1, scope: !5309)
!5345 = !DISubprogram(name: "generic_fillattr", scope: !183, file: !183, line: 3094, type: !5346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !426, !363, !374, !4787}
!5348 = !DISubprogram(name: "up_read", scope: !676, file: !676, line: 198, type: !5135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5349 = distinct !DISubprogram(name: "kernfs_get_inode", scope: !3, file: !3, line: 247, type: !5350, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5352)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!374, !999, !1963}
!5352 = !{!5353, !5354, !5355}
!5353 = !DILocalVariable(name: "sb", arg: 1, scope: !5349, file: !3, line: 247, type: !999)
!5354 = !DILocalVariable(name: "kn", arg: 2, scope: !5349, file: !3, line: 247, type: !1963)
!5355 = !DILocalVariable(name: "inode", scope: !5349, file: !3, line: 249, type: !374)
!5356 = !DILocation(line: 247, column: 52, scope: !5349)
!5357 = !DILocation(line: 247, column: 76, scope: !5349)
!5358 = !DILocation(line: 249, column: 2, scope: !5349)
!5359 = !DILocation(line: 249, column: 16, scope: !5349)
!5360 = !DILocation(line: 251, column: 22, scope: !5349)
!5361 = !DILocation(line: 251, column: 37, scope: !5349)
!5362 = !DILocation(line: 251, column: 26, scope: !5349)
!5363 = !DILocation(line: 251, column: 10, scope: !5349)
!5364 = !DILocation(line: 251, column: 8, scope: !5349)
!5365 = !DILocation(line: 252, column: 6, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 252, column: 6)
!5367 = !DILocation(line: 252, column: 12, scope: !5366)
!5368 = !DILocation(line: 252, column: 16, scope: !5366)
!5369 = !DILocation(line: 252, column: 23, scope: !5366)
!5370 = !DILocation(line: 252, column: 31, scope: !5366)
!5371 = !DILocation(line: 252, column: 6, scope: !5349)
!5372 = !DILocation(line: 253, column: 21, scope: !5366)
!5373 = !DILocation(line: 253, column: 25, scope: !5366)
!5374 = !DILocation(line: 253, column: 3, scope: !5366)
!5375 = !DILocation(line: 255, column: 9, scope: !5349)
!5376 = !DILocation(line: 256, column: 1, scope: !5349)
!5377 = !DILocation(line: 255, column: 2, scope: !5349)
!5378 = !DISubprogram(name: "iget_locked", scope: !183, file: !183, line: 2890, type: !5379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!374, !999, !42}
!5381 = distinct !DISubprogram(name: "kernfs_ino", scope: !282, file: !282, line: 360, type: !5382, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5385)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!5384, !1963}
!5384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !28, line: 22, baseType: !41)
!5385 = !{!5386}
!5386 = !DILocalVariable(name: "kn", arg: 1, scope: !5381, file: !282, line: 360, type: !1963)
!5387 = !DILocation(line: 360, column: 52, scope: !5381)
!5388 = !DILocation(line: 362, column: 23, scope: !5381)
!5389 = !DILocation(line: 362, column: 27, scope: !5381)
!5390 = !DILocation(line: 362, column: 9, scope: !5381)
!5391 = !DILocation(line: 362, column: 2, scope: !5381)
!5392 = distinct !DISubprogram(name: "kernfs_init_inode", scope: !3, file: !3, line: 199, type: !5310, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5393)
!5393 = !{!5394, !5395}
!5394 = !DILocalVariable(name: "kn", arg: 1, scope: !5392, file: !3, line: 199, type: !1963)
!5395 = !DILocalVariable(name: "inode", arg: 2, scope: !5392, file: !3, line: 199, type: !374)
!5396 = !DILocation(line: 199, column: 51, scope: !5392)
!5397 = !DILocation(line: 199, column: 69, scope: !5392)
!5398 = !DILocation(line: 201, column: 13, scope: !5392)
!5399 = !DILocation(line: 201, column: 2, scope: !5392)
!5400 = !DILocation(line: 202, column: 21, scope: !5392)
!5401 = !DILocation(line: 202, column: 2, scope: !5392)
!5402 = !DILocation(line: 202, column: 9, scope: !5392)
!5403 = !DILocation(line: 202, column: 19, scope: !5392)
!5404 = !DILocation(line: 203, column: 2, scope: !5392)
!5405 = !DILocation(line: 203, column: 9, scope: !5392)
!5406 = !DILocation(line: 203, column: 20, scope: !5392)
!5407 = !DILocation(line: 203, column: 26, scope: !5392)
!5408 = !DILocation(line: 204, column: 2, scope: !5392)
!5409 = !DILocation(line: 204, column: 9, scope: !5392)
!5410 = !DILocation(line: 204, column: 14, scope: !5392)
!5411 = !DILocation(line: 205, column: 35, scope: !5392)
!5412 = !DILocation(line: 205, column: 24, scope: !5392)
!5413 = !DILocation(line: 205, column: 2, scope: !5392)
!5414 = !DILocation(line: 205, column: 9, scope: !5392)
!5415 = !DILocation(line: 205, column: 22, scope: !5392)
!5416 = !DILocation(line: 207, column: 25, scope: !5392)
!5417 = !DILocation(line: 207, column: 32, scope: !5392)
!5418 = !DILocation(line: 207, column: 36, scope: !5392)
!5419 = !DILocation(line: 207, column: 2, scope: !5392)
!5420 = !DILocation(line: 208, column: 23, scope: !5392)
!5421 = !DILocation(line: 208, column: 27, scope: !5392)
!5422 = !DILocation(line: 208, column: 2, scope: !5392)
!5423 = !DILocation(line: 211, column: 22, scope: !5392)
!5424 = !DILocation(line: 211, column: 10, scope: !5392)
!5425 = !DILocation(line: 211, column: 2, scope: !5392)
!5426 = !DILocation(line: 213, column: 3, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 211, column: 27)
!5428 = !DILocation(line: 213, column: 10, scope: !5427)
!5429 = !DILocation(line: 213, column: 15, scope: !5427)
!5430 = !DILocation(line: 214, column: 3, scope: !5427)
!5431 = !DILocation(line: 214, column: 10, scope: !5427)
!5432 = !DILocation(line: 214, column: 16, scope: !5427)
!5433 = !DILocation(line: 215, column: 7, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 215, column: 7)
!5435 = !DILocation(line: 215, column: 11, scope: !5434)
!5436 = !DILocation(line: 215, column: 17, scope: !5434)
!5437 = !DILocation(line: 215, column: 7, scope: !5427)
!5438 = !DILocation(line: 216, column: 25, scope: !5434)
!5439 = !DILocation(line: 216, column: 4, scope: !5434)
!5440 = !DILocation(line: 217, column: 3, scope: !5427)
!5441 = !DILocation(line: 219, column: 19, scope: !5427)
!5442 = !DILocation(line: 219, column: 23, scope: !5427)
!5443 = !DILocation(line: 219, column: 28, scope: !5427)
!5444 = !DILocation(line: 219, column: 3, scope: !5427)
!5445 = !DILocation(line: 219, column: 10, scope: !5427)
!5446 = !DILocation(line: 219, column: 17, scope: !5427)
!5447 = !DILocation(line: 220, column: 3, scope: !5427)
!5448 = !DILocation(line: 220, column: 10, scope: !5427)
!5449 = !DILocation(line: 220, column: 16, scope: !5427)
!5450 = !DILocation(line: 221, column: 3, scope: !5427)
!5451 = !DILocation(line: 223, column: 3, scope: !5427)
!5452 = !DILocation(line: 223, column: 10, scope: !5427)
!5453 = !DILocation(line: 223, column: 15, scope: !5427)
!5454 = !DILocation(line: 224, column: 3, scope: !5427)
!5455 = !DILocation(line: 226, column: 3, scope: !5427)
!5456 = !DILocation(line: 226, column: 3, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 226, column: 3)
!5458 = !DILocation(line: 226, column: 3, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 226, column: 3)
!5460 = !DILocation(line: 226, column: 3, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 226, column: 3)
!5462 = !{i64 2154841102, i64 2154841131, i64 2154841177, i64 2154841235, i64 2154841289, i64 2154841343, i64 2154841398, i64 2154841429}
!5463 = !DILocation(line: 227, column: 2, scope: !5427)
!5464 = !DILocation(line: 229, column: 19, scope: !5392)
!5465 = !DILocation(line: 229, column: 2, scope: !5392)
!5466 = !DILocation(line: 230, column: 1, scope: !5392)
!5467 = distinct !DISubprogram(name: "kernfs_evict_inode", scope: !3, file: !3, line: 265, type: !2539, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5468)
!5468 = !{!5469, !5470}
!5469 = !DILocalVariable(name: "inode", arg: 1, scope: !5467, file: !3, line: 265, type: !374)
!5470 = !DILocalVariable(name: "kn", scope: !5467, file: !3, line: 267, type: !1963)
!5471 = !DILocation(line: 265, column: 39, scope: !5467)
!5472 = !DILocation(line: 267, column: 2, scope: !5467)
!5473 = !DILocation(line: 267, column: 22, scope: !5467)
!5474 = !DILocation(line: 267, column: 27, scope: !5467)
!5475 = !DILocation(line: 267, column: 34, scope: !5467)
!5476 = !DILocation(line: 269, column: 30, scope: !5467)
!5477 = !DILocation(line: 269, column: 37, scope: !5467)
!5478 = !DILocation(line: 269, column: 2, scope: !5467)
!5479 = !DILocation(line: 270, column: 14, scope: !5467)
!5480 = !DILocation(line: 270, column: 2, scope: !5467)
!5481 = !DILocation(line: 271, column: 13, scope: !5467)
!5482 = !DILocation(line: 271, column: 2, scope: !5467)
!5483 = !DILocation(line: 272, column: 1, scope: !5467)
!5484 = !DISubprogram(name: "truncate_inode_pages_final", scope: !1345, file: !1345, line: 3342, type: !5485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{null, !1211}
!5487 = !DISubprogram(name: "clear_inode", scope: !183, file: !183, line: 2929, type: !2539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5488 = !DISubprogram(name: "kernfs_put", scope: !282, file: !282, line: 407, type: !5489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{null, !1963}
!5491 = distinct !DISubprogram(name: "kernfs_iop_permission", scope: !3, file: !3, line: 274, type: !424, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5492)
!5492 = !{!5493, !5494, !5495, !5496, !5497, !5498}
!5493 = !DILocalVariable(name: "idmap", arg: 1, scope: !5491, file: !3, line: 274, type: !426)
!5494 = !DILocalVariable(name: "inode", arg: 2, scope: !5491, file: !3, line: 275, type: !374)
!5495 = !DILocalVariable(name: "mask", arg: 3, scope: !5491, file: !3, line: 275, type: !25)
!5496 = !DILocalVariable(name: "kn", scope: !5491, file: !3, line: 277, type: !1963)
!5497 = !DILocalVariable(name: "root", scope: !5491, file: !3, line: 278, type: !1982)
!5498 = !DILocalVariable(name: "ret", scope: !5491, file: !3, line: 279, type: !25)
!5499 = !DILocation(line: 274, column: 45, scope: !5491)
!5500 = !DILocation(line: 275, column: 20, scope: !5491)
!5501 = !DILocation(line: 275, column: 31, scope: !5491)
!5502 = !DILocation(line: 277, column: 2, scope: !5491)
!5503 = !DILocation(line: 277, column: 22, scope: !5491)
!5504 = !DILocation(line: 278, column: 2, scope: !5491)
!5505 = !DILocation(line: 278, column: 22, scope: !5491)
!5506 = !DILocation(line: 279, column: 2, scope: !5491)
!5507 = !DILocation(line: 279, column: 6, scope: !5491)
!5508 = !DILocation(line: 281, column: 6, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 281, column: 6)
!5510 = !DILocation(line: 281, column: 11, scope: !5509)
!5511 = !DILocation(line: 281, column: 6, scope: !5491)
!5512 = !DILocation(line: 282, column: 3, scope: !5509)
!5513 = !DILocation(line: 284, column: 7, scope: !5491)
!5514 = !DILocation(line: 284, column: 14, scope: !5491)
!5515 = !DILocation(line: 284, column: 5, scope: !5491)
!5516 = !DILocation(line: 285, column: 21, scope: !5491)
!5517 = !DILocation(line: 285, column: 9, scope: !5491)
!5518 = !DILocation(line: 285, column: 7, scope: !5491)
!5519 = !DILocation(line: 287, column: 13, scope: !5491)
!5520 = !DILocation(line: 287, column: 19, scope: !5491)
!5521 = !DILocation(line: 287, column: 2, scope: !5491)
!5522 = !DILocation(line: 288, column: 23, scope: !5491)
!5523 = !DILocation(line: 288, column: 27, scope: !5491)
!5524 = !DILocation(line: 288, column: 2, scope: !5491)
!5525 = !DILocation(line: 289, column: 43, scope: !5491)
!5526 = !DILocation(line: 289, column: 50, scope: !5491)
!5527 = !DILocation(line: 289, column: 8, scope: !5491)
!5528 = !DILocation(line: 289, column: 6, scope: !5491)
!5529 = !DILocation(line: 290, column: 11, scope: !5491)
!5530 = !DILocation(line: 290, column: 17, scope: !5491)
!5531 = !DILocation(line: 290, column: 2, scope: !5491)
!5532 = !DILocation(line: 292, column: 9, scope: !5491)
!5533 = !DILocation(line: 292, column: 2, scope: !5491)
!5534 = !DILocation(line: 293, column: 1, scope: !5491)
!5535 = !DISubprogram(name: "generic_permission", scope: !183, file: !183, line: 2676, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5536 = distinct !DISubprogram(name: "kernfs_xattr_get", scope: !3, file: !3, line: 295, type: !5537, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5539)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{!25, !1963, !19, !23, !38}
!5539 = !{!5540, !5541, !5542, !5543, !5544}
!5540 = !DILocalVariable(name: "kn", arg: 1, scope: !5536, file: !3, line: 295, type: !1963)
!5541 = !DILocalVariable(name: "name", arg: 2, scope: !5536, file: !3, line: 295, type: !19)
!5542 = !DILocalVariable(name: "value", arg: 3, scope: !5536, file: !3, line: 296, type: !23)
!5543 = !DILocalVariable(name: "size", arg: 4, scope: !5536, file: !3, line: 296, type: !38)
!5544 = !DILocalVariable(name: "attrs", scope: !5536, file: !3, line: 298, type: !2112)
!5545 = !DILocation(line: 295, column: 42, scope: !5536)
!5546 = !DILocation(line: 295, column: 58, scope: !5536)
!5547 = !DILocation(line: 296, column: 14, scope: !5536)
!5548 = !DILocation(line: 296, column: 28, scope: !5536)
!5549 = !DILocation(line: 298, column: 2, scope: !5536)
!5550 = !DILocation(line: 298, column: 24, scope: !5536)
!5551 = !DILocation(line: 298, column: 54, scope: !5536)
!5552 = !DILocation(line: 298, column: 32, scope: !5536)
!5553 = !DILocation(line: 299, column: 7, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 299, column: 6)
!5555 = !DILocation(line: 299, column: 6, scope: !5536)
!5556 = !DILocation(line: 300, column: 3, scope: !5554)
!5557 = !DILocation(line: 302, column: 27, scope: !5536)
!5558 = !DILocation(line: 302, column: 34, scope: !5536)
!5559 = !DILocation(line: 302, column: 42, scope: !5536)
!5560 = !DILocation(line: 302, column: 48, scope: !5536)
!5561 = !DILocation(line: 302, column: 55, scope: !5536)
!5562 = !DILocation(line: 302, column: 9, scope: !5536)
!5563 = !DILocation(line: 302, column: 2, scope: !5536)
!5564 = !DILocation(line: 303, column: 1, scope: !5536)
!5565 = distinct !DISubprogram(name: "kernfs_iattrs_noalloc", scope: !3, file: !3, line: 63, type: !5081, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5566)
!5566 = !{!5567}
!5567 = !DILocalVariable(name: "kn", arg: 1, scope: !5565, file: !3, line: 63, type: !1963)
!5568 = !DILocation(line: 63, column: 72, scope: !5565)
!5569 = !DILocation(line: 65, column: 25, scope: !5565)
!5570 = !DILocation(line: 65, column: 9, scope: !5565)
!5571 = !DILocation(line: 65, column: 2, scope: !5565)
!5572 = !DISubprogram(name: "simple_xattr_get", scope: !318, file: !318, line: 121, type: !5573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!25, !5264, !19, !23, !38}
!5575 = distinct !DISubprogram(name: "kernfs_xattr_set", scope: !3, file: !3, line: 305, type: !5576, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5578)
!5576 = !DISubroutineType(types: !5577)
!5577 = !{!25, !1963, !19, !1480, !38, !25}
!5578 = !{!5579, !5580, !5581, !5582, !5583, !5584, !5592}
!5579 = !DILocalVariable(name: "kn", arg: 1, scope: !5575, file: !3, line: 305, type: !1963)
!5580 = !DILocalVariable(name: "name", arg: 2, scope: !5575, file: !3, line: 305, type: !19)
!5581 = !DILocalVariable(name: "value", arg: 3, scope: !5575, file: !3, line: 306, type: !1480)
!5582 = !DILocalVariable(name: "size", arg: 4, scope: !5575, file: !3, line: 306, type: !38)
!5583 = !DILocalVariable(name: "flags", arg: 5, scope: !5575, file: !3, line: 306, type: !25)
!5584 = !DILocalVariable(name: "old_xattr", scope: !5575, file: !3, line: 308, type: !5585)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_xattr", file: !318, line: 109, size: 320, elements: !5587)
!5587 = !{!5588, !5589, !5590, !5591}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !5586, file: !318, line: 110, baseType: !667, size: 192, align: 64)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5586, file: !318, line: 111, baseType: !437, size: 64, offset: 192)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5586, file: !318, line: 112, baseType: !38, size: 64, offset: 256)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5586, file: !318, line: 113, baseType: !4160, offset: 320)
!5592 = !DILocalVariable(name: "attrs", scope: !5575, file: !3, line: 309, type: !2112)
!5593 = !DILocation(line: 305, column: 42, scope: !5575)
!5594 = !DILocation(line: 305, column: 58, scope: !5575)
!5595 = !DILocation(line: 306, column: 20, scope: !5575)
!5596 = !DILocation(line: 306, column: 34, scope: !5575)
!5597 = !DILocation(line: 306, column: 44, scope: !5575)
!5598 = !DILocation(line: 308, column: 2, scope: !5575)
!5599 = !DILocation(line: 308, column: 23, scope: !5575)
!5600 = !DILocation(line: 309, column: 2, scope: !5575)
!5601 = !DILocation(line: 309, column: 24, scope: !5575)
!5602 = !DILocation(line: 309, column: 46, scope: !5575)
!5603 = !DILocation(line: 309, column: 32, scope: !5575)
!5604 = !DILocation(line: 310, column: 7, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 310, column: 6)
!5606 = !DILocation(line: 310, column: 6, scope: !5575)
!5607 = !DILocation(line: 311, column: 3, scope: !5605)
!5608 = !DILocation(line: 313, column: 32, scope: !5575)
!5609 = !DILocation(line: 313, column: 39, scope: !5575)
!5610 = !DILocation(line: 313, column: 47, scope: !5575)
!5611 = !DILocation(line: 313, column: 53, scope: !5575)
!5612 = !DILocation(line: 313, column: 60, scope: !5575)
!5613 = !DILocation(line: 313, column: 66, scope: !5575)
!5614 = !DILocation(line: 313, column: 14, scope: !5575)
!5615 = !DILocation(line: 313, column: 12, scope: !5575)
!5616 = !DILocation(line: 314, column: 13, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 314, column: 6)
!5618 = !DILocation(line: 314, column: 6, scope: !5617)
!5619 = !DILocation(line: 314, column: 6, scope: !5575)
!5620 = !DILocation(line: 315, column: 18, scope: !5617)
!5621 = !DILocation(line: 315, column: 10, scope: !5617)
!5622 = !DILocation(line: 315, column: 3, scope: !5617)
!5623 = !DILocation(line: 317, column: 20, scope: !5575)
!5624 = !DILocation(line: 317, column: 2, scope: !5575)
!5625 = !DILocation(line: 318, column: 2, scope: !5575)
!5626 = !DILocation(line: 319, column: 1, scope: !5575)
!5627 = !DISubprogram(name: "simple_xattr_set", scope: !318, file: !318, line: 123, type: !5628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5628 = !DISubroutineType(types: !5629)
!5629 = !{!5585, !5264, !19, !1480, !38, !25}
!5630 = distinct !DISubprogram(name: "IS_ERR", scope: !5631, file: !5631, line: 59, type: !5632, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5634)
!5631 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!327, !1480}
!5634 = !{!5635}
!5635 = !DILocalVariable(name: "ptr", arg: 1, scope: !5630, file: !5631, line: 59, type: !1480)
!5636 = !DILocation(line: 59, column: 60, scope: !5630)
!5637 = !DILocation(line: 61, column: 9, scope: !5630)
!5638 = !DILocation(line: 61, column: 2, scope: !5630)
!5639 = distinct !DISubprogram(name: "PTR_ERR", scope: !5631, file: !5631, line: 49, type: !5640, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5642)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!310, !1480}
!5642 = !{!5643}
!5643 = !DILocalVariable(name: "ptr", arg: 1, scope: !5639, file: !5631, line: 49, type: !1480)
!5644 = !DILocation(line: 49, column: 61, scope: !5639)
!5645 = !DILocation(line: 51, column: 16, scope: !5639)
!5646 = !DILocation(line: 51, column: 9, scope: !5639)
!5647 = !DILocation(line: 51, column: 2, scope: !5639)
!5648 = !DISubprogram(name: "simple_xattr_free", scope: !318, file: !318, line: 120, type: !5649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{null, !5585}
!5651 = !DILocation(line: 27, column: 66, scope: !4966)
!5652 = !DILocation(line: 27, column: 74, scope: !4966)
!5653 = !DILocation(line: 30, column: 2, scope: !4966)
!5654 = !DILocation(line: 30, column: 24, scope: !4966)
!5655 = !DILocation(line: 32, column: 2, scope: !4966)
!5656 = !DILocation(line: 34, column: 6, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 34, column: 6)
!5658 = !DILocation(line: 34, column: 10, scope: !5657)
!5659 = !DILocation(line: 34, column: 16, scope: !5657)
!5660 = !DILocation(line: 34, column: 20, scope: !5657)
!5661 = !DILocation(line: 34, column: 6, scope: !4966)
!5662 = !DILocation(line: 35, column: 3, scope: !5657)
!5663 = !DILocation(line: 37, column: 32, scope: !4966)
!5664 = !DILocation(line: 37, column: 14, scope: !4966)
!5665 = !DILocation(line: 37, column: 2, scope: !4966)
!5666 = !DILocation(line: 37, column: 6, scope: !4966)
!5667 = !DILocation(line: 37, column: 12, scope: !4966)
!5668 = !DILocation(line: 38, column: 7, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 38, column: 6)
!5670 = !DILocation(line: 38, column: 11, scope: !5669)
!5671 = !DILocation(line: 38, column: 6, scope: !4966)
!5672 = !DILocation(line: 39, column: 3, scope: !5669)
!5673 = !DILocation(line: 42, column: 2, scope: !4966)
!5674 = !DILocation(line: 42, column: 6, scope: !4966)
!5675 = !DILocation(line: 42, column: 13, scope: !4966)
!5676 = !DILocation(line: 42, column: 22, scope: !4966)
!5677 = !DILocation(line: 43, column: 2, scope: !4966)
!5678 = !DILocation(line: 43, column: 6, scope: !4966)
!5679 = !DILocation(line: 43, column: 13, scope: !4966)
!5680 = !DILocation(line: 43, column: 22, scope: !4966)
!5681 = !DILocation(line: 45, column: 23, scope: !4966)
!5682 = !DILocation(line: 45, column: 27, scope: !4966)
!5683 = !DILocation(line: 45, column: 34, scope: !4966)
!5684 = !DILocation(line: 45, column: 2, scope: !4966)
!5685 = !DILocation(line: 46, column: 2, scope: !4966)
!5686 = !DILocation(line: 46, column: 6, scope: !4966)
!5687 = !DILocation(line: 46, column: 13, scope: !4966)
!5688 = !DILocation(line: 46, column: 24, scope: !4966)
!5689 = !DILocation(line: 46, column: 28, scope: !4966)
!5690 = !DILocation(line: 46, column: 35, scope: !4966)
!5691 = !DILocation(line: 47, column: 2, scope: !4966)
!5692 = !DILocation(line: 47, column: 6, scope: !4966)
!5693 = !DILocation(line: 47, column: 13, scope: !4966)
!5694 = !DILocation(line: 47, column: 24, scope: !4966)
!5695 = !DILocation(line: 47, column: 28, scope: !4966)
!5696 = !DILocation(line: 47, column: 35, scope: !4966)
!5697 = !DILocation(line: 49, column: 22, scope: !4966)
!5698 = !DILocation(line: 49, column: 26, scope: !4966)
!5699 = !DILocation(line: 49, column: 33, scope: !4966)
!5700 = !DILocation(line: 49, column: 2, scope: !4966)
!5701 = !DILocation(line: 50, column: 14, scope: !4966)
!5702 = !DILocation(line: 50, column: 18, scope: !4966)
!5703 = !DILocation(line: 50, column: 25, scope: !4966)
!5704 = !DILocation(line: 50, column: 2, scope: !4966)
!5705 = !DILocation(line: 51, column: 14, scope: !4966)
!5706 = !DILocation(line: 51, column: 18, scope: !4966)
!5707 = !DILocation(line: 51, column: 25, scope: !4966)
!5708 = !DILocation(line: 51, column: 2, scope: !4966)
!5709 = !DILocation(line: 52, column: 1, scope: !4966)
!5710 = !DILocation(line: 53, column: 8, scope: !4966)
!5711 = !DILocation(line: 53, column: 12, scope: !4966)
!5712 = !DILocation(line: 53, column: 6, scope: !4966)
!5713 = !DILocation(line: 54, column: 2, scope: !4966)
!5714 = !DILocation(line: 55, column: 9, scope: !4966)
!5715 = !DILocation(line: 56, column: 1, scope: !4966)
!5716 = !DILocation(line: 55, column: 2, scope: !4966)
!5717 = !DISubprogram(name: "mutex_lock", scope: !544, file: !544, line: 227, type: !5718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5718 = !DISubroutineType(types: !5719)
!5719 = !{null, !5720}
!5720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!5721 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !5722, file: !5722, line: 709, type: !5723, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5728)
!5722 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5723 = !DISubroutineType(types: !5724)
!5724 = !{!23, !5725, !307}
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5726, size: 64)
!5726 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5727, line: 11, flags: DIFlagFwdDecl)
!5727 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5728 = !{!5729, !5730}
!5729 = !DILocalVariable(name: "k", arg: 1, scope: !5721, file: !5722, line: 709, type: !5725)
!5730 = !DILocalVariable(name: "flags", arg: 2, scope: !5721, file: !5722, line: 709, type: !307)
!5731 = !DILocation(line: 709, column: 58, scope: !5721)
!5732 = !DILocation(line: 709, column: 67, scope: !5721)
!5733 = !DILocation(line: 711, column: 26, scope: !5721)
!5734 = !DILocation(line: 711, column: 29, scope: !5721)
!5735 = !DILocation(line: 711, column: 35, scope: !5721)
!5736 = !DILocation(line: 711, column: 9, scope: !5721)
!5737 = !DILocation(line: 711, column: 2, scope: !5721)
!5738 = !DISubprogram(name: "ktime_get_real_ts64", scope: !5739, file: !5739, line: 43, type: !5740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5739 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!5740 = !DISubroutineType(types: !5741)
!5741 = !{null, !5742}
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!5743 = !DISubprogram(name: "simple_xattrs_init", scope: !318, file: !318, line: 116, type: !5744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{null, !5264}
!5746 = distinct !DISubprogram(name: "atomic_set", scope: !5747, file: !5747, line: 65, type: !5748, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5751)
!5747 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5748 = !DISubroutineType(types: !5749)
!5749 = !{null, !5750, !25}
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!5751 = !{!5752, !5753}
!5752 = !DILocalVariable(name: "v", arg: 1, scope: !5746, file: !5747, line: 65, type: !5750)
!5753 = !DILocalVariable(name: "i", arg: 2, scope: !5746, file: !5747, line: 65, type: !25)
!5754 = !DILocation(line: 65, column: 22, scope: !5746)
!5755 = !DILocation(line: 65, column: 29, scope: !5746)
!5756 = !DILocation(line: 67, column: 26, scope: !5746)
!5757 = !DILocation(line: 67, column: 2, scope: !5746)
!5758 = !DILocation(line: 68, column: 17, scope: !5746)
!5759 = !DILocation(line: 68, column: 20, scope: !5746)
!5760 = !DILocation(line: 68, column: 2, scope: !5746)
!5761 = !DILocation(line: 69, column: 1, scope: !5746)
!5762 = !DISubprogram(name: "mutex_unlock", scope: !544, file: !544, line: 246, type: !5718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5763 = !DISubprogram(name: "kmem_cache_alloc", scope: !5722, file: !5722, line: 500, type: !5723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5764 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5765, file: !5765, line: 80, type: !5766, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5771)
!5765 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5766 = !DISubroutineType(types: !5767)
!5767 = !{null, !5768, !38}
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5770)
!5770 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5771 = !{!5772, !5773}
!5772 = !DILocalVariable(name: "v", arg: 1, scope: !5764, file: !5765, line: 80, type: !5768)
!5773 = !DILocalVariable(name: "size", arg: 2, scope: !5764, file: !5765, line: 80, type: !38)
!5774 = !DILocation(line: 80, column: 74, scope: !5764)
!5775 = !DILocation(line: 80, column: 84, scope: !5764)
!5776 = !DILocation(line: 82, column: 20, scope: !5764)
!5777 = !DILocation(line: 82, column: 23, scope: !5764)
!5778 = !DILocation(line: 82, column: 2, scope: !5764)
!5779 = !DILocation(line: 83, column: 2, scope: !5764)
!5780 = !DILocation(line: 84, column: 1, scope: !5764)
!5781 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5782, file: !5782, line: 488, type: !5748, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5783)
!5782 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5783 = !{!5784, !5785}
!5784 = !DILocalVariable(name: "v", arg: 1, scope: !5781, file: !5782, line: 488, type: !5750)
!5785 = !DILocalVariable(name: "i", arg: 2, scope: !5781, file: !5782, line: 488, type: !25)
!5786 = !DILocation(line: 488, column: 26, scope: !5781)
!5787 = !DILocation(line: 488, column: 33, scope: !5781)
!5788 = !DILocation(line: 490, column: 18, scope: !5781)
!5789 = !DILocation(line: 490, column: 21, scope: !5781)
!5790 = !DILocation(line: 490, column: 2, scope: !5781)
!5791 = !DILocation(line: 491, column: 1, scope: !5781)
!5792 = distinct !DISubprogram(name: "kasan_check_write", scope: !5793, file: !5793, line: 44, type: !5794, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5796)
!5793 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!327, !5768, !7}
!5796 = !{!5797, !5798}
!5797 = !DILocalVariable(name: "p", arg: 1, scope: !5792, file: !5793, line: 44, type: !5768)
!5798 = !DILocalVariable(name: "size", arg: 2, scope: !5792, file: !5793, line: 44, type: !7)
!5799 = !DILocation(line: 44, column: 59, scope: !5792)
!5800 = !DILocation(line: 44, column: 75, scope: !5792)
!5801 = !DILocation(line: 46, column: 2, scope: !5792)
!5802 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5803, file: !5803, line: 229, type: !5804, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5806)
!5803 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5804 = !DISubroutineType(types: !5805)
!5805 = !{null, !5768, !38, !25}
!5806 = !{!5807, !5808, !5809}
!5807 = !DILocalVariable(name: "ptr", arg: 1, scope: !5802, file: !5803, line: 229, type: !5768)
!5808 = !DILocalVariable(name: "size", arg: 2, scope: !5802, file: !5803, line: 229, type: !38)
!5809 = !DILocalVariable(name: "type", arg: 3, scope: !5802, file: !5803, line: 230, type: !25)
!5810 = !DILocation(line: 229, column: 60, scope: !5802)
!5811 = !DILocation(line: 229, column: 72, scope: !5802)
!5812 = !DILocation(line: 230, column: 15, scope: !5802)
!5813 = !DILocation(line: 230, column: 23, scope: !5802)
!5814 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5815, file: !5815, line: 26, type: !5748, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5816)
!5815 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5816 = !{!5817, !5818}
!5817 = !DILocalVariable(name: "v", arg: 1, scope: !5814, file: !5815, line: 26, type: !5750)
!5818 = !DILocalVariable(name: "i", arg: 2, scope: !5814, file: !5815, line: 26, type: !25)
!5819 = !DILocation(line: 26, column: 55, scope: !5814)
!5820 = !DILocation(line: 26, column: 62, scope: !5814)
!5821 = !DILocation(line: 28, column: 2, scope: !5814)
!5822 = !DILocation(line: 28, column: 2, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5814, file: !5815, line: 28, column: 2)
!5824 = !DILocation(line: 29, column: 1, scope: !5814)
!5825 = distinct !DISubprogram(name: "d_really_is_negative", scope: !331, file: !331, line: 464, type: !5826, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5828)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!327, !4556}
!5828 = !{!5829}
!5829 = !DILocalVariable(name: "dentry", arg: 1, scope: !5825, file: !331, line: 464, type: !4556)
!5830 = !DILocation(line: 464, column: 62, scope: !5825)
!5831 = !DILocation(line: 466, column: 9, scope: !5825)
!5832 = !DILocation(line: 466, column: 17, scope: !5825)
!5833 = !DILocation(line: 466, column: 25, scope: !5825)
!5834 = !DILocation(line: 466, column: 2, scope: !5825)
!5835 = distinct !DISubprogram(name: "set_inode_attr", scope: !3, file: !3, line: 157, type: !5836, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5838)
!5836 = !DISubroutineType(types: !5837)
!5837 = !{null, !374, !2112}
!5838 = !{!5839, !5840}
!5839 = !DILocalVariable(name: "inode", arg: 1, scope: !5835, file: !3, line: 157, type: !374)
!5840 = !DILocalVariable(name: "attrs", arg: 2, scope: !5835, file: !3, line: 158, type: !2112)
!5841 = !DILocation(line: 157, column: 49, scope: !5835)
!5842 = !DILocation(line: 158, column: 29, scope: !5835)
!5843 = !DILocation(line: 160, column: 2, scope: !5835)
!5844 = !DILocation(line: 160, column: 9, scope: !5835)
!5845 = !DILocation(line: 160, column: 17, scope: !5835)
!5846 = !DILocation(line: 160, column: 24, scope: !5835)
!5847 = !DILocation(line: 161, column: 2, scope: !5835)
!5848 = !DILocation(line: 161, column: 9, scope: !5835)
!5849 = !DILocation(line: 161, column: 17, scope: !5835)
!5850 = !DILocation(line: 161, column: 24, scope: !5835)
!5851 = !DILocation(line: 162, column: 2, scope: !5835)
!5852 = !DILocation(line: 162, column: 9, scope: !5835)
!5853 = !DILocation(line: 162, column: 19, scope: !5835)
!5854 = !DILocation(line: 162, column: 26, scope: !5835)
!5855 = !DILocation(line: 163, column: 2, scope: !5835)
!5856 = !DILocation(line: 163, column: 9, scope: !5835)
!5857 = !DILocation(line: 163, column: 19, scope: !5835)
!5858 = !DILocation(line: 163, column: 26, scope: !5835)
!5859 = !DILocation(line: 164, column: 24, scope: !5835)
!5860 = !DILocation(line: 164, column: 31, scope: !5835)
!5861 = !DILocation(line: 164, column: 38, scope: !5835)
!5862 = !DILocation(line: 164, column: 2, scope: !5835)
!5863 = !DILocation(line: 165, column: 1, scope: !5835)
!5864 = distinct !DISubprogram(name: "kernfs_type", scope: !282, file: !282, line: 337, type: !5865, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5867)
!5865 = !DISubroutineType(types: !5866)
!5866 = !{!281, !1963}
!5867 = !{!5868}
!5868 = !DILocalVariable(name: "kn", arg: 1, scope: !5864, file: !282, line: 337, type: !1963)
!5869 = !DILocation(line: 337, column: 69, scope: !5864)
!5870 = !DILocation(line: 339, column: 9, scope: !5864)
!5871 = !DILocation(line: 339, column: 13, scope: !5864)
!5872 = !DILocation(line: 339, column: 19, scope: !5864)
!5873 = !DILocation(line: 339, column: 2, scope: !5864)
!5874 = !DISubprogram(name: "set_nlink", scope: !183, file: !183, line: 2330, type: !5875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{null, !374, !7}
!5877 = distinct !DISubprogram(name: "inode_set_ctime_to_ts", scope: !183, file: !183, line: 1592, type: !5878, scopeLine: 1594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5880)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!499, !374, !499}
!5880 = !{!5881, !5882}
!5881 = !DILocalVariable(name: "inode", arg: 1, scope: !5877, file: !183, line: 1592, type: !374)
!5882 = !DILocalVariable(name: "ts", arg: 2, scope: !5877, file: !183, line: 1593, type: !499)
!5883 = !DILocation(line: 1592, column: 69, scope: !5877)
!5884 = !DILocation(line: 1593, column: 31, scope: !5877)
!5885 = !DILocation(line: 1595, column: 2, scope: !5877)
!5886 = !DILocation(line: 1595, column: 9, scope: !5877)
!5887 = !DILocation(line: 1595, column: 21, scope: !5877)
!5888 = !DILocation(line: 1596, column: 9, scope: !5877)
!5889 = !DILocation(line: 1596, column: 2, scope: !5877)
!5890 = distinct !DISubprogram(name: "kernfs_id_ino", scope: !282, file: !282, line: 342, type: !5891, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5893)
!5891 = !DISubroutineType(types: !5892)
!5892 = !{!5384, !367}
!5893 = !{!5894}
!5894 = !DILocalVariable(name: "id", arg: 1, scope: !5890, file: !282, line: 342, type: !367)
!5895 = !DILocation(line: 342, column: 39, scope: !5890)
!5896 = !DILocation(line: 346, column: 10, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5890, file: !282, line: 345, column: 6)
!5898 = !DILocation(line: 346, column: 3, scope: !5897)
!5899 = !DISubprogram(name: "kernfs_get", scope: !282, file: !282, line: 406, type: !5489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5900 = distinct !DISubprogram(name: "kernfs_gen", scope: !282, file: !282, line: 365, type: !5382, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5901)
!5901 = !{!5902}
!5902 = !DILocalVariable(name: "kn", arg: 1, scope: !5900, file: !282, line: 365, type: !1963)
!5903 = !DILocation(line: 365, column: 52, scope: !5900)
!5904 = !DILocation(line: 367, column: 23, scope: !5900)
!5905 = !DILocation(line: 367, column: 27, scope: !5900)
!5906 = !DILocation(line: 367, column: 9, scope: !5900)
!5907 = !DILocation(line: 367, column: 2, scope: !5900)
!5908 = distinct !DISubprogram(name: "set_default_inode_attr", scope: !3, file: !3, line: 151, type: !5909, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5911)
!5909 = !DISubroutineType(types: !5910)
!5910 = !{null, !374, !27}
!5911 = !{!5912, !5913}
!5912 = !DILocalVariable(name: "inode", arg: 1, scope: !5908, file: !3, line: 151, type: !374)
!5913 = !DILocalVariable(name: "mode", arg: 2, scope: !5908, file: !3, line: 151, type: !27)
!5914 = !DILocation(line: 151, column: 57, scope: !5908)
!5915 = !DILocation(line: 151, column: 72, scope: !5908)
!5916 = !DILocation(line: 153, column: 18, scope: !5908)
!5917 = !DILocation(line: 153, column: 2, scope: !5908)
!5918 = !DILocation(line: 153, column: 9, scope: !5908)
!5919 = !DILocation(line: 153, column: 16, scope: !5908)
!5920 = !DILocation(line: 154, column: 2, scope: !5908)
!5921 = !DILocation(line: 154, column: 9, scope: !5908)
!5922 = !DILocation(line: 154, column: 19, scope: !5908)
!5923 = !DILocation(line: 154, column: 26, scope: !5908)
!5924 = !DILocation(line: 154, column: 36, scope: !5908)
!5925 = !DILocation(line: 154, column: 60, scope: !5908)
!5926 = !DILocation(line: 154, column: 34, scope: !5908)
!5927 = !DILocation(line: 155, column: 1, scope: !5908)
!5928 = !DISubprogram(name: "make_empty_dir_inode", scope: !183, file: !183, line: 3178, type: !2539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5929 = !DISubprogram(name: "unlock_new_inode", scope: !183, file: !183, line: 2906, type: !2539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5930 = distinct !DISubprogram(name: "kernfs_id_gen", scope: !282, file: !282, line: 351, type: !5931, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5933)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{!363, !367}
!5933 = !{!5934}
!5934 = !DILocalVariable(name: "id", arg: 1, scope: !5930, file: !282, line: 351, type: !367)
!5935 = !DILocation(line: 351, column: 37, scope: !5930)
!5936 = !DILocation(line: 355, column: 3, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5930, file: !282, line: 354, column: 6)
!5938 = !DISubprogram(name: "inode_set_ctime_current", scope: !183, file: !183, line: 1515, type: !5939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5939 = !DISubroutineType(types: !5940)
!5940 = !{!499, !374}
!5941 = distinct !DISubprogram(name: "kernfs_vfs_xattr_get", scope: !3, file: !3, line: 321, type: !4958, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5942)
!5942 = !{!5943, !5944, !5945, !5946, !5947, !5948, !5949, !5950}
!5943 = !DILocalVariable(name: "handler", arg: 1, scope: !5941, file: !3, line: 321, type: !315)
!5944 = !DILocalVariable(name: "unused", arg: 2, scope: !5941, file: !3, line: 322, type: !329)
!5945 = !DILocalVariable(name: "inode", arg: 3, scope: !5941, file: !3, line: 322, type: !374)
!5946 = !DILocalVariable(name: "suffix", arg: 4, scope: !5941, file: !3, line: 323, type: !19)
!5947 = !DILocalVariable(name: "value", arg: 5, scope: !5941, file: !3, line: 323, type: !23)
!5948 = !DILocalVariable(name: "size", arg: 6, scope: !5941, file: !3, line: 323, type: !38)
!5949 = !DILocalVariable(name: "name", scope: !5941, file: !3, line: 325, type: !19)
!5950 = !DILocalVariable(name: "kn", scope: !5941, file: !3, line: 326, type: !1963)
!5951 = !DILocation(line: 321, column: 61, scope: !5941)
!5952 = !DILocation(line: 322, column: 20, scope: !5941)
!5953 = !DILocation(line: 322, column: 42, scope: !5941)
!5954 = !DILocation(line: 323, column: 17, scope: !5941)
!5955 = !DILocation(line: 323, column: 31, scope: !5941)
!5956 = !DILocation(line: 323, column: 45, scope: !5941)
!5957 = !DILocation(line: 325, column: 2, scope: !5941)
!5958 = !DILocation(line: 325, column: 14, scope: !5941)
!5959 = !DILocation(line: 325, column: 37, scope: !5941)
!5960 = !DILocation(line: 325, column: 46, scope: !5941)
!5961 = !DILocation(line: 325, column: 21, scope: !5941)
!5962 = !DILocation(line: 326, column: 2, scope: !5941)
!5963 = !DILocation(line: 326, column: 22, scope: !5941)
!5964 = !DILocation(line: 326, column: 27, scope: !5941)
!5965 = !DILocation(line: 326, column: 34, scope: !5941)
!5966 = !DILocation(line: 328, column: 26, scope: !5941)
!5967 = !DILocation(line: 328, column: 30, scope: !5941)
!5968 = !DILocation(line: 328, column: 36, scope: !5941)
!5969 = !DILocation(line: 328, column: 43, scope: !5941)
!5970 = !DILocation(line: 328, column: 9, scope: !5941)
!5971 = !DILocation(line: 329, column: 1, scope: !5941)
!5972 = !DILocation(line: 328, column: 2, scope: !5941)
!5973 = distinct !DISubprogram(name: "kernfs_vfs_xattr_set", scope: !3, file: !3, line: 331, type: !4962, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5974)
!5974 = !{!5975, !5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983, !5984}
!5975 = !DILocalVariable(name: "handler", arg: 1, scope: !5973, file: !3, line: 331, type: !315)
!5976 = !DILocalVariable(name: "idmap", arg: 2, scope: !5973, file: !3, line: 332, type: !426)
!5977 = !DILocalVariable(name: "unused", arg: 3, scope: !5973, file: !3, line: 333, type: !329)
!5978 = !DILocalVariable(name: "inode", arg: 4, scope: !5973, file: !3, line: 333, type: !374)
!5979 = !DILocalVariable(name: "suffix", arg: 5, scope: !5973, file: !3, line: 334, type: !19)
!5980 = !DILocalVariable(name: "value", arg: 6, scope: !5973, file: !3, line: 334, type: !1480)
!5981 = !DILocalVariable(name: "size", arg: 7, scope: !5973, file: !3, line: 335, type: !38)
!5982 = !DILocalVariable(name: "flags", arg: 8, scope: !5973, file: !3, line: 335, type: !25)
!5983 = !DILocalVariable(name: "name", scope: !5973, file: !3, line: 337, type: !19)
!5984 = !DILocalVariable(name: "kn", scope: !5973, file: !3, line: 338, type: !1963)
!5985 = !DILocation(line: 331, column: 61, scope: !5973)
!5986 = !DILocation(line: 332, column: 23, scope: !5973)
!5987 = !DILocation(line: 333, column: 20, scope: !5973)
!5988 = !DILocation(line: 333, column: 42, scope: !5973)
!5989 = !DILocation(line: 334, column: 17, scope: !5973)
!5990 = !DILocation(line: 334, column: 37, scope: !5973)
!5991 = !DILocation(line: 335, column: 12, scope: !5973)
!5992 = !DILocation(line: 335, column: 22, scope: !5973)
!5993 = !DILocation(line: 337, column: 2, scope: !5973)
!5994 = !DILocation(line: 337, column: 14, scope: !5973)
!5995 = !DILocation(line: 337, column: 37, scope: !5973)
!5996 = !DILocation(line: 337, column: 46, scope: !5973)
!5997 = !DILocation(line: 337, column: 21, scope: !5973)
!5998 = !DILocation(line: 338, column: 2, scope: !5973)
!5999 = !DILocation(line: 338, column: 22, scope: !5973)
!6000 = !DILocation(line: 338, column: 27, scope: !5973)
!6001 = !DILocation(line: 338, column: 34, scope: !5973)
!6002 = !DILocation(line: 340, column: 26, scope: !5973)
!6003 = !DILocation(line: 340, column: 30, scope: !5973)
!6004 = !DILocation(line: 340, column: 36, scope: !5973)
!6005 = !DILocation(line: 340, column: 43, scope: !5973)
!6006 = !DILocation(line: 340, column: 49, scope: !5973)
!6007 = !DILocation(line: 340, column: 9, scope: !5973)
!6008 = !DILocation(line: 341, column: 1, scope: !5973)
!6009 = !DILocation(line: 340, column: 2, scope: !5973)
!6010 = !DISubprogram(name: "xattr_full_name", scope: !318, file: !318, line: 66, type: !6011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!19, !315, !19}
!6013 = distinct !DISubprogram(name: "kernfs_vfs_user_xattr_set", scope: !3, file: !3, line: 404, type: !4962, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6014)
!6014 = !{!6015, !6016, !6017, !6018, !6019, !6020, !6021, !6022, !6023, !6024, !6025}
!6015 = !DILocalVariable(name: "handler", arg: 1, scope: !6013, file: !3, line: 404, type: !315)
!6016 = !DILocalVariable(name: "idmap", arg: 2, scope: !6013, file: !3, line: 405, type: !426)
!6017 = !DILocalVariable(name: "unused", arg: 3, scope: !6013, file: !3, line: 406, type: !329)
!6018 = !DILocalVariable(name: "inode", arg: 4, scope: !6013, file: !3, line: 406, type: !374)
!6019 = !DILocalVariable(name: "suffix", arg: 5, scope: !6013, file: !3, line: 407, type: !19)
!6020 = !DILocalVariable(name: "value", arg: 6, scope: !6013, file: !3, line: 407, type: !1480)
!6021 = !DILocalVariable(name: "size", arg: 7, scope: !6013, file: !3, line: 408, type: !38)
!6022 = !DILocalVariable(name: "flags", arg: 8, scope: !6013, file: !3, line: 408, type: !25)
!6023 = !DILocalVariable(name: "full_name", scope: !6013, file: !3, line: 410, type: !19)
!6024 = !DILocalVariable(name: "kn", scope: !6013, file: !3, line: 411, type: !1963)
!6025 = !DILocalVariable(name: "attrs", scope: !6013, file: !3, line: 412, type: !2112)
!6026 = !DILocation(line: 404, column: 66, scope: !6013)
!6027 = !DILocation(line: 405, column: 28, scope: !6013)
!6028 = !DILocation(line: 406, column: 25, scope: !6013)
!6029 = !DILocation(line: 406, column: 47, scope: !6013)
!6030 = !DILocation(line: 407, column: 22, scope: !6013)
!6031 = !DILocation(line: 407, column: 42, scope: !6013)
!6032 = !DILocation(line: 408, column: 17, scope: !6013)
!6033 = !DILocation(line: 408, column: 27, scope: !6013)
!6034 = !DILocation(line: 410, column: 2, scope: !6013)
!6035 = !DILocation(line: 410, column: 14, scope: !6013)
!6036 = !DILocation(line: 410, column: 42, scope: !6013)
!6037 = !DILocation(line: 410, column: 51, scope: !6013)
!6038 = !DILocation(line: 410, column: 26, scope: !6013)
!6039 = !DILocation(line: 411, column: 2, scope: !6013)
!6040 = !DILocation(line: 411, column: 22, scope: !6013)
!6041 = !DILocation(line: 411, column: 27, scope: !6013)
!6042 = !DILocation(line: 411, column: 34, scope: !6013)
!6043 = !DILocation(line: 412, column: 2, scope: !6013)
!6044 = !DILocation(line: 412, column: 24, scope: !6013)
!6045 = !DILocation(line: 414, column: 20, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 414, column: 6)
!6047 = !DILocation(line: 414, column: 8, scope: !6046)
!6048 = !DILocation(line: 414, column: 25, scope: !6046)
!6049 = !DILocation(line: 414, column: 31, scope: !6046)
!6050 = !DILocation(line: 414, column: 6, scope: !6013)
!6051 = !DILocation(line: 415, column: 3, scope: !6046)
!6052 = !DILocation(line: 417, column: 24, scope: !6013)
!6053 = !DILocation(line: 417, column: 10, scope: !6013)
!6054 = !DILocation(line: 417, column: 8, scope: !6013)
!6055 = !DILocation(line: 418, column: 7, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 418, column: 6)
!6057 = !DILocation(line: 418, column: 6, scope: !6013)
!6058 = !DILocation(line: 419, column: 3, scope: !6056)
!6059 = !DILocation(line: 421, column: 6, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 421, column: 6)
!6061 = !DILocation(line: 421, column: 6, scope: !6013)
!6062 = !DILocation(line: 422, column: 36, scope: !6060)
!6063 = !DILocation(line: 422, column: 40, scope: !6060)
!6064 = !DILocation(line: 422, column: 52, scope: !6060)
!6065 = !DILocation(line: 422, column: 59, scope: !6060)
!6066 = !DILocation(line: 423, column: 8, scope: !6060)
!6067 = !DILocation(line: 423, column: 15, scope: !6060)
!6068 = !DILocation(line: 423, column: 21, scope: !6060)
!6069 = !DILocation(line: 422, column: 10, scope: !6060)
!6070 = !DILocation(line: 422, column: 3, scope: !6060)
!6071 = !DILocation(line: 425, column: 35, scope: !6060)
!6072 = !DILocation(line: 425, column: 39, scope: !6060)
!6073 = !DILocation(line: 425, column: 51, scope: !6060)
!6074 = !DILocation(line: 425, column: 58, scope: !6060)
!6075 = !DILocation(line: 426, column: 7, scope: !6060)
!6076 = !DILocation(line: 426, column: 14, scope: !6060)
!6077 = !DILocation(line: 426, column: 20, scope: !6060)
!6078 = !DILocation(line: 425, column: 10, scope: !6060)
!6079 = !DILocation(line: 425, column: 3, scope: !6060)
!6080 = !DILocation(line: 428, column: 1, scope: !6013)
!6081 = distinct !DISubprogram(name: "kernfs_vfs_user_xattr_add", scope: !3, file: !3, line: 343, type: !6082, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6084)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!25, !1963, !19, !5264, !1480, !38, !25}
!6084 = !{!6085, !6086, !6087, !6088, !6089, !6090, !6091, !6092, !6093, !6094, !6095, !6096}
!6085 = !DILocalVariable(name: "kn", arg: 1, scope: !6081, file: !3, line: 343, type: !1963)
!6086 = !DILocalVariable(name: "full_name", arg: 2, scope: !6081, file: !3, line: 344, type: !19)
!6087 = !DILocalVariable(name: "xattrs", arg: 3, scope: !6081, file: !3, line: 345, type: !5264)
!6088 = !DILocalVariable(name: "value", arg: 4, scope: !6081, file: !3, line: 346, type: !1480)
!6089 = !DILocalVariable(name: "size", arg: 5, scope: !6081, file: !3, line: 346, type: !38)
!6090 = !DILocalVariable(name: "flags", arg: 6, scope: !6081, file: !3, line: 346, type: !25)
!6091 = !DILocalVariable(name: "sz", scope: !6081, file: !3, line: 348, type: !5750)
!6092 = !DILocalVariable(name: "nr", scope: !6081, file: !3, line: 349, type: !5750)
!6093 = !DILocalVariable(name: "old_xattr", scope: !6081, file: !3, line: 350, type: !5585)
!6094 = !DILocalVariable(name: "ret", scope: !6081, file: !3, line: 351, type: !25)
!6095 = !DILabel(scope: !6081, name: "dec_size_out", file: !3, line: 375)
!6096 = !DILabel(scope: !6081, name: "dec_count_out", file: !3, line: 377)
!6097 = !DILocation(line: 343, column: 58, scope: !6081)
!6098 = !DILocation(line: 344, column: 22, scope: !6081)
!6099 = !DILocation(line: 345, column: 32, scope: !6081)
!6100 = !DILocation(line: 346, column: 22, scope: !6081)
!6101 = !DILocation(line: 346, column: 36, scope: !6081)
!6102 = !DILocation(line: 346, column: 46, scope: !6081)
!6103 = !DILocation(line: 348, column: 2, scope: !6081)
!6104 = !DILocation(line: 348, column: 12, scope: !6081)
!6105 = !DILocation(line: 348, column: 18, scope: !6081)
!6106 = !DILocation(line: 348, column: 22, scope: !6081)
!6107 = !DILocation(line: 348, column: 29, scope: !6081)
!6108 = !DILocation(line: 349, column: 2, scope: !6081)
!6109 = !DILocation(line: 349, column: 12, scope: !6081)
!6110 = !DILocation(line: 349, column: 18, scope: !6081)
!6111 = !DILocation(line: 349, column: 22, scope: !6081)
!6112 = !DILocation(line: 349, column: 29, scope: !6081)
!6113 = !DILocation(line: 350, column: 2, scope: !6081)
!6114 = !DILocation(line: 350, column: 23, scope: !6081)
!6115 = !DILocation(line: 351, column: 2, scope: !6081)
!6116 = !DILocation(line: 351, column: 6, scope: !6081)
!6117 = !DILocation(line: 353, column: 24, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 353, column: 6)
!6119 = !DILocation(line: 353, column: 6, scope: !6118)
!6120 = !DILocation(line: 353, column: 28, scope: !6118)
!6121 = !DILocation(line: 353, column: 6, scope: !6081)
!6122 = !DILocation(line: 354, column: 7, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 353, column: 54)
!6124 = !DILocation(line: 355, column: 3, scope: !6123)
!6125 = !DILocation(line: 358, column: 24, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 358, column: 6)
!6127 = !DILocation(line: 358, column: 30, scope: !6126)
!6128 = !DILocation(line: 358, column: 6, scope: !6126)
!6129 = !DILocation(line: 358, column: 34, scope: !6126)
!6130 = !DILocation(line: 358, column: 6, scope: !6081)
!6131 = !DILocation(line: 359, column: 7, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 358, column: 66)
!6133 = !DILocation(line: 360, column: 3, scope: !6132)
!6134 = !DILocation(line: 363, column: 31, scope: !6081)
!6135 = !DILocation(line: 363, column: 39, scope: !6081)
!6136 = !DILocation(line: 363, column: 50, scope: !6081)
!6137 = !DILocation(line: 363, column: 57, scope: !6081)
!6138 = !DILocation(line: 363, column: 63, scope: !6081)
!6139 = !DILocation(line: 363, column: 14, scope: !6081)
!6140 = !DILocation(line: 363, column: 12, scope: !6081)
!6141 = !DILocation(line: 364, column: 7, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 364, column: 6)
!6143 = !DILocation(line: 364, column: 6, scope: !6081)
!6144 = !DILocation(line: 365, column: 3, scope: !6142)
!6145 = !DILocation(line: 367, column: 13, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 367, column: 6)
!6147 = !DILocation(line: 367, column: 6, scope: !6146)
!6148 = !DILocation(line: 367, column: 6, scope: !6081)
!6149 = !DILocation(line: 368, column: 17, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 367, column: 25)
!6151 = !DILocation(line: 368, column: 9, scope: !6150)
!6152 = !DILocation(line: 368, column: 7, scope: !6150)
!6153 = !DILocation(line: 369, column: 3, scope: !6150)
!6154 = !DILocation(line: 372, column: 6, scope: !6081)
!6155 = !DILocation(line: 373, column: 9, scope: !6081)
!6156 = !DILocation(line: 373, column: 20, scope: !6081)
!6157 = !DILocation(line: 373, column: 7, scope: !6081)
!6158 = !DILocation(line: 374, column: 20, scope: !6081)
!6159 = !DILocation(line: 374, column: 2, scope: !6081)
!6160 = !DILocation(line: 375, column: 1, scope: !6081)
!6161 = !DILocation(line: 376, column: 13, scope: !6081)
!6162 = !DILocation(line: 376, column: 19, scope: !6081)
!6163 = !DILocation(line: 376, column: 2, scope: !6081)
!6164 = !DILocation(line: 377, column: 1, scope: !6081)
!6165 = !DILocation(line: 378, column: 13, scope: !6081)
!6166 = !DILocation(line: 378, column: 2, scope: !6081)
!6167 = !DILocation(line: 379, column: 9, scope: !6081)
!6168 = !DILocation(line: 379, column: 2, scope: !6081)
!6169 = !DILocation(line: 380, column: 1, scope: !6081)
!6170 = distinct !DISubprogram(name: "kernfs_vfs_user_xattr_rm", scope: !3, file: !3, line: 382, type: !6082, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6171)
!6171 = !{!6172, !6173, !6174, !6175, !6176, !6177, !6178, !6179, !6180}
!6172 = !DILocalVariable(name: "kn", arg: 1, scope: !6170, file: !3, line: 382, type: !1963)
!6173 = !DILocalVariable(name: "full_name", arg: 2, scope: !6170, file: !3, line: 383, type: !19)
!6174 = !DILocalVariable(name: "xattrs", arg: 3, scope: !6170, file: !3, line: 384, type: !5264)
!6175 = !DILocalVariable(name: "value", arg: 4, scope: !6170, file: !3, line: 385, type: !1480)
!6176 = !DILocalVariable(name: "size", arg: 5, scope: !6170, file: !3, line: 385, type: !38)
!6177 = !DILocalVariable(name: "flags", arg: 6, scope: !6170, file: !3, line: 385, type: !25)
!6178 = !DILocalVariable(name: "sz", scope: !6170, file: !3, line: 387, type: !5750)
!6179 = !DILocalVariable(name: "nr", scope: !6170, file: !3, line: 388, type: !5750)
!6180 = !DILocalVariable(name: "old_xattr", scope: !6170, file: !3, line: 389, type: !5585)
!6181 = !DILocation(line: 382, column: 57, scope: !6170)
!6182 = !DILocation(line: 383, column: 21, scope: !6170)
!6183 = !DILocation(line: 384, column: 31, scope: !6170)
!6184 = !DILocation(line: 385, column: 21, scope: !6170)
!6185 = !DILocation(line: 385, column: 35, scope: !6170)
!6186 = !DILocation(line: 385, column: 45, scope: !6170)
!6187 = !DILocation(line: 387, column: 2, scope: !6170)
!6188 = !DILocation(line: 387, column: 12, scope: !6170)
!6189 = !DILocation(line: 387, column: 18, scope: !6170)
!6190 = !DILocation(line: 387, column: 22, scope: !6170)
!6191 = !DILocation(line: 387, column: 29, scope: !6170)
!6192 = !DILocation(line: 388, column: 2, scope: !6170)
!6193 = !DILocation(line: 388, column: 12, scope: !6170)
!6194 = !DILocation(line: 388, column: 18, scope: !6170)
!6195 = !DILocation(line: 388, column: 22, scope: !6170)
!6196 = !DILocation(line: 388, column: 29, scope: !6170)
!6197 = !DILocation(line: 389, column: 2, scope: !6170)
!6198 = !DILocation(line: 389, column: 23, scope: !6170)
!6199 = !DILocation(line: 391, column: 31, scope: !6170)
!6200 = !DILocation(line: 391, column: 39, scope: !6170)
!6201 = !DILocation(line: 391, column: 50, scope: !6170)
!6202 = !DILocation(line: 391, column: 57, scope: !6170)
!6203 = !DILocation(line: 391, column: 63, scope: !6170)
!6204 = !DILocation(line: 391, column: 14, scope: !6170)
!6205 = !DILocation(line: 391, column: 12, scope: !6170)
!6206 = !DILocation(line: 392, column: 7, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 392, column: 6)
!6208 = !DILocation(line: 392, column: 6, scope: !6170)
!6209 = !DILocation(line: 393, column: 3, scope: !6207)
!6210 = !DILocation(line: 395, column: 13, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 395, column: 6)
!6212 = !DILocation(line: 395, column: 6, scope: !6211)
!6213 = !DILocation(line: 395, column: 6, scope: !6170)
!6214 = !DILocation(line: 396, column: 18, scope: !6211)
!6215 = !DILocation(line: 396, column: 10, scope: !6211)
!6216 = !DILocation(line: 396, column: 3, scope: !6211)
!6217 = !DILocation(line: 398, column: 13, scope: !6170)
!6218 = !DILocation(line: 398, column: 24, scope: !6170)
!6219 = !DILocation(line: 398, column: 30, scope: !6170)
!6220 = !DILocation(line: 398, column: 2, scope: !6170)
!6221 = !DILocation(line: 399, column: 13, scope: !6170)
!6222 = !DILocation(line: 399, column: 2, scope: !6170)
!6223 = !DILocation(line: 400, column: 20, scope: !6170)
!6224 = !DILocation(line: 400, column: 2, scope: !6170)
!6225 = !DILocation(line: 401, column: 2, scope: !6170)
!6226 = !DILocation(line: 402, column: 1, scope: !6170)
!6227 = distinct !DISubprogram(name: "atomic_inc_return", scope: !5747, file: !5747, line: 450, type: !6228, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6230)
!6228 = !DISubroutineType(types: !6229)
!6229 = !{!25, !5750}
!6230 = !{!6231}
!6231 = !DILocalVariable(name: "v", arg: 1, scope: !6227, file: !5747, line: 450, type: !5750)
!6232 = !DILocation(line: 450, column: 29, scope: !6227)
!6233 = !DILocation(line: 452, column: 2, scope: !6227)
!6234 = !DILocation(line: 452, column: 2, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6227, file: !5747, line: 452, column: 2)
!6236 = !DILocation(line: 453, column: 31, scope: !6227)
!6237 = !DILocation(line: 453, column: 2, scope: !6227)
!6238 = !DILocation(line: 454, column: 31, scope: !6227)
!6239 = !DILocation(line: 454, column: 9, scope: !6227)
!6240 = !DILocation(line: 454, column: 2, scope: !6227)
!6241 = distinct !DISubprogram(name: "atomic_add_return", scope: !5747, file: !5747, line: 120, type: !6242, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6244)
!6242 = !DISubroutineType(types: !6243)
!6243 = !{!25, !25, !5750}
!6244 = !{!6245, !6246}
!6245 = !DILocalVariable(name: "i", arg: 1, scope: !6241, file: !5747, line: 120, type: !25)
!6246 = !DILocalVariable(name: "v", arg: 2, scope: !6241, file: !5747, line: 120, type: !5750)
!6247 = !DILocation(line: 120, column: 23, scope: !6241)
!6248 = !DILocation(line: 120, column: 36, scope: !6241)
!6249 = !DILocation(line: 122, column: 2, scope: !6241)
!6250 = !DILocation(line: 122, column: 2, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6241, file: !5747, line: 122, column: 2)
!6252 = !DILocation(line: 123, column: 31, scope: !6241)
!6253 = !DILocation(line: 123, column: 2, scope: !6241)
!6254 = !DILocation(line: 124, column: 31, scope: !6241)
!6255 = !DILocation(line: 124, column: 34, scope: !6241)
!6256 = !DILocation(line: 124, column: 9, scope: !6241)
!6257 = !DILocation(line: 124, column: 2, scope: !6241)
!6258 = distinct !DISubprogram(name: "atomic_sub", scope: !5747, file: !5747, line: 268, type: !6259, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6261)
!6259 = !DISubroutineType(types: !6260)
!6260 = !{null, !25, !5750}
!6261 = !{!6262, !6263}
!6262 = !DILocalVariable(name: "i", arg: 1, scope: !6258, file: !5747, line: 268, type: !25)
!6263 = !DILocalVariable(name: "v", arg: 2, scope: !6258, file: !5747, line: 268, type: !5750)
!6264 = !DILocation(line: 268, column: 16, scope: !6258)
!6265 = !DILocation(line: 268, column: 29, scope: !6258)
!6266 = !DILocation(line: 270, column: 31, scope: !6258)
!6267 = !DILocation(line: 270, column: 2, scope: !6258)
!6268 = !DILocation(line: 271, column: 17, scope: !6258)
!6269 = !DILocation(line: 271, column: 20, scope: !6258)
!6270 = !DILocation(line: 271, column: 2, scope: !6258)
!6271 = !DILocation(line: 272, column: 1, scope: !6258)
!6272 = distinct !DISubprogram(name: "atomic_dec", scope: !5747, file: !5747, line: 590, type: !6273, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6275)
!6273 = !DISubroutineType(types: !6274)
!6274 = !{null, !5750}
!6275 = !{!6276}
!6276 = !DILocalVariable(name: "v", arg: 1, scope: !6272, file: !5747, line: 590, type: !5750)
!6277 = !DILocation(line: 590, column: 22, scope: !6272)
!6278 = !DILocation(line: 592, column: 31, scope: !6272)
!6279 = !DILocation(line: 592, column: 2, scope: !6272)
!6280 = !DILocation(line: 593, column: 17, scope: !6272)
!6281 = !DILocation(line: 593, column: 2, scope: !6272)
!6282 = !DILocation(line: 594, column: 1, scope: !6272)
!6283 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5765, file: !5765, line: 94, type: !5766, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6284)
!6284 = !{!6285, !6286}
!6285 = !DILocalVariable(name: "v", arg: 1, scope: !6283, file: !5765, line: 94, type: !5768)
!6286 = !DILocalVariable(name: "size", arg: 2, scope: !6283, file: !5765, line: 94, type: !38)
!6287 = !DILocation(line: 94, column: 79, scope: !6283)
!6288 = !DILocation(line: 94, column: 89, scope: !6283)
!6289 = !DILocation(line: 96, column: 20, scope: !6283)
!6290 = !DILocation(line: 96, column: 23, scope: !6283)
!6291 = !DILocation(line: 96, column: 2, scope: !6283)
!6292 = !DILocation(line: 97, column: 2, scope: !6283)
!6293 = !DILocation(line: 98, column: 1, scope: !6283)
!6294 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !5782, file: !5782, line: 996, type: !6228, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6295)
!6295 = !{!6296}
!6296 = !DILocalVariable(name: "v", arg: 1, scope: !6294, file: !5782, line: 996, type: !5750)
!6297 = !DILocation(line: 996, column: 33, scope: !6294)
!6298 = !DILocation(line: 1007, column: 34, scope: !6294)
!6299 = !DILocation(line: 1007, column: 9, scope: !6294)
!6300 = !DILocation(line: 1007, column: 2, scope: !6294)
!6301 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !5782, file: !5782, line: 548, type: !6242, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6302)
!6302 = !{!6303, !6304}
!6303 = !DILocalVariable(name: "i", arg: 1, scope: !6301, file: !5782, line: 548, type: !25)
!6304 = !DILocalVariable(name: "v", arg: 2, scope: !6301, file: !5782, line: 548, type: !5750)
!6305 = !DILocation(line: 548, column: 27, scope: !6301)
!6306 = !DILocation(line: 548, column: 40, scope: !6301)
!6307 = !DILocation(line: 551, column: 32, scope: !6301)
!6308 = !DILocation(line: 551, column: 35, scope: !6301)
!6309 = !DILocation(line: 551, column: 9, scope: !6301)
!6310 = !DILocation(line: 551, column: 2, scope: !6301)
!6311 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !5815, file: !5815, line: 83, type: !6242, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6312)
!6312 = !{!6313, !6314, !6315}
!6313 = !DILocalVariable(name: "i", arg: 1, scope: !6311, file: !5815, line: 83, type: !25)
!6314 = !DILocalVariable(name: "v", arg: 2, scope: !6311, file: !5815, line: 83, type: !5750)
!6315 = !DILocalVariable(name: "__ret", scope: !6316, file: !5815, line: 85, type: !25)
!6316 = distinct !DILexicalBlock(scope: !6311, file: !5815, line: 85, column: 13)
!6317 = !DILocation(line: 83, column: 55, scope: !6311)
!6318 = !DILocation(line: 83, column: 68, scope: !6311)
!6319 = !DILocation(line: 85, column: 9, scope: !6311)
!6320 = !DILocation(line: 85, column: 13, scope: !6316)
!6321 = !{i64 2149090037, i64 2149090076, i64 2149090097, i64 2149090134, i64 2149090157, i64 2149090166}
!6322 = !DILocation(line: 85, column: 13, scope: !6311)
!6323 = !DILocation(line: 85, column: 11, scope: !6311)
!6324 = !DILocation(line: 85, column: 2, scope: !6311)
!6325 = distinct !DISubprogram(name: "raw_atomic_sub", scope: !5782, file: !5782, line: 754, type: !6259, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6326)
!6326 = !{!6327, !6328}
!6327 = !DILocalVariable(name: "i", arg: 1, scope: !6325, file: !5782, line: 754, type: !25)
!6328 = !DILocalVariable(name: "v", arg: 2, scope: !6325, file: !5782, line: 754, type: !5750)
!6329 = !DILocation(line: 754, column: 20, scope: !6325)
!6330 = !DILocation(line: 754, column: 33, scope: !6325)
!6331 = !DILocation(line: 756, column: 18, scope: !6325)
!6332 = !DILocation(line: 756, column: 21, scope: !6325)
!6333 = !DILocation(line: 756, column: 2, scope: !6325)
!6334 = !DILocation(line: 757, column: 1, scope: !6325)
!6335 = distinct !DISubprogram(name: "arch_atomic_sub", scope: !5815, file: !5815, line: 38, type: !6259, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6336)
!6336 = !{!6337, !6338}
!6337 = !DILocalVariable(name: "i", arg: 1, scope: !6335, file: !5815, line: 38, type: !25)
!6338 = !DILocalVariable(name: "v", arg: 2, scope: !6335, file: !5815, line: 38, type: !5750)
!6339 = !DILocation(line: 38, column: 49, scope: !6335)
!6340 = !DILocation(line: 38, column: 62, scope: !6335)
!6341 = !DILocation(line: 41, column: 16, scope: !6335)
!6342 = !DILocation(line: 41, column: 19, scope: !6335)
!6343 = !DILocation(line: 42, column: 16, scope: !6335)
!6344 = !DILocation(line: 40, column: 2, scope: !6335)
!6345 = !{i64 2149079596, i64 2149079635, i64 2149079656, i64 2149079693, i64 2149079716, i64 2149079586}
!6346 = !DILocation(line: 43, column: 1, scope: !6335)
!6347 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !5782, file: !5782, line: 1194, type: !6273, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6348)
!6348 = !{!6349}
!6349 = !DILocalVariable(name: "v", arg: 1, scope: !6347, file: !5782, line: 1194, type: !5750)
!6350 = !DILocation(line: 1194, column: 26, scope: !6347)
!6351 = !DILocation(line: 1197, column: 18, scope: !6347)
!6352 = !DILocation(line: 1197, column: 2, scope: !6347)
!6353 = !DILocation(line: 1201, column: 1, scope: !6347)
!6354 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !5815, file: !5815, line: 58, type: !6273, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6355)
!6355 = !{!6356}
!6356 = !DILocalVariable(name: "v", arg: 1, scope: !6354, file: !5815, line: 58, type: !5750)
!6357 = !DILocation(line: 58, column: 55, scope: !6354)
!6358 = !DILocation(line: 61, column: 16, scope: !6354)
!6359 = !DILocation(line: 61, column: 19, scope: !6354)
!6360 = !DILocation(line: 60, column: 2, scope: !6354)
!6361 = !{i64 2149082324, i64 2149082363, i64 2149082384, i64 2149082421, i64 2149082444, i64 2149082314}
!6362 = !DILocation(line: 62, column: 1, scope: !6354)
