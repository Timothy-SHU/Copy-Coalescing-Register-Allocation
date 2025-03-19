; ModuleID = 'fs/kernfs/mount.c'
source_filename = "fs/kernfs/mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.lock_class_key = type {}
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.kstatfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i64, i64, i64, [4 x i64] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.19, %struct.list_head, %struct.list_head, %union.anon.20 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.15, ptr }
%union.anon.15 = type { i64 }
%struct.lockref = type { %union.anon.17 }
%union.anon.17 = type { i64 }
%union.anon.19 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.20 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.callback_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kernfs_syscall_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernfs_super_info = type { ptr, ptr, ptr, %struct.list_head }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.14, ptr, i64, i16, i16, ptr, %struct.callback_head }
%struct.rb_node = type { i64, ptr, ptr }
%union.anon.14 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, ptr, i64 }
%struct.rb_root = type { ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.kernfs_fs_context = type { ptr, ptr, i64, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.21, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.22, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.23, ptr, %struct.address_space, %struct.list_head, %union.anon.24, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.21 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.22 = type { %struct.callback_head }
%union.anon.23 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.24 = type { ptr }
%struct.fid = type { %union.anon.25 }
%union.anon.25 = type { %struct.anon.27 }
%struct.anon.27 = type { i32, i16, i16, i32, i32, i32 }
%struct.anon.26 = type { i32, i32, i32, i32 }
%struct.kernfs_global_locks = type { [1024 x %struct.mutex] }

@kernfs_sops = hidden constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr @kernfs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_statfs, ptr null, ptr null, ptr @kernfs_sop_show_options, ptr null, ptr @kernfs_sop_show_path, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@.str = private unnamed_addr constant [18 x i8] c"fs/kernfs/mount.c\00", align 1, !dbg !4024
@.str.1 = private unnamed_addr constant [18 x i8] c"kernfs_node_cache\00", align 1, !dbg !4029
@kernfs_node_cache = hidden global ptr null, align 8, !dbg !4034
@.str.2 = private unnamed_addr constant [20 x i8] c"kernfs_iattrs_cache\00", align 1, !dbg !4031
@kernfs_iattrs_cache = hidden global ptr null, align 8, !dbg !4039
@kernfs_locks = hidden global ptr null, align 8, !dbg !4041
@.str.3 = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1, !dbg !4050
@find_next_ancestor.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4053
@.str.4 = private unnamed_addr constant [57 x i8] c"\012BUG in find_next_ancestor: called with parent == child\00", align 1, !dbg !4069
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4074
@kernfs_xattr_handlers = external dso_local global [0 x ptr], align 8
@kernfs_export_ops = internal constant %struct.export_operations { ptr @kernfs_encode_fh, ptr @kernfs_fh_to_dentry, ptr @kernfs_fh_to_parent, ptr null, ptr @kernfs_get_parent_dentry, ptr null, ptr null, ptr null, ptr null, i64 0 }, align 8, !dbg !4079
@kernfs_dops = external dso_local constant %struct.dentry_operations, align 64
@kernfs_mutex_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4081
@.str.6 = private unnamed_addr constant [38 x i8] c"&kernfs_locks->open_file_mutex[count]\00", align 1, !dbg !4086

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kernfs_evict_inode(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_statfs(ptr noundef %dentry, ptr noundef %buf) #1 align 16 !dbg !4100 {
entry:
  %dentry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tmp = alloca %struct.__kernel_fsid_t, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4102, metadata !DIExpression()), !dbg !4104
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4103, metadata !DIExpression()), !dbg !4105
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4106
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4107
  %call = call i32 @simple_statfs(ptr noundef %0, ptr noundef %1) #16, !dbg !4108
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4109
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %2, i32 0, i32 7, !dbg !4110
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !4111
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !4112
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9, !dbg !4113
  %4 = load ptr, ptr %d_sb, align 8, !dbg !4113
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 36, !dbg !4114
  %b = getelementptr inbounds %struct.uuid_t, ptr %s_uuid, i32 0, i32 0, !dbg !4115
  %arraydecay = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !4112
  %call1 = call i64 @uuid_to_fsid(ptr noundef %arraydecay) #16, !dbg !4111
  %coerce.dive = getelementptr inbounds %struct.__kernel_fsid_t, ptr %tmp, i32 0, i32 0, !dbg !4111
  store i64 %call1, ptr %coerce.dive, align 4, !dbg !4111
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %f_fsid, ptr align 4 %tmp, i64 8, i1 false), !dbg !4111
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !4111
  ret i32 0, !dbg !4116
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_sop_show_options(ptr noundef %sf, ptr noundef %dentry) #1 align 16 !dbg !4117 {
entry:
  %retval = alloca i32, align 4
  %sf.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %root = alloca ptr, align 8
  %scops = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !4119, metadata !DIExpression()), !dbg !4123
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4120, metadata !DIExpression()), !dbg !4124
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #17, !dbg !4125
  call void @llvm.dbg.declare(metadata ptr %root, metadata !4121, metadata !DIExpression()), !dbg !4126
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4127
  %call = call ptr @kernfs_dentry_node(ptr noundef %0) #16, !dbg !4128
  %call1 = call ptr @kernfs_root(ptr noundef %call) #16, !dbg !4129
  store ptr %call1, ptr %root, align 8, !dbg !4126
  call void @llvm.lifetime.start.p0(i64 8, ptr %scops) #17, !dbg !4130
  call void @llvm.dbg.declare(metadata ptr %scops, metadata !4122, metadata !DIExpression()), !dbg !4131
  %1 = load ptr, ptr %root, align 8, !dbg !4132
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, ptr %1, i32 0, i32 5, !dbg !4133
  %2 = load ptr, ptr %syscall_ops, align 8, !dbg !4133
  store ptr %2, ptr %scops, align 8, !dbg !4131
  %3 = load ptr, ptr %scops, align 8, !dbg !4134
  %tobool = icmp ne ptr %3, null, !dbg !4134
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4136

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %scops, align 8, !dbg !4137
  %show_options = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %4, i32 0, i32 0, !dbg !4138
  %5 = load ptr, ptr %show_options, align 8, !dbg !4138
  %tobool2 = icmp ne ptr %5, null, !dbg !4137
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4139

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %scops, align 8, !dbg !4140
  %show_options3 = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %6, i32 0, i32 0, !dbg !4141
  %7 = load ptr, ptr %show_options3, align 8, !dbg !4141
  %8 = load ptr, ptr %sf.addr, align 8, !dbg !4142
  %9 = load ptr, ptr %root, align 8, !dbg !4143
  %call4 = call i32 %7(ptr noundef %8, ptr noundef %9) #16, !dbg !4140
  store i32 %call4, ptr %retval, align 4, !dbg !4144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4144

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !4145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4145

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %scops) #17, !dbg !4146
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #17, !dbg !4146
  %10 = load i32, ptr %retval, align 4, !dbg !4146
  ret i32 %10, !dbg !4146
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_sop_show_path(ptr noundef %sf, ptr noundef %dentry) #1 align 16 !dbg !4147 {
entry:
  %retval = alloca i32, align 4
  %sf.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %root = alloca ptr, align 8
  %scops = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !4149, metadata !DIExpression()), !dbg !4154
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4150, metadata !DIExpression()), !dbg !4155
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !4156
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4151, metadata !DIExpression()), !dbg !4157
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4158
  %call = call ptr @kernfs_dentry_node(ptr noundef %0) #16, !dbg !4159
  store ptr %call, ptr %node, align 8, !dbg !4157
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #17, !dbg !4160
  call void @llvm.dbg.declare(metadata ptr %root, metadata !4152, metadata !DIExpression()), !dbg !4161
  %1 = load ptr, ptr %node, align 8, !dbg !4162
  %call1 = call ptr @kernfs_root(ptr noundef %1) #16, !dbg !4163
  store ptr %call1, ptr %root, align 8, !dbg !4161
  call void @llvm.lifetime.start.p0(i64 8, ptr %scops) #17, !dbg !4164
  call void @llvm.dbg.declare(metadata ptr %scops, metadata !4153, metadata !DIExpression()), !dbg !4165
  %2 = load ptr, ptr %root, align 8, !dbg !4166
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, ptr %2, i32 0, i32 5, !dbg !4167
  %3 = load ptr, ptr %syscall_ops, align 8, !dbg !4167
  store ptr %3, ptr %scops, align 8, !dbg !4165
  %4 = load ptr, ptr %scops, align 8, !dbg !4168
  %tobool = icmp ne ptr %4, null, !dbg !4168
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4170

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %scops, align 8, !dbg !4171
  %show_path = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %5, i32 0, i32 4, !dbg !4172
  %6 = load ptr, ptr %show_path, align 8, !dbg !4172
  %tobool2 = icmp ne ptr %6, null, !dbg !4171
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4173

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %scops, align 8, !dbg !4174
  %show_path3 = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %7, i32 0, i32 4, !dbg !4175
  %8 = load ptr, ptr %show_path3, align 8, !dbg !4175
  %9 = load ptr, ptr %sf.addr, align 8, !dbg !4176
  %10 = load ptr, ptr %node, align 8, !dbg !4177
  %11 = load ptr, ptr %root, align 8, !dbg !4178
  %call4 = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11) #16, !dbg !4174
  store i32 %call4, ptr %retval, align 4, !dbg !4179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4179

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %sf.addr, align 8, !dbg !4180
  %13 = load ptr, ptr %dentry.addr, align 8, !dbg !4181
  %call5 = call i32 @seq_dentry(ptr noundef %12, ptr noundef %13, ptr noundef @.str.3) #16, !dbg !4182
  store i32 0, ptr %retval, align 4, !dbg !4183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4183

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %scops) #17, !dbg !4184
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #17, !dbg !4184
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !4184
  %14 = load i32, ptr %retval, align 4, !dbg !4184
  ret i32 %14, !dbg !4184
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kernfs_root_from_sb(ptr noundef %sb) #1 align 16 !dbg !4185 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4189, metadata !DIExpression()), !dbg !4190
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4191
  %s_op = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6, !dbg !4193
  %1 = load ptr, ptr %s_op, align 16, !dbg !4193
  %cmp = icmp eq ptr %1, @kernfs_sops, !dbg !4194
  br i1 %cmp, label %if.then, label %if.end, !dbg !4195

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4196
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 29, !dbg !4196
  %3 = load ptr, ptr %s_fs_info, align 32, !dbg !4196
  %root = getelementptr inbounds %struct.kernfs_super_info, ptr %3, i32 0, i32 1, !dbg !4197
  %4 = load ptr, ptr %root, align 8, !dbg !4197
  store ptr %4, ptr %retval, align 8, !dbg !4198
  br label %return, !dbg !4198

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4199
  br label %return, !dbg !4199

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !4200
  ret ptr %5, !dbg !4200
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kernfs_node_dentry(ptr noundef %kn, ptr noundef %sb) #1 align 16 !dbg !4201 {
entry:
  %retval = alloca ptr, align 8
  %kn.addr = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %knparent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %dtmp = alloca ptr, align 8
  %kntmp = alloca ptr, align 8
  %__ret_warn_on61 = alloca i32, align 4
  %__flags79 = alloca i32, align 4
  %tmp92 = alloca i64, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4205, metadata !DIExpression()), !dbg !4224
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4206, metadata !DIExpression()), !dbg !4225
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #17, !dbg !4226
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4207, metadata !DIExpression()), !dbg !4227
  call void @llvm.lifetime.start.p0(i64 8, ptr %knparent) #17, !dbg !4228
  call void @llvm.dbg.declare(metadata ptr %knparent, metadata !4208, metadata !DIExpression()), !dbg !4229
  store ptr null, ptr %knparent, align 8, !dbg !4229
  br label %do.body, !dbg !4230

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4231
  %s_op = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6, !dbg !4231
  %1 = load ptr, ptr %s_op, align 16, !dbg !4231
  %cmp = icmp ne ptr %1, @kernfs_sops, !dbg !4231
  %lnot = xor i1 %cmp, true, !dbg !4231
  %lnot1 = xor i1 %lnot, true, !dbg !4231
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4231
  %conv = sext i32 %lnot.ext to i64, !dbg !4231
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4231
  %tobool = icmp ne i64 %expval, 0, !dbg !4231
  br i1 %tobool, label %if.then, label %if.end, !dbg !4234

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4231

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4235

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !4237

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !4237

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !4235

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 213, i32 0, i64 12) #17, !dbg !4239, !srcloc !4241
  br label %do.cond5, !dbg !4239

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4239

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !4235

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !4235

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !4235

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !4234

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !4234

do.end10:                                         ; preds = %do.cond9
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4242
  %s_root = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 13, !dbg !4243
  %3 = load ptr, ptr %s_root, align 8, !dbg !4243
  %call = call ptr @dget(ptr noundef %3) #16, !dbg !4244
  store ptr %call, ptr %dentry, align 8, !dbg !4245
  %4 = load ptr, ptr %kn.addr, align 8, !dbg !4246
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 2, !dbg !4248
  %5 = load ptr, ptr %parent, align 8, !dbg !4248
  %tobool11 = icmp ne ptr %5, null, !dbg !4246
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4249

if.then12:                                        ; preds = %do.end10
  %6 = load ptr, ptr %dentry, align 8, !dbg !4250
  store ptr %6, ptr %retval, align 8, !dbg !4251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !4251

if.end13:                                         ; preds = %do.end10
  %7 = load ptr, ptr %kn.addr, align 8, !dbg !4252
  %call14 = call ptr @find_next_ancestor(ptr noundef %7, ptr noundef null) #16, !dbg !4253
  store ptr %call14, ptr %knparent, align 8, !dbg !4254
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4255
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4209, metadata !DIExpression()), !dbg !4255
  %8 = load ptr, ptr %knparent, align 8, !dbg !4255
  %tobool15 = icmp ne ptr %8, null, !dbg !4255
  %lnot16 = xor i1 %tobool15, true, !dbg !4255
  %lnot18 = xor i1 %lnot16, true, !dbg !4255
  %lnot20 = xor i1 %lnot18, true, !dbg !4255
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4255
  store i32 %lnot.ext21, ptr %__ret_warn_on, align 4, !dbg !4255
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !4256
  %tobool22 = icmp ne i32 %9, 0, !dbg !4256
  %lnot23 = xor i1 %tobool22, true, !dbg !4256
  %lnot25 = xor i1 %lnot23, true, !dbg !4256
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !4256
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !4256
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !4256
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !4256
  br i1 %tobool29, label %if.then30, label %if.end43, !dbg !4255

if.then30:                                        ; preds = %if.end13
  br label %do.body31, !dbg !4256

do.body31:                                        ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !4257
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4212, metadata !DIExpression()), !dbg !4257
  store i32 2305, ptr %__flags, align 4, !dbg !4257
  br label %do.body32, !dbg !4257

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !4258

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4258

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !4257

do.body35:                                        ; preds = %do.end34
  %10 = load i32, ptr %__flags, align 4, !dbg !4260
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 222, i32 %10, i64 12) #17, !dbg !4260, !srcloc !4262
  br label %do.cond36, !dbg !4260

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !4260

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !4257

do.body38:                                        ; preds = %do.end37
  br label %do.cond39, !dbg !4263

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4263

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !4256
  br label %do.cond41, !dbg !4257

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !4257

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !4257

if.end43:                                         ; preds = %do.end42, %if.end13
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !4255
  %tobool44 = icmp ne i32 %11, 0, !dbg !4255
  %lnot45 = xor i1 %tobool44, true, !dbg !4255
  %lnot47 = xor i1 %lnot45, true, !dbg !4255
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !4255
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !4255
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !4255
  store i64 %expval50, ptr %tmp, align 8, !dbg !4256
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4265
  %12 = load i64, ptr %tmp, align 8, !dbg !4255
  %tobool51 = icmp ne i64 %12, 0, !dbg !4265
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !4266

if.then52:                                        ; preds = %if.end43
  %13 = load ptr, ptr %dentry, align 8, !dbg !4267
  call void @dput(ptr noundef %13) #16, !dbg !4269
  %call53 = call ptr @ERR_PTR(i64 noundef -22) #16, !dbg !4270
  store ptr %call53, ptr %retval, align 8, !dbg !4271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !4271

if.end54:                                         ; preds = %if.end43
  br label %do.body55, !dbg !4272

do.body55:                                        ; preds = %do.cond112, %if.end54
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtmp) #17, !dbg !4273
  call void @llvm.dbg.declare(metadata ptr %dtmp, metadata !4215, metadata !DIExpression()), !dbg !4274
  call void @llvm.lifetime.start.p0(i64 8, ptr %kntmp) #17, !dbg !4275
  call void @llvm.dbg.declare(metadata ptr %kntmp, metadata !4217, metadata !DIExpression()), !dbg !4276
  %14 = load ptr, ptr %kn.addr, align 8, !dbg !4277
  %15 = load ptr, ptr %knparent, align 8, !dbg !4279
  %cmp56 = icmp eq ptr %14, %15, !dbg !4280
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !4281

if.then58:                                        ; preds = %do.body55
  %16 = load ptr, ptr %dentry, align 8, !dbg !4282
  store ptr %16, ptr %retval, align 8, !dbg !4283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4283

if.end59:                                         ; preds = %do.body55
  %17 = load ptr, ptr %kn.addr, align 8, !dbg !4284
  %18 = load ptr, ptr %knparent, align 8, !dbg !4285
  %call60 = call ptr @find_next_ancestor(ptr noundef %17, ptr noundef %18) #16, !dbg !4286
  store ptr %call60, ptr %kntmp, align 8, !dbg !4287
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on61) #17, !dbg !4288
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on61, metadata !4218, metadata !DIExpression()), !dbg !4288
  %19 = load ptr, ptr %kntmp, align 8, !dbg !4288
  %tobool62 = icmp ne ptr %19, null, !dbg !4288
  %lnot63 = xor i1 %tobool62, true, !dbg !4288
  %lnot65 = xor i1 %lnot63, true, !dbg !4288
  %lnot67 = xor i1 %lnot65, true, !dbg !4288
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !4288
  store i32 %lnot.ext68, ptr %__ret_warn_on61, align 4, !dbg !4288
  %20 = load i32, ptr %__ret_warn_on61, align 4, !dbg !4289
  %tobool69 = icmp ne i32 %20, 0, !dbg !4289
  %lnot70 = xor i1 %tobool69, true, !dbg !4289
  %lnot72 = xor i1 %lnot70, true, !dbg !4289
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !4289
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !4289
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !4289
  %tobool76 = icmp ne i64 %expval75, 0, !dbg !4289
  br i1 %tobool76, label %if.then77, label %if.end91, !dbg !4288

if.then77:                                        ; preds = %if.end59
  br label %do.body78, !dbg !4289

do.body78:                                        ; preds = %if.then77
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags79) #17, !dbg !4290
  call void @llvm.dbg.declare(metadata ptr %__flags79, metadata !4221, metadata !DIExpression()), !dbg !4290
  store i32 2305, ptr %__flags79, align 4, !dbg !4290
  br label %do.body80, !dbg !4290

do.body80:                                        ; preds = %do.body78
  br label %do.cond81, !dbg !4291

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !4291

do.end82:                                         ; preds = %do.cond81
  br label %do.body83, !dbg !4290

do.body83:                                        ; preds = %do.end82
  %21 = load i32, ptr %__flags79, align 4, !dbg !4293
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 234, i32 %21, i64 12) #17, !dbg !4293, !srcloc !4295
  br label %do.cond84, !dbg !4293

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !4293

do.end85:                                         ; preds = %do.cond84
  br label %do.body86, !dbg !4290

do.body86:                                        ; preds = %do.end85
  br label %do.cond87, !dbg !4296

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !4296

do.end88:                                         ; preds = %do.cond87
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags79) #17, !dbg !4289
  br label %do.cond89, !dbg !4290

do.cond89:                                        ; preds = %do.end88
  br label %do.end90, !dbg !4290

do.end90:                                         ; preds = %do.cond89
  br label %if.end91, !dbg !4290

if.end91:                                         ; preds = %do.end90, %if.end59
  %22 = load i32, ptr %__ret_warn_on61, align 4, !dbg !4288
  %tobool93 = icmp ne i32 %22, 0, !dbg !4288
  %lnot94 = xor i1 %tobool93, true, !dbg !4288
  %lnot96 = xor i1 %lnot94, true, !dbg !4288
  %lnot.ext97 = zext i1 %lnot96 to i32, !dbg !4288
  %conv98 = sext i32 %lnot.ext97 to i64, !dbg !4288
  %expval99 = call i64 @llvm.expect.i64(i64 %conv98, i64 0), !dbg !4288
  store i64 %expval99, ptr %tmp92, align 8, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on61) #17, !dbg !4298
  %23 = load i64, ptr %tmp92, align 8, !dbg !4288
  %tobool100 = icmp ne i64 %23, 0, !dbg !4298
  br i1 %tobool100, label %if.then101, label %if.end103, !dbg !4299

if.then101:                                       ; preds = %if.end91
  %24 = load ptr, ptr %dentry, align 8, !dbg !4300
  call void @dput(ptr noundef %24) #16, !dbg !4302
  %call102 = call ptr @ERR_PTR(i64 noundef -22) #16, !dbg !4303
  store ptr %call102, ptr %retval, align 8, !dbg !4304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4304

if.end103:                                        ; preds = %if.end91
  %25 = load ptr, ptr %kntmp, align 8, !dbg !4305
  %name = getelementptr inbounds %struct.kernfs_node, ptr %25, i32 0, i32 3, !dbg !4306
  %26 = load ptr, ptr %name, align 8, !dbg !4306
  %27 = load ptr, ptr %dentry, align 8, !dbg !4307
  %28 = load ptr, ptr %kntmp, align 8, !dbg !4308
  %name104 = getelementptr inbounds %struct.kernfs_node, ptr %28, i32 0, i32 3, !dbg !4309
  %29 = load ptr, ptr %name104, align 8, !dbg !4309
  %call105 = call i64 @strlen(ptr noundef %29) #16, !dbg !4310
  %conv106 = trunc i64 %call105 to i32, !dbg !4310
  %call107 = call ptr @lookup_positive_unlocked(ptr noundef %26, ptr noundef %27, i32 noundef %conv106) #16, !dbg !4311
  store ptr %call107, ptr %dtmp, align 8, !dbg !4312
  %30 = load ptr, ptr %dentry, align 8, !dbg !4313
  call void @dput(ptr noundef %30) #16, !dbg !4314
  %31 = load ptr, ptr %dtmp, align 8, !dbg !4315
  %call108 = call zeroext i1 @IS_ERR(ptr noundef %31) #16, !dbg !4317
  br i1 %call108, label %if.then109, label %if.end110, !dbg !4318

if.then109:                                       ; preds = %if.end103
  %32 = load ptr, ptr %dtmp, align 8, !dbg !4319
  store ptr %32, ptr %retval, align 8, !dbg !4320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4320

if.end110:                                        ; preds = %if.end103
  %33 = load ptr, ptr %kntmp, align 8, !dbg !4321
  store ptr %33, ptr %knparent, align 8, !dbg !4322
  %34 = load ptr, ptr %dtmp, align 8, !dbg !4323
  store ptr %34, ptr %dentry, align 8, !dbg !4324
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4325
  br label %cleanup, !dbg !4325

cleanup:                                          ; preds = %if.end110, %if.then109, %if.then101, %if.then58
  call void @llvm.lifetime.end.p0(i64 8, ptr %kntmp) #17, !dbg !4325
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtmp) #17, !dbg !4325
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup114 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond112, !dbg !4326

do.cond112:                                       ; preds = %cleanup.cont
  br i1 true, label %do.body55, label %do.end113, !dbg !4326, !llvm.loop !4327

do.end113:                                        ; preds = %do.cond112
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4330
  br label %cleanup114, !dbg !4330

cleanup114:                                       ; preds = %do.end113, %cleanup, %if.then52, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %knparent) #17, !dbg !4330
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #17, !dbg !4330
  %cleanup.dest116 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest116, label %unreachable [
    i32 0, label %cleanup.cont117
    i32 1, label %cleanup.cont117
  ]

cleanup.cont117:                                  ; preds = %cleanup114, %cleanup114
  %35 = load ptr, ptr %retval, align 8, !dbg !4330
  ret ptr %35, !dbg !4330

unreachable:                                      ; preds = %cleanup114
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget(ptr noundef %dentry) #5 align 16 !dbg !4331 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4333, metadata !DIExpression()), !dbg !4334
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4335
  %tobool = icmp ne ptr %0, null, !dbg !4335
  br i1 %tobool, label %if.then, label %if.end, !dbg !4337

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4338
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !4339
  call void @lockref_get(ptr noundef %d_lockref) #16, !dbg !4340
  br label %if.end, !dbg !4340

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4341
  ret ptr %2, !dbg !4342
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_next_ancestor(ptr noundef %child, ptr noundef %parent) #1 align 16 !dbg !4055 {
entry:
  %retval = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  %tmp20 = alloca i64, align 8
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4059, metadata !DIExpression()), !dbg !4343
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4060, metadata !DIExpression()), !dbg !4344
  %0 = load ptr, ptr %child.addr, align 8, !dbg !4345
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4346
  %cmp = icmp eq ptr %0, %1, !dbg !4347
  br i1 %cmp, label %if.then, label %if.end28, !dbg !4348

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #17, !dbg !4349
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4061, metadata !DIExpression()), !dbg !4349
  store i8 1, ptr %__ret_do_once, align 1, !dbg !4349
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #17, !dbg !4350
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4065, metadata !DIExpression()), !dbg !4350
  %2 = load i8, ptr %__ret_do_once, align 1, !dbg !4350, !range !4351, !noundef !1232
  %tobool = trunc i8 %2 to i1, !dbg !4350
  %lnot = xor i1 %tobool, true, !dbg !4350
  %lnot1 = xor i1 %lnot, true, !dbg !4350
  %frombool = zext i1 %lnot1 to i8, !dbg !4350
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !4350
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #17, !dbg !4350
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4068, metadata !DIExpression()), !dbg !4350
  store i8 0, ptr %__ret_once, align 1, !dbg !4350
  %3 = load i8, ptr %__ret_cond, align 1, !dbg !4352, !range !4351, !noundef !1232
  %tobool2 = trunc i8 %3 to i1, !dbg !4352
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !4352

land.rhs:                                         ; preds = %if.then
  %4 = load i8, ptr @find_next_ancestor.__already_done, align 1, !dbg !4352, !range !4351, !noundef !1232
  %tobool3 = trunc i8 %4 to i1, !dbg !4352
  %lnot4 = xor i1 %tobool3, true, !dbg !4352
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %5 = phi i1 [ false, %if.then ], [ %lnot4, %land.rhs ], !dbg !4354
  %lnot5 = xor i1 %5, true, !dbg !4352
  %lnot6 = xor i1 %lnot5, true, !dbg !4352
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4352
  %conv = sext i32 %lnot.ext to i64, !dbg !4352
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4352
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4352
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !4350

if.then8:                                         ; preds = %land.end
  store i8 1, ptr @find_next_ancestor.__already_done, align 1, !dbg !4355
  store i8 1, ptr %__ret_once, align 1, !dbg !4355
  br label %if.end, !dbg !4355

if.end:                                           ; preds = %if.then8, %land.end
  %6 = load i8, ptr %__ret_once, align 1, !dbg !4350, !range !4351, !noundef !1232
  %tobool9 = trunc i8 %6 to i1, !dbg !4350
  %lnot10 = xor i1 %tobool9, true, !dbg !4350
  %lnot12 = xor i1 %lnot10, true, !dbg !4350
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !4350
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !4350
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !4350
  store i64 %expval15, ptr %tmp, align 8, !dbg !4352
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #17, !dbg !4357
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #17, !dbg !4357
  %7 = load i64, ptr %tmp, align 8, !dbg !4350
  %tobool16 = icmp ne i64 %7, 0, !dbg !4357
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !4349

if.then17:                                        ; preds = %if.end
  br label %do.body, !dbg !4358

do.body:                                          ; preds = %if.then17
  br label %do.cond, !dbg !4360

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4360

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #18, !dbg !4358
  store i32 %call, ptr %tmp18, align 4, !dbg !4360
  %8 = load i32, ptr %tmp18, align 4, !dbg !4358
  br label %if.end19, !dbg !4357

if.end19:                                         ; preds = %do.end, %if.end
  %9 = load i8, ptr %__ret_do_once, align 1, !dbg !4349, !range !4351, !noundef !1232
  %tobool21 = trunc i8 %9 to i1, !dbg !4349
  %lnot22 = xor i1 %tobool21, true, !dbg !4349
  %lnot24 = xor i1 %lnot22, true, !dbg !4349
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !4349
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !4349
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !4349
  store i64 %expval27, ptr %tmp20, align 8, !dbg !4357
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #17, !dbg !4362
  %10 = load i64, ptr %tmp20, align 8, !dbg !4349
  store ptr null, ptr %retval, align 8, !dbg !4363
  br label %return, !dbg !4363

if.end28:                                         ; preds = %entry
  br label %while.cond, !dbg !4364

while.cond:                                       ; preds = %if.end35, %if.end28
  %11 = load ptr, ptr %child.addr, align 8, !dbg !4365
  %parent29 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 2, !dbg !4366
  %12 = load ptr, ptr %parent29, align 8, !dbg !4366
  %13 = load ptr, ptr %parent.addr, align 8, !dbg !4367
  %cmp30 = icmp ne ptr %12, %13, !dbg !4368
  br i1 %cmp30, label %while.body, label %while.end, !dbg !4364

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %child.addr, align 8, !dbg !4369
  %parent32 = getelementptr inbounds %struct.kernfs_node, ptr %14, i32 0, i32 2, !dbg !4372
  %15 = load ptr, ptr %parent32, align 8, !dbg !4372
  %tobool33 = icmp ne ptr %15, null, !dbg !4369
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !4373

if.then34:                                        ; preds = %while.body
  store ptr null, ptr %retval, align 8, !dbg !4374
  br label %return, !dbg !4374

if.end35:                                         ; preds = %while.body
  %16 = load ptr, ptr %child.addr, align 8, !dbg !4375
  %parent36 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 2, !dbg !4376
  %17 = load ptr, ptr %parent36, align 8, !dbg !4376
  store ptr %17, ptr %child.addr, align 8, !dbg !4377
  br label %while.cond, !dbg !4364, !llvm.loop !4378

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %child.addr, align 8, !dbg !4381
  store ptr %18, ptr %retval, align 8, !dbg !4382
  br label %return, !dbg !4382

return:                                           ; preds = %while.end, %if.then34, %if.end19
  %19 = load ptr, ptr %retval, align 8, !dbg !4383
  ret ptr %19, !dbg !4383
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4384 dso_local void @dput(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !4385 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4390, metadata !DIExpression()), !dbg !4391
  %0 = load i64, ptr %error.addr, align 8, !dbg !4392
  %1 = inttoptr i64 %0 to ptr, !dbg !4393
  ret ptr %1, !dbg !4394
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4395 dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4399 dso_local i64 @strlen(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !4403 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4409
  %1 = ptrtoint ptr %0 to i64, !dbg !4409
  %2 = inttoptr i64 %1 to ptr, !dbg !4409
  %3 = ptrtoint ptr %2 to i64, !dbg !4409
  %cmp = icmp uge i64 %3, -4095, !dbg !4409
  %lnot = xor i1 %cmp, true, !dbg !4409
  %lnot1 = xor i1 %lnot, true, !dbg !4409
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4409
  %conv = sext i32 %lnot.ext to i64, !dbg !4409
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4409
  %tobool = icmp ne i64 %expval, 0, !dbg !4409
  ret i1 %tobool, !dbg !4410
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kernfs_super_ns(ptr noundef %sb) #1 align 16 !dbg !4411 {
entry:
  %sb.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4415, metadata !DIExpression()), !dbg !4417
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !4418
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4416, metadata !DIExpression()), !dbg !4419
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4420
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !4420
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !4420
  store ptr %1, ptr %info, align 8, !dbg !4419
  %2 = load ptr, ptr %info, align 8, !dbg !4421
  %ns = getelementptr inbounds %struct.kernfs_super_info, ptr %2, i32 0, i32 2, !dbg !4422
  %3 = load ptr, ptr %ns, align 8, !dbg !4422
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !4423
  ret ptr %3, !dbg !4424
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kernfs_get_tree(ptr noundef %fc) #1 align 16 !dbg !4425 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %kfc = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %info = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %info9 = alloca ptr, align 8
  %root11 = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4427, metadata !DIExpression()), !dbg !4443
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfc) #17, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %kfc, metadata !4428, metadata !DIExpression()), !dbg !4445
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !4446
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3, !dbg !4447
  %1 = load ptr, ptr %fs_private, align 8, !dbg !4447
  store ptr %1, ptr %kfc, align 8, !dbg !4445
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #17, !dbg !4448
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4436, metadata !DIExpression()), !dbg !4449
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !4450
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4437, metadata !DIExpression()), !dbg !4451
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !4452
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4438, metadata !DIExpression()), !dbg !4453
  %call = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #19, !dbg !4454
  store ptr %call, ptr %info, align 8, !dbg !4455
  %2 = load ptr, ptr %info, align 8, !dbg !4456
  %tobool = icmp ne ptr %2, null, !dbg !4456
  br i1 %tobool, label %if.end, label %if.then, !dbg !4458

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !4459

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %kfc, align 8, !dbg !4460
  %root = getelementptr inbounds %struct.kernfs_fs_context, ptr %3, i32 0, i32 0, !dbg !4461
  %4 = load ptr, ptr %root, align 8, !dbg !4461
  %5 = load ptr, ptr %info, align 8, !dbg !4462
  %root1 = getelementptr inbounds %struct.kernfs_super_info, ptr %5, i32 0, i32 1, !dbg !4463
  store ptr %4, ptr %root1, align 8, !dbg !4464
  %6 = load ptr, ptr %kfc, align 8, !dbg !4465
  %ns_tag = getelementptr inbounds %struct.kernfs_fs_context, ptr %6, i32 0, i32 1, !dbg !4466
  %7 = load ptr, ptr %ns_tag, align 8, !dbg !4466
  %8 = load ptr, ptr %info, align 8, !dbg !4467
  %ns = getelementptr inbounds %struct.kernfs_super_info, ptr %8, i32 0, i32 2, !dbg !4468
  store ptr %7, ptr %ns, align 8, !dbg !4469
  %9 = load ptr, ptr %info, align 8, !dbg !4470
  %node = getelementptr inbounds %struct.kernfs_super_info, ptr %9, i32 0, i32 3, !dbg !4471
  call void @INIT_LIST_HEAD(ptr noundef %node) #16, !dbg !4472
  %10 = load ptr, ptr %info, align 8, !dbg !4473
  %11 = load ptr, ptr %fc.addr, align 8, !dbg !4474
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %11, i32 0, i32 12, !dbg !4475
  store ptr %10, ptr %s_fs_info, align 8, !dbg !4476
  %12 = load ptr, ptr %fc.addr, align 8, !dbg !4477
  %call2 = call ptr @sget_fc(ptr noundef %12, ptr noundef @kernfs_test_super, ptr noundef @kernfs_set_super) #16, !dbg !4478
  store ptr %call2, ptr %sb, align 8, !dbg !4479
  %13 = load ptr, ptr %sb, align 8, !dbg !4480
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %13) #16, !dbg !4482
  br i1 %call3, label %if.then4, label %if.end6, !dbg !4483

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %sb, align 8, !dbg !4484
  %call5 = call i64 @PTR_ERR(ptr noundef %14) #16, !dbg !4485
  %conv = trunc i64 %call5 to i32, !dbg !4485
  store i32 %conv, ptr %retval, align 4, !dbg !4486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !4486

if.end6:                                          ; preds = %if.end
  %15 = load ptr, ptr %sb, align 8, !dbg !4487
  %s_root = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 13, !dbg !4488
  %16 = load ptr, ptr %s_root, align 8, !dbg !4488
  %tobool7 = icmp ne ptr %16, null, !dbg !4487
  br i1 %tobool7, label %if.end21, label %if.then8, !dbg !4489

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %info9) #17, !dbg !4490
  call void @llvm.dbg.declare(metadata ptr %info9, metadata !4439, metadata !DIExpression()), !dbg !4491
  %17 = load ptr, ptr %sb, align 8, !dbg !4492
  %s_fs_info10 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 29, !dbg !4492
  %18 = load ptr, ptr %s_fs_info10, align 32, !dbg !4492
  store ptr %18, ptr %info9, align 8, !dbg !4491
  call void @llvm.lifetime.start.p0(i64 8, ptr %root11) #17, !dbg !4493
  call void @llvm.dbg.declare(metadata ptr %root11, metadata !4442, metadata !DIExpression()), !dbg !4494
  %19 = load ptr, ptr %kfc, align 8, !dbg !4495
  %root12 = getelementptr inbounds %struct.kernfs_fs_context, ptr %19, i32 0, i32 0, !dbg !4496
  %20 = load ptr, ptr %root12, align 8, !dbg !4496
  store ptr %20, ptr %root11, align 8, !dbg !4494
  %21 = load ptr, ptr %kfc, align 8, !dbg !4497
  %new_sb_created = getelementptr inbounds %struct.kernfs_fs_context, ptr %21, i32 0, i32 3, !dbg !4498
  store i8 1, ptr %new_sb_created, align 8, !dbg !4499
  %22 = load ptr, ptr %sb, align 8, !dbg !4500
  %23 = load ptr, ptr %kfc, align 8, !dbg !4501
  %call13 = call i32 @kernfs_fill_super(ptr noundef %22, ptr noundef %23) #16, !dbg !4502
  store i32 %call13, ptr %error, align 4, !dbg !4503
  %24 = load i32, ptr %error, align 4, !dbg !4504
  %tobool14 = icmp ne i32 %24, 0, !dbg !4504
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4506

if.then15:                                        ; preds = %if.then8
  %25 = load ptr, ptr %sb, align 8, !dbg !4507
  call void @deactivate_locked_super(ptr noundef %25) #16, !dbg !4509
  %26 = load i32, ptr %error, align 4, !dbg !4510
  store i32 %26, ptr %retval, align 4, !dbg !4511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4511

if.end16:                                         ; preds = %if.then8
  %27 = load ptr, ptr %sb, align 8, !dbg !4512
  %s_flags = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 10, !dbg !4513
  %28 = load i64, ptr %s_flags, align 16, !dbg !4514
  %or = or i64 %28, 1073741824, !dbg !4514
  store i64 %or, ptr %s_flags, align 16, !dbg !4514
  %29 = load ptr, ptr %sb, align 8, !dbg !4515
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 36, !dbg !4516
  call void @uuid_gen(ptr noundef %s_uuid) #16, !dbg !4517
  %30 = load ptr, ptr %root11, align 8, !dbg !4518
  %kernfs_supers_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %30, i32 0, i32 10, !dbg !4519
  call void @down_write(ptr noundef %kernfs_supers_rwsem) #16, !dbg !4520
  %31 = load ptr, ptr %info9, align 8, !dbg !4521
  %node17 = getelementptr inbounds %struct.kernfs_super_info, ptr %31, i32 0, i32 3, !dbg !4522
  %32 = load ptr, ptr %info9, align 8, !dbg !4523
  %root18 = getelementptr inbounds %struct.kernfs_super_info, ptr %32, i32 0, i32 1, !dbg !4524
  %33 = load ptr, ptr %root18, align 8, !dbg !4524
  %supers = getelementptr inbounds %struct.kernfs_root, ptr %33, i32 0, i32 6, !dbg !4525
  call void @list_add(ptr noundef %node17, ptr noundef %supers) #16, !dbg !4526
  %34 = load ptr, ptr %root11, align 8, !dbg !4527
  %kernfs_supers_rwsem19 = getelementptr inbounds %struct.kernfs_root, ptr %34, i32 0, i32 10, !dbg !4528
  call void @up_write(ptr noundef %kernfs_supers_rwsem19) #16, !dbg !4529
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4530
  br label %cleanup, !dbg !4530

cleanup:                                          ; preds = %if.end16, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %root11) #17, !dbg !4530
  call void @llvm.lifetime.end.p0(i64 8, ptr %info9) #17, !dbg !4530
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end21, !dbg !4531

if.end21:                                         ; preds = %cleanup.cont, %if.end6
  %35 = load ptr, ptr %sb, align 8, !dbg !4532
  %s_root22 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 13, !dbg !4533
  %36 = load ptr, ptr %s_root22, align 8, !dbg !4533
  %call23 = call ptr @dget(ptr noundef %36) #16, !dbg !4534
  %37 = load ptr, ptr %fc.addr, align 8, !dbg !4535
  %root24 = getelementptr inbounds %struct.fs_context, ptr %37, i32 0, i32 5, !dbg !4536
  store ptr %call23, ptr %root24, align 8, !dbg !4537
  store i32 0, ptr %retval, align 4, !dbg !4538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !4538

cleanup25:                                        ; preds = %if.end21, %cleanup, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !4539
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !4539
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #17, !dbg !4539
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfc) #17, !dbg !4539
  %38 = load i32, ptr %retval, align 4, !dbg !4539
  ret i32 %38, !dbg !4539
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4540 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4544, metadata !DIExpression()), !dbg !4546
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4545, metadata !DIExpression()), !dbg !4547
  %0 = load i64, ptr %size.addr, align 8, !dbg !4548
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4549
  %or = or i32 %1, 256, !dbg !4550
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !4551
  ret ptr %call, !dbg !4552
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !4553 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4558, metadata !DIExpression()), !dbg !4559
  br label %do.body, !dbg !4560

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4561

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4563

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4561

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4565
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4565
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4565
  store volatile ptr %0, ptr %next, align 8, !dbg !4565
  br label %do.end3, !dbg !4565

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4561

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4567

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4568

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4570

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4568

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4572
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4572
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4572
  store volatile ptr %2, ptr %prev, align 8, !dbg !4572
  br label %do.end9, !dbg !4572

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4568

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4574
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4575 dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_test_super(ptr noundef %sb, ptr noundef %fc) #1 align 16 !dbg !4581 {
entry:
  %sb.addr = alloca ptr, align 8
  %fc.addr = alloca ptr, align 8
  %sb_info = alloca ptr, align 8
  %info = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4583, metadata !DIExpression()), !dbg !4587
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4584, metadata !DIExpression()), !dbg !4588
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb_info) #17, !dbg !4589
  call void @llvm.dbg.declare(metadata ptr %sb_info, metadata !4585, metadata !DIExpression()), !dbg !4590
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4591
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !4591
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !4591
  store ptr %1, ptr %sb_info, align 8, !dbg !4590
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4586, metadata !DIExpression()), !dbg !4593
  %2 = load ptr, ptr %fc.addr, align 8, !dbg !4594
  %s_fs_info1 = getelementptr inbounds %struct.fs_context, ptr %2, i32 0, i32 12, !dbg !4595
  %3 = load ptr, ptr %s_fs_info1, align 8, !dbg !4595
  store ptr %3, ptr %info, align 8, !dbg !4593
  %4 = load ptr, ptr %sb_info, align 8, !dbg !4596
  %root = getelementptr inbounds %struct.kernfs_super_info, ptr %4, i32 0, i32 1, !dbg !4597
  %5 = load ptr, ptr %root, align 8, !dbg !4597
  %6 = load ptr, ptr %info, align 8, !dbg !4598
  %root2 = getelementptr inbounds %struct.kernfs_super_info, ptr %6, i32 0, i32 1, !dbg !4599
  %7 = load ptr, ptr %root2, align 8, !dbg !4599
  %cmp = icmp eq ptr %5, %7, !dbg !4600
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4601

land.rhs:                                         ; preds = %entry
  %8 = load ptr, ptr %sb_info, align 8, !dbg !4602
  %ns = getelementptr inbounds %struct.kernfs_super_info, ptr %8, i32 0, i32 2, !dbg !4603
  %9 = load ptr, ptr %ns, align 8, !dbg !4603
  %10 = load ptr, ptr %info, align 8, !dbg !4604
  %ns3 = getelementptr inbounds %struct.kernfs_super_info, ptr %10, i32 0, i32 2, !dbg !4605
  %11 = load ptr, ptr %ns3, align 8, !dbg !4605
  %cmp4 = icmp eq ptr %9, %11, !dbg !4606
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !4607
  %land.ext = zext i1 %12 to i32, !dbg !4601
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !4608
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb_info) #17, !dbg !4608
  ret i32 %land.ext, !dbg !4609
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_set_super(ptr noundef %sb, ptr noundef %fc) #1 align 16 !dbg !4610 {
entry:
  %sb.addr = alloca ptr, align 8
  %fc.addr = alloca ptr, align 8
  %kfc = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4612, metadata !DIExpression()), !dbg !4615
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4613, metadata !DIExpression()), !dbg !4616
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfc) #17, !dbg !4617
  call void @llvm.dbg.declare(metadata ptr %kfc, metadata !4614, metadata !DIExpression()), !dbg !4618
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !4619
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3, !dbg !4620
  %1 = load ptr, ptr %fs_private, align 8, !dbg !4620
  store ptr %1, ptr %kfc, align 8, !dbg !4618
  %2 = load ptr, ptr %kfc, align 8, !dbg !4621
  %ns_tag = getelementptr inbounds %struct.kernfs_fs_context, ptr %2, i32 0, i32 1, !dbg !4622
  store ptr null, ptr %ns_tag, align 8, !dbg !4623
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !4624
  %4 = load ptr, ptr %fc.addr, align 8, !dbg !4625
  %call = call i32 @set_anon_super_fc(ptr noundef %3, ptr noundef %4) #16, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfc) #17, !dbg !4627
  ret i32 %call, !dbg !4628
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !4629 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4635
  %1 = ptrtoint ptr %0 to i64, !dbg !4636
  ret i64 %1, !dbg !4637
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_fill_super(ptr noundef %sb, ptr noundef %kfc) #1 align 16 !dbg !4638 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %kfc.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %kf_root = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %root1 = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4642, metadata !DIExpression()), !dbg !4648
  store ptr %kfc, ptr %kfc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kfc.addr, metadata !4643, metadata !DIExpression()), !dbg !4649
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !4650
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4644, metadata !DIExpression()), !dbg !4651
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4652
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !4652
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !4652
  store ptr %1, ptr %info, align 8, !dbg !4651
  call void @llvm.lifetime.start.p0(i64 8, ptr %kf_root) #17, !dbg !4653
  call void @llvm.dbg.declare(metadata ptr %kf_root, metadata !4645, metadata !DIExpression()), !dbg !4654
  %2 = load ptr, ptr %kfc.addr, align 8, !dbg !4655
  %root = getelementptr inbounds %struct.kernfs_fs_context, ptr %2, i32 0, i32 0, !dbg !4656
  %3 = load ptr, ptr %root, align 8, !dbg !4656
  store ptr %3, ptr %kf_root, align 8, !dbg !4654
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #17, !dbg !4657
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4646, metadata !DIExpression()), !dbg !4658
  call void @llvm.lifetime.start.p0(i64 8, ptr %root1) #17, !dbg !4659
  call void @llvm.dbg.declare(metadata ptr %root1, metadata !4647, metadata !DIExpression()), !dbg !4660
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !4661
  %5 = load ptr, ptr %info, align 8, !dbg !4662
  %sb2 = getelementptr inbounds %struct.kernfs_super_info, ptr %5, i32 0, i32 0, !dbg !4663
  store ptr %4, ptr %sb2, align 8, !dbg !4664
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !4665
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 11, !dbg !4666
  %7 = load i64, ptr %s_iflags, align 8, !dbg !4667
  %or = or i64 %7, 6, !dbg !4667
  store i64 %or, ptr %s_iflags, align 8, !dbg !4667
  %8 = load ptr, ptr %sb.addr, align 8, !dbg !4668
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3, !dbg !4669
  store i64 4096, ptr %s_blocksize, align 8, !dbg !4670
  %9 = load ptr, ptr %sb.addr, align 8, !dbg !4671
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2, !dbg !4672
  store i8 12, ptr %s_blocksize_bits, align 4, !dbg !4673
  %10 = load ptr, ptr %kfc.addr, align 8, !dbg !4674
  %magic = getelementptr inbounds %struct.kernfs_fs_context, ptr %10, i32 0, i32 2, !dbg !4675
  %11 = load i64, ptr %magic, align 8, !dbg !4675
  %12 = load ptr, ptr %sb.addr, align 8, !dbg !4676
  %s_magic = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 12, !dbg !4677
  store i64 %11, ptr %s_magic, align 32, !dbg !4678
  %13 = load ptr, ptr %sb.addr, align 8, !dbg !4679
  %s_op = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 6, !dbg !4680
  store ptr @kernfs_sops, ptr %s_op, align 16, !dbg !4681
  %14 = load ptr, ptr %sb.addr, align 8, !dbg !4682
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 18, !dbg !4683
  store ptr @kernfs_xattr_handlers, ptr %s_xattr, align 8, !dbg !4684
  %15 = load ptr, ptr %info, align 8, !dbg !4685
  %root3 = getelementptr inbounds %struct.kernfs_super_info, ptr %15, i32 0, i32 1, !dbg !4687
  %16 = load ptr, ptr %root3, align 8, !dbg !4687
  %flags = getelementptr inbounds %struct.kernfs_root, ptr %16, i32 0, i32 1, !dbg !4688
  %17 = load i32, ptr %flags, align 8, !dbg !4688
  %and = and i32 %17, 4, !dbg !4689
  %tobool = icmp ne i32 %and, 0, !dbg !4689
  br i1 %tobool, label %if.then, label %if.end, !dbg !4690

if.then:                                          ; preds = %entry
  %18 = load ptr, ptr %sb.addr, align 8, !dbg !4691
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 9, !dbg !4692
  store ptr @kernfs_export_ops, ptr %s_export_op, align 8, !dbg !4693
  br label %if.end, !dbg !4691

if.end:                                           ; preds = %if.then, %entry
  %19 = load ptr, ptr %sb.addr, align 8, !dbg !4694
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 30, !dbg !4695
  store i32 1, ptr %s_time_gran, align 8, !dbg !4696
  %20 = load ptr, ptr %sb.addr, align 8, !dbg !4697
  %s_shrink = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 41, !dbg !4698
  %seeks = getelementptr inbounds %struct.shrinker, ptr %s_shrink, i32 0, i32 3, !dbg !4699
  store i32 0, ptr %seeks, align 8, !dbg !4700
  %21 = load ptr, ptr %kf_root, align 8, !dbg !4701
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %21, i32 0, i32 8, !dbg !4702
  call void @down_read(ptr noundef %kernfs_rwsem) #16, !dbg !4703
  %22 = load ptr, ptr %sb.addr, align 8, !dbg !4704
  %23 = load ptr, ptr %info, align 8, !dbg !4705
  %root4 = getelementptr inbounds %struct.kernfs_super_info, ptr %23, i32 0, i32 1, !dbg !4706
  %24 = load ptr, ptr %root4, align 8, !dbg !4706
  %kn = getelementptr inbounds %struct.kernfs_root, ptr %24, i32 0, i32 0, !dbg !4707
  %25 = load ptr, ptr %kn, align 8, !dbg !4707
  %call = call ptr @kernfs_get_inode(ptr noundef %22, ptr noundef %25) #16, !dbg !4708
  store ptr %call, ptr %inode, align 8, !dbg !4709
  %26 = load ptr, ptr %kf_root, align 8, !dbg !4710
  %kernfs_rwsem5 = getelementptr inbounds %struct.kernfs_root, ptr %26, i32 0, i32 8, !dbg !4711
  call void @up_read(ptr noundef %kernfs_rwsem5) #16, !dbg !4712
  %27 = load ptr, ptr %inode, align 8, !dbg !4713
  %tobool6 = icmp ne ptr %27, null, !dbg !4713
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4715

if.then7:                                         ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !4716
  %28 = load i32, ptr %tmp, align 4, !dbg !4720
  store i32 -12, ptr %retval, align 4, !dbg !4721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4721

if.end8:                                          ; preds = %if.end
  %29 = load ptr, ptr %inode, align 8, !dbg !4722
  %call9 = call ptr @d_make_root(ptr noundef %29) #16, !dbg !4723
  store ptr %call9, ptr %root1, align 8, !dbg !4724
  %30 = load ptr, ptr %root1, align 8, !dbg !4725
  %tobool10 = icmp ne ptr %30, null, !dbg !4725
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !4727

if.then11:                                        ; preds = %if.end8
  store i32 0, ptr %tmp12, align 4, !dbg !4728
  %31 = load i32, ptr %tmp12, align 4, !dbg !4732
  store i32 -12, ptr %retval, align 4, !dbg !4733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4733

if.end13:                                         ; preds = %if.end8
  %32 = load ptr, ptr %root1, align 8, !dbg !4734
  %33 = load ptr, ptr %sb.addr, align 8, !dbg !4735
  %s_root = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 13, !dbg !4736
  store ptr %32, ptr %s_root, align 8, !dbg !4737
  %34 = load ptr, ptr %sb.addr, align 8, !dbg !4738
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 40, !dbg !4739
  store ptr @kernfs_dops, ptr %s_d_op, align 16, !dbg !4740
  store i32 0, ptr %retval, align 4, !dbg !4741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4741

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %root1) #17, !dbg !4742
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #17, !dbg !4742
  call void @llvm.lifetime.end.p0(i64 8, ptr %kf_root) #17, !dbg !4742
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !4742
  %35 = load i32, ptr %retval, align 4, !dbg !4742
  ret i32 %35, !dbg !4742
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4743 dso_local void @deactivate_locked_super(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4744 dso_local void @uuid_gen(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4748 dso_local void @down_write(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !4752 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4756, metadata !DIExpression()), !dbg !4758
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4757, metadata !DIExpression()), !dbg !4759
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4760
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4761
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4762
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !4763
  %3 = load ptr, ptr %next, align 8, !dbg !4763
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #16, !dbg !4764
  ret void, !dbg !4765
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4766 dso_local void @up_write(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kernfs_free_fs_context(ptr noundef %fc) #1 align 16 !dbg !4767 {
entry:
  %fc.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4769, metadata !DIExpression()), !dbg !4770
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !4771
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12, !dbg !4772
  %1 = load ptr, ptr %s_fs_info, align 8, !dbg !4772
  call void @kfree(ptr noundef %1) #16, !dbg !4773
  %2 = load ptr, ptr %fc.addr, align 8, !dbg !4774
  %s_fs_info1 = getelementptr inbounds %struct.fs_context, ptr %2, i32 0, i32 12, !dbg !4775
  store ptr null, ptr %s_fs_info1, align 8, !dbg !4776
  ret void, !dbg !4777
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4778 dso_local void @kfree(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kernfs_kill_sb(ptr noundef %sb) #1 align 16 !dbg !4781 {
entry:
  %sb.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %root = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4783, metadata !DIExpression()), !dbg !4786
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4784, metadata !DIExpression()), !dbg !4788
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4789
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !4789
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !4789
  store ptr %1, ptr %info, align 8, !dbg !4788
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #17, !dbg !4790
  call void @llvm.dbg.declare(metadata ptr %root, metadata !4785, metadata !DIExpression()), !dbg !4791
  %2 = load ptr, ptr %info, align 8, !dbg !4792
  %root1 = getelementptr inbounds %struct.kernfs_super_info, ptr %2, i32 0, i32 1, !dbg !4793
  %3 = load ptr, ptr %root1, align 8, !dbg !4793
  store ptr %3, ptr %root, align 8, !dbg !4791
  %4 = load ptr, ptr %root, align 8, !dbg !4794
  %kernfs_supers_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %4, i32 0, i32 10, !dbg !4795
  call void @down_write(ptr noundef %kernfs_supers_rwsem) #16, !dbg !4796
  %5 = load ptr, ptr %info, align 8, !dbg !4797
  %node = getelementptr inbounds %struct.kernfs_super_info, ptr %5, i32 0, i32 3, !dbg !4798
  call void @list_del(ptr noundef %node) #16, !dbg !4799
  %6 = load ptr, ptr %root, align 8, !dbg !4800
  %kernfs_supers_rwsem2 = getelementptr inbounds %struct.kernfs_root, ptr %6, i32 0, i32 10, !dbg !4801
  call void @up_write(ptr noundef %kernfs_supers_rwsem2) #16, !dbg !4802
  %7 = load ptr, ptr %sb.addr, align 8, !dbg !4803
  call void @kill_anon_super(ptr noundef %7) #16, !dbg !4804
  %8 = load ptr, ptr %info, align 8, !dbg !4805
  call void @kfree(ptr noundef %8) #16, !dbg !4806
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #17, !dbg !4807
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !4807
  ret void, !dbg !4807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !4808 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4812
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !4813
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4814
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4815
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4816
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4817
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4818
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4819
  ret void, !dbg !4820
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4821 dso_local void @kill_anon_super(ptr noundef) #0

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @kernfs_init() #7 section ".init.text" align 16 !dbg !4822 {
entry:
  %call = call ptr @kmem_cache_create(ptr noundef @.str.1, i32 noundef 144, i32 noundef 0, i32 noundef 262144, ptr noundef null) #16, !dbg !4823
  store ptr %call, ptr @kernfs_node_cache, align 8, !dbg !4824
  %call1 = call ptr @kmem_cache_create(ptr noundef @.str.2, i32 noundef 80, i32 noundef 0, i32 noundef 262144, ptr noundef null) #16, !dbg !4825
  store ptr %call1, ptr @kernfs_iattrs_cache, align 8, !dbg !4826
  call void @kernfs_lock_init() #18, !dbg !4827
  ret void, !dbg !4828
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4829 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @kernfs_lock_init() #7 section ".init.text" align 16 !dbg !4832 {
entry:
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %call = call noalias ptr @kmalloc(i64 noundef 32768, i32 noundef 3264) #19, !dbg !4839
  store ptr %call, ptr @kernfs_locks, align 8, !dbg !4840
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4841
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4834, metadata !DIExpression()), !dbg !4841
  %0 = load ptr, ptr @kernfs_locks, align 8, !dbg !4841
  %tobool = icmp ne ptr %0, null, !dbg !4841
  %lnot = xor i1 %tobool, true, !dbg !4841
  %lnot1 = xor i1 %lnot, true, !dbg !4841
  %lnot2 = xor i1 %lnot1, true, !dbg !4841
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4841
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4841
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4842
  %tobool3 = icmp ne i32 %1, 0, !dbg !4842
  %lnot4 = xor i1 %tobool3, true, !dbg !4842
  %lnot6 = xor i1 %lnot4, true, !dbg !4842
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4842
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4842
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4842
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4842
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4841

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4842

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !4843
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4836, metadata !DIExpression()), !dbg !4843
  store i32 2305, ptr %__flags, align 4, !dbg !4843
  br label %do.body9, !dbg !4843

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4844

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4844

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4843

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4846
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 417, i32 %2, i64 12) #17, !dbg !4846, !srcloc !4848
  br label %do.cond11, !dbg !4846

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4846

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4843

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4849

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4849

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !4842
  br label %do.cond16, !dbg !4843

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4843

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !4843

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4841
  %tobool18 = icmp ne i32 %3, 0, !dbg !4841
  %lnot19 = xor i1 %tobool18, true, !dbg !4841
  %lnot21 = xor i1 %lnot19, true, !dbg !4841
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4841
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4841
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4841
  store i64 %expval24, ptr %tmp, align 8, !dbg !4842
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4851
  %4 = load i64, ptr %tmp, align 8, !dbg !4841
  call void @kernfs_mutex_init() #18, !dbg !4852
  ret void, !dbg !4853
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4854 dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @uuid_to_fsid(ptr noundef %uuid) #5 align 16 !dbg !4855 {
entry:
  %retval = alloca %struct.__kernel_fsid_t, align 4
  %uuid.addr = alloca ptr, align 8
  store ptr %uuid, ptr %uuid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uuid.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  %0 = load ptr, ptr %uuid.addr, align 8, !dbg !4862
  %call = call i64 @__le64_to_cpup(ptr noundef %0) #16, !dbg !4863
  %1 = load ptr, ptr %uuid.addr, align 8, !dbg !4864
  %add.ptr = getelementptr i8, ptr %1, i64 8, !dbg !4865
  %call1 = call i64 @__le64_to_cpup(ptr noundef %add.ptr) #16, !dbg !4866
  %xor = xor i64 %call, %call1, !dbg !4867
  %call2 = call i64 @u64_to_fsid(i64 noundef %xor) #16, !dbg !4868
  %coerce.dive = getelementptr inbounds %struct.__kernel_fsid_t, ptr %retval, i32 0, i32 0, !dbg !4868
  store i64 %call2, ptr %coerce.dive, align 4, !dbg !4868
  %coerce.dive3 = getelementptr inbounds %struct.__kernel_fsid_t, ptr %retval, i32 0, i32 0, !dbg !4869
  %2 = load i64, ptr %coerce.dive3, align 4, !dbg !4869
  ret i64 %2, !dbg !4869
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @u64_to_fsid(i64 noundef %v) #5 align 16 !dbg !4870 {
entry:
  %retval = alloca %struct.__kernel_fsid_t, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  %val = getelementptr inbounds %struct.__kernel_fsid_t, ptr %retval, i32 0, i32 0, !dbg !4876
  %arrayinit.begin = getelementptr inbounds [2 x i32], ptr %val, i64 0, i64 0, !dbg !4877
  %0 = load i64, ptr %v.addr, align 8, !dbg !4878
  %conv = trunc i64 %0 to i32, !dbg !4879
  store i32 %conv, ptr %arrayinit.begin, align 4, !dbg !4877
  %arrayinit.element = getelementptr inbounds i32, ptr %arrayinit.begin, i64 1, !dbg !4877
  %1 = load i64, ptr %v.addr, align 8, !dbg !4880
  %shr = lshr i64 %1, 32, !dbg !4881
  %conv1 = trunc i64 %shr to i32, !dbg !4882
  store i32 %conv1, ptr %arrayinit.element, align 4, !dbg !4877
  %coerce.dive = getelementptr inbounds %struct.__kernel_fsid_t, ptr %retval, i32 0, i32 0, !dbg !4883
  %2 = load i64, ptr %coerce.dive, align 4, !dbg !4883
  ret i64 %2, !dbg !4883
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__le64_to_cpup(ptr noundef %p) #9 align 16 !dbg !4884 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4894
  %1 = load i64, ptr %0, align 8, !dbg !4895
  ret i64 %1, !dbg !4896
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_root(ptr noundef %kn) #5 align 16 !dbg !4897 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4901, metadata !DIExpression()), !dbg !4902
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4903
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2, !dbg !4905
  %1 = load ptr, ptr %parent, align 8, !dbg !4905
  %tobool = icmp ne ptr %1, null, !dbg !4903
  br i1 %tobool, label %if.then, label %if.end, !dbg !4906

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !4907
  %parent1 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 2, !dbg !4908
  %3 = load ptr, ptr %parent1, align 8, !dbg !4908
  store ptr %3, ptr %kn.addr, align 8, !dbg !4909
  br label %if.end, !dbg !4910

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %kn.addr, align 8, !dbg !4911
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 7, !dbg !4912
  %root = getelementptr inbounds %struct.kernfs_elem_dir, ptr %5, i32 0, i32 2, !dbg !4913
  %6 = load ptr, ptr %root, align 8, !dbg !4913
  ret ptr %6, !dbg !4914
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_dentry_node(ptr noundef %dentry) #5 align 16 !dbg !4915 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4919, metadata !DIExpression()), !dbg !4920
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4921
  %call = call zeroext i1 @d_really_is_negative(ptr noundef %0) #16, !dbg !4923
  br i1 %call, label %if.then, label %if.end, !dbg !4924

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4925
  br label %return, !dbg !4925

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4926
  %call1 = call ptr @d_inode(ptr noundef %1) #16, !dbg !4927
  %i_private = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 47, !dbg !4928
  %2 = load ptr, ptr %i_private, align 8, !dbg !4928
  store ptr %2, ptr %retval, align 8, !dbg !4929
  br label %return, !dbg !4929

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !4930
  ret ptr %3, !dbg !4930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_negative(ptr noundef %dentry) #5 align 16 !dbg !4931 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4935, metadata !DIExpression()), !dbg !4936
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4937
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4938
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4938
  %cmp = icmp eq ptr %1, null, !dbg !4939
  ret i1 %cmp, !dbg !4940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #5 align 16 !dbg !4941 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4945, metadata !DIExpression()), !dbg !4946
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4947
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4948
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4948
  ret ptr %1, !dbg !4949
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4950 dso_local i32 @seq_dentry(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4953 dso_local void @lockref_get(ptr noundef) #0

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4957 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !4961 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4963, metadata !DIExpression()), !dbg !4968
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4964, metadata !DIExpression()), !dbg !4969
  %0 = load i64, ptr %size.addr, align 8, !dbg !4970
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4971
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4972

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4973
  %tobool = icmp ne i64 %2, 0, !dbg !4973
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4974

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !4975
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4965, metadata !DIExpression()), !dbg !4976
  %3 = load i64, ptr %size.addr, align 8, !dbg !4977
  %cmp = icmp ugt i64 %3, 8192, !dbg !4979
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4980

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4981
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4982
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !4983
  store ptr %call, ptr %retval, align 8, !dbg !4984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4984

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4985
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !4985
  store i32 %call2, ptr %index, align 4, !dbg !4986
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4987
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4988
  %9 = ptrtoint ptr %8 to i64, !dbg !4988
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !4989
  %idxprom = zext i32 %call3 to i64, !dbg !4990
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4990
  %10 = load i32, ptr %index, align 4, !dbg !4991
  %idxprom4 = zext i32 %10 to i64, !dbg !4990
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4990
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4990
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4992
  %13 = load i64, ptr %size.addr, align 8, !dbg !4993
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !4994
  store ptr %call6, ptr %retval, align 8, !dbg !4995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4995

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !4996
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4997
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4998
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !4999
  store ptr %call8, ptr %retval, align 8, !dbg !5000
  br label %return, !dbg !5000

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5001
  ret ptr %16, !dbg !5001
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5002 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !5003 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5007, metadata !DIExpression()), !dbg !5009
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5008, metadata !DIExpression()), !dbg !5010
  %0 = load i64, ptr %size.addr, align 8, !dbg !5011
  %tobool = icmp ne i64 %0, 0, !dbg !5011
  br i1 %tobool, label %if.end, label %if.then, !dbg !5013

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5014
  br label %return, !dbg !5014

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5015
  %cmp = icmp ule i64 %1, 8, !dbg !5017
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5018

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5019
  br label %return, !dbg !5019

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5020
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5022
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5023

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5024
  %cmp4 = icmp ule i64 %3, 96, !dbg !5025
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5026

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5027
  br label %return, !dbg !5027

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5028
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5030
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5031

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5032
  %cmp9 = icmp ule i64 %5, 192, !dbg !5033
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5034

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5036
  %cmp12 = icmp ule i64 %6, 8, !dbg !5038
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5039

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5040
  br label %return, !dbg !5040

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5041
  %cmp15 = icmp ule i64 %7, 16, !dbg !5043
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5044

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5045
  br label %return, !dbg !5045

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5046
  %cmp18 = icmp ule i64 %8, 32, !dbg !5048
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5049

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5050
  br label %return, !dbg !5050

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5051
  %cmp21 = icmp ule i64 %9, 64, !dbg !5053
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5054

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5055
  br label %return, !dbg !5055

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5056
  %cmp24 = icmp ule i64 %10, 128, !dbg !5058
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5059

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5060
  br label %return, !dbg !5060

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5061
  %cmp27 = icmp ule i64 %11, 256, !dbg !5063
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5064

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5065
  br label %return, !dbg !5065

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5066
  %cmp30 = icmp ule i64 %12, 512, !dbg !5068
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5069

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5070
  br label %return, !dbg !5070

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5071
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5073
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5074

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5075
  br label %return, !dbg !5075

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5076
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5078
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5079

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5080
  br label %return, !dbg !5080

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5081
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5083
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5084

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5085
  br label %return, !dbg !5085

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5086
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5088
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5089

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5090
  br label %return, !dbg !5090

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5091
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5093
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5094

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5095
  br label %return, !dbg !5095

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5096
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5098
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5099

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5100
  br label %return, !dbg !5100

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5101
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5103
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5104

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5105
  br label %return, !dbg !5105

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5106
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5108
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5109

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5111
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5113
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5114

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5116
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5118
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5119

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5121
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5123
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5124

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5125
  br label %return, !dbg !5125

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5126
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5128
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5129

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5131, !range !4351, !noundef !1232
  %tobool69 = trunc i8 %25 to i1, !dbg !5131
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5133

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5134

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !5135, !srcloc !5138
  unreachable, !dbg !5135

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5139

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5140

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5141

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5143

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5141

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #17, !dbg !5145, !srcloc !5147
  br label %do.end75, !dbg !5145

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5141

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5148
  br label %return, !dbg !5148

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5149
  ret i32 %26, !dbg !5149
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5150 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !5153 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5157, metadata !DIExpression()), !dbg !5159
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5158, metadata !DIExpression()), !dbg !5160
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5161
  %and = and i32 %0, 17, !dbg !5161
  %cmp = icmp eq i32 %and, 0, !dbg !5161
  %lnot = xor i1 %cmp, true, !dbg !5161
  %lnot1 = xor i1 %lnot, true, !dbg !5161
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5161
  %conv = sext i32 %lnot.ext to i64, !dbg !5161
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5161
  %tobool = icmp ne i64 %expval, 0, !dbg !5161
  br i1 %tobool, label %if.then, label %if.end, !dbg !5163

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5164
  br label %return, !dbg !5164

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5165
  %and2 = and i32 %1, 1, !dbg !5167
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5167
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5168

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5169
  br label %return, !dbg !5169

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5172
  ret i32 %2, !dbg !5172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5173 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5174 dso_local void @__compiletime_assert_245() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5175 dso_local i32 @set_anon_super_fc(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5176 dso_local void @down_read(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5177 dso_local ptr @kernfs_get_inode(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5180 dso_local void @up_read(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5181 dso_local ptr @d_make_root(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_encode_fh(ptr noundef %inode, ptr noundef %fh, ptr noundef %max_len, ptr noundef %parent) #1 align 16 !dbg !5184 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %fh.addr = alloca ptr, align 8
  %max_len.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5186, metadata !DIExpression()), !dbg !5191
  store ptr %fh, ptr %fh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fh.addr, metadata !5187, metadata !DIExpression()), !dbg !5192
  store ptr %max_len, ptr %max_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_len.addr, metadata !5188, metadata !DIExpression()), !dbg !5193
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5189, metadata !DIExpression()), !dbg !5194
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #17, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5190, metadata !DIExpression()), !dbg !5196
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5197
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !5198
  %1 = load ptr, ptr %i_private, align 8, !dbg !5198
  store ptr %1, ptr %kn, align 8, !dbg !5196
  %2 = load ptr, ptr %max_len.addr, align 8, !dbg !5199
  %3 = load i32, ptr %2, align 4, !dbg !5201
  %cmp = icmp slt i32 %3, 2, !dbg !5202
  br i1 %cmp, label %if.then, label %if.end, !dbg !5203

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %max_len.addr, align 8, !dbg !5204
  store i32 2, ptr %4, align 4, !dbg !5206
  store i32 255, ptr %retval, align 4, !dbg !5207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5207

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %max_len.addr, align 8, !dbg !5208
  store i32 2, ptr %5, align 4, !dbg !5209
  %6 = load ptr, ptr %kn, align 8, !dbg !5210
  %id = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 9, !dbg !5211
  %7 = load i64, ptr %id, align 8, !dbg !5211
  %8 = load ptr, ptr %fh.addr, align 8, !dbg !5212
  store i64 %7, ptr %8, align 8, !dbg !5213
  store i32 254, ptr %retval, align 4, !dbg !5214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5214

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #17, !dbg !5215
  %9 = load i32, ptr %retval, align 4, !dbg !5215
  ret i32 %9, !dbg !5215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 align 16 !dbg !5216 {
entry:
  %sb.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %fh_len.addr = alloca i32, align 4
  %fh_type.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5218, metadata !DIExpression()), !dbg !5222
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5219, metadata !DIExpression()), !dbg !5223
  store i32 %fh_len, ptr %fh_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_len.addr, metadata !5220, metadata !DIExpression()), !dbg !5224
  store i32 %fh_type, ptr %fh_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_type.addr, metadata !5221, metadata !DIExpression()), !dbg !5225
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5226
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !5227
  %2 = load i32, ptr %fh_len.addr, align 4, !dbg !5228
  %3 = load i32, ptr %fh_type.addr, align 4, !dbg !5229
  %call = call ptr @__kernfs_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext false) #16, !dbg !5230
  ret ptr %call, !dbg !5231
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 align 16 !dbg !5232 {
entry:
  %sb.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %fh_len.addr = alloca i32, align 4
  %fh_type.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5234, metadata !DIExpression()), !dbg !5238
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5235, metadata !DIExpression()), !dbg !5239
  store i32 %fh_len, ptr %fh_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_len.addr, metadata !5236, metadata !DIExpression()), !dbg !5240
  store i32 %fh_type, ptr %fh_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_type.addr, metadata !5237, metadata !DIExpression()), !dbg !5241
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5242
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !5243
  %2 = load i32, ptr %fh_len.addr, align 4, !dbg !5244
  %3 = load i32, ptr %fh_type.addr, align 4, !dbg !5245
  %call = call ptr @__kernfs_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true) #16, !dbg !5246
  ret ptr %call, !dbg !5247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_get_parent_dentry(ptr noundef %child) #1 align 16 !dbg !5248 {
entry:
  %child.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !5250, metadata !DIExpression()), !dbg !5252
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #17, !dbg !5253
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5251, metadata !DIExpression()), !dbg !5254
  %0 = load ptr, ptr %child.addr, align 8, !dbg !5255
  %call = call ptr @kernfs_dentry_node(ptr noundef %0) #16, !dbg !5256
  store ptr %call, ptr %kn, align 8, !dbg !5254
  %1 = load ptr, ptr %child.addr, align 8, !dbg !5257
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9, !dbg !5258
  %2 = load ptr, ptr %d_sb, align 8, !dbg !5258
  %3 = load ptr, ptr %kn, align 8, !dbg !5259
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 2, !dbg !5260
  %4 = load ptr, ptr %parent, align 8, !dbg !5260
  %call1 = call ptr @kernfs_get_inode(ptr noundef %2, ptr noundef %4) #16, !dbg !5261
  %call2 = call ptr @d_obtain_alias(ptr noundef %call1) #16, !dbg !5262
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #17, !dbg !5263
  ret ptr %call2, !dbg !5264
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__kernfs_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, i1 noundef zeroext %get_parent) #1 align 16 !dbg !5265 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  %fh_len.addr = alloca i32, align 4
  %fh_type.addr = alloca i32, align 4
  %get_parent.addr = alloca i8, align 1
  %info = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %parent = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5269, metadata !DIExpression()), !dbg !5281
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5270, metadata !DIExpression()), !dbg !5282
  store i32 %fh_len, ptr %fh_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_len.addr, metadata !5271, metadata !DIExpression()), !dbg !5283
  store i32 %fh_type, ptr %fh_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_type.addr, metadata !5272, metadata !DIExpression()), !dbg !5284
  %frombool = zext i1 %get_parent to i8
  store i8 %frombool, ptr %get_parent.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %get_parent.addr, metadata !5273, metadata !DIExpression()), !dbg !5285
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5274, metadata !DIExpression()), !dbg !5287
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5288
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5288
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5288
  store ptr %1, ptr %info, align 8, !dbg !5287
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #17, !dbg !5289
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5275, metadata !DIExpression()), !dbg !5290
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #17, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5276, metadata !DIExpression()), !dbg !5292
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #17, !dbg !5293
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5277, metadata !DIExpression()), !dbg !5294
  %2 = load i32, ptr %fh_len.addr, align 4, !dbg !5295
  %cmp = icmp slt i32 %2, 2, !dbg !5297
  br i1 %cmp, label %if.then, label %if.end, !dbg !5298

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !5299

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %fh_type.addr, align 4, !dbg !5300
  switch i32 %3, label %sw.default [
    i32 254, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb1
  ], !dbg !5301

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %fid.addr, align 8, !dbg !5302
  %5 = load i64, ptr %4, align 8, !dbg !5304
  store i64 %5, ptr %id, align 8, !dbg !5305
  br label %sw.epilog, !dbg !5306

sw.bb1:                                           ; preds = %if.end, %if.end
  %6 = load ptr, ptr %fid.addr, align 8, !dbg !5307
  %7 = getelementptr inbounds %struct.fid, ptr %6, i32 0, i32 0, !dbg !5308
  %gen = getelementptr inbounds %struct.anon.26, ptr %7, i32 0, i32 1, !dbg !5309
  %8 = load i32, ptr %gen, align 4, !dbg !5309
  %conv = zext i32 %8 to i64, !dbg !5310
  %shl = shl i64 %conv, 32, !dbg !5311
  %9 = load ptr, ptr %fid.addr, align 8, !dbg !5312
  %10 = getelementptr inbounds %struct.fid, ptr %9, i32 0, i32 0, !dbg !5313
  %ino = getelementptr inbounds %struct.anon.26, ptr %10, i32 0, i32 0, !dbg !5314
  %11 = load i32, ptr %ino, align 4, !dbg !5314
  %conv2 = zext i32 %11 to i64, !dbg !5312
  %or = or i64 %shl, %conv2, !dbg !5315
  store i64 %or, ptr %id, align 8, !dbg !5316
  br label %sw.epilog, !dbg !5317

sw.default:                                       ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !5318

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %12 = load ptr, ptr %info, align 8, !dbg !5319
  %root = getelementptr inbounds %struct.kernfs_super_info, ptr %12, i32 0, i32 1, !dbg !5320
  %13 = load ptr, ptr %root, align 8, !dbg !5320
  %14 = load i64, ptr %id, align 8, !dbg !5321
  %call = call ptr @kernfs_find_and_get_node_by_id(ptr noundef %13, i64 noundef %14) #16, !dbg !5322
  store ptr %call, ptr %kn, align 8, !dbg !5323
  %15 = load ptr, ptr %kn, align 8, !dbg !5324
  %tobool = icmp ne ptr %15, null, !dbg !5324
  br i1 %tobool, label %if.end5, label %if.then3, !dbg !5326

if.then3:                                         ; preds = %sw.epilog
  %call4 = call ptr @ERR_PTR(i64 noundef -116) #16, !dbg !5327
  store ptr %call4, ptr %retval, align 8, !dbg !5328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !5328

if.end5:                                          ; preds = %sw.epilog
  %16 = load i8, ptr %get_parent.addr, align 1, !dbg !5329, !range !4351, !noundef !1232
  %tobool6 = trunc i8 %16 to i1, !dbg !5329
  br i1 %tobool6, label %if.then7, label %if.end13, !dbg !5330

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5278, metadata !DIExpression()), !dbg !5332
  %17 = load ptr, ptr %kn, align 8, !dbg !5333
  %call8 = call ptr @kernfs_get_parent(ptr noundef %17) #16, !dbg !5334
  store ptr %call8, ptr %parent, align 8, !dbg !5335
  %18 = load ptr, ptr %kn, align 8, !dbg !5336
  call void @kernfs_put(ptr noundef %18) #16, !dbg !5337
  %19 = load ptr, ptr %parent, align 8, !dbg !5338
  store ptr %19, ptr %kn, align 8, !dbg !5339
  %20 = load ptr, ptr %kn, align 8, !dbg !5340
  %tobool9 = icmp ne ptr %20, null, !dbg !5340
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !5342

if.then10:                                        ; preds = %if.then7
  %call11 = call ptr @ERR_PTR(i64 noundef -116) #16, !dbg !5343
  store ptr %call11, ptr %retval, align 8, !dbg !5344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5344

if.end12:                                         ; preds = %if.then7
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5345
  br label %cleanup, !dbg !5345

cleanup:                                          ; preds = %if.end12, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !5345
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup20 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13, !dbg !5346

if.end13:                                         ; preds = %cleanup.cont, %if.end5
  %21 = load ptr, ptr %sb.addr, align 8, !dbg !5347
  %22 = load ptr, ptr %kn, align 8, !dbg !5348
  %call14 = call ptr @kernfs_get_inode(ptr noundef %21, ptr noundef %22) #16, !dbg !5349
  store ptr %call14, ptr %inode, align 8, !dbg !5350
  %23 = load ptr, ptr %kn, align 8, !dbg !5351
  call void @kernfs_put(ptr noundef %23) #16, !dbg !5352
  %24 = load ptr, ptr %inode, align 8, !dbg !5353
  %tobool15 = icmp ne ptr %24, null, !dbg !5353
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !5355

if.then16:                                        ; preds = %if.end13
  %call17 = call ptr @ERR_PTR(i64 noundef -116) #16, !dbg !5356
  store ptr %call17, ptr %retval, align 8, !dbg !5357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !5357

if.end18:                                         ; preds = %if.end13
  %25 = load ptr, ptr %inode, align 8, !dbg !5358
  %call19 = call ptr @d_obtain_alias(ptr noundef %25) #16, !dbg !5359
  store ptr %call19, ptr %retval, align 8, !dbg !5360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !5360

cleanup20:                                        ; preds = %if.end18, %if.then16, %cleanup, %if.then3, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #17, !dbg !5361
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #17, !dbg !5361
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #17, !dbg !5361
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !5361
  %26 = load ptr, ptr %retval, align 8, !dbg !5361
  ret ptr %26, !dbg !5361
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5362 dso_local ptr @kernfs_find_and_get_node_by_id(ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5365 dso_local ptr @kernfs_get_parent(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5368 dso_local void @kernfs_put(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5371 dso_local ptr @d_obtain_alias(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5372 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5376, metadata !DIExpression()), !dbg !5379
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5377, metadata !DIExpression()), !dbg !5380
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5378, metadata !DIExpression()), !dbg !5381
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5382
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5384
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5385
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !5386
  br i1 %call, label %if.end, label %if.then, !dbg !5387

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5388

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5389
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5390
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5391
  store ptr %3, ptr %prev1, align 8, !dbg !5392
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5393
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5394
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5395
  store ptr %5, ptr %next2, align 8, !dbg !5396
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5397
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5398
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5399
  store ptr %7, ptr %prev3, align 8, !dbg !5400
  br label %do.body, !dbg !5401

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5402

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5404

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5402

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5406
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5406
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5406
  store volatile ptr %9, ptr %next6, align 8, !dbg !5406
  br label %do.end7, !dbg !5406

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5402

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5408
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5409 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5413, metadata !DIExpression()), !dbg !5416
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5414, metadata !DIExpression()), !dbg !5417
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5415, metadata !DIExpression()), !dbg !5418
  ret i1 true, !dbg !5419
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !5420 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5424
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !5426
  br i1 %call, label %if.end, label %if.then, !dbg !5427

if.then:                                          ; preds = %entry
  br label %return, !dbg !5428

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5429
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5430
  %2 = load ptr, ptr %prev, align 8, !dbg !5430
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5431
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5432
  %4 = load ptr, ptr %next, align 8, !dbg !5432
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !5433
  br label %return, !dbg !5434

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !5435 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  ret i1 true, !dbg !5441
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5442 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5444, metadata !DIExpression()), !dbg !5446
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5445, metadata !DIExpression()), !dbg !5447
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5448
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5449
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5450
  store ptr %0, ptr %prev1, align 8, !dbg !5451
  br label %do.body, !dbg !5452

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5453

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5455

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5453

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5457
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5457
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5457
  store volatile ptr %2, ptr %next4, align 8, !dbg !5457
  br label %do.end5, !dbg !5457

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5453

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5459
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @kernfs_mutex_init() #7 section ".init.text" align 16 !dbg !4083 {
entry:
  %count = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #17, !dbg !5460
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4085, metadata !DIExpression()), !dbg !5461
  store i32 0, ptr %count, align 4, !dbg !5462
  br label %for.cond, !dbg !5464

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %count, align 4, !dbg !5465
  %cmp = icmp slt i32 %0, 1024, !dbg !5467
  br i1 %cmp, label %for.body, label %for.end, !dbg !5468

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !5469

do.body:                                          ; preds = %for.body
  %1 = load ptr, ptr @kernfs_locks, align 8, !dbg !5470
  %open_file_mutex = getelementptr inbounds %struct.kernfs_global_locks, ptr %1, i32 0, i32 0, !dbg !5470
  %2 = load i32, ptr %count, align 4, !dbg !5470
  %idxprom = sext i32 %2 to i64, !dbg !5470
  %arrayidx = getelementptr [1024 x %struct.mutex], ptr %open_file_mutex, i64 0, i64 %idxprom, !dbg !5470
  call void @__mutex_init(ptr noundef %arrayidx, ptr noundef @.str.6, ptr noundef @kernfs_mutex_init.__key) #16, !dbg !5470
  br label %do.cond, !dbg !5470

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5470

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !5470

for.inc:                                          ; preds = %do.end
  %3 = load i32, ptr %count, align 4, !dbg !5472
  %inc = add i32 %3, 1, !dbg !5472
  store i32 %inc, ptr %count, align 4, !dbg !5472
  br label %for.cond, !dbg !5473, !llvm.loop !5474

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17, !dbg !5476
  ret void, !dbg !5476
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5477 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098}
!llvm.ident = !{!4099}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "kernfs_sops", scope: !2, file: !3, line: 57, type: !2138, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/kernfs/.mount.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/kernfs/mount\22 -D KBUILD_BASENAME=\22mount\22 -D KBUILD_MODNAME=\22mount\22 -D __KBUILD_MODNAME=kmod_mount -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/kernfs/mount.ll fs/kernfs/mount.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !233, globals: !4023, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/kernfs/mount.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27f7daae5b047cdd652fce5ee72d8b0c")
!4 = !{!5, !15, !23, !119, !127, !143, !150, !155, !164, !170, !175, !181, !188, !193, !198, !208, !215}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !6, line: 51, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!10 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!11 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!12 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!13 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!14 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !16, line: 9, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!17 = !{!18, !19, !20, !21, !22}
!18 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!19 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!20 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!21 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!22 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !25, file: !24, line: 147, baseType: !7, size: 32, elements: !116)
!24 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !24, line: 135, size: 512, elements: !26)
!26 = !{!27, !31, !33, !35, !39, !40, !56, !114, !115}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !25, file: !24, line: 136, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !24, line: 137, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !25, file: !24, line: 138, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !25, file: !24, line: 139, baseType: !36, size: 16, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !24, line: 150, baseType: !23, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !25, file: !24, line: 151, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !24, line: 64, baseType: !43)
!43 = !DISubroutineType(types: !44)
!44 = !{!34, !45, !34, !32, !46, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !37, line: 52, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !49, line: 88, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !25, file: !24, line: 152, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !24, line: 117, size: 256, elements: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !24, line: 118, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !37, line: 174, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 172, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !62, file: !37, line: 173, baseType: !34, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !58, file: !24, line: 119, baseType: !66, size: 192, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !67, line: 37, size: 192, elements: !69)
!69 = !{!70, !108}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !67, line: 38, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !91, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !61, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !84, line: 25, baseType: !95, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !92, file: !84, line: 26, baseType: !95, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !103)
!103 = !{!104, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !102, file: !84, line: 29, baseType: !105, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !38)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !84, line: 30, baseType: !105, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !67, line: 39, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !37, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !37, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !37, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !25, file: !24, line: 153, baseType: !32, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !25, file: !24, line: 154, baseType: !32, size: 64, offset: 448)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !120, line: 68, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!121 = !{!122, !123, !124, !125, !126}
!122 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!123 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!124 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!125 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !128, line: 1325, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!130 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!131 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!132 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!133 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!134 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!135 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!136 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!137 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!138 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!139 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!140 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!141 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!142 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !144, line: 15, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!145 = !{!146, !147, !148, !149}
!146 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!147 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!148 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!149 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !6, line: 29, baseType: !7, size: 32, elements: !151)
!151 = !{!152, !153, !154}
!152 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!153 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!154 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !6, line: 38, baseType: !7, size: 32, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163}
!157 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!158 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!159 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!160 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!161 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!162 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!163 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !165, line: 54, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "USRQUOTA", value: 0)
!168 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!169 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !171, line: 65, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!174 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !176, line: 16, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!177 = !{!178, !179, !180}
!178 = !DIEnumerator(name: "TT_NONE", value: 0)
!179 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!180 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !182, line: 51, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!183 = !{!184, !185, !186, !187}
!184 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!185 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!186 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!187 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !189, line: 2052, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!190 = !{!191, !192}
!191 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!192 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !194, line: 10, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!195 = !{!196, !197}
!196 = !DIEnumerator(name: "false", value: 0)
!197 = !DIEnumerator(name: "true", value: 1)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !199, line: 364, baseType: !7, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!200 = !{!201, !202, !203, !204, !205, !206, !207}
!201 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!202 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!203 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!204 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!205 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!206 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!207 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_root_flag", file: !209, line: 120, baseType: !7, size: 32, elements: !210)
!209 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!210 = !{!211, !212, !213, !214}
!211 = !DIEnumerator(name: "KERNFS_ROOT_CREATE_DEACTIVATED", value: 1)
!212 = !DIEnumerator(name: "KERNFS_ROOT_EXTRA_OPEN_PERM_CHECK", value: 2)
!213 = !DIEnumerator(name: "KERNFS_ROOT_SUPPORT_EXPORTOP", value: 4)
!214 = !DIEnumerator(name: "KERNFS_ROOT_SUPPORT_USER_XATTR", value: 8)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fid_type", file: !216, line: 25, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/exportfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b88049a7651ed625da9f6bb7042c568")
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!218 = !DIEnumerator(name: "FILEID_ROOT", value: 0)
!219 = !DIEnumerator(name: "FILEID_INO32_GEN", value: 1)
!220 = !DIEnumerator(name: "FILEID_INO32_GEN_PARENT", value: 2)
!221 = !DIEnumerator(name: "FILEID_BTRFS_WITHOUT_PARENT", value: 77)
!222 = !DIEnumerator(name: "FILEID_BTRFS_WITH_PARENT", value: 78)
!223 = !DIEnumerator(name: "FILEID_BTRFS_WITH_PARENT_ROOT", value: 79)
!224 = !DIEnumerator(name: "FILEID_UDF_WITHOUT_PARENT", value: 81)
!225 = !DIEnumerator(name: "FILEID_UDF_WITH_PARENT", value: 82)
!226 = !DIEnumerator(name: "FILEID_NILFS_WITHOUT_PARENT", value: 97)
!227 = !DIEnumerator(name: "FILEID_NILFS_WITH_PARENT", value: 98)
!228 = !DIEnumerator(name: "FILEID_FAT_WITHOUT_PARENT", value: 113)
!229 = !DIEnumerator(name: "FILEID_FAT_WITH_PARENT", value: 114)
!230 = !DIEnumerator(name: "FILEID_LUSTRE", value: 151)
!231 = !DIEnumerator(name: "FILEID_KERNFS", value: 254)
!232 = !DIEnumerator(name: "FILEID_INVALID", value: 255)
!233 = !{!234, !1059, !32, !4020, !246, !458, !51, !4021, !781, !2468, !457}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_super_info", file: !236, line: 78, size: 320, elements: !237)
!236 = !DIFile(filename: "fs/kernfs/kernfs-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "32718b52ec0a489d6666a316c4c2b870")
!237 = !{!238, !3872, !4018, !4019}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !235, file: !236, line: 79, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !189, line: 1190, size: 10752, elements: !241)
!241 = !{!242, !243, !248, !249, !250, !251, !2136, !2287, !2327, !2409, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2512, !2516, !2517, !2520, !2523, !2526, !2529, !2530, !2531, !2572, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3813, !3820, !3821, !3822, !3823, !3824, !3839, !3840, !3841, !3842, !3843, !3846, !3847, !3848, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !240, file: !189, line: 1191, baseType: !109, size: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !240, file: !189, line: 1192, baseType: !244, size: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !37, line: 21, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !37, line: 18, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !7)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !240, file: !189, line: 1193, baseType: !99, size: 8, offset: 160)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !240, file: !189, line: 1194, baseType: !51, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !240, file: !189, line: 1195, baseType: !53, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !240, file: !189, line: 1196, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !189, line: 2366, size: 576, elements: !254)
!254 = !{!255, !256, !257, !2110, !2114, !2118, !2122, !2123, !2124, !2125, !2128, !2129, !2130, !2132, !2133, !2134, !2135}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !189, line: 2367, baseType: !28, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !253, file: !189, line: 2368, baseType: !34, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !253, file: !189, line: 2376, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!34, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !6, line: 90, size: 1216, elements: !263)
!263 = !{!264, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2080, !2081, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !262, file: !6, line: 91, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !6, line: 115, size: 384, elements: !268)
!268 = !{!269, !273, !277, !2065, !2069, !2070}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !267, file: !6, line: 116, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !261}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !267, file: !6, line: 117, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!34, !261, !261}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !267, file: !6, line: 118, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!34, !261, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !6, line: 63, size: 320, elements: !283)
!283 = !{!284, !285, !286, !2063, !2064}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !282, file: !6, line: 64, baseType: !28, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !282, file: !6, line: 65, baseType: !5, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !6, line: 66, baseType: !287, size: 64, offset: 128)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !6, line: 66, size: 64, elements: !288)
!288 = !{!289, !291, !292, !306}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !287, file: !6, line: 67, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !287, file: !6, line: 68, baseType: !32, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !6, line: 69, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !189, line: 2470, size: 256, elements: !295)
!295 = !{!296, !297, !298, !299, !302}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !189, line: 2471, baseType: !28, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !294, file: !189, line: 2472, baseType: !28, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !294, file: !189, line: 2473, baseType: !61, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !294, file: !189, line: 2474, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !189, line: 2469, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !294, file: !189, line: 2475, baseType: !303, offset: 256)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: -1)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !287, file: !6, line: 70, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !189, line: 994, size: 1856, align: 64, elements: !309)
!309 = !{!310, !329, !330, !332, !341, !354, !355, !356, !429, !798, !807, !2053, !2054, !2055, !2056, !2057, !2058, !2060, !2061, !2062}
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !189, line: 995, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !189, line: 995, size: 128, elements: !312)
!312 = !{!313, !319, !328}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !311, file: !189, line: 996, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !315, line: 60, size: 64, elements: !316)
!315 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !315, line: 61, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !311, file: !189, line: 997, baseType: !320, size: 128, align: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !37, line: 232, size: 128, align: 64, elements: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !37, line: 233, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !320, file: !37, line: 234, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !323}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !311, file: !189, line: 998, baseType: !7, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !308, file: !189, line: 1005, baseType: !71, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !308, file: !189, line: 1006, baseType: !331, size: 32, offset: 160)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !37, line: 156, baseType: !7)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !308, file: !189, line: 1007, baseType: !333, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !334, line: 13, baseType: !335)
!334 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !37, line: 181, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 179, size: 64, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !336, file: !37, line: 180, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !55)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !308, file: !189, line: 1008, baseType: !342, size: 256, offset: 256)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !343, line: 66, size: 256, elements: !344)
!343 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!344 = !{!345, !346, !348, !353}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !342, file: !343, line: 67, baseType: !333, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !342, file: !343, line: 68, baseType: !347, size: 32, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !342, file: !343, line: 70, baseType: !349, size: 32, offset: 96)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !350, line: 15, size: 32, elements: !351)
!350 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !349, file: !350, line: 20, baseType: !61, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !342, file: !343, line: 72, baseType: !109, size: 128, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !308, file: !189, line: 1009, baseType: !53, size: 64, offset: 512)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !308, file: !189, line: 1010, baseType: !7, size: 32, offset: 576)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !308, file: !189, line: 1011, baseType: !357, size: 256, offset: 640)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !189, line: 948, size: 256, elements: !358)
!358 = !{!359, !382, !418, !419, !427, !428}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !357, file: !189, line: 949, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !361, line: 34, baseType: !362)
!361 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 25, size: 64, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !362, file: !361, line: 26, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !366, line: 27, baseType: !367)
!366 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !366, line: 13, size: 64, elements: !368)
!368 = !{!369, !381}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !366, line: 14, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !366, line: 14, size: 32, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !370, file: !366, line: 15, baseType: !61, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !366, line: 16, baseType: !374, size: 32)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !366, line: 16, size: 32, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !374, file: !366, line: 18, baseType: !95, size: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !374, file: !366, line: 19, baseType: !378, size: 24, offset: 8)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 3)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !367, file: !366, line: 26, baseType: !83, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !357, file: !189, line: 950, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !16, line: 59, size: 768, elements: !385)
!385 = !{!386, !392, !393, !394, !407, !408, !409, !410}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !384, file: !16, line: 61, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !388, line: 113, baseType: !389)
!388 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !388, line: 111, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !389, file: !388, line: 112, baseType: !61, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !384, file: !16, line: 62, baseType: !7, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !384, file: !16, line: 63, baseType: !71, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !384, file: !16, line: 65, baseType: !395, size: 256, offset: 128)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 256, elements: !405)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !37, line: 194, size: 64, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !396, file: !37, line: 195, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !37, line: 198, size: 128, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !37, line: 199, baseType: !399, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !400, file: !37, line: 199, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!405 = !{!406}
!406 = !DISubrange(count: 4)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !384, file: !16, line: 66, baseType: !396, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !384, file: !16, line: 68, baseType: !66, size: 192, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !384, file: !16, line: 69, baseType: !320, size: 128, align: 64, offset: 640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !384, file: !16, line: 70, baseType: !411, offset: 768)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, elements: !304)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !16, line: 54, size: 128, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !412, file: !16, line: 55, baseType: !34, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !412, file: !16, line: 56, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !16, line: 56, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !357, file: !189, line: 951, baseType: !15, size: 32, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !357, file: !189, line: 952, baseType: !420, size: 32, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !421, line: 23, baseType: !422)
!421 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 21, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !422, file: !421, line: 22, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !37, line: 37, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !7)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !357, file: !189, line: 952, baseType: !420, size: 32, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !357, file: !189, line: 953, baseType: !34, size: 32, offset: 224)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !308, file: !189, line: 1012, baseType: !430, size: 64, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !433, line: 110, size: 1472, elements: !434)
!433 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!434 = !{!435, !436, !437, !444, !445, !446, !447, !448, !449, !450, !451, !460, !461, !462, !463, !464, !465, !595, !596, !597, !598, !599, !630, !784, !785, !793}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !432, file: !433, line: 111, baseType: !333, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !432, file: !433, line: 112, baseType: !420, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !432, file: !433, line: 113, baseType: !438, size: 32, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !421, line: 28, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 26, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !439, file: !421, line: 27, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !37, line: 38, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !432, file: !433, line: 114, baseType: !420, size: 32, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !432, file: !433, line: 115, baseType: !438, size: 32, offset: 160)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !432, file: !433, line: 116, baseType: !420, size: 32, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !432, file: !433, line: 117, baseType: !438, size: 32, offset: 224)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !432, file: !433, line: 118, baseType: !420, size: 32, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !432, file: !433, line: 119, baseType: !438, size: 32, offset: 288)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !432, file: !433, line: 120, baseType: !7, size: 32, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !432, file: !433, line: 121, baseType: !452, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !453, line: 24, baseType: !454)
!453 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 24, size: 64, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !454, file: !453, line: 24, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !459)
!459 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !432, file: !433, line: 122, baseType: !452, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !432, file: !433, line: 123, baseType: !452, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !432, file: !433, line: 124, baseType: !452, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !432, file: !433, line: 125, baseType: !452, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !432, file: !433, line: 127, baseType: !99, size: 8, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !432, file: !433, line: 129, baseType: !466, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !468, line: 195, size: 1728, elements: !469)
!468 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!469 = !{!470, !471, !476, !488, !497, !500, !501, !508, !509, !510, !511, !514, !515, !516, !518, !519, !559, !580}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !467, file: !468, line: 196, baseType: !387, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !467, file: !468, line: 197, baseType: !472, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !468, line: 28, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 104, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !34)
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !468, line: 198, baseType: !477, size: 192, offset: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !468, line: 198, size: 192, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !477, file: !468, line: 199, baseType: !109, size: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !477, file: !468, line: 200, baseType: !481, size: 192, align: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !482, line: 5, size: 192, align: 64, elements: !483)
!482 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!483 = !{!484, !485, !487}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !481, file: !482, line: 6, baseType: !51, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !481, file: !482, line: 7, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !481, file: !482, line: 8, baseType: !486, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !467, file: !468, line: 205, baseType: !489, size: 320, offset: 256)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !490, line: 48, size: 320, elements: !491)
!490 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!491 = !{!492, !493, !494, !495, !496}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !489, file: !490, line: 49, baseType: !333, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !489, file: !490, line: 55, baseType: !333, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !489, file: !490, line: 57, baseType: !349, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !489, file: !490, line: 59, baseType: !347, size: 32, offset: 160)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !489, file: !490, line: 60, baseType: !109, size: 128, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !467, file: !468, line: 206, baseType: !498, size: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !468, line: 206, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !467, file: !468, line: 207, baseType: !32, size: 64, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !468, line: 208, baseType: !502, size: 64, offset: 704)
!502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !468, line: 208, size: 64, elements: !503)
!503 = !{!504, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !502, file: !468, line: 209, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !506, line: 8, baseType: !340)
!506 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!507 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !502, file: !468, line: 210, baseType: !505, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !467, file: !468, line: 212, baseType: !505, size: 64, offset: 768)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !467, file: !468, line: 213, baseType: !420, size: 32, offset: 832)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !467, file: !468, line: 214, baseType: !438, size: 32, offset: 864)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !467, file: !468, line: 215, baseType: !512, size: 32, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !468, line: 31, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !246)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !467, file: !468, line: 216, baseType: !38, size: 16, offset: 928)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !467, file: !468, line: 217, baseType: !38, size: 16, offset: 944)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !467, file: !468, line: 221, baseType: !517, size: 16, offset: 960)
!517 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !468, line: 228, baseType: !51, size: 64, offset: 1024)
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !468, line: 245, baseType: !520, size: 320, offset: 1088)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !468, line: 245, size: 320, elements: !521)
!521 = !{!522, !551}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !520, file: !468, line: 246, baseType: !523, size: 320)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !468, line: 114, size: 320, elements: !524)
!524 = !{!525, !526, !538, !541, !550}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !523, file: !468, line: 116, baseType: !51, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !468, line: 117, baseType: !527, size: 64, offset: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !468, line: 117, size: 64, elements: !528)
!528 = !{!529, !537}
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !468, line: 118, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !527, file: !468, line: 118, size: 64, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !530, file: !468, line: 120, baseType: !105, size: 16)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !530, file: !468, line: 121, baseType: !534, size: 48, offset: 16)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 6)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !527, file: !468, line: 127, baseType: !51, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !468, line: 129, baseType: !539, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !468, line: 102, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !523, file: !468, line: 130, baseType: !542, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !468, line: 108, size: 192, elements: !544)
!544 = !{!545, !546, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !543, file: !468, line: 109, baseType: !320, size: 128, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !543, file: !468, line: 110, baseType: !387, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !543, file: !468, line: 111, baseType: !548, size: 8, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !549)
!549 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !523, file: !468, line: 131, baseType: !28, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !468, line: 247, baseType: !552, size: 320)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !468, line: 247, size: 320, elements: !553)
!553 = !{!554, !555, !556, !557, !558}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !552, file: !468, line: 248, baseType: !51, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !552, file: !468, line: 249, baseType: !51, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !468, line: 250, baseType: !539, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !552, file: !468, line: 251, baseType: !542, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !552, file: !468, line: 252, baseType: !290, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !468, line: 260, baseType: !560, size: 256, offset: 1408)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !468, line: 260, size: 256, elements: !561)
!561 = !{!562, !568}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !560, file: !468, line: 261, baseType: !563, size: 256)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !468, line: 134, size: 256, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !563, file: !468, line: 135, baseType: !32, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !563, file: !468, line: 136, baseType: !567, size: 256)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !405)
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !468, line: 262, baseType: !569, size: 256)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !468, line: 262, size: 256, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !569, file: !468, line: 264, baseType: !109, size: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !569, file: !468, line: 265, baseType: !573, size: 128, offset: 128)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !574, line: 22, size: 128, elements: !575)
!574 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!575 = !{!576, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !573, file: !574, line: 23, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !574, line: 23, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !573, file: !574, line: 24, baseType: !51, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !467, file: !468, line: 280, baseType: !581, size: 64, offset: 1664)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !468, line: 176, size: 192, elements: !583)
!583 = !{!584, !593, !594}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !582, file: !468, line: 177, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !468, line: 171, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!34, !466, !589, !591, !466}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !582, file: !468, line: 178, baseType: !466, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !582, file: !468, line: 179, baseType: !539, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !432, file: !433, line: 130, baseType: !466, size: 64, offset: 832)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !432, file: !433, line: 131, baseType: !466, size: 64, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !432, file: !433, line: 132, baseType: !466, size: 64, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !432, file: !433, line: 135, baseType: !32, size: 64, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !432, file: !433, line: 137, baseType: !600, size: 64, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !602, line: 14, size: 1088, elements: !603)
!602 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!603 = !{!604, !605, !614, !615, !616, !617, !618, !619}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !601, file: !602, line: 15, baseType: !387, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !601, file: !602, line: 17, baseType: !606, size: 320, offset: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !607, line: 22, size: 320, elements: !608)
!607 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!608 = !{!609, !610, !611, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !606, file: !607, line: 23, baseType: !347, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !606, file: !607, line: 24, baseType: !339, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !606, file: !607, line: 26, baseType: !109, size: 128, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !606, file: !607, line: 28, baseType: !613, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !601, file: !602, line: 19, baseType: !51, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !601, file: !602, line: 20, baseType: !333, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !601, file: !602, line: 23, baseType: !400, size: 128, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !601, file: !602, line: 24, baseType: !420, size: 32, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !601, file: !602, line: 29, baseType: !333, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !601, file: !602, line: 36, baseType: !620, size: 320, offset: 768)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !621, line: 15, size: 320, elements: !622)
!621 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!622 = !{!623, !624, !625, !626, !627, !628, !629}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !620, file: !621, line: 16, baseType: !347, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !620, file: !621, line: 18, baseType: !34, size: 32, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !620, file: !621, line: 19, baseType: !34, size: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !620, file: !621, line: 20, baseType: !34, size: 32, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !620, file: !621, line: 21, baseType: !34, size: 32, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !620, file: !621, line: 22, baseType: !51, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !621, line: 23, baseType: !51, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !432, file: !433, line: 138, baseType: !631, size: 64, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !633, line: 68, size: 4800, elements: !634)
!633 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!634 = !{!635, !657, !658, !659, !660, !661, !662, !663, !674, !675, !676, !677, !678, !679, !691, !764, !765, !779, !782}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !632, file: !633, line: 69, baseType: !636, size: 576)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !633, line: 23, size: 576, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !636, file: !633, line: 24, baseType: !246, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !633, line: 25, baseType: !640, size: 512, offset: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !636, file: !633, line: 25, size: 512, elements: !641)
!641 = !{!642, !651}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !640, file: !633, line: 26, baseType: !643, size: 480)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 480, elements: !649)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !633, line: 17, size: 96, elements: !645)
!645 = !{!646, !647, !648}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !644, file: !633, line: 18, baseType: !246, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !644, file: !633, line: 19, baseType: !246, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !644, file: !633, line: 20, baseType: !246, size: 32, offset: 64)
!649 = !{!650}
!650 = !DISubrange(count: 5)
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !633, line: 27, baseType: !652, size: 128)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !633, line: 27, size: 128, elements: !653)
!653 = !{!654, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !652, file: !633, line: 28, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !652, file: !633, line: 29, baseType: !655, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !632, file: !633, line: 70, baseType: !636, size: 576, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !632, file: !633, line: 71, baseType: !636, size: 576, offset: 1152)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !632, file: !633, line: 72, baseType: !631, size: 64, offset: 1728)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !632, file: !633, line: 73, baseType: !34, size: 32, offset: 1792)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !632, file: !633, line: 74, baseType: !420, size: 32, offset: 1824)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !632, file: !633, line: 75, baseType: !438, size: 32, offset: 1856)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !632, file: !633, line: 76, baseType: !664, size: 192, offset: 1920)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !665, line: 9, size: 192, elements: !666)
!665 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!666 = !{!667, !668, !672, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !664, file: !665, line: 10, baseType: !333, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !664, file: !665, line: 11, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !665, line: 7, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !664, file: !665, line: 12, baseType: !7, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !664, file: !665, line: 13, baseType: !387, size: 32, offset: 160)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !633, line: 77, baseType: !51, size: 64, offset: 2112)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !632, file: !633, line: 80, baseType: !548, size: 8, offset: 2176)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !632, file: !633, line: 88, baseType: !109, size: 128, offset: 2240)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !632, file: !633, line: 89, baseType: !466, size: 64, offset: 2368)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !632, file: !633, line: 90, baseType: !489, size: 320, offset: 2432)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !632, file: !633, line: 97, baseType: !680, size: 256, offset: 2752)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !681, line: 98, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!682 = !{!683, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !680, file: !681, line: 99, baseType: !333, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !680, file: !681, line: 100, baseType: !109, size: 128, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !680, file: !681, line: 101, baseType: !686, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !681, line: 21, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !632, file: !633, line: 99, baseType: !692, size: 768, offset: 3008)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !24, line: 199, size: 768, elements: !693)
!693 = !{!694, !699}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !692, file: !24, line: 200, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!34, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !692, file: !24, line: 201, baseType: !700, size: 704, offset: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !24, line: 193, size: 704, elements: !701)
!701 = !{!702, !760}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !700, file: !24, line: 195, baseType: !703, size: 640)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !24, line: 173, size: 640, elements: !704)
!704 = !{!705, !717, !729, !730, !750, !751, !753, !759}
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !24, line: 174, baseType: !706, size: 192)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !24, line: 174, size: 192, elements: !707)
!707 = !{!708, !716}
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !24, line: 175, baseType: !709, size: 192)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !706, file: !24, line: 175, size: 192, elements: !710)
!710 = !{!711, !712, !713, !714, !715}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !709, file: !24, line: 176, baseType: !45, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !709, file: !24, line: 177, baseType: !34, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !709, file: !24, line: 178, baseType: !34, size: 32, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !24, line: 179, baseType: !34, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !709, file: !24, line: 180, baseType: !34, size: 32, offset: 160)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !706, file: !24, line: 182, baseType: !320, size: 128, align: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !703, file: !24, line: 184, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !720, line: 26, size: 256, elements: !721)
!720 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !719, file: !720, line: 27, baseType: !7, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !719, file: !720, line: 28, baseType: !724, size: 192, offset: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !725, line: 43, size: 192, elements: !726)
!725 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !724, file: !725, line: 44, baseType: !347, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !724, file: !725, line: 45, baseType: !109, size: 128, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !703, file: !24, line: 185, baseType: !45, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !703, file: !24, line: 186, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !24, line: 204, size: 960, elements: !733)
!733 = !{!734, !735, !739, !746}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !732, file: !24, line: 205, baseType: !692, size: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !732, file: !24, line: 206, baseType: !736, size: 64, offset: 768)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!698, !731}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !732, file: !24, line: 207, baseType: !740, size: 64, offset: 832)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !732, file: !24, line: 209, baseType: !747, size: 64, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!34, !743, !45}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !703, file: !24, line: 187, baseType: !698, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !703, file: !24, line: 188, baseType: !752, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !24, line: 189, baseType: !754, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !24, line: 157, size: 256, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !755, file: !24, line: 158, baseType: !481, size: 192, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !755, file: !24, line: 159, baseType: !743, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !703, file: !24, line: 190, baseType: !396, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !700, file: !24, line: 196, baseType: !761, size: 64, offset: 640)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !482, line: 12, size: 64, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !761, file: !482, line: 13, baseType: !486, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !632, file: !633, line: 100, baseType: !743, size: 64, offset: 3776)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !632, file: !633, line: 102, baseType: !766, size: 64, offset: 3840)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !633, line: 107, size: 1152, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !777}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !767, file: !633, line: 108, baseType: !400, size: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !767, file: !633, line: 109, baseType: !631, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !767, file: !633, line: 110, baseType: !420, size: 32, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !767, file: !633, line: 111, baseType: !61, size: 32, offset: 224)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !767, file: !633, line: 112, baseType: !774, size: 640, offset: 256)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 640, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 10)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !767, file: !633, line: 113, baseType: !778, size: 256, offset: 896)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 256, elements: !405)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !632, file: !633, line: 103, baseType: !780, size: 640, offset: 3904)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 640, elements: !775)
!781 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !632, file: !633, line: 104, baseType: !783, size: 256, offset: 4544)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 256, elements: !405)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !432, file: !433, line: 139, baseType: !766, size: 64, offset: 1216)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !432, file: !433, line: 140, baseType: !786, size: 64, offset: 1280)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !433, line: 25, size: 64, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !787, file: !433, line: 26, baseType: !61, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !787, file: !433, line: 27, baseType: !34, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !787, file: !433, line: 28, baseType: !792, offset: 64)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, elements: !304)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !433, line: 142, baseType: !794, size: 128, offset: 1344)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !433, line: 142, size: 128, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !794, file: !433, line: 143, baseType: !34, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !794, file: !433, line: 144, baseType: !320, size: 128, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !308, file: !189, line: 1013, baseType: !799, size: 256, offset: 960)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !189, line: 970, size: 256, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !806}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !799, file: !189, line: 971, baseType: !51, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !799, file: !189, line: 972, baseType: !7, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !799, file: !189, line: 973, baseType: !7, size: 32, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !799, file: !189, line: 974, baseType: !7, size: 32, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !799, file: !189, line: 975, baseType: !7, size: 32, offset: 160)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !799, file: !189, line: 976, baseType: !53, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !308, file: !189, line: 1014, baseType: !808, size: 128, offset: 1216)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !809, line: 8, size: 128, elements: !810)
!809 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!810 = !{!811, !2052}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !808, file: !809, line: 9, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !814, line: 70, size: 256, elements: !815)
!814 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!815 = !{!816, !2049, !2050, !2051}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !813, file: !814, line: 71, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !819, line: 82, size: 1536, elements: !820)
!819 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!820 = !{!821, !822, !832, !840, !841, !856, !1956, !1960, !1973, !2032, !2033, !2034, !2035, !2041, !2042, !2043}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !818, file: !819, line: 84, baseType: !7, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !818, file: !819, line: 85, baseType: !823, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !824, line: 275, baseType: !825)
!824 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !824, line: 275, size: 32, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !825, file: !824, line: 275, baseType: !828, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !824, line: 69, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !824, line: 64, size: 32, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !829, file: !824, line: 65, baseType: !7, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !818, file: !819, line: 86, baseType: !833, size: 128, offset: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !834, line: 38, size: 128, elements: !835)
!834 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!835 = !{!836, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !834, line: 39, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !833, file: !834, line: 39, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !818, file: !819, line: 87, baseType: !817, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !818, file: !819, line: 88, baseType: !842, size: 128, offset: 256)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !819, line: 49, size: 128, elements: !843)
!843 = !{!844, !853}
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !842, file: !819, line: 50, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !842, file: !819, line: 50, size: 64, elements: !846)
!846 = !{!847, !852}
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !819, line: 51, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !845, file: !819, line: 51, size: 64, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !848, file: !819, line: 52, baseType: !246, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !848, file: !819, line: 52, baseType: !246, size: 32, offset: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !845, file: !819, line: 54, baseType: !457, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !842, file: !819, line: 56, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !818, file: !819, line: 89, baseType: !857, size: 64, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !189, line: 641, size: 4800, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !869, !870, !1062, !1063, !1719, !1720, !1721, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1936, !1939, !1940, !1941, !1950, !1951, !1952, !1955}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !858, file: !189, line: 642, baseType: !36, size: 16)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !858, file: !189, line: 643, baseType: !38, size: 16, offset: 16)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !858, file: !189, line: 644, baseType: !420, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !858, file: !189, line: 645, baseType: !109, size: 128, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !858, file: !189, line: 646, baseType: !438, size: 32, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !858, file: !189, line: 647, baseType: !7, size: 32, offset: 224)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !858, file: !189, line: 650, baseType: !867, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !189, line: 607, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !858, file: !189, line: 651, baseType: !867, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !858, file: !189, line: 654, baseType: !871, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !189, line: 1966, size: 2048, align: 512, elements: !874)
!874 = !{!875, !879, !892, !898, !902, !906, !910, !914, !918, !922, !926, !927, !931, !935, !972, !1003, !1010, !1016, !1020, !1024, !1028, !1032, !1036, !1042, !1046}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !873, file: !189, line: 1967, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!817, !857, !817, !7}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !873, file: !189, line: 1968, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!28, !817, !857, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !885, line: 10, size: 128, elements: !886)
!885 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!886 = !{!887, !891}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !884, file: !885, line: 11, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !32}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !884, file: !885, line: 12, baseType: !32, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !873, file: !189, line: 1969, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!34, !896, !857, !34}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !453, line: 42, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !873, file: !189, line: 1970, baseType: !899, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!867, !857, !34, !548}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !873, file: !189, line: 1972, baseType: !903, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!34, !817, !290, !34}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !873, file: !189, line: 1974, baseType: !907, size: 64, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!34, !896, !857, !817, !36, !548}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !873, file: !189, line: 1976, baseType: !911, size: 64, offset: 384)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!34, !817, !857, !817}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !873, file: !189, line: 1977, baseType: !915, size: 64, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!34, !857, !817}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !873, file: !189, line: 1978, baseType: !919, size: 64, offset: 512)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!34, !896, !857, !817, !28}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !873, file: !189, line: 1980, baseType: !923, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!34, !896, !857, !817, !36}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !873, file: !189, line: 1982, baseType: !915, size: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !873, file: !189, line: 1983, baseType: !928, size: 64, offset: 704)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!34, !896, !857, !817, !36, !244}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !873, file: !189, line: 1985, baseType: !932, size: 64, offset: 768)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!34, !896, !857, !817, !857, !817, !7}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !873, file: !189, line: 1987, baseType: !936, size: 64, offset: 832)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!34, !896, !817, !939}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !189, line: 226, size: 640, elements: !941)
!941 = !{!942, !943, !944, !954, !963, !964, !969, !970, !971}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !940, file: !189, line: 227, baseType: !7, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !940, file: !189, line: 228, baseType: !36, size: 16, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !189, line: 241, baseType: !945, size: 32, offset: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !189, line: 241, size: 32, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !945, file: !189, line: 242, baseType: !420, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !945, file: !189, line: 243, baseType: !949, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !950, line: 16, baseType: !951)
!950 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !950, line: 14, size: 32, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !951, file: !950, line: 15, baseType: !425, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !189, line: 245, baseType: !955, size: 32, offset: 96)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !189, line: 245, size: 32, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !955, file: !189, line: 246, baseType: !438, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !955, file: !189, line: 247, baseType: !959, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !950, line: 20, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !950, line: 18, size: 32, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !960, file: !950, line: 19, baseType: !442, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !940, file: !189, line: 249, baseType: !53, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !940, file: !189, line: 250, baseType: !965, size: 128, offset: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !506, line: 13, size: 128, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !965, file: !506, line: 14, baseType: !505, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !965, file: !506, line: 15, baseType: !781, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !940, file: !189, line: 251, baseType: !965, size: 128, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !940, file: !189, line: 252, baseType: !965, size: 128, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !940, file: !189, line: 259, baseType: !307, size: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !873, file: !189, line: 1988, baseType: !973, size: 64, offset: 896)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!34, !896, !976, !978, !246, !7}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !980, line: 22, size: 1280, elements: !981)
!980 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !979, file: !980, line: 23, baseType: !246, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !979, file: !980, line: 24, baseType: !36, size: 16, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !979, file: !980, line: 25, baseType: !7, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !979, file: !980, line: 26, baseType: !513, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !979, file: !980, line: 27, baseType: !457, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !979, file: !980, line: 28, baseType: !457, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !979, file: !980, line: 41, baseType: !457, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !979, file: !980, line: 42, baseType: !244, size: 32, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !979, file: !980, line: 43, baseType: !244, size: 32, offset: 352)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !979, file: !980, line: 44, baseType: !420, size: 32, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !979, file: !980, line: 45, baseType: !438, size: 32, offset: 416)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !979, file: !980, line: 46, baseType: !53, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !979, file: !980, line: 47, baseType: !965, size: 128, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !979, file: !980, line: 48, baseType: !965, size: 128, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !979, file: !980, line: 49, baseType: !965, size: 128, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !979, file: !980, line: 50, baseType: !965, size: 128, offset: 896)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !979, file: !980, line: 51, baseType: !457, size: 64, offset: 1024)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !979, file: !980, line: 52, baseType: !457, size: 64, offset: 1088)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !979, file: !980, line: 53, baseType: !246, size: 32, offset: 1152)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !979, file: !980, line: 54, baseType: !246, size: 32, offset: 1184)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !979, file: !980, line: 55, baseType: !457, size: 64, offset: 1216)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !873, file: !189, line: 1990, baseType: !1004, size: 64, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!1007, !817, !290, !47}
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 66, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !49, line: 73, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !49, line: 15, baseType: !781)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !873, file: !189, line: 1991, baseType: !1011, size: 64, offset: 1024)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!34, !857, !1014, !457, !457}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !189, line: 55, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !873, file: !189, line: 1993, baseType: !1017, size: 64, offset: 1088)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!34, !857, !34}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !873, file: !189, line: 1994, baseType: !1021, size: 64, offset: 1152)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!34, !857, !817, !307, !7, !36}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !873, file: !189, line: 1997, baseType: !1025, size: 64, offset: 1216)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!34, !896, !857, !307, !36}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !873, file: !189, line: 1999, baseType: !1029, size: 64, offset: 1280)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!867, !896, !817, !34}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !873, file: !189, line: 2001, baseType: !1033, size: 64, offset: 1344)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!34, !896, !817, !867, !34}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !873, file: !189, line: 2003, baseType: !1037, size: 64, offset: 1408)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!34, !896, !817, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !189, line: 76, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !873, file: !189, line: 2005, baseType: !1043, size: 64, offset: 1472)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!34, !817, !1040}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !873, file: !189, line: 2006, baseType: !1047, size: 64, offset: 1536)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050, !857}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !189, line: 3192, size: 192, elements: !1052)
!1052 = !{!1053, !1061}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1051, file: !189, line: 3193, baseType: !1054, size: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1055, line: 296, size: 128, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1056 = !{!1057, !1058, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1054, file: !1055, line: 297, baseType: !71, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1054, file: !1055, line: 299, baseType: !1059, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1054, file: !1055, line: 300, baseType: !32, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1051, file: !189, line: 3194, baseType: !246, size: 32, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !858, file: !189, line: 655, baseType: !239, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !858, file: !189, line: 656, baseType: !1064, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !189, line: 472, size: 1536, align: 64, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1077, !1078, !1079, !1711, !1712, !1713, !1716, !1717, !1718}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1065, file: !189, line: 473, baseType: !857, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1065, file: !189, line: 474, baseType: !1054, size: 128, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1065, file: !189, line: 475, baseType: !489, size: 320, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1065, file: !189, line: 476, baseType: !1059, size: 32, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1065, file: !189, line: 477, baseType: !61, size: 32, offset: 544)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1065, file: !189, line: 482, baseType: !1073, size: 128, offset: 576)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !482, line: 26, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1073, file: !482, line: 27, baseType: !761, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1073, file: !482, line: 28, baseType: !486, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1065, file: !189, line: 483, baseType: !51, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1065, file: !189, line: 484, baseType: !51, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1065, file: !189, line: 485, baseType: !1080, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !189, line: 404, size: 1280, elements: !1083)
!1083 = !{!1084, !1509, !1579, !1583, !1587, !1604, !1610, !1614, !1619, !1623, !1627, !1631, !1675, !1679, !1683, !1687, !1692, !1696, !1703, !1707}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1082, file: !189, line: 405, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!34, !1088, !1507}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !128, line: 74, size: 512, align: 128, elements: !1090)
!1090 = !{!1091, !1092, !1501, !1506}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !128, line: 75, baseType: !51, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !128, line: 83, baseType: !1093, size: 320, offset: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !128, line: 83, size: 320, elements: !1094)
!1094 = !{!1095, !1116, !1130, !1134, !1500}
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !128, line: 84, baseType: !1096, size: 320)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !128, line: 84, size: 320, elements: !1097)
!1097 = !{!1098, !1109, !1110, !1115}
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !128, line: 90, baseType: !1099, size: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1096, file: !128, line: 90, size: 128, elements: !1100)
!1100 = !{!1101, !1102, !1107, !1108}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1099, file: !128, line: 91, baseType: !109, size: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !128, line: 94, baseType: !1103, size: 128)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1099, file: !128, line: 94, size: 128, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1103, file: !128, line: 96, baseType: !32, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1103, file: !128, line: 98, baseType: !7, size: 32, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1099, file: !128, line: 102, baseType: !109, size: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1099, file: !128, line: 103, baseType: !109, size: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1096, file: !128, line: 106, baseType: !1064, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !128, line: 107, baseType: !1111, size: 64, offset: 192)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1096, file: !128, line: 107, size: 64, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1111, file: !128, line: 108, baseType: !51, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1111, file: !128, line: 109, baseType: !51, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1096, file: !128, line: 117, baseType: !51, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !128, line: 119, baseType: !1117, size: 320)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !128, line: 119, size: 320, elements: !1118)
!1118 = !{!1119, !1120, !1123, !1124, !1125}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1117, file: !128, line: 124, baseType: !51, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1117, file: !128, line: 125, baseType: !1121, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !128, line: 125, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1117, file: !128, line: 126, baseType: !51, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1117, file: !128, line: 127, baseType: !51, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !128, line: 128, baseType: !1126, size: 64, offset: 256)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !128, line: 128, size: 64, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1126, file: !128, line: 133, baseType: !51, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1126, file: !128, line: 138, baseType: !333, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !128, line: 141, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !128, line: 141, size: 64, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1131, file: !128, line: 142, baseType: !51, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !128, line: 144, baseType: !1135, size: 128)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !128, line: 144, size: 128, elements: !1136)
!1136 = !{!1137, !1499}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1135, file: !128, line: 146, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !120, line: 126, size: 1216, elements: !1140)
!1140 = !{!1141, !1151, !1172, !1173, !1174, !1175, !1176, !1481, !1482, !1483}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1139, file: !120, line: 127, baseType: !1142, size: 384)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !120, line: 21, size: 384, elements: !1143)
!1143 = !{!1144, !1145, !1147, !1148, !1149, !1150}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1142, file: !120, line: 22, baseType: !51, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1142, file: !120, line: 23, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1142, file: !120, line: 24, baseType: !1146, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1142, file: !120, line: 25, baseType: !51, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1142, file: !120, line: 26, baseType: !51, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1142, file: !120, line: 27, baseType: !51, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1139, file: !120, line: 128, baseType: !1152, size: 128, offset: 384)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1153, line: 105, size: 128, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1152, file: !1153, line: 110, baseType: !51, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1152, file: !1153, line: 118, baseType: !1157, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1153, line: 95, size: 448, elements: !1159)
!1159 = !{!1160, !1161, !1167, !1168, !1169, !1170, !1171}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1158, file: !1153, line: 96, baseType: !333, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1158, file: !1153, line: 97, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1153, line: 60, baseType: !1164)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1158, file: !1153, line: 98, baseType: !1162, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1158, file: !1153, line: 99, baseType: !548, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1158, file: !1153, line: 100, baseType: !548, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1158, file: !1153, line: 101, baseType: !320, size: 128, align: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1158, file: !1153, line: 102, baseType: !1166, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1139, file: !120, line: 129, baseType: !719, size: 256, offset: 512)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1139, file: !120, line: 130, baseType: !119, size: 32, offset: 768)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !120, line: 131, baseType: !7, size: 32, offset: 800)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1139, file: !120, line: 132, baseType: !51, size: 64, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1139, file: !120, line: 133, baseType: !1177, size: 64, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !120, line: 77, size: 192, elements: !1180)
!1180 = !{!1181, !1185, !1477}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1179, file: !120, line: 83, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1088}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1179, file: !120, line: 89, baseType: !1186, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !128, line: 1184, baseType: !7)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1192, line: 512, size: 896, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1193 = !{!1194, !1444, !1445, !1452, !1459, !1469, !1470, !1471, !1473, !1475}
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1192, line: 513, baseType: !1195, size: 320)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !1192, line: 513, size: 320, elements: !1196)
!1196 = !{!1197, !1440, !1441, !1442, !1443}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1195, file: !1192, line: 514, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !128, line: 625, size: 1344, elements: !1200)
!1200 = !{!1201, !1210, !1345, !1351, !1358, !1359, !1364, !1365, !1370, !1371, !1374, !1433, !1434, !1435, !1436, !1437, !1438}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !128, line: 628, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !128, line: 628, size: 128, elements: !1203)
!1203 = !{!1204, !1209}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !128, line: 629, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !128, line: 629, size: 128, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1205, file: !128, line: 631, baseType: !51, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1205, file: !128, line: 632, baseType: !51, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1202, file: !128, line: 635, baseType: !320, size: 128, align: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1199, file: !128, line: 639, baseType: !1211, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !128, line: 733, size: 10240, elements: !1213)
!1213 = !{!1214, !1343}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !128, line: 734, baseType: !1215, size: 10240)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !128, line: 734, size: 10240, elements: !1216)
!1216 = !{!1217, !1221, !1235, !1239, !1240, !1241, !1242, !1243, !1244, !1253, !1254, !1255, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1294, !1296, !1299, !1323, !1324, !1325, !1328, !1329, !1330, !1333, !1334, !1335, !1341, !1342}
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !128, line: 739, baseType: !1218, size: 512, align: 512)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !128, line: 739, size: 512, align: 512, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1218, file: !128, line: 747, baseType: !61, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1215, file: !128, line: 750, baseType: !1222, size: 128, offset: 512)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1223, line: 218, size: 128, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1224 = !{!1225, !1233, !1234}
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !1223, line: 219, baseType: !1226, size: 32)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !1223, line: 219, size: 32, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1226, file: !1223, line: 220, baseType: !71, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1226, file: !1223, line: 221, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1223, line: 197, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1223, line: 197, elements: !1232)
!1232 = !{}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1222, file: !1223, line: 223, baseType: !7, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1222, file: !1223, line: 224, baseType: !32, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1215, file: !128, line: 752, baseType: !1236, size: 64, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!51, !307, !51, !51, !51, !51}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1215, file: !128, line: 756, baseType: !51, size: 64, offset: 704)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1215, file: !128, line: 757, baseType: !51, size: 64, offset: 768)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1215, file: !128, line: 760, baseType: !51, size: 64, offset: 832)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1215, file: !128, line: 761, baseType: !51, size: 64, offset: 896)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1215, file: !128, line: 763, baseType: !51, size: 64, offset: 960)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1215, file: !128, line: 764, baseType: !1245, size: 64, offset: 1024)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1247, line: 299, baseType: !1248)
!1247 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 299, size: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1248, file: !1247, line: 299, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1252, line: 18, baseType: !51)
!1252 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1215, file: !128, line: 773, baseType: !61, size: 32, offset: 1088)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1215, file: !128, line: 785, baseType: !61, size: 32, offset: 1120)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1215, file: !128, line: 795, baseType: !1256, size: 64, offset: 1152)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !128, line: 726, size: 128, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1257, file: !128, line: 727, baseType: !457, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1257, file: !128, line: 728, baseType: !34, size: 32, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1215, file: !128, line: 801, baseType: !51, size: 64, offset: 1216)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1215, file: !128, line: 804, baseType: !333, size: 64, offset: 1280)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1215, file: !128, line: 806, baseType: !34, size: 32, offset: 1344)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1215, file: !128, line: 808, baseType: !71, size: 32, offset: 1376)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1215, file: !128, line: 823, baseType: !489, size: 320, offset: 1408)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1215, file: !128, line: 825, baseType: !109, size: 128, offset: 1728)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1215, file: !128, line: 845, baseType: !34, size: 32, offset: 1856)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1215, file: !128, line: 849, baseType: !51, size: 64, offset: 1920)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1215, file: !128, line: 850, baseType: !51, size: 64, offset: 1984)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1215, file: !128, line: 852, baseType: !51, size: 64, offset: 2048)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1215, file: !128, line: 853, baseType: !51, size: 64, offset: 2112)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1215, file: !128, line: 854, baseType: !335, size: 64, offset: 2176)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1215, file: !128, line: 855, baseType: !51, size: 64, offset: 2240)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1215, file: !128, line: 856, baseType: !51, size: 64, offset: 2304)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1215, file: !128, line: 857, baseType: !51, size: 64, offset: 2368)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1215, file: !128, line: 858, baseType: !51, size: 64, offset: 2432)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1215, file: !128, line: 865, baseType: !828, size: 32, offset: 2496)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1215, file: !128, line: 867, baseType: !71, size: 32, offset: 2528)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1215, file: !128, line: 869, baseType: !51, size: 64, offset: 2560)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1215, file: !128, line: 869, baseType: !51, size: 64, offset: 2624)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1215, file: !128, line: 869, baseType: !51, size: 64, offset: 2688)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1215, file: !128, line: 869, baseType: !51, size: 64, offset: 2752)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1215, file: !128, line: 870, baseType: !51, size: 64, offset: 2816)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1215, file: !128, line: 870, baseType: !51, size: 64, offset: 2880)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1215, file: !128, line: 870, baseType: !51, size: 64, offset: 2944)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1215, file: !128, line: 871, baseType: !51, size: 64, offset: 3008)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1215, file: !128, line: 871, baseType: !51, size: 64, offset: 3072)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1215, file: !128, line: 871, baseType: !51, size: 64, offset: 3136)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1215, file: !128, line: 871, baseType: !51, size: 64, offset: 3200)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1215, file: !128, line: 873, baseType: !1291, size: 3328, offset: 3264)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3328, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 52)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1215, file: !128, line: 875, baseType: !1295, size: 1280, offset: 6592)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 1280, elements: !405)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1215, file: !128, line: 877, baseType: !1297, size: 64, offset: 7872)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !128, line: 877, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1215, file: !128, line: 880, baseType: !1300, size: 1088, offset: 7936)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1301, line: 72, baseType: !1302)
!1301 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1301, line: 23, size: 1088, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1311, !1312, !1313, !1314, !1318, !1319, !1320}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1302, file: !1301, line: 28, baseType: !457, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1302, file: !1301, line: 38, baseType: !335, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1302, file: !1301, line: 40, baseType: !51, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1302, file: !1301, line: 43, baseType: !489, size: 320, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1302, file: !1301, line: 44, baseType: !1309, size: 64, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1301, line: 44, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1302, file: !1301, line: 48, baseType: !51, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1302, file: !1301, line: 59, baseType: !342, size: 256, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1302, file: !1301, line: 60, baseType: !32, size: 64, offset: 896)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1302, file: !1301, line: 61, baseType: !1315, size: 64, offset: 960)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1317)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1301, line: 61, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1302, file: !1301, line: 63, baseType: !61, size: 32, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1302, file: !1301, line: 69, baseType: !105, size: 16, offset: 1056)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1302, file: !1301, line: 70, baseType: !1321, size: 16, offset: 1072)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !517)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1215, file: !128, line: 882, baseType: !51, size: 64, offset: 9024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1215, file: !128, line: 885, baseType: !71, size: 32, offset: 9088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1215, file: !128, line: 886, baseType: !1326, size: 64, offset: 9152)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !128, line: 732, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1215, file: !128, line: 901, baseType: !631, size: 64, offset: 9216)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1215, file: !128, line: 904, baseType: !307, size: 64, offset: 9280)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1215, file: !128, line: 906, baseType: !1331, size: 64, offset: 9344)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !128, line: 906, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1215, file: !128, line: 930, baseType: !61, size: 32, offset: 9408)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1215, file: !128, line: 933, baseType: !61, size: 32, offset: 9440)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1215, file: !128, line: 935, baseType: !1336, size: 64, offset: 9472)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !182, line: 103, size: 64, elements: !1337)
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1336, file: !182, line: 104, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !182, line: 101, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1215, file: !128, line: 940, baseType: !333, size: 64, offset: 9536)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1215, file: !128, line: 942, baseType: !680, size: 256, offset: 9600)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1212, file: !128, line: 986, baseType: !1344, offset: 10240)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !304)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1199, file: !128, line: 640, baseType: !1346, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1247, line: 297, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1247, line: 297, size: 64, elements: !1348)
!1348 = !{!1349}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1347, file: !1247, line: 297, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1252, line: 19, baseType: !51)
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !128, line: 646, baseType: !1352, size: 64, offset: 256)
!1352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !128, line: 646, size: 64, elements: !1353)
!1353 = !{!1354, !1357}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1352, file: !128, line: 647, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !128, line: 542, baseType: !51)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1352, file: !128, line: 648, baseType: !1356, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1199, file: !128, line: 666, baseType: !34, size: 32, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1199, file: !128, line: 667, baseType: !1360, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !128, line: 579, size: 320, elements: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1361, file: !128, line: 580, baseType: !489, size: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1199, file: !128, line: 670, baseType: !548, size: 8, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1199, file: !128, line: 681, baseType: !1366, size: 256, offset: 512)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !128, line: 678, size: 256, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1366, file: !128, line: 679, baseType: !481, size: 192, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1366, file: !128, line: 680, baseType: !51, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1199, file: !128, line: 689, baseType: !109, size: 128, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1199, file: !128, line: 691, baseType: !1372, size: 64, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !128, line: 691, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1199, file: !128, line: 694, baseType: !1375, size: 64, offset: 960)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1192, line: 563, size: 1024, elements: !1378)
!1378 = !{!1379, !1383, !1384, !1388, !1392, !1396, !1397, !1401, !1405, !1409, !1410, !1411, !1415, !1419, !1425, !1429}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1377, file: !1192, line: 564, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1198}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1377, file: !1192, line: 569, baseType: !1380, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1377, file: !1192, line: 571, baseType: !1385, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!34, !1198, !51}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1377, file: !1192, line: 572, baseType: !1389, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!34, !1198}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1377, file: !1192, line: 578, baseType: !1393, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!34, !1198, !51, !51, !51}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1377, file: !1192, line: 580, baseType: !1186, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1377, file: !1192, line: 581, baseType: !1398, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1189, !1190, !7}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1377, file: !1192, line: 582, baseType: !1402, size: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1189, !1190, !51, !51}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1377, file: !1192, line: 584, baseType: !1406, size: 64, offset: 512)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!51, !1198}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1377, file: !1192, line: 588, baseType: !1186, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1377, file: !1192, line: 591, baseType: !1186, size: 64, offset: 640)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1377, file: !1192, line: 597, baseType: !1412, size: 64, offset: 704)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!34, !1198, !51, !32, !34, !34}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1377, file: !1192, line: 603, baseType: !1416, size: 64, offset: 768)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!28, !1198}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1377, file: !1192, line: 613, baseType: !1420, size: 64, offset: 832)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!34, !1198, !1423}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !128, line: 717, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1377, file: !1192, line: 625, baseType: !1426, size: 64, offset: 896)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1423, !1198, !51}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1377, file: !1192, line: 633, baseType: !1430, size: 64, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1088, !1198, !51}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1199, file: !128, line: 697, baseType: !51, size: 64, offset: 1024)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1199, file: !128, line: 699, baseType: !307, size: 64, offset: 1088)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1199, file: !128, line: 700, baseType: !32, size: 64, offset: 1152)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1199, file: !128, line: 711, baseType: !333, size: 64, offset: 1216)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1199, file: !128, line: 717, baseType: !1423, size: 64, offset: 1280)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1199, file: !128, line: 722, baseType: !1439, offset: 1344)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !128, line: 570, elements: !1232)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1195, file: !1192, line: 515, baseType: !1059, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1195, file: !1192, line: 516, baseType: !51, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1195, file: !1192, line: 517, baseType: !51, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1195, file: !1192, line: 518, baseType: !51, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1192, line: 520, baseType: !127, size: 32, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1191, file: !1192, line: 522, baseType: !1446, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1252, line: 22, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1252, line: 22, size: 64, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1448, file: !1252, line: 22, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1252, line: 15, baseType: !51)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1191, file: !1192, line: 524, baseType: !1453, size: 64, offset: 448)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1247, line: 372, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 372, size: 64, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1455, file: !1247, line: 372, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1252, line: 16, baseType: !51)
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1192, line: 527, baseType: !1460, size: 64, offset: 512)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !1192, line: 527, size: 64, elements: !1461)
!1461 = !{!1462, !1468}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1460, file: !1192, line: 528, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1252, line: 21, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1252, line: 21, size: 64, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1464, file: !1252, line: 21, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1252, line: 14, baseType: !51)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1460, file: !1192, line: 529, baseType: !1447, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1191, file: !1192, line: 534, baseType: !1088, size: 64, offset: 576)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1191, file: !1192, line: 535, baseType: !1088, size: 64, offset: 640)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1191, file: !1192, line: 541, baseType: !1472, size: 64, offset: 704)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1191, file: !1192, line: 545, baseType: !1474, size: 64, offset: 768)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1191, file: !1192, line: 549, baseType: !1476, size: 64, offset: 832)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1247, line: 520, baseType: !1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1179, file: !120, line: 100, baseType: !1478, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!34, !1138, !51, !51, !34}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1139, file: !120, line: 134, baseType: !32, size: 64, offset: 960)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1139, file: !120, line: 135, baseType: !34, size: 32, offset: 1024)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !120, line: 136, baseType: !1484, size: 128, offset: 1088)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !120, line: 136, size: 128, elements: !1485)
!1485 = !{!1486, !1492}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1484, file: !120, line: 137, baseType: !1487, size: 128)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1488, line: 6, size: 128, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1487, file: !1488, line: 7, baseType: !457, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1487, file: !1488, line: 8, baseType: !457, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !120, line: 138, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !120, line: 138, elements: !1494)
!1494 = !{!1495, !1497}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1493, file: !120, line: 138, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !120, line: 138, elements: !1232)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1493, file: !120, line: 138, baseType: !1498)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1487, elements: !304)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1135, file: !128, line: 147, baseType: !32, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1093, file: !128, line: 161, baseType: !320, size: 128, align: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !128, line: 164, baseType: !1502, size: 32, offset: 384)
!1502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !128, line: 164, size: 32, elements: !1503)
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1502, file: !128, line: 169, baseType: !61, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1502, file: !128, line: 177, baseType: !7, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1089, file: !128, line: 181, baseType: !61, size: 32, offset: 416)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !189, line: 309, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1082, file: !189, line: 406, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!34, !307, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !128, line: 293, size: 1536, elements: !1515)
!1515 = !{!1516, !1546, !1560}
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !128, line: 295, baseType: !1517, size: 512)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !128, line: 295, size: 512, elements: !1518)
!1518 = !{!1519, !1545}
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !128, line: 296, baseType: !1520, size: 448)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !128, line: 296, size: 448, elements: !1521)
!1521 = !{!1522, !1523, !1532, !1533, !1534, !1543, !1544}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1520, file: !128, line: 298, baseType: !51, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !128, line: 299, baseType: !1524, size: 128, offset: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !128, line: 299, size: 128, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1524, file: !128, line: 300, baseType: !109, size: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !128, line: 302, baseType: !1528, size: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !128, line: 302, size: 128, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1528, file: !128, line: 303, baseType: !32, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1528, file: !128, line: 305, baseType: !7, size: 32, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1520, file: !128, line: 310, baseType: !1064, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1520, file: !128, line: 311, baseType: !51, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !128, line: 312, baseType: !1535, size: 64, offset: 320)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !128, line: 312, size: 64, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1535, file: !128, line: 313, baseType: !32, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1535, file: !128, line: 314, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !128, line: 257, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 255, size: 64, elements: !1541)
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1540, file: !128, line: 256, baseType: !51, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1520, file: !128, line: 316, baseType: !61, size: 32, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1520, file: !128, line: 317, baseType: !61, size: 32, offset: 416)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1517, file: !128, line: 323, baseType: !1089, size: 512, align: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !128, line: 325, baseType: !1547, size: 512, offset: 512)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !128, line: 325, size: 512, elements: !1548)
!1548 = !{!1549, !1559}
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !128, line: 326, baseType: !1550, size: 320)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !128, line: 326, size: 320, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1550, file: !128, line: 327, baseType: !51, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1550, file: !128, line: 328, baseType: !51, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1550, file: !128, line: 329, baseType: !51, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1550, file: !128, line: 331, baseType: !61, size: 32, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1550, file: !128, line: 332, baseType: !61, size: 32, offset: 224)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1550, file: !128, line: 333, baseType: !61, size: 32, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1550, file: !128, line: 335, baseType: !7, size: 32, offset: 288)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1547, file: !128, line: 339, baseType: !1089, size: 512, align: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !128, line: 341, baseType: !1561, size: 512, offset: 1024)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !128, line: 341, size: 512, elements: !1562)
!1562 = !{!1563, !1572, !1578}
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !128, line: 342, baseType: !1564, size: 384)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1561, file: !128, line: 342, size: 384, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1564, file: !128, line: 343, baseType: !51, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1564, file: !128, line: 344, baseType: !51, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1564, file: !128, line: 346, baseType: !32, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1564, file: !128, line: 347, baseType: !32, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1564, file: !128, line: 348, baseType: !32, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1564, file: !128, line: 349, baseType: !32, size: 64, offset: 320)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !128, line: 352, baseType: !1573, size: 256)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1561, file: !128, line: 352, size: 256, elements: !1574)
!1574 = !{!1575, !1576, !1577}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1573, file: !128, line: 353, baseType: !51, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1573, file: !128, line: 354, baseType: !51, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1573, file: !128, line: 356, baseType: !109, size: 128, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1561, file: !128, line: 359, baseType: !1089, size: 512, align: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1082, file: !189, line: 409, baseType: !1580, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!34, !1064, !1507}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1082, file: !189, line: 412, baseType: !1584, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!548, !1064, !1513}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1082, file: !189, line: 414, baseType: !1588, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1593, line: 1276, size: 448, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1594 = !{!1595, !1596, !1597, !1599, !1600, !1601, !1602, !1603}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1592, file: !1593, line: 1277, baseType: !307, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1592, file: !1593, line: 1278, baseType: !1064, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1592, file: !1593, line: 1279, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1592, file: !1593, line: 1281, baseType: !51, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1592, file: !1593, line: 1282, baseType: !7, size: 32, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1592, file: !1593, line: 1283, baseType: !7, size: 32, offset: 288)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1592, file: !1593, line: 1284, baseType: !548, size: 8, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1592, file: !1593, line: 1285, baseType: !51, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1082, file: !189, line: 416, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!34, !307, !1064, !53, !7, !1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1082, file: !189, line: 419, baseType: !1611, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!34, !307, !1064, !53, !7, !7, !1088, !32}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1082, file: !189, line: 424, baseType: !1615, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1618, !1064, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !37, line: 131, baseType: !457)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1082, file: !189, line: 425, baseType: !1620, size: 64, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !1513, !47, !47}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1082, file: !189, line: 426, baseType: !1624, size: 64, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!548, !1513, !1059}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1082, file: !189, line: 427, baseType: !1628, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1513}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1082, file: !189, line: 428, baseType: !1632, size: 64, offset: 704)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!1007, !1635, !1673}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !189, line: 373, size: 384, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1644, !1645, !1646, !1647}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1636, file: !189, line: 374, baseType: !307, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1636, file: !189, line: 375, baseType: !53, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1636, file: !189, line: 376, baseType: !1641, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1635, !781}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1636, file: !189, line: 377, baseType: !32, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1636, file: !189, line: 378, baseType: !34, size: 32, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1636, file: !189, line: 379, baseType: !105, size: 16, offset: 288)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !189, line: 380, baseType: !1648, size: 64, offset: 320)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !189, line: 380, size: 64, elements: !1649)
!1649 = !{!1650, !1669}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1648, file: !189, line: 386, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1593, line: 998, size: 448, elements: !1653)
!1653 = !{!1654, !1655, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1652, file: !1593, line: 999, baseType: !1513, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1652, file: !1593, line: 1000, baseType: !34, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1652, file: !1593, line: 1001, baseType: !1657, size: 320, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !67, line: 14, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !67, line: 30, size: 320, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1668}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1658, file: !67, line: 31, baseType: !7, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1658, file: !67, line: 32, baseType: !32, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1658, file: !67, line: 33, baseType: !1663, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !67, line: 16, baseType: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!34, !1667, !7, !34, !32}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1658, file: !67, line: 34, baseType: !109, size: 128, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1648, file: !189, line: 395, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1007, !32}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !189, line: 69, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1082, file: !189, line: 433, baseType: !1676, size: 64, offset: 768)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!34, !1064, !1513, !1513, !143}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1082, file: !189, line: 435, baseType: !1680, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!34, !1513}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1082, file: !189, line: 436, baseType: !1684, size: 64, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!548, !1513, !47, !47}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1082, file: !189, line: 438, baseType: !1688, size: 64, offset: 960)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1513, !1691, !1691}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1082, file: !189, line: 439, baseType: !1693, size: 64, offset: 1024)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!34, !1064, !1088}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1082, file: !189, line: 442, baseType: !1697, size: 64, offset: 1088)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!34, !1700, !307, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !189, line: 66, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1082, file: !189, line: 444, baseType: !1704, size: 64, offset: 1152)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !307}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1082, file: !189, line: 445, baseType: !1708, size: 64, offset: 1216)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!34, !1635, !1673}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !189, line: 486, baseType: !51, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1065, file: !189, line: 487, baseType: !489, size: 320, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1065, file: !189, line: 488, baseType: !1714, size: 32, offset: 1280)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1715, line: 8, baseType: !246)
!1715 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1065, file: !189, line: 489, baseType: !71, size: 32, offset: 1312)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1065, file: !189, line: 490, baseType: !109, size: 128, offset: 1344)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1065, file: !189, line: 491, baseType: !32, size: 64, offset: 1472)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !858, file: !189, line: 659, baseType: !32, size: 64, offset: 576)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !858, file: !189, line: 663, baseType: !51, size: 64, offset: 640)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !189, line: 671, baseType: !1722, size: 32, offset: 704)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !189, line: 671, size: 32, elements: !1723)
!1723 = !{!1724, !1726}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1722, file: !189, line: 672, baseType: !1725, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1722, file: !189, line: 673, baseType: !7, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !858, file: !189, line: 675, baseType: !244, size: 32, offset: 736)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !858, file: !189, line: 676, baseType: !53, size: 64, offset: 768)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !858, file: !189, line: 677, baseType: !965, size: 128, offset: 832)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !858, file: !189, line: 678, baseType: !965, size: 128, offset: 960)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !858, file: !189, line: 679, baseType: !965, size: 128, offset: 1088)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !858, file: !189, line: 680, baseType: !71, size: 32, offset: 1216)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !858, file: !189, line: 681, baseType: !38, size: 16, offset: 1248)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !858, file: !189, line: 682, baseType: !95, size: 8, offset: 1264)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !858, file: !189, line: 683, baseType: !95, size: 8, offset: 1272)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !858, file: !189, line: 684, baseType: !1737, size: 64, offset: 1280)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !37, line: 132, baseType: !457)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !858, file: !189, line: 691, baseType: !51, size: 64, offset: 1344)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !858, file: !189, line: 692, baseType: !489, size: 320, offset: 1408)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !858, file: !189, line: 694, baseType: !51, size: 64, offset: 1728)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !858, file: !189, line: 695, baseType: !51, size: 64, offset: 1792)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !858, file: !189, line: 697, baseType: !400, size: 128, offset: 1856)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !858, file: !189, line: 698, baseType: !109, size: 128, offset: 1984)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !858, file: !189, line: 707, baseType: !109, size: 128, offset: 2112)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !858, file: !189, line: 708, baseType: !109, size: 128, offset: 2240)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !189, line: 709, baseType: !1747, size: 128, offset: 2368)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !189, line: 709, size: 128, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1747, file: !189, line: 710, baseType: !396, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1747, file: !189, line: 711, baseType: !320, size: 128, align: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !858, file: !189, line: 713, baseType: !335, size: 64, offset: 2496)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !858, file: !189, line: 714, baseType: !335, size: 64, offset: 2560)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !858, file: !189, line: 715, baseType: !61, size: 32, offset: 2624)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !858, file: !189, line: 716, baseType: !61, size: 32, offset: 2656)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !858, file: !189, line: 717, baseType: !61, size: 32, offset: 2688)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !858, file: !189, line: 719, baseType: !61, size: 32, offset: 2720)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !189, line: 721, baseType: !1758, size: 64, offset: 2752)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !189, line: 721, size: 64, elements: !1759)
!1759 = !{!1760, !1932}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1758, file: !189, line: 722, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !189, line: 1914, size: 2112, elements: !1764)
!1764 = !{!1765, !1769, !1773, !1777, !1781, !1782, !1783, !1789, !1802, !1810, !1814, !1815, !1819, !1820, !1824, !1829, !1830, !1834, !1838, !1844, !1845, !1849, !1850, !1857, !1861, !1862, !1867, !1871, !1913, !1917, !1921, !1922, !1928}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1763, file: !189, line: 1915, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1768, line: 103, flags: DIFlagFwdDecl)
!1768 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1763, file: !189, line: 1916, baseType: !1770, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!53, !307, !53, !34}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1763, file: !189, line: 1917, baseType: !1774, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1007, !307, !290, !47, !52}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1763, file: !189, line: 1918, baseType: !1778, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!1007, !307, !28, !47, !52}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1763, file: !189, line: 1919, baseType: !1632, size: 64, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1763, file: !189, line: 1920, baseType: !1632, size: 64, offset: 320)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1763, file: !189, line: 1921, baseType: !1784, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!34, !1635, !1787, !7}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !189, line: 53, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1763, file: !189, line: 1923, baseType: !1790, size: 64, offset: 448)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!34, !307, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !189, line: 1858, size: 128, elements: !1795)
!1795 = !{!1796, !1801}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1794, file: !189, line: 1859, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !189, line: 1855, baseType: !1798)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!548, !1793, !28, !34, !53, !457, !7}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1794, file: !189, line: 1860, baseType: !53, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1763, file: !189, line: 1924, baseType: !1803, size: 64, offset: 512)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1806, !307, !1808}
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1807, line: 59, baseType: !7)
!1807 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !189, line: 61, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1763, file: !189, line: 1925, baseType: !1811, size: 64, offset: 576)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!781, !307, !7, !51}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1763, file: !189, line: 1926, baseType: !1811, size: 64, offset: 640)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1763, file: !189, line: 1927, baseType: !1816, size: 64, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!34, !307, !1198}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1763, file: !189, line: 1928, baseType: !51, size: 64, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1763, file: !189, line: 1929, baseType: !1821, size: 64, offset: 832)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!34, !857, !307}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1763, file: !189, line: 1930, baseType: !1825, size: 64, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!34, !307, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !189, line: 1061, baseType: !32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1763, file: !189, line: 1931, baseType: !1821, size: 64, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1763, file: !189, line: 1932, baseType: !1831, size: 64, offset: 1024)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!34, !307, !53, !53, !34}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1763, file: !189, line: 1933, baseType: !1835, size: 64, offset: 1088)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!34, !34, !307, !34}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1763, file: !189, line: 1934, baseType: !1839, size: 64, offset: 1152)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!34, !307, !34, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !189, line: 1063, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1763, file: !189, line: 1935, baseType: !1236, size: 64, offset: 1216)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1763, file: !189, line: 1936, baseType: !1846, size: 64, offset: 1280)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!34, !34}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1763, file: !189, line: 1937, baseType: !1839, size: 64, offset: 1344)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1763, file: !189, line: 1938, baseType: !1851, size: 64, offset: 1408)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1007, !1854, !307, !52, !47, !7}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1856, line: 59, flags: DIFlagFwdDecl)
!1856 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1763, file: !189, line: 1939, baseType: !1858, size: 64, offset: 1472)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1007, !307, !52, !1854, !47, !7}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1763, file: !189, line: 1940, baseType: !1704, size: 64, offset: 1536)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1763, file: !189, line: 1941, baseType: !1863, size: 64, offset: 1600)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!34, !307, !34, !1866, !1609}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1763, file: !189, line: 1942, baseType: !1868, size: 64, offset: 1664)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!781, !307, !34, !53, !53}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1763, file: !189, line: 1944, baseType: !1872, size: 64, offset: 1728)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1875, !307}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1877, line: 17, size: 960, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1878 = !{!1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1908, !1909, !1912}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1876, file: !1877, line: 18, baseType: !290, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1876, file: !1877, line: 19, baseType: !47, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1876, file: !1877, line: 20, baseType: !47, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1876, file: !1877, line: 21, baseType: !47, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1876, file: !1877, line: 22, baseType: !47, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1876, file: !1877, line: 23, baseType: !53, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1876, file: !1877, line: 24, baseType: !53, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1876, file: !1877, line: 25, baseType: !342, size: 256, offset: 448)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1876, file: !1877, line: 26, baseType: !1888, size: 64, offset: 704)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1877, line: 32, size: 256, elements: !1891)
!1891 = !{!1892, !1896, !1900, !1904}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1890, file: !1877, line: 33, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!32, !1875, !52}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1890, file: !1877, line: 34, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !1875, !32}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1890, file: !1877, line: 35, baseType: !1901, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!32, !1875, !32, !52}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1890, file: !1877, line: 36, baseType: !1905, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!34, !1875, !32}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1876, file: !1877, line: 27, baseType: !34, size: 32, offset: 768)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1876, file: !1877, line: 28, baseType: !1910, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1876, file: !1877, line: 29, baseType: !32, size: 64, offset: 896)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1763, file: !189, line: 1948, baseType: !1914, size: 64, offset: 1792)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1007, !307, !53, !307, !53, !47, !7}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1763, file: !189, line: 1950, baseType: !1918, size: 64, offset: 1856)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!53, !307, !53, !307, !53, !53, !7}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1763, file: !189, line: 1953, baseType: !1831, size: 64, offset: 1920)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1763, file: !189, line: 1954, baseType: !1923, size: 64, offset: 1984)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!34, !1926, !7}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !189, line: 1911, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1763, file: !189, line: 1955, baseType: !1929, size: 64, offset: 2048)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!34, !1926, !1787, !7}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1758, file: !189, line: 723, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{null, !857}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !858, file: !189, line: 725, baseType: !1937, size: 64, offset: 2816)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !189, line: 725, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !858, file: !189, line: 726, baseType: !1065, size: 1536, align: 64, offset: 2880)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !858, file: !189, line: 727, baseType: !109, size: 128, offset: 4416)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !189, line: 728, baseType: !1942, size: 64, offset: 4544)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !189, line: 728, size: 64, elements: !1943)
!1943 = !{!1944, !1945, !1948, !1949}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1942, file: !189, line: 729, baseType: !1854, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1942, file: !189, line: 730, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !189, line: 730, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1942, file: !189, line: 731, baseType: !290, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1942, file: !189, line: 732, baseType: !7, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !858, file: !189, line: 735, baseType: !247, size: 32, offset: 4608)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !858, file: !189, line: 738, baseType: !247, size: 32, offset: 4640)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !858, file: !189, line: 739, baseType: !1953, size: 64, offset: 4672)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !189, line: 634, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !858, file: !189, line: 750, baseType: !32, size: 64, offset: 4736)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !818, file: !819, line: 91, baseType: !1957, size: 256, offset: 448)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !1958)
!1958 = !{!1959}
!1959 = !DISubrange(count: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !818, file: !819, line: 94, baseType: !1961, size: 64, offset: 704)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1962, line: 25, size: 64, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1963 = !{!1964}
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !1962, line: 26, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !1962, line: 26, size: 64, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1965, file: !1962, line: 28, baseType: !458, size: 64, align: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1962, line: 30, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1965, file: !1962, line: 30, size: 64, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1969, file: !1962, line: 31, baseType: !71, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1969, file: !1962, line: 32, baseType: !34, size: 32, offset: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !818, file: !819, line: 95, baseType: !1974, size: 64, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !819, line: 128, size: 1024, align: 512, elements: !1977)
!1977 = !{!1978, !1982, !1983, !1990, !1996, !2000, !2004, !2008, !2009, !2013, !2017, !2022, !2026}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1976, file: !819, line: 129, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!34, !817, !7}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1976, file: !819, line: 130, baseType: !1979, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1976, file: !819, line: 131, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!34, !1987, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1976, file: !819, line: 132, baseType: !1991, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!34, !1987, !7, !28, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1976, file: !819, line: 134, baseType: !1997, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!34, !1987}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1976, file: !819, line: 135, baseType: !2001, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!34, !817}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1976, file: !819, line: 136, baseType: !2005, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !817}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1976, file: !819, line: 137, baseType: !2005, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1976, file: !819, line: 138, baseType: !2010, size: 64, offset: 512)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !817, !857}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1976, file: !819, line: 139, baseType: !2014, size: 64, offset: 576)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!290, !817, !290, !34}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1976, file: !819, line: 140, baseType: !2018, size: 64, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!812, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1976, file: !819, line: 141, baseType: !2023, size: 64, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!34, !976, !548}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1976, file: !819, line: 142, baseType: !2027, size: 64, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!817, !817, !2030}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !818, file: !819, line: 96, baseType: !239, size: 64, offset: 832)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !818, file: !819, line: 97, baseType: !51, size: 64, offset: 896)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !818, file: !819, line: 98, baseType: !32, size: 64, offset: 960)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !819, line: 100, baseType: !2036, size: 128, offset: 1024)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 100, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2036, file: !819, line: 101, baseType: !109, size: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2036, file: !819, line: 102, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !818, file: !819, line: 104, baseType: !109, size: 128, offset: 1152)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !818, file: !819, line: 105, baseType: !109, size: 128, offset: 1280)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !818, file: !819, line: 113, baseType: !2044, size: 128, offset: 1408)
!2044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 109, size: 128, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2044, file: !819, line: 110, baseType: !400, size: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2044, file: !819, line: 111, baseType: !833, size: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2044, file: !819, line: 112, baseType: !320, size: 128, align: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !813, file: !814, line: 72, baseType: !239, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !813, file: !814, line: 73, baseType: !34, size: 32, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !813, file: !814, line: 74, baseType: !896, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !808, file: !809, line: 10, baseType: !817, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !308, file: !189, line: 1015, baseType: !857, size: 64, offset: 1344)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !308, file: !189, line: 1016, baseType: !1761, size: 64, offset: 1408)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !308, file: !189, line: 1018, baseType: !457, size: 64, offset: 1472)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !308, file: !189, line: 1020, baseType: !32, size: 64, offset: 1536)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !308, file: !189, line: 1023, baseType: !32, size: 64, offset: 1600)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !308, file: !189, line: 1027, baseType: !2059, size: 64, offset: 1664)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !308, file: !189, line: 1029, baseType: !1064, size: 64, offset: 1728)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !308, file: !189, line: 1030, baseType: !1714, size: 32, offset: 1792)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !308, file: !189, line: 1031, baseType: !1714, size: 32, offset: 1824)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !282, file: !6, line: 72, baseType: !47, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !282, file: !6, line: 73, baseType: !34, size: 32, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !267, file: !6, line: 119, baseType: !2066, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!34, !261, !32}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !267, file: !6, line: 120, baseType: !258, size: 64, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !267, file: !6, line: 121, baseType: !258, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !262, file: !6, line: 92, baseType: !342, size: 256, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !262, file: !6, line: 93, baseType: !252, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !262, file: !6, line: 94, baseType: !32, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !262, file: !6, line: 95, baseType: !32, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !262, file: !6, line: 96, baseType: !817, size: 64, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !262, file: !6, line: 97, baseType: !631, size: 64, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !262, file: !6, line: 98, baseType: !2078, size: 64, offset: 640)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !468, line: 34, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !262, file: !6, line: 99, baseType: !430, size: 64, offset: 704)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !262, file: !6, line: 100, baseType: !2082, size: 128, offset: 768)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !6, line: 76, size: 128, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2082, file: !6, line: 77, baseType: !28, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !2082, file: !6, line: 78, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !6, line: 173, size: 640, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2087, file: !6, line: 174, baseType: !387, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2087, file: !6, line: 175, baseType: !95, size: 8, offset: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2087, file: !6, line: 176, baseType: !95, size: 8, offset: 40)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !2087, file: !6, line: 177, baseType: !95, size: 8, offset: 48)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2087, file: !6, line: 178, baseType: !1766, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2087, file: !6, line: 179, baseType: !2095, size: 512, offset: 128)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 512, elements: !2096)
!2096 = !{!2097}
!2097 = !DISubrange(count: 8)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !262, file: !6, line: 101, baseType: !28, size: 64, offset: 896)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !262, file: !6, line: 102, baseType: !32, size: 64, offset: 960)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !262, file: !6, line: 103, baseType: !32, size: 64, offset: 1024)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !262, file: !6, line: 104, baseType: !7, size: 32, offset: 1088)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !262, file: !6, line: 105, baseType: !7, size: 32, offset: 1120)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !262, file: !6, line: 106, baseType: !7, size: 32, offset: 1152)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !262, file: !6, line: 107, baseType: !150, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !262, file: !6, line: 108, baseType: !155, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !262, file: !6, line: 109, baseType: !548, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !262, file: !6, line: 110, baseType: !548, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !262, file: !6, line: 111, baseType: !548, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !262, file: !6, line: 112, baseType: !548, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !253, file: !189, line: 2377, baseType: !2111, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2113)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !189, line: 75, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !253, file: !189, line: 2378, baseType: !2115, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!817, !252, !34, !28, !32}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !253, file: !189, line: 2380, baseType: !2119, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !239}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !253, file: !189, line: 2381, baseType: !1766, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !189, line: 2382, baseType: !252, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !253, file: !189, line: 2383, baseType: !396, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !253, file: !189, line: 2385, baseType: !2126, offset: 576)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2127, line: 206, elements: !1232)
!2127 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !253, file: !189, line: 2386, baseType: !2126, offset: 576)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !253, file: !189, line: 2387, baseType: !2126, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !253, file: !189, line: 2388, baseType: !2131, offset: 576)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2126, elements: !379)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !253, file: !189, line: 2390, baseType: !2126, offset: 576)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !253, file: !189, line: 2391, baseType: !2126, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !253, file: !189, line: 2392, baseType: !2126, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !253, file: !189, line: 2393, baseType: !2126, offset: 576)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !240, file: !189, line: 1197, baseType: !2137, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2139)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !189, line: 2057, size: 1664, elements: !2140)
!2140 = !{!2141, !2145, !2146, !2147, !2151, !2155, !2159, !2160, !2161, !2165, !2169, !2173, !2174, !2175, !2202, !2207, !2208, !2212, !2213, !2214, !2215, !2219, !2223, !2270, !2285, !2286}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2139, file: !189, line: 2058, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!857, !239}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2139, file: !189, line: 2059, baseType: !1933, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2139, file: !189, line: 2060, baseType: !1933, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2139, file: !189, line: 2062, baseType: !2148, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !857, !34}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2139, file: !189, line: 2063, baseType: !2152, size: 64, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!34, !857, !1507}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2139, file: !189, line: 2064, baseType: !2156, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!34, !857}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2139, file: !189, line: 2065, baseType: !1933, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2139, file: !189, line: 2066, baseType: !2119, size: 64, offset: 448)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2139, file: !189, line: 2067, baseType: !2162, size: 64, offset: 512)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!34, !239, !34}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2139, file: !189, line: 2068, baseType: !2166, size: 64, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!34, !239, !188}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2139, file: !189, line: 2069, baseType: !2170, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!34, !239}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2139, file: !189, line: 2070, baseType: !2166, size: 64, offset: 704)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2139, file: !189, line: 2071, baseType: !2170, size: 64, offset: 768)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2139, file: !189, line: 2072, baseType: !2176, size: 64, offset: 832)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!34, !817, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !2181, line: 9, size: 960, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/statfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "109fd6e5d352fa5dbe7866d2f488a201")
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2198, !2199, !2200, !2201}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !2180, file: !2181, line: 10, baseType: !781, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !2180, file: !2181, line: 11, baseType: !781, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !2180, file: !2181, line: 12, baseType: !457, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !2180, file: !2181, line: 13, baseType: !457, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !2180, file: !2181, line: 14, baseType: !457, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !2180, file: !2181, line: 15, baseType: !457, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !2180, file: !2181, line: 16, baseType: !457, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !2180, file: !2181, line: 17, baseType: !2191, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !49, line: 81, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 79, size: 64, elements: !2193)
!2193 = !{!2194}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2192, file: !49, line: 80, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 2)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !2180, file: !2181, line: 18, baseType: !781, size: 64, offset: 512)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !2180, file: !2181, line: 19, baseType: !781, size: 64, offset: 576)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !2180, file: !2181, line: 20, baseType: !781, size: 64, offset: 640)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !2180, file: !2181, line: 21, baseType: !783, size: 256, offset: 704)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2139, file: !189, line: 2073, baseType: !2203, size: 64, offset: 896)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!34, !239, !2206, !290}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2139, file: !189, line: 2074, baseType: !2119, size: 64, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2139, file: !189, line: 2076, baseType: !2209, size: 64, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!34, !1875, !817}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2139, file: !189, line: 2077, baseType: !2209, size: 64, offset: 1088)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2139, file: !189, line: 2078, baseType: !2209, size: 64, offset: 1152)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2139, file: !189, line: 2079, baseType: !2209, size: 64, offset: 1216)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2139, file: !189, line: 2081, baseType: !2216, size: 64, offset: 1280)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!1007, !239, !34, !290, !47, !53}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2139, file: !189, line: 2082, baseType: !2220, size: 64, offset: 1344)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!1007, !239, !34, !28, !47, !53}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2139, file: !189, line: 2083, baseType: !2224, size: 64, offset: 1408)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!2227, !857}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !165, line: 296, size: 1664, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2255, !2256, !2257}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2229, file: !165, line: 297, baseType: !400, size: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2229, file: !165, line: 298, baseType: !109, size: 128, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2229, file: !165, line: 299, baseType: !109, size: 128, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2229, file: !165, line: 300, baseType: !109, size: 128, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2229, file: !165, line: 301, baseType: !342, size: 256, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2229, file: !165, line: 302, baseType: !71, size: 32, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2229, file: !165, line: 303, baseType: !61, size: 32, offset: 800)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2229, file: !165, line: 304, baseType: !239, size: 64, offset: 832)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2229, file: !165, line: 305, baseType: !2240, size: 64, offset: 896)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !165, line: 68, size: 64, elements: !2241)
!2241 = !{!2242, !2254}
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !165, line: 69, baseType: !2243, size: 32)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2240, file: !165, line: 69, size: 32, elements: !2244)
!2244 = !{!2245, !2246, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2243, file: !165, line: 70, baseType: !420, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2243, file: !165, line: 71, baseType: !438, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2243, file: !165, line: 72, baseType: !2248, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2249, line: 24, baseType: !2250)
!2249 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2249, line: 22, size: 32, elements: !2251)
!2251 = !{!2252}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2250, file: !2249, line: 23, baseType: !2253, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2249, line: 20, baseType: !426)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2240, file: !165, line: 74, baseType: !164, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2229, file: !165, line: 306, baseType: !53, size: 64, offset: 960)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2229, file: !165, line: 307, baseType: !51, size: 64, offset: 1024)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2229, file: !165, line: 308, baseType: !2258, size: 576, offset: 1088)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !165, line: 205, size: 576, elements: !2259)
!2259 = !{!2260, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2258, file: !165, line: 206, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !165, line: 66, baseType: !55)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2258, file: !165, line: 207, baseType: !2261, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2258, file: !165, line: 208, baseType: !2261, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2258, file: !165, line: 209, baseType: !2261, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2258, file: !165, line: 210, baseType: !2261, size: 64, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2258, file: !165, line: 211, baseType: !2261, size: 64, offset: 320)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2258, file: !165, line: 212, baseType: !2261, size: 64, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2258, file: !165, line: 213, baseType: !505, size: 64, offset: 448)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2258, file: !165, line: 214, baseType: !505, size: 64, offset: 512)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2139, file: !189, line: 2085, baseType: !2271, size: 64, offset: 1472)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!781, !239, !2274}
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2276, line: 15, size: 256, elements: !2277)
!2276 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2277 = !{!2278, !2279, !2280, !2281, !2282}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2275, file: !2276, line: 16, baseType: !1059, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2275, file: !2276, line: 19, baseType: !34, size: 32, offset: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2275, file: !2276, line: 26, baseType: !51, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2275, file: !2276, line: 33, baseType: !51, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2275, file: !2276, line: 36, baseType: !2283, size: 64, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2276, line: 36, flags: DIFlagFwdDecl)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2139, file: !189, line: 2087, baseType: !2271, size: 64, offset: 1536)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2139, file: !189, line: 2089, baseType: !2119, size: 64, offset: 1600)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !240, file: !189, line: 1198, baseType: !2288, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2290)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !165, line: 324, size: 704, elements: !2291)
!2291 = !{!2292, !2296, !2300, !2304, !2305, !2306, !2307, !2308, !2313, !2318, !2322}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2290, file: !165, line: 325, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!34, !2228}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2290, file: !165, line: 326, baseType: !2297, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!2228, !239, !34}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2290, file: !165, line: 327, baseType: !2301, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !2228}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2290, file: !165, line: 328, baseType: !2293, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2290, file: !165, line: 329, baseType: !2293, size: 64, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2290, file: !165, line: 330, baseType: !2293, size: 64, offset: 320)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2290, file: !165, line: 331, baseType: !2162, size: 64, offset: 384)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2290, file: !165, line: 334, baseType: !2309, size: 64, offset: 448)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!2312, !857}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2290, file: !165, line: 335, baseType: !2314, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!34, !857, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2290, file: !165, line: 337, baseType: !2319, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!34, !857, !2312}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2290, file: !165, line: 339, baseType: !2323, size: 64, offset: 640)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!34, !239, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !240, file: !189, line: 1199, baseType: !2328, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2330)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !165, line: 430, size: 704, elements: !2331)
!2331 = !{!2332, !2336, !2337, !2341, !2342, !2343, !2358, !2381, !2385, !2386, !2408}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2330, file: !165, line: 431, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!34, !239, !34, !34, !976}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2330, file: !165, line: 432, baseType: !2162, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2330, file: !165, line: 433, baseType: !2338, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!34, !239, !7}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2330, file: !165, line: 434, baseType: !2338, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2330, file: !165, line: 435, baseType: !2162, size: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2330, file: !165, line: 436, baseType: !2344, size: 64, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!34, !239, !34, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !165, line: 417, size: 256, elements: !2349)
!2349 = !{!2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2348, file: !165, line: 418, baseType: !34, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2348, file: !165, line: 419, baseType: !7, size: 32, offset: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2348, file: !165, line: 420, baseType: !7, size: 32, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2348, file: !165, line: 422, baseType: !7, size: 32, offset: 96)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2348, file: !165, line: 423, baseType: !7, size: 32, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2348, file: !165, line: 424, baseType: !7, size: 32, offset: 160)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2348, file: !165, line: 425, baseType: !7, size: 32, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2348, file: !165, line: 426, baseType: !7, size: 32, offset: 224)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2330, file: !165, line: 437, baseType: !2359, size: 64, offset: 384)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!34, !239, !2240, !2362}
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !165, line: 345, size: 960, elements: !2364)
!2364 = !{!2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2363, file: !165, line: 346, baseType: !34, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2363, file: !165, line: 347, baseType: !457, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2363, file: !165, line: 348, baseType: !457, size: 64, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2363, file: !165, line: 349, baseType: !457, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2363, file: !165, line: 350, baseType: !457, size: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2363, file: !165, line: 351, baseType: !457, size: 64, offset: 320)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2363, file: !165, line: 352, baseType: !457, size: 64, offset: 384)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2363, file: !165, line: 353, baseType: !339, size: 64, offset: 448)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2363, file: !165, line: 355, baseType: !339, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2363, file: !165, line: 356, baseType: !34, size: 32, offset: 576)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2363, file: !165, line: 357, baseType: !34, size: 32, offset: 608)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2363, file: !165, line: 358, baseType: !457, size: 64, offset: 640)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2363, file: !165, line: 359, baseType: !457, size: 64, offset: 704)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2363, file: !165, line: 360, baseType: !457, size: 64, offset: 768)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2363, file: !165, line: 361, baseType: !339, size: 64, offset: 832)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2363, file: !165, line: 362, baseType: !34, size: 32, offset: 896)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2330, file: !165, line: 438, baseType: !2382, size: 64, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!34, !239, !2326, !2362}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2330, file: !165, line: 440, baseType: !2359, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2330, file: !165, line: 441, baseType: !2387, size: 64, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!34, !239, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !165, line: 411, size: 1408, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2391, file: !165, line: 412, baseType: !7, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2391, file: !165, line: 413, baseType: !2395, size: 1344, offset: 64)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2396, size: 1344, elements: !379)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !165, line: 397, size: 448, elements: !2397)
!2397 = !{!2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2396, file: !165, line: 398, baseType: !7, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2396, file: !165, line: 399, baseType: !7, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2396, file: !165, line: 401, baseType: !7, size: 32, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2396, file: !165, line: 402, baseType: !7, size: 32, offset: 96)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2396, file: !165, line: 403, baseType: !7, size: 32, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2396, file: !165, line: 404, baseType: !7, size: 32, offset: 160)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2396, file: !165, line: 405, baseType: !7, size: 32, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2396, file: !165, line: 406, baseType: !459, size: 64, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2396, file: !165, line: 407, baseType: !1737, size: 64, offset: 320)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2396, file: !165, line: 408, baseType: !1737, size: 64, offset: 384)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2330, file: !165, line: 442, baseType: !2338, size: 64, offset: 640)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !240, file: !189, line: 1200, baseType: !2410, size: 64, offset: 576)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2412)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !216, line: 201, size: 640, elements: !2413)
!2413 = !{!2414, !2419, !2452, !2453, !2457, !2461, !2462, !2469, !2475, !2479}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "encode_fh", scope: !2412, file: !216, line: 202, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!34, !857, !2418, !2206, !857}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_dentry", scope: !2412, file: !216, line: 204, baseType: !2420, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!817, !239, !2423, !34, !34}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fid", file: !216, line: 118, size: 160, elements: !2425)
!2425 = !{!2426}
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !2424, file: !216, line: 119, baseType: !2427, size: 160)
!2427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2424, file: !216, line: 119, size: 160, elements: !2428)
!2428 = !{!2429, !2436, !2445}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !2427, file: !216, line: 125, baseType: !2430, size: 128)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2427, file: !216, line: 120, size: 128, elements: !2431)
!2431 = !{!2432, !2433, !2434, !2435}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2430, file: !216, line: 121, baseType: !246, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !2430, file: !216, line: 122, baseType: !246, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ino", scope: !2430, file: !216, line: 123, baseType: !246, size: 32, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2430, file: !216, line: 124, baseType: !246, size: 32, offset: 96)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "udf", scope: !2427, file: !216, line: 133, baseType: !2437, size: 160)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2427, file: !216, line: 126, size: 160, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2437, file: !216, line: 127, baseType: !246, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "partref", scope: !2437, file: !216, line: 128, baseType: !105, size: 16, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "parent_partref", scope: !2437, file: !216, line: 129, baseType: !105, size: 16, offset: 48)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2437, file: !216, line: 130, baseType: !246, size: 32, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "parent_block", scope: !2437, file: !216, line: 131, baseType: !246, size: 32, offset: 96)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "parent_generation", scope: !2437, file: !216, line: 132, baseType: !246, size: 32, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, scope: !2427, file: !216, line: 134, baseType: !2446)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2427, file: !216, line: 134, elements: !2447)
!2447 = !{!2448, !2450}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_raw", scope: !2446, file: !216, line: 134, baseType: !2449)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2446, file: !216, line: 134, elements: !1232)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2446, file: !216, line: 134, baseType: !2451)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, elements: !304)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_parent", scope: !2412, file: !216, line: 206, baseType: !2420, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2412, file: !216, line: 208, baseType: !2454, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!34, !817, !290, !817}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2412, file: !216, line: 210, baseType: !2458, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!817, !817}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "commit_metadata", scope: !2412, file: !216, line: 211, baseType: !2156, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "get_uuid", scope: !2412, file: !216, line: 213, baseType: !2463, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!34, !239, !2466, !2467, !2468}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "map_blocks", scope: !2412, file: !216, line: 214, baseType: !2470, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!34, !857, !53, !457, !2473, !548, !2467}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "iomap", file: !216, line: 10, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "commit_blocks", scope: !2412, file: !216, line: 217, baseType: !2476, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!34, !857, !2473, !34, !939}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2412, file: !216, line: 227, baseType: !51, size: 64, offset: 576)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !240, file: !189, line: 1201, baseType: !51, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !240, file: !189, line: 1202, baseType: !51, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !240, file: !189, line: 1203, baseType: !51, size: 64, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !240, file: !189, line: 1204, baseType: !817, size: 64, offset: 832)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !240, file: !189, line: 1205, baseType: !489, size: 320, offset: 896)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !240, file: !189, line: 1206, baseType: !34, size: 32, offset: 1216)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !240, file: !189, line: 1207, baseType: !61, size: 32, offset: 1248)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !240, file: !189, line: 1209, baseType: !32, size: 64, offset: 1280)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !240, file: !189, line: 1211, baseType: !2489, size: 64, offset: 1344)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2492)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !2493, line: 36, size: 384, elements: !2494)
!2493 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!2494 = !{!2495, !2496, !2497, !2498, !2502, !2506}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2492, file: !2493, line: 37, baseType: !28, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2492, file: !2493, line: 38, baseType: !28, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2492, file: !2493, line: 39, baseType: !34, size: 32, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2492, file: !2493, line: 40, baseType: !2499, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!548, !817}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2492, file: !2493, line: 41, baseType: !2503, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!34, !2490, !817, !857, !28, !32, !47}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2492, file: !2493, line: 44, baseType: !2507, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!34, !2490, !896, !817, !857, !28, !2510, !47, !34}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !240, file: !189, line: 1223, baseType: !2513, size: 64, offset: 1408)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !834, line: 34, size: 64, elements: !2514)
!2514 = !{!2515}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2513, file: !834, line: 35, baseType: !837, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !240, file: !189, line: 1224, baseType: !109, size: 128, offset: 1472)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !240, file: !189, line: 1225, baseType: !2518, size: 64, offset: 1600)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !189, line: 1225, flags: DIFlagFwdDecl)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !240, file: !189, line: 1226, baseType: !2521, size: 64, offset: 1664)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !189, line: 1226, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !240, file: !189, line: 1227, baseType: !2524, size: 64, offset: 1728)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !189, line: 50, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !240, file: !189, line: 1228, baseType: !2527, size: 64, offset: 1792)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !189, line: 1228, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !240, file: !189, line: 1229, baseType: !400, size: 128, offset: 1856)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !240, file: !189, line: 1230, baseType: !7, size: 32, offset: 1984)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !240, file: !189, line: 1231, baseType: !2532, size: 2496, offset: 2048)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !165, line: 521, size: 2496, elements: !2533)
!2533 = !{!2534, !2535, !2536, !2538, !2570}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2532, file: !165, line: 522, baseType: !7, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2532, file: !165, line: 523, baseType: !489, size: 320, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2532, file: !165, line: 524, baseType: !2537, size: 192, offset: 384)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 192, elements: !379)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2532, file: !165, line: 525, baseType: !2539, size: 1728, offset: 576)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2540, size: 1728, elements: !379)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !165, line: 222, size: 576, elements: !2541)
!2541 = !{!2542, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2540, file: !165, line: 223, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !165, line: 445, size: 256, elements: !2545)
!2545 = !{!2546, !2547, !2560, !2561}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2544, file: !165, line: 446, baseType: !34, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2544, file: !165, line: 447, baseType: !2548, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2550)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !165, line: 312, size: 512, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2550, file: !165, line: 313, baseType: !2162, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2550, file: !165, line: 314, baseType: !2162, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2550, file: !165, line: 315, baseType: !2162, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2550, file: !165, line: 316, baseType: !2162, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2550, file: !165, line: 317, baseType: !2293, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2550, file: !165, line: 318, baseType: !2293, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2550, file: !165, line: 319, baseType: !2293, size: 64, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2550, file: !165, line: 320, baseType: !2323, size: 64, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2544, file: !165, line: 448, baseType: !1766, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2544, file: !165, line: 449, baseType: !2543, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2540, file: !165, line: 224, baseType: !34, size: 32, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2540, file: !165, line: 226, baseType: !109, size: 128, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2540, file: !165, line: 227, baseType: !51, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2540, file: !165, line: 228, baseType: !7, size: 32, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2540, file: !165, line: 229, baseType: !7, size: 32, offset: 352)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2540, file: !165, line: 230, baseType: !2261, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2540, file: !165, line: 231, baseType: !2261, size: 64, offset: 448)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2540, file: !165, line: 232, baseType: !32, size: 64, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2532, file: !165, line: 526, baseType: !2571, size: 192, offset: 2304)
!2571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2548, size: 192, elements: !379)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !240, file: !189, line: 1233, baseType: !2573, size: 2368, offset: 4544)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !189, line: 1184, size: 2368, elements: !2574)
!2574 = !{!2575, !2576, !2577}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2573, file: !189, line: 1185, baseType: !38, size: 16)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2573, file: !189, line: 1186, baseType: !38, size: 16, offset: 16)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2573, file: !189, line: 1187, baseType: !2578, size: 2304, offset: 64)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2579, size: 2304, elements: !379)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2580, line: 12, size: 768, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2581 = !{!2582, !2590, !2592, !3803, !3804}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2579, file: !2580, line: 13, baseType: !2583, size: 384)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2584, line: 17, size: 384, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2583, file: !2584, line: 18, baseType: !34, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2583, file: !2584, line: 19, baseType: !34, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2583, file: !2584, line: 20, baseType: !66, size: 192, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2583, file: !2584, line: 22, baseType: !320, size: 128, align: 64, offset: 256)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2579, file: !2580, line: 14, baseType: !2591, size: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2579, file: !2580, line: 15, baseType: !2593, size: 64, offset: 448)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2594, line: 16, size: 64, elements: !2595)
!2594 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2595 = !{!2596}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2593, file: !2594, line: 17, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1856, line: 746, size: 58368, elements: !2599)
!2599 = !{!2600, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2680, !2691, !2777, !2781, !2784, !2815, !2816, !2817, !2818, !2829, !2831, !2832, !2833, !2834, !2835, !2836, !2847, !2848, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2865, !2866, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2953, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !3001, !3007, !3008, !3009, !3010, !3011, !3015, !3018, !3025, !3030, !3033, !3036, !3039, !3063, !3202, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3244, !3245, !3246, !3255, !3263, !3264, !3265, !3266, !3267, !3272, !3273, !3274, !3277, !3278, !3281, !3284, !3287, !3295, !3298, !3299, !3385, !3386, !3387, !3388, !3389, !3395, !3396, !3397, !3398, !3401, !3402, !3405, !3408, !3409, !3412, !3413, !3414, !3417, !3418, !3419, !3420, !3421, !3422, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3454, !3455, !3461, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3473, !3545, !3547, !3548, !3549, !3550, !3551, !3563, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3580, !3581, !3582}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2598, file: !1856, line: 752, baseType: !2601, size: 192)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2602, line: 56, size: 192, elements: !2603)
!2602 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2603 = !{!2604, !2605, !2606, !2607}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2601, file: !2602, line: 57, baseType: !51, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2601, file: !2602, line: 58, baseType: !51, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2601, file: !2602, line: 59, baseType: !246, size: 32, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2601, file: !2602, line: 61, baseType: !246, size: 32, offset: 160)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2598, file: !1856, line: 754, baseType: !7, size: 32, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2598, file: !1856, line: 767, baseType: !32, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2598, file: !1856, line: 768, baseType: !387, size: 32, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2598, file: !1856, line: 770, baseType: !7, size: 32, offset: 352)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2598, file: !1856, line: 771, baseType: !7, size: 32, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2598, file: !1856, line: 774, baseType: !34, size: 32, offset: 416)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2598, file: !1856, line: 775, baseType: !2615, size: 128, offset: 448)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2616, line: 58, size: 128, elements: !2617)
!2616 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2617 = !{!2618, !2619, !2624, !2625}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2615, file: !2616, line: 59, baseType: !314, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, scope: !2615, file: !2616, line: 60, baseType: !2620, size: 32, offset: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2615, file: !2616, line: 60, size: 32, elements: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2620, file: !2616, line: 61, baseType: !7, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2620, file: !2616, line: 62, baseType: !61, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2615, file: !2616, line: 65, baseType: !105, size: 16, offset: 96)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2615, file: !2616, line: 65, baseType: !105, size: 16, offset: 112)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2598, file: !1856, line: 776, baseType: !7, size: 32, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2598, file: !1856, line: 777, baseType: !51, size: 64, offset: 640)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2598, file: !1856, line: 778, baseType: !2597, size: 64, offset: 704)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2598, file: !1856, line: 787, baseType: !34, size: 32, offset: 768)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2598, file: !1856, line: 788, baseType: !34, size: 32, offset: 800)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2598, file: !1856, line: 790, baseType: !34, size: 32, offset: 832)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2598, file: !1856, line: 792, baseType: !34, size: 32, offset: 864)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2598, file: !1856, line: 793, baseType: !34, size: 32, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2598, file: !1856, line: 794, baseType: !34, size: 32, offset: 928)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2598, file: !1856, line: 795, baseType: !7, size: 32, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2598, file: !1856, line: 797, baseType: !2637, size: 2048, offset: 1024)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1856, line: 551, size: 2048, elements: !2638)
!2638 = !{!2639, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2659, !2662, !2663, !2664}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2637, file: !1856, line: 553, baseType: !2640, size: 128)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1856, line: 411, size: 128, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2640, file: !1856, line: 412, baseType: !51, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2640, file: !1856, line: 413, baseType: !246, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2637, file: !1856, line: 554, baseType: !481, size: 192, align: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2637, file: !1856, line: 555, baseType: !457, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2637, file: !1856, line: 556, baseType: !457, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2637, file: !1856, line: 558, baseType: !109, size: 128, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2637, file: !1856, line: 559, baseType: !7, size: 32, offset: 576)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2637, file: !1856, line: 561, baseType: !457, size: 64, offset: 640)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2637, file: !1856, line: 562, baseType: !457, size: 64, offset: 704)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2637, file: !1856, line: 563, baseType: !457, size: 64, offset: 768)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2637, file: !1856, line: 564, baseType: !457, size: 64, offset: 832)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2637, file: !1856, line: 565, baseType: !339, size: 64, offset: 896)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2637, file: !1856, line: 566, baseType: !457, size: 64, offset: 960)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2637, file: !1856, line: 568, baseType: !457, size: 64, offset: 1024)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2637, file: !1856, line: 571, baseType: !34, size: 32, offset: 1088)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2637, file: !1856, line: 572, baseType: !2658, size: 64, offset: 1152)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2637, file: !1856, line: 574, baseType: !2660, size: 64, offset: 1216)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1856, line: 49, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2637, file: !1856, line: 576, baseType: !2660, size: 64, offset: 1280)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2637, file: !1856, line: 578, baseType: !51, size: 64, offset: 1344)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2637, file: !1856, line: 588, baseType: !2665, size: 512, align: 512, offset: 1536)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1856, line: 497, size: 512, align: 512, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2665, file: !1856, line: 498, baseType: !457, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2665, file: !1856, line: 499, baseType: !457, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2665, file: !1856, line: 500, baseType: !457, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2665, file: !1856, line: 501, baseType: !246, size: 32, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2665, file: !1856, line: 502, baseType: !246, size: 32, offset: 224)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2665, file: !1856, line: 503, baseType: !51, size: 64, offset: 256)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2665, file: !1856, line: 504, baseType: !51, size: 64, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2665, file: !1856, line: 505, baseType: !51, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2665, file: !1856, line: 506, baseType: !2676, size: 64, align: 64, offset: 448)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1856, line: 445, size: 64, align: 64, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2676, file: !1856, line: 446, baseType: !7, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2676, file: !1856, line: 447, baseType: !7, size: 32, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2598, file: !1856, line: 798, baseType: !2681, size: 384, offset: 3072)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1856, line: 592, size: 384, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2681, file: !1856, line: 593, baseType: !109, size: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2681, file: !1856, line: 594, baseType: !51, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2681, file: !1856, line: 595, baseType: !51, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2681, file: !1856, line: 596, baseType: !7, size: 32, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2681, file: !1856, line: 597, baseType: !38, size: 16, offset: 288)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2681, file: !1856, line: 598, baseType: !38, size: 16, offset: 304)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2681, file: !1856, line: 600, baseType: !2690, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2598, file: !1856, line: 799, baseType: !2692, size: 1792, offset: 3456)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1856, line: 610, size: 1792, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2774, !2775}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2692, file: !1856, line: 611, baseType: !481, size: 192, align: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2692, file: !1856, line: 618, baseType: !457, size: 64, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2692, file: !1856, line: 619, baseType: !457, size: 64, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2692, file: !1856, line: 620, baseType: !457, size: 64, offset: 320)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2692, file: !1856, line: 621, baseType: !457, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2692, file: !1856, line: 622, baseType: !457, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2692, file: !1856, line: 629, baseType: !339, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2692, file: !1856, line: 630, baseType: !457, size: 64, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2692, file: !1856, line: 631, baseType: !7, size: 32, offset: 640)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2692, file: !1856, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2692, file: !1856, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2692, file: !1856, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2692, file: !1856, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2692, file: !1856, line: 662, baseType: !2708, size: 512, offset: 704)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !171, line: 118, size: 512, elements: !2709)
!2709 = !{!2710, !2718, !2719, !2724, !2770, !2771, !2772, !2773}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2708, file: !171, line: 119, baseType: !2711, size: 256)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2712, line: 9, size: 256, elements: !2713)
!2712 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2713 = !{!2714, !2715}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2711, file: !2712, line: 10, baseType: !481, size: 192, align: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2711, file: !2712, line: 11, baseType: !2716, size: 64, offset: 192)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2717, line: 29, baseType: !339)
!2717 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2708, file: !171, line: 120, baseType: !2716, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2708, file: !171, line: 121, baseType: !2720, size: 64, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!170, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2708, file: !171, line: 122, baseType: !2725, size: 64, offset: 384)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !171, line: 159, size: 512, align: 512, elements: !2727)
!2727 = !{!2728, !2751, !2752, !2755, !2760, !2761, !2765, !2769}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2726, file: !171, line: 160, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !171, line: 215, size: 4608, align: 512, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2730, file: !171, line: 216, baseType: !347, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2730, file: !171, line: 217, baseType: !7, size: 32, offset: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2730, file: !171, line: 218, baseType: !7, size: 32, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2730, file: !171, line: 219, baseType: !7, size: 32, offset: 96)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2730, file: !171, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2730, file: !171, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2730, file: !171, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2730, file: !171, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2730, file: !171, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2730, file: !171, line: 226, baseType: !7, size: 32, offset: 160)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2730, file: !171, line: 227, baseType: !38, size: 16, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2730, file: !171, line: 228, baseType: !38, size: 16, offset: 208)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2730, file: !171, line: 229, baseType: !7, size: 32, offset: 224)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2730, file: !171, line: 235, baseType: !2716, size: 64, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2730, file: !171, line: 236, baseType: !2723, size: 64, offset: 320)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2730, file: !171, line: 237, baseType: !2716, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2730, file: !171, line: 238, baseType: !2723, size: 64, offset: 448)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2730, file: !171, line: 239, baseType: !2750, size: 4096, align: 512, offset: 512)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2726, size: 4096, align: 512, elements: !2096)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2726, file: !171, line: 161, baseType: !7, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2726, file: !171, line: 162, baseType: !2753, size: 32, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !37, line: 32, baseType: !2754)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !49, line: 96, baseType: !34)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2726, file: !171, line: 163, baseType: !2756, size: 32, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !824, line: 274, baseType: !2757)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !824, line: 274, size: 32, elements: !2758)
!2758 = !{!2759}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2757, file: !824, line: 274, baseType: !828, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2726, file: !171, line: 164, baseType: !2723, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2726, file: !171, line: 165, baseType: !2762, size: 128, offset: 256)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2712, line: 14, size: 128, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2762, file: !2712, line: 15, baseType: !1073, size: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2726, file: !171, line: 166, baseType: !2766, size: 64, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!2716}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2726, file: !171, line: 167, baseType: !2716, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2708, file: !171, line: 123, baseType: !95, size: 8, offset: 448)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2708, file: !171, line: 124, baseType: !95, size: 8, offset: 456)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2708, file: !171, line: 125, baseType: !95, size: 8, offset: 464)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2708, file: !171, line: 126, baseType: !95, size: 8, offset: 472)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2692, file: !1856, line: 671, baseType: !2708, size: 512, offset: 1216)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2692, file: !1856, line: 679, baseType: !2776, size: 64, offset: 1728)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2598, file: !1856, line: 800, baseType: !2778, size: 64, offset: 5248)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2780)
!2780 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1856, line: 800, flags: DIFlagFwdDecl)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2598, file: !1856, line: 809, baseType: !2782, size: 64, offset: 5312)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1856, line: 70, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2598, file: !1856, line: 825, baseType: !2785, size: 2048, align: 512, offset: 5632)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1856, line: 509, size: 2048, align: 512, elements: !2786)
!2786 = !{!2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2785, file: !1856, line: 511, baseType: !457, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2785, file: !1856, line: 512, baseType: !457, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2785, file: !1856, line: 513, baseType: !457, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2785, file: !1856, line: 514, baseType: !457, size: 64, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2785, file: !1856, line: 515, baseType: !457, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2785, file: !1856, line: 516, baseType: !457, size: 64, offset: 320)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2785, file: !1856, line: 518, baseType: !457, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2785, file: !1856, line: 519, baseType: !457, size: 64, offset: 448)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2785, file: !1856, line: 520, baseType: !339, size: 64, offset: 512)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2785, file: !1856, line: 522, baseType: !457, size: 64, offset: 576)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2785, file: !1856, line: 523, baseType: !457, size: 64, offset: 640)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2785, file: !1856, line: 524, baseType: !339, size: 64, offset: 704)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2785, file: !1856, line: 526, baseType: !339, size: 64, offset: 768)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2785, file: !1856, line: 527, baseType: !457, size: 64, offset: 832)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2785, file: !1856, line: 529, baseType: !457, size: 64, offset: 896)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2785, file: !1856, line: 530, baseType: !457, size: 64, offset: 960)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2785, file: !1856, line: 531, baseType: !457, size: 64, offset: 1024)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2785, file: !1856, line: 532, baseType: !457, size: 64, offset: 1088)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2785, file: !1856, line: 533, baseType: !457, size: 64, offset: 1152)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2785, file: !1856, line: 535, baseType: !457, size: 64, offset: 1216)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2785, file: !1856, line: 536, baseType: !457, size: 64, offset: 1280)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2785, file: !1856, line: 537, baseType: !457, size: 64, offset: 1344)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2785, file: !1856, line: 538, baseType: !457, size: 64, offset: 1408)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2785, file: !1856, line: 539, baseType: !457, size: 64, offset: 1472)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2785, file: !1856, line: 540, baseType: !457, size: 64, offset: 1536)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2785, file: !1856, line: 541, baseType: !457, size: 64, offset: 1600)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2785, file: !1856, line: 542, baseType: !457, size: 64, offset: 1664)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2785, file: !1856, line: 543, baseType: !457, size: 64, offset: 1728)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2598, file: !1856, line: 833, baseType: !7, size: 32, offset: 7680)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2598, file: !1856, line: 836, baseType: !7, size: 32, offset: 7712)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2598, file: !1856, line: 837, baseType: !34, size: 32, offset: 7744)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2598, file: !1856, line: 838, baseType: !2819, size: 64, offset: 7808)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2821)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2822, line: 19, baseType: !2823)
!2822 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2822, line: 19, size: 64, elements: !2824)
!2824 = !{!2825}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2823, file: !2822, line: 19, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !2827)
!2827 = !{!2828}
!2828 = !DISubrange(count: 1)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2598, file: !1856, line: 839, baseType: !2830, size: 64, offset: 7872)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2598, file: !1856, line: 840, baseType: !2821, size: 64, offset: 7936)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2598, file: !1856, line: 841, baseType: !32, size: 64, offset: 8000)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2598, file: !1856, line: 843, baseType: !38, size: 16, offset: 8064)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2598, file: !1856, line: 845, baseType: !38, size: 16, offset: 8080)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2598, file: !1856, line: 848, baseType: !34, size: 32, offset: 8096)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2598, file: !1856, line: 849, baseType: !2837, size: 32, offset: 8128)
!2837 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1856, line: 718, size: 32, elements: !2838)
!2838 = !{!2839, !2846}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2837, file: !1856, line: 724, baseType: !2840, size: 32)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2837, file: !1856, line: 719, size: 32, elements: !2841)
!2841 = !{!2842, !2843, !2844, !2845}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2840, file: !1856, line: 720, baseType: !95, size: 8)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2840, file: !1856, line: 721, baseType: !95, size: 8, offset: 8)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2840, file: !1856, line: 722, baseType: !95, size: 8, offset: 16)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2840, file: !1856, line: 723, baseType: !95, size: 8, offset: 24)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2837, file: !1856, line: 725, baseType: !246, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2598, file: !1856, line: 850, baseType: !109, size: 128, offset: 8192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2598, file: !1856, line: 851, baseType: !2849, size: 64, offset: 8320)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1856, line: 60, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2598, file: !1856, line: 855, baseType: !51, size: 64, offset: 8384)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2598, file: !1856, line: 856, baseType: !95, size: 8, offset: 8448)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2598, file: !1856, line: 857, baseType: !95, size: 8, offset: 8456)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2598, file: !1856, line: 858, baseType: !34, size: 32, offset: 8480)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2598, file: !1856, line: 859, baseType: !109, size: 128, offset: 8512)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2598, file: !1856, line: 860, baseType: !34, size: 32, offset: 8640)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2598, file: !1856, line: 861, baseType: !109, size: 128, offset: 8704)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2598, file: !1856, line: 873, baseType: !2859, size: 256, offset: 8832)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1856, line: 376, size: 256, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2859, file: !1856, line: 381, baseType: !51, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2859, file: !1856, line: 384, baseType: !459, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2859, file: !1856, line: 389, baseType: !459, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2859, file: !1856, line: 392, baseType: !459, size: 64, offset: 192)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2598, file: !1856, line: 875, baseType: !109, size: 128, offset: 9088)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2598, file: !1856, line: 877, baseType: !2867, size: 320, offset: 9216)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2868, line: 86, size: 320, elements: !2869)
!2868 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2869 = !{!2870, !2871, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2867, file: !2868, line: 87, baseType: !34, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2867, file: !2868, line: 88, baseType: !109, size: 128, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2867, file: !2868, line: 89, baseType: !109, size: 128, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2598, file: !1856, line: 878, baseType: !481, size: 192, align: 64, offset: 9536)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2598, file: !1856, line: 881, baseType: !1211, size: 64, offset: 9728)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2598, file: !1856, line: 882, baseType: !1211, size: 64, offset: 9792)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2598, file: !1856, line: 884, baseType: !34, size: 32, offset: 9856)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2598, file: !1856, line: 885, baseType: !34, size: 32, offset: 9888)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2598, file: !1856, line: 886, baseType: !34, size: 32, offset: 9920)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2598, file: !1856, line: 888, baseType: !34, size: 32, offset: 9952)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2598, file: !1856, line: 890, baseType: !51, size: 64, offset: 9984)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2598, file: !1856, line: 893, baseType: !7, size: 32, offset: 10048)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2598, file: !1856, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2598, file: !1856, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2598, file: !1856, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2598, file: !1856, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2598, file: !1856, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2598, file: !1856, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2598, file: !1856, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2598, file: !1856, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2598, file: !1856, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2598, file: !1856, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2598, file: !1856, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2598, file: !1856, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2598, file: !1856, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2598, file: !1856, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2598, file: !1856, line: 969, baseType: !51, size: 64, offset: 10176)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2598, file: !1856, line: 971, baseType: !2898, size: 448, offset: 10240)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !176, line: 25, size: 448, elements: !2899)
!2899 = !{!2900, !2901, !2906}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2898, file: !176, line: 26, baseType: !51, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2898, file: !176, line: 27, baseType: !2902, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!781, !2905}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !2898, file: !176, line: 28, baseType: !2907, size: 320, offset: 128)
!2907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2898, file: !176, line: 28, size: 320, elements: !2908)
!2908 = !{!2909, !2918, !2943}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2907, file: !176, line: 37, baseType: !2910, size: 320)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !176, line: 30, size: 320, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2910, file: !176, line: 31, baseType: !2467, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2910, file: !176, line: 32, baseType: !246, size: 32, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2910, file: !176, line: 33, baseType: !246, size: 32, offset: 96)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2910, file: !176, line: 34, baseType: !246, size: 32, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2910, file: !176, line: 35, baseType: !457, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2910, file: !176, line: 36, baseType: !2467, size: 64, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2907, file: !176, line: 47, baseType: !2919, size: 192)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !176, line: 39, size: 192, elements: !2920)
!2920 = !{!2921, !2922, !2923, !2942}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2919, file: !176, line: 40, baseType: !2753, size: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2919, file: !176, line: 41, baseType: !175, size: 32, offset: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !2919, file: !176, line: 42, baseType: !2924, size: 64, offset: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2919, file: !176, line: 42, size: 64, elements: !2925)
!2925 = !{!2926, !2934}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2924, file: !176, line: 43, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2929, line: 7, size: 128, elements: !2930)
!2929 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2930 = !{!2931, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2928, file: !2929, line: 8, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !49, line: 93, baseType: !55)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2928, file: !2929, line: 9, baseType: !55, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2924, file: !176, line: 44, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2937, line: 7, size: 64, elements: !2938)
!2937 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2938 = !{!2939, !2941}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2936, file: !2937, line: 8, baseType: !2940, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2937, line: 5, baseType: !474)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2936, file: !2937, line: 9, baseType: !474, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2919, file: !176, line: 46, baseType: !457, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2907, file: !176, line: 55, baseType: !2944, size: 256)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !176, line: 49, size: 256, elements: !2945)
!2945 = !{!2946, !2949, !2950, !2951, !2952}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2944, file: !176, line: 50, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !176, line: 14, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2944, file: !176, line: 51, baseType: !34, size: 32, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2944, file: !176, line: 52, baseType: !34, size: 32, offset: 96)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2944, file: !176, line: 53, baseType: !51, size: 64, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2944, file: !176, line: 54, baseType: !51, size: 64, offset: 192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2598, file: !1856, line: 973, baseType: !2954, size: 32, offset: 10688)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !37, line: 27, baseType: !2955)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !49, line: 28, baseType: !34)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2598, file: !1856, line: 974, baseType: !2954, size: 32, offset: 10720)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2598, file: !1856, line: 978, baseType: !51, size: 64, offset: 10752)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2598, file: !1856, line: 987, baseType: !2597, size: 64, offset: 10816)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2598, file: !1856, line: 990, baseType: !2597, size: 64, offset: 10880)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2598, file: !1856, line: 995, baseType: !109, size: 128, offset: 10944)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2598, file: !1856, line: 996, baseType: !109, size: 128, offset: 11072)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2598, file: !1856, line: 997, baseType: !2597, size: 64, offset: 11200)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2598, file: !1856, line: 1005, baseType: !109, size: 128, offset: 11264)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2598, file: !1856, line: 1006, baseType: !109, size: 128, offset: 11392)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2598, file: !1856, line: 1009, baseType: !383, size: 64, offset: 11520)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2598, file: !1856, line: 1010, baseType: !2967, size: 512, offset: 11584)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 512, elements: !405)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2598, file: !1856, line: 1011, baseType: !109, size: 128, offset: 12096)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2598, file: !1856, line: 1012, baseType: !109, size: 128, offset: 12224)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2598, file: !1856, line: 1014, baseType: !718, size: 64, offset: 12352)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2598, file: !1856, line: 1017, baseType: !2206, size: 64, offset: 12416)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2598, file: !1856, line: 1020, baseType: !2206, size: 64, offset: 12480)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2598, file: !1856, line: 1023, baseType: !32, size: 64, offset: 12544)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2598, file: !1856, line: 1025, baseType: !457, size: 64, offset: 12608)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2598, file: !1856, line: 1026, baseType: !457, size: 64, offset: 12672)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2598, file: !1856, line: 1031, baseType: !457, size: 64, offset: 12736)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2598, file: !1856, line: 1032, baseType: !2978, size: 192, offset: 12800)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1856, line: 324, size: 192, elements: !2979)
!2979 = !{!2980, !2981, !2982}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2978, file: !1856, line: 326, baseType: !457, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2978, file: !1856, line: 327, baseType: !457, size: 64, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2978, file: !1856, line: 328, baseType: !347, size: 32, offset: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2598, file: !1856, line: 1041, baseType: !51, size: 64, offset: 12992)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2598, file: !1856, line: 1042, baseType: !51, size: 64, offset: 13056)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2598, file: !1856, line: 1045, baseType: !457, size: 64, offset: 13120)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2598, file: !1856, line: 1048, baseType: !457, size: 64, offset: 13184)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2598, file: !1856, line: 1051, baseType: !51, size: 64, offset: 13248)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2598, file: !1856, line: 1052, baseType: !51, size: 64, offset: 13312)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2598, file: !1856, line: 1055, baseType: !2990, size: 640, offset: 13376)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2991, line: 132, size: 640, elements: !2992)
!2991 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2992 = !{!2993, !2999, !3000}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2990, file: !2991, line: 133, baseType: !2994, size: 576)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2995, size: 576, elements: !379)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2991, line: 117, size: 192, elements: !2996)
!2996 = !{!2997, !2998}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2995, file: !2991, line: 118, baseType: !457, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2995, file: !2991, line: 119, baseType: !2762, size: 128, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2990, file: !2991, line: 134, baseType: !7, size: 32, offset: 576)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2990, file: !2991, line: 135, baseType: !7, size: 32, offset: 608)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2598, file: !1856, line: 1058, baseType: !3002, size: 448, offset: 14016)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2991, line: 144, size: 448, elements: !3003)
!3003 = !{!3004, !3005, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3002, file: !2991, line: 145, baseType: !320, size: 128, align: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3002, file: !2991, line: 146, baseType: !342, size: 256, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3002, file: !2991, line: 147, baseType: !7, size: 32, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2598, file: !1856, line: 1064, baseType: !430, size: 64, offset: 14464)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2598, file: !1856, line: 1067, baseType: !430, size: 64, offset: 14528)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2598, file: !1856, line: 1070, baseType: !430, size: 64, offset: 14592)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2598, file: !1856, line: 1074, baseType: !466, size: 64, offset: 14656)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2598, file: !1856, line: 1084, baseType: !3012, size: 128, offset: 14720)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !3013)
!3013 = !{!3014}
!3014 = !DISubrange(count: 16)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2598, file: !1856, line: 1086, baseType: !3016, size: 64, offset: 14848)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1856, line: 55, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2598, file: !1856, line: 1089, baseType: !3019, size: 64, offset: 14912)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3020, line: 12, size: 64, elements: !3021)
!3020 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3021 = !{!3022}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3019, file: !3020, line: 13, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3020, line: 8, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2598, file: !1856, line: 1090, baseType: !3026, size: 128, offset: 14976)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3027, line: 13, size: 128, elements: !3028)
!3027 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3028 = !{!3029}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3026, file: !3027, line: 14, baseType: !109, size: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2598, file: !1856, line: 1097, baseType: !3031, size: 64, offset: 15104)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1856, line: 50, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2598, file: !1856, line: 1100, baseType: !3034, size: 64, offset: 15168)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1856, line: 1100, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2598, file: !1856, line: 1103, baseType: !3037, size: 64, offset: 15232)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1856, line: 53, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2598, file: !1856, line: 1107, baseType: !3040, size: 64, offset: 15296)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3042, line: 31, size: 576, elements: !3043)
!3042 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3043 = !{!3044, !3045, !3048, !3051, !3054, !3055, !3056, !3059, !3060}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3041, file: !3042, line: 32, baseType: !387, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3041, file: !3042, line: 33, baseType: !3046, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3042, line: 9, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3041, file: !3042, line: 34, baseType: !3049, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3042, line: 10, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3041, file: !3042, line: 35, baseType: !3052, size: 64, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3042, line: 8, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3041, file: !3042, line: 36, baseType: !416, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3041, file: !3042, line: 37, baseType: !2078, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3041, file: !3042, line: 38, baseType: !3057, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3042, line: 38, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3041, file: !3042, line: 39, baseType: !3057, size: 64, offset: 448)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3041, file: !3042, line: 40, baseType: !3061, size: 64, offset: 512)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3042, line: 12, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2598, file: !1856, line: 1110, baseType: !3064, size: 64, offset: 15360)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3066, line: 93, size: 8768, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3116, !3125, !3126, !3128, !3129, !3130, !3133, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3171, !3172, !3179, !3189, !3192, !3193, !3196, !3197, !3198, !3199, !3200, !3201}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3065, file: !3066, line: 94, baseType: !387, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3065, file: !3066, line: 95, baseType: !61, size: 32, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3065, file: !3066, line: 96, baseType: !34, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3065, file: !3066, line: 97, baseType: !34, size: 32, offset: 96)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3065, file: !3066, line: 98, baseType: !109, size: 128, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3065, file: !3066, line: 100, baseType: !66, size: 192, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3065, file: !3066, line: 103, baseType: !2597, size: 64, offset: 448)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3065, file: !3066, line: 106, baseType: !3076, size: 192, offset: 512)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3077, line: 32, size: 192, elements: !3078)
!3077 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3078 = !{!3079, !3080}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3076, file: !3077, line: 33, baseType: !109, size: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3076, file: !3077, line: 34, baseType: !3081, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3082, line: 25, baseType: !3083)
!3082 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3082, line: 23, size: 64, elements: !3084)
!3084 = !{!3085}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3083, file: !3082, line: 24, baseType: !2826, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3065, file: !3066, line: 109, baseType: !396, size: 64, offset: 704)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3065, file: !3066, line: 112, baseType: !34, size: 32, offset: 768)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3065, file: !3066, line: 114, baseType: !34, size: 32, offset: 800)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3065, file: !3066, line: 115, baseType: !2597, size: 64, offset: 832)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3065, file: !3066, line: 118, baseType: !34, size: 32, offset: 896)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3065, file: !3066, line: 119, baseType: !7, size: 32, offset: 928)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3065, file: !3066, line: 121, baseType: !3093, size: 64, offset: 960)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3066, line: 80, size: 448, elements: !3095)
!3095 = !{!3096, !3097, !3103}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3094, file: !3066, line: 81, baseType: !61, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3094, file: !3066, line: 82, baseType: !3098, size: 128, offset: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3066, line: 75, size: 128, elements: !3099)
!3099 = !{!3100, !3101}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3098, file: !3066, line: 76, baseType: !2597, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3098, file: !3066, line: 77, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3094, file: !3066, line: 83, baseType: !719, size: 256, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3065, file: !3066, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3065, file: !3066, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3065, file: !3066, line: 138, baseType: !7, size: 32, offset: 1056)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3065, file: !3066, line: 139, baseType: !109, size: 128, offset: 1088)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3065, file: !3066, line: 142, baseType: !2708, size: 512, offset: 1216)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3065, file: !3066, line: 143, baseType: !2716, size: 64, offset: 1728)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3065, file: !3066, line: 150, baseType: !3111, size: 256, offset: 1792)
!3111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3112, size: 256, elements: !2196)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3066, line: 38, size: 128, elements: !3113)
!3113 = !{!3114, !3115}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3112, file: !3066, line: 39, baseType: !457, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3112, file: !3066, line: 40, baseType: !457, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3065, file: !3066, line: 156, baseType: !3117, size: 192, offset: 2048)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3066, line: 66, size: 192, elements: !3118)
!3118 = !{!3119}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3117, file: !3066, line: 67, baseType: !3120, size: 192)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3066, line: 47, size: 192, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3120, file: !3066, line: 48, baseType: !335, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3120, file: !3066, line: 49, baseType: !335, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3120, file: !3066, line: 50, baseType: !335, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3065, file: !3066, line: 160, baseType: !2990, size: 640, offset: 2240)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3065, file: !3066, line: 163, baseType: !3127, size: 256, offset: 2880)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 256, elements: !405)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3065, file: !3066, line: 169, baseType: !383, size: 64, offset: 3136)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3065, file: !3066, line: 172, baseType: !34, size: 32, offset: 3200)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3065, file: !3066, line: 174, baseType: !3131, size: 64, offset: 3264)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3066, line: 174, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3065, file: !3066, line: 185, baseType: !3134, size: 64, offset: 3328)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !824, line: 860, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !824, line: 853, size: 64, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3135, file: !824, line: 858, baseType: !823, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3135, file: !824, line: 859, baseType: !71, size: 32, offset: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3065, file: !3066, line: 186, baseType: !457, size: 64, offset: 3392)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3065, file: !3066, line: 186, baseType: !457, size: 64, offset: 3456)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3065, file: !3066, line: 186, baseType: !457, size: 64, offset: 3520)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3065, file: !3066, line: 186, baseType: !457, size: 64, offset: 3584)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3065, file: !3066, line: 187, baseType: !457, size: 64, offset: 3648)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3065, file: !3066, line: 188, baseType: !457, size: 64, offset: 3712)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3065, file: !3066, line: 189, baseType: !2978, size: 192, offset: 3776)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3065, file: !3066, line: 190, baseType: !51, size: 64, offset: 3968)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3065, file: !3066, line: 190, baseType: !51, size: 64, offset: 4032)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3065, file: !3066, line: 190, baseType: !51, size: 64, offset: 4096)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3065, file: !3066, line: 190, baseType: !51, size: 64, offset: 4160)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3065, file: !3066, line: 191, baseType: !51, size: 64, offset: 4224)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3065, file: !3066, line: 191, baseType: !51, size: 64, offset: 4288)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3065, file: !3066, line: 191, baseType: !51, size: 64, offset: 4352)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3065, file: !3066, line: 191, baseType: !51, size: 64, offset: 4416)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3065, file: !3066, line: 192, baseType: !51, size: 64, offset: 4480)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3065, file: !3066, line: 192, baseType: !51, size: 64, offset: 4544)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3065, file: !3066, line: 192, baseType: !51, size: 64, offset: 4608)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3065, file: !3066, line: 192, baseType: !51, size: 64, offset: 4672)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3065, file: !3066, line: 193, baseType: !51, size: 64, offset: 4736)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3065, file: !3066, line: 193, baseType: !51, size: 64, offset: 4800)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3065, file: !3066, line: 194, baseType: !3161, size: 448, offset: 4864)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3162, line: 12, size: 448, elements: !3163)
!3162 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169, !3170}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3161, file: !3162, line: 15, baseType: !457, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3161, file: !3162, line: 17, baseType: !457, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3161, file: !3162, line: 19, baseType: !457, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3161, file: !3162, line: 21, baseType: !457, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3161, file: !3162, line: 29, baseType: !457, size: 64, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3161, file: !3162, line: 35, baseType: !457, size: 64, offset: 320)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3161, file: !3162, line: 44, baseType: !457, size: 64, offset: 384)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3065, file: !3066, line: 202, baseType: !459, size: 64, offset: 5312)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3065, file: !3066, line: 213, baseType: !3173, size: 2048, offset: 5376)
!3173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3174, size: 2048, elements: !3013)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3175, line: 43, size: 128, elements: !3176)
!3175 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3174, file: !3175, line: 44, baseType: !50, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3174, file: !3175, line: 45, baseType: !50, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3065, file: !3066, line: 216, baseType: !3180, size: 448, offset: 7424)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3066, line: 30, size: 448, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185, !3186, !3187, !3188}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3180, file: !3066, line: 31, baseType: !34, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3180, file: !3066, line: 32, baseType: !781, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3180, file: !3066, line: 33, baseType: !51, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3180, file: !3066, line: 34, baseType: !457, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3180, file: !3066, line: 34, baseType: !457, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3180, file: !3066, line: 35, baseType: !51, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3180, file: !3066, line: 35, baseType: !51, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3065, file: !3066, line: 219, baseType: !3190, size: 64, offset: 7872)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3066, line: 219, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3065, file: !3066, line: 222, baseType: !7, size: 32, offset: 7936)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3065, file: !3066, line: 223, baseType: !3194, size: 64, offset: 8000)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3066, line: 223, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3065, file: !3066, line: 230, baseType: !548, size: 8, offset: 8064)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3065, file: !3066, line: 231, baseType: !517, size: 16, offset: 8080)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3065, file: !3066, line: 232, baseType: !517, size: 16, offset: 8096)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3065, file: !3066, line: 234, baseType: !1211, size: 64, offset: 8128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3065, file: !3066, line: 237, baseType: !342, size: 256, offset: 8192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3065, file: !3066, line: 243, baseType: !489, size: 320, offset: 8448)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2598, file: !1856, line: 1111, baseType: !3203, size: 64, offset: 15424)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3066, line: 20, size: 16640, elements: !3205)
!3205 = !{!3206, !3207, !3208, !3209}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3204, file: !3066, line: 21, baseType: !71, size: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3204, file: !3066, line: 22, baseType: !387, size: 32, offset: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3204, file: !3066, line: 23, baseType: !66, size: 192, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3204, file: !3066, line: 24, baseType: !3210, size: 16384, offset: 256)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3211, size: 16384, elements: !3231)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3077, line: 51, size: 256, elements: !3212)
!3212 = !{!3213}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3211, file: !3077, line: 52, baseType: !3214, size: 256)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3077, line: 37, size: 256, elements: !3215)
!3215 = !{!3216, !3223, !3224, !3230}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3214, file: !3077, line: 39, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3218, line: 83, baseType: !3219)
!3218 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3218, line: 82, baseType: !3221)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{null, !34}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3214, file: !3077, line: 40, baseType: !51, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3214, file: !3077, line: 46, baseType: !3225, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3218, line: 86, baseType: !3226)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3218, line: 85, baseType: !3228)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{null}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3214, file: !3077, line: 48, baseType: !3081, size: 64, offset: 192)
!3231 = !{!3232}
!3232 = !DISubrange(count: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2598, file: !1856, line: 1112, baseType: !3081, size: 64, offset: 15488)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2598, file: !1856, line: 1113, baseType: !3081, size: 64, offset: 15552)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2598, file: !1856, line: 1115, baseType: !3081, size: 64, offset: 15616)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2598, file: !1856, line: 1116, baseType: !3076, size: 192, offset: 15680)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2598, file: !1856, line: 1117, baseType: !51, size: 64, offset: 15872)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2598, file: !1856, line: 1118, baseType: !47, size: 64, offset: 15936)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2598, file: !1856, line: 1119, baseType: !7, size: 32, offset: 16000)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2598, file: !1856, line: 1121, baseType: !323, size: 64, offset: 16064)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2598, file: !1856, line: 1125, baseType: !3242, size: 64, offset: 16128)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1856, line: 43, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2598, file: !1856, line: 1127, baseType: !420, size: 32, offset: 16192)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2598, file: !1856, line: 1128, baseType: !7, size: 32, offset: 16224)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2598, file: !1856, line: 1130, baseType: !3247, size: 128, offset: 16256)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3248, line: 37, size: 128, elements: !3249)
!3248 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3249 = !{!3250, !3251, !3252}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3247, file: !3248, line: 38, baseType: !34, size: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3247, file: !3248, line: 39, baseType: !61, size: 32, offset: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3247, file: !3248, line: 40, baseType: !3253, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3248, line: 24, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2598, file: !1856, line: 1131, baseType: !3256, size: 256, offset: 16384)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3257, line: 12, size: 256, elements: !3258)
!3257 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3258 = !{!3259, !3260, !3261, !3262}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3256, file: !3257, line: 13, baseType: !290, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3256, file: !3257, line: 14, baseType: !51, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3256, file: !3257, line: 15, baseType: !51, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3256, file: !3257, line: 16, baseType: !548, size: 8, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2598, file: !1856, line: 1134, baseType: !457, size: 64, offset: 16640)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2598, file: !1856, line: 1135, baseType: !457, size: 64, offset: 16704)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2598, file: !1856, line: 1138, baseType: !71, size: 32, offset: 16768)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2598, file: !1856, line: 1141, baseType: !347, size: 32, offset: 16800)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2598, file: !1856, line: 1143, baseType: !3268, size: 64, offset: 16832)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1856, line: 735, size: 64, elements: !3269)
!3269 = !{!3270}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3268, file: !1856, line: 736, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2598, file: !1856, line: 1147, baseType: !1073, size: 128, offset: 16896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2598, file: !1856, line: 1149, baseType: !2597, size: 64, offset: 17024)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2598, file: !1856, line: 1151, baseType: !3275, size: 64, offset: 17088)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1856, line: 1151, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2598, file: !1856, line: 1188, baseType: !32, size: 64, offset: 17152)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2598, file: !1856, line: 1191, baseType: !3279, size: 64, offset: 17216)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1856, line: 44, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2598, file: !1856, line: 1194, baseType: !3282, size: 64, offset: 17280)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1856, line: 45, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2598, file: !1856, line: 1197, baseType: !3285, size: 64, offset: 17344)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1856, line: 61, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2598, file: !1856, line: 1199, baseType: !3288, size: 64, offset: 17408)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3290, line: 99, size: 128, elements: !3291)
!3290 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3291 = !{!3292, !3293, !3294}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3289, file: !3290, line: 100, baseType: !333, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3289, file: !3290, line: 101, baseType: !61, size: 32, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3289, file: !3290, line: 103, baseType: !38, size: 16, offset: 96)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2598, file: !1856, line: 1202, baseType: !3296, size: 64, offset: 17472)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1856, line: 48, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2598, file: !1856, line: 1205, baseType: !51, size: 64, offset: 17536)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2598, file: !1856, line: 1206, baseType: !3300, size: 64, offset: 17600)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3077, line: 14, baseType: !3302)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3077, line: 12, size: 384, elements: !3303)
!3303 = !{!3304}
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !3302, file: !3077, line: 13, baseType: !3305, size: 384)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !3077, line: 13, size: 384, elements: !3306)
!3306 = !{!3307, !3308, !3309, !3310}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3305, file: !3077, line: 13, baseType: !34, size: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3305, file: !3077, line: 13, baseType: !34, size: 32, offset: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3305, file: !3077, line: 13, baseType: !34, size: 32, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3305, file: !3077, line: 13, baseType: !3311, size: 256, offset: 128)
!3311 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3312, line: 37, size: 256, elements: !3313)
!3312 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3313 = !{!3314, !3319, !3332, !3338, !3347, !3374, !3379}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3311, file: !3312, line: 42, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3312, line: 39, size: 64, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3315, file: !3312, line: 40, baseType: !2955, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3315, file: !3312, line: 41, baseType: !426, size: 32, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3311, file: !3312, line: 50, baseType: !3320, size: 192)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3312, line: 45, size: 192, elements: !3321)
!3321 = !{!3322, !3324, !3325, !3331}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3320, file: !3312, line: 46, baseType: !3323, size: 32)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !49, line: 95, baseType: !34)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3320, file: !3312, line: 47, baseType: !34, size: 32, offset: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3320, file: !3312, line: 48, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3312, line: 11, baseType: !3327)
!3327 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3312, line: 8, size: 64, elements: !3328)
!3328 = !{!3329, !3330}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3327, file: !3312, line: 9, baseType: !34, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3327, file: !3312, line: 10, baseType: !32, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3320, file: !3312, line: 49, baseType: !34, size: 32, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3311, file: !3312, line: 57, baseType: !3333, size: 128)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3312, line: 53, size: 128, elements: !3334)
!3334 = !{!3335, !3336, !3337}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3333, file: !3312, line: 54, baseType: !2955, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3333, file: !3312, line: 55, baseType: !426, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3333, file: !3312, line: 56, baseType: !3326, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3311, file: !3312, line: 66, baseType: !3339, size: 256)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3312, line: 60, size: 256, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344, !3346}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3339, file: !3312, line: 61, baseType: !2955, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3339, file: !3312, line: 62, baseType: !426, size: 32, offset: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3339, file: !3312, line: 63, baseType: !34, size: 32, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3339, file: !3312, line: 64, baseType: !3345, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !49, line: 94, baseType: !1009)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3339, file: !3312, line: 65, baseType: !3345, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3311, file: !3312, line: 105, baseType: !3348, size: 256)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3312, line: 69, size: 256, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3348, file: !3312, line: 70, baseType: !32, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, scope: !3348, file: !3312, line: 79, baseType: !3352, size: 192, offset: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3348, file: !3312, line: 79, size: 192, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3363, !3368}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3352, file: !3312, line: 81, baseType: !34, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3352, file: !3312, line: 86, baseType: !517, size: 16)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3352, file: !3312, line: 92, baseType: !3357, size: 192)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3352, file: !3312, line: 88, size: 192, elements: !3358)
!3358 = !{!3359, !3361, !3362}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3357, file: !3312, line: 89, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !2096)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3357, file: !3312, line: 90, baseType: !32, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3357, file: !3312, line: 91, baseType: !32, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3352, file: !3312, line: 97, baseType: !3364, size: 96)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3352, file: !3312, line: 94, size: 96, elements: !3365)
!3365 = !{!3366, !3367}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3364, file: !3312, line: 95, baseType: !3360, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3364, file: !3312, line: 96, baseType: !247, size: 32, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3352, file: !3312, line: 103, baseType: !3369, size: 128)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3352, file: !3312, line: 99, size: 128, elements: !3370)
!3370 = !{!3371, !3372, !3373}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3369, file: !3312, line: 100, baseType: !51, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3369, file: !3312, line: 101, baseType: !247, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3369, file: !3312, line: 102, baseType: !247, size: 32, offset: 96)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3311, file: !3312, line: 111, baseType: !3375, size: 128)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3312, line: 108, size: 128, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3375, file: !3312, line: 109, baseType: !781, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3375, file: !3312, line: 110, baseType: !34, size: 32, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3311, file: !3312, line: 118, baseType: !3380, size: 128)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3312, line: 114, size: 128, elements: !3381)
!3381 = !{!3382, !3383, !3384}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3380, file: !3312, line: 115, baseType: !32, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3380, file: !3312, line: 116, baseType: !34, size: 32, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3380, file: !3312, line: 117, baseType: !7, size: 32, offset: 96)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2598, file: !1856, line: 1208, baseType: !3161, size: 448, offset: 17664)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2598, file: !1856, line: 1215, baseType: !457, size: 64, offset: 18112)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2598, file: !1856, line: 1217, baseType: !457, size: 64, offset: 18176)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2598, file: !1856, line: 1219, baseType: !457, size: 64, offset: 18240)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2598, file: !1856, line: 1223, baseType: !3390, size: 64, offset: 18304)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3391, line: 99, baseType: !3392)
!3391 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3391, line: 99, size: 64, elements: !3393)
!3393 = !{!3394}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3392, file: !3391, line: 99, baseType: !2826, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2598, file: !1856, line: 1225, baseType: !823, size: 32, offset: 18368)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2598, file: !1856, line: 1226, baseType: !34, size: 32, offset: 18400)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2598, file: !1856, line: 1227, baseType: !34, size: 32, offset: 18432)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2598, file: !1856, line: 1231, baseType: !3399, size: 64, offset: 18496)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1856, line: 1231, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2598, file: !1856, line: 1233, baseType: !109, size: 128, offset: 18560)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2598, file: !1856, line: 1240, baseType: !3403, size: 64, offset: 18688)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1856, line: 62, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2598, file: !1856, line: 1242, baseType: !3406, size: 64, offset: 18752)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1856, line: 1242, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2598, file: !1856, line: 1244, baseType: !109, size: 128, offset: 18816)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2598, file: !1856, line: 1245, baseType: !3410, size: 64, offset: 18944)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1856, line: 51, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2598, file: !1856, line: 1246, baseType: !342, size: 256, offset: 19008)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2598, file: !1856, line: 1247, baseType: !7, size: 32, offset: 19264)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2598, file: !1856, line: 1250, baseType: !3415, size: 64, offset: 19328)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1856, line: 57, flags: DIFlagFwdDecl)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2598, file: !1856, line: 1251, baseType: !342, size: 256, offset: 19392)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2598, file: !1856, line: 1252, baseType: !109, size: 128, offset: 19648)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2598, file: !1856, line: 1259, baseType: !1423, size: 64, offset: 19776)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2598, file: !1856, line: 1260, baseType: !517, size: 16, offset: 19840)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2598, file: !1856, line: 1261, baseType: !517, size: 16, offset: 19856)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2598, file: !1856, line: 1314, baseType: !3423, size: 64, offset: 19904)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3425, line: 62, size: 256, align: 256, elements: !3426)
!3425 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3424, file: !3425, line: 75, baseType: !247, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3424, file: !3425, line: 90, baseType: !247, size: 32, offset: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3424, file: !3425, line: 112, baseType: !458, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3424, file: !3425, line: 132, baseType: !247, size: 32, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3424, file: !3425, line: 140, baseType: !247, size: 32, offset: 160)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3424, file: !3425, line: 149, baseType: !247, size: 32, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3424, file: !3425, line: 154, baseType: !3434, offset: 224)
!3434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !304)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2598, file: !1856, line: 1315, baseType: !246, size: 32, offset: 19968)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2598, file: !1856, line: 1316, baseType: !246, size: 32, offset: 20000)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2598, file: !1856, line: 1321, baseType: !51, size: 64, offset: 20032)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2598, file: !1856, line: 1325, baseType: !34, size: 32, offset: 20096)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2598, file: !1856, line: 1326, baseType: !34, size: 32, offset: 20128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2598, file: !1856, line: 1327, baseType: !34, size: 32, offset: 20160)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2598, file: !1856, line: 1328, baseType: !34, size: 32, offset: 20192)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2598, file: !1856, line: 1329, baseType: !320, size: 128, align: 64, offset: 20224)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2598, file: !1856, line: 1332, baseType: !3444, size: 128, offset: 20352)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3445, line: 51, size: 128, elements: !3446)
!3445 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3446 = !{!3447, !3452, !3453}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3444, file: !3445, line: 60, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3449, line: 7, size: 64, elements: !3450)
!3449 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3450 = !{!3451}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3448, file: !3449, line: 12, baseType: !2823, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3444, file: !3445, line: 63, baseType: !548, size: 8, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3444, file: !3445, line: 70, baseType: !548, size: 8, offset: 72)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2598, file: !1856, line: 1335, baseType: !1854, size: 64, offset: 20480)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2598, file: !1856, line: 1337, baseType: !3456, size: 128, offset: 20544)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3445, line: 39, size: 128, elements: !3457)
!3457 = !{!3458, !3459, !3460}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3456, file: !3445, line: 40, baseType: !1088, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3456, file: !3445, line: 42, baseType: !247, size: 32, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3456, file: !3445, line: 43, baseType: !247, size: 32, offset: 96)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2598, file: !1856, line: 1340, baseType: !3462, size: 64, offset: 20672)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1856, line: 69, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2598, file: !1856, line: 1351, baseType: !34, size: 32, offset: 20736)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2598, file: !1856, line: 1352, baseType: !34, size: 32, offset: 20768)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2598, file: !1856, line: 1354, baseType: !51, size: 64, offset: 20800)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2598, file: !1856, line: 1364, baseType: !457, size: 64, offset: 20864)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2598, file: !1856, line: 1365, baseType: !457, size: 64, offset: 20928)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2598, file: !1856, line: 1412, baseType: !51, size: 64, offset: 20992)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2598, file: !1856, line: 1453, baseType: !3471, size: 64, offset: 21056)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1856, line: 1453, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2598, file: !1856, line: 1457, baseType: !3474, size: 64, offset: 21120)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !182, line: 61, size: 576, elements: !3476)
!3476 = !{!3477, !3478, !3497, !3500, !3501, !3534, !3544}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3475, file: !182, line: 62, baseType: !181, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !182, line: 64, baseType: !3479, size: 192, offset: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3475, file: !182, line: 64, size: 192, elements: !3480)
!3480 = !{!3481, !3492}
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !182, line: 65, baseType: !3482, size: 192)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !182, line: 65, size: 192, elements: !3483)
!3483 = !{!3484, !3491}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3482, file: !182, line: 66, baseType: !3485, size: 128)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3486, line: 50, size: 128, elements: !3487)
!3486 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3487 = !{!3488, !3489, !3490}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3485, file: !3486, line: 52, baseType: !51, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3485, file: !3486, line: 54, baseType: !7, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3485, file: !3486, line: 55, baseType: !7, size: 32, offset: 96)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3482, file: !182, line: 67, baseType: !51, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !182, line: 70, baseType: !3493, size: 192)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !182, line: 70, size: 192, elements: !3494)
!3494 = !{!3495, !3496}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3493, file: !182, line: 71, baseType: !320, size: 128, align: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3493, file: !182, line: 72, baseType: !51, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3475, file: !182, line: 76, baseType: !3498, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !182, line: 76, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3475, file: !182, line: 77, baseType: !51, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3475, file: !182, line: 79, baseType: !3502, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3486, line: 25, size: 256, elements: !3504)
!3504 = !{!3505, !3511, !3515}
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !3486, line: 26, baseType: !3506, size: 128)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3503, file: !3486, line: 26, size: 128, elements: !3507)
!3507 = !{!3508, !3510}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3506, file: !3486, line: 27, baseType: !3509, size: 128)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !3013)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3506, file: !3486, line: 28, baseType: !3509, size: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3503, file: !3486, line: 31, baseType: !3512, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3514)
!3514 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3486, line: 23, flags: DIFlagFwdDecl)
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !3486, line: 33, baseType: !3516, size: 64, offset: 192)
!3516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3503, file: !3486, line: 33, size: 64, elements: !3517)
!3517 = !{!3518, !3524, !3529}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3516, file: !3486, line: 38, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3516, file: !3486, line: 34, size: 64, elements: !3520)
!3520 = !{!3521, !3522, !3523}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3519, file: !3486, line: 35, baseType: !474, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3519, file: !3486, line: 36, baseType: !95, size: 8, offset: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3519, file: !3486, line: 37, baseType: !95, size: 8, offset: 40)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3516, file: !3486, line: 42, baseType: !3525, size: 16)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3516, file: !3486, line: 39, size: 16, elements: !3526)
!3526 = !{!3527, !3528}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3525, file: !3486, line: 40, baseType: !95, size: 8)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3525, file: !3486, line: 41, baseType: !95, size: 8, offset: 8)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3516, file: !3486, line: 46, baseType: !3530, size: 16)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3516, file: !3486, line: 43, size: 16, elements: !3531)
!3531 = !{!3532, !3533}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3530, file: !3486, line: 44, baseType: !95, size: 8)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3530, file: !3486, line: 45, baseType: !95, size: 8, offset: 8)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3475, file: !182, line: 81, baseType: !3535, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !182, line: 85, size: 384, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3536, file: !182, line: 86, baseType: !3498, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3536, file: !182, line: 87, baseType: !51, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3536, file: !182, line: 88, baseType: !51, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3536, file: !182, line: 89, baseType: !51, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3536, file: !182, line: 90, baseType: !548, size: 8, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3536, file: !182, line: 92, baseType: !3535, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3475, file: !182, line: 82, baseType: !7, size: 32, offset: 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2598, file: !1856, line: 1463, baseType: !3546, offset: 21184)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1856, line: 739, elements: !1232)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2598, file: !1856, line: 1470, baseType: !320, size: 128, align: 64, offset: 21184)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2598, file: !1856, line: 1471, baseType: !387, size: 32, offset: 21312)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2598, file: !1856, line: 1472, baseType: !34, size: 32, offset: 21344)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2598, file: !1856, line: 1474, baseType: !2597, size: 64, offset: 21376)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2598, file: !1856, line: 1475, baseType: !3552, size: 320, offset: 21440)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3553, line: 11, size: 320, elements: !3554)
!3553 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3554 = !{!3555, !3556, !3557, !3562}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3552, file: !3553, line: 16, baseType: !400, size: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3552, file: !3553, line: 17, baseType: !51, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3552, file: !3553, line: 18, baseType: !3558, size: 64, offset: 192)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3552, file: !3553, line: 19, baseType: !246, size: 32, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2598, file: !1856, line: 1478, baseType: !3564, size: 64, offset: 21760)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1856, line: 1478, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2598, file: !1856, line: 1482, baseType: !387, size: 32, offset: 21824)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2598, file: !1856, line: 1489, baseType: !32, size: 64, offset: 21888)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2598, file: !1856, line: 1504, baseType: !32, size: 64, offset: 21952)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2598, file: !1856, line: 1505, baseType: !458, size: 64, offset: 22016)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2598, file: !1856, line: 1506, baseType: !457, size: 64, offset: 22080)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2598, file: !1856, line: 1507, baseType: !458, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2598, file: !1856, line: 1508, baseType: !458, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2598, file: !1856, line: 1509, baseType: !458, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2598, file: !1856, line: 1510, baseType: !320, size: 128, align: 64, offset: 22208)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2598, file: !1856, line: 1511, baseType: !34, size: 32, offset: 22336)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2598, file: !1856, line: 1515, baseType: !3577, size: 64, offset: 22400)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !315, line: 56, size: 64, elements: !3578)
!3578 = !{!3579}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3577, file: !315, line: 57, baseType: !318, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2598, file: !1856, line: 1518, baseType: !3577, size: 64, offset: 22464)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2598, file: !1856, line: 1528, baseType: !320, size: 128, align: 64, offset: 22528)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2598, file: !1856, line: 1552, baseType: !3583, size: 35328, offset: 23040)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3584, line: 430, size: 35328, elements: !3585)
!3584 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3585 = !{!3586, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3615, !3616, !3617, !3618, !3619, !3620, !3623, !3624, !3625, !3626}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3583, file: !3584, line: 432, baseType: !3587, size: 192)
!3587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3588, size: 192, elements: !379)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3589, line: 16, size: 64, elements: !3590)
!3589 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3588, file: !3589, line: 17, baseType: !105, size: 16)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3588, file: !3589, line: 18, baseType: !105, size: 16, offset: 16)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3588, file: !3589, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3588, file: !3589, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3588, file: !3589, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3588, file: !3589, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3588, file: !3589, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3588, file: !3589, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3588, file: !3589, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3588, file: !3589, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3588, file: !3589, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3588, file: !3589, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3588, file: !3589, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3583, file: !3584, line: 436, baseType: !51, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3583, file: !3584, line: 440, baseType: !38, size: 16, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3583, file: !3584, line: 441, baseType: !38, size: 16, offset: 272)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3583, file: !3584, line: 442, baseType: !38, size: 16, offset: 288)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3583, file: !3584, line: 443, baseType: !38, size: 16, offset: 304)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3583, file: !3584, line: 447, baseType: !51, size: 64, offset: 320)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3583, file: !3584, line: 448, baseType: !51, size: 64, offset: 384)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3583, file: !3584, line: 459, baseType: !3612, size: 256, offset: 448)
!3612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3613, size: 256, elements: !405)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3584, line: 428, flags: DIFlagFwdDecl)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3583, file: !3584, line: 461, baseType: !51, size: 64, offset: 704)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3583, file: !3584, line: 463, baseType: !51, size: 64, offset: 768)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3583, file: !3584, line: 465, baseType: !51, size: 64, offset: 832)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3583, file: !3584, line: 466, baseType: !51, size: 64, offset: 896)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3583, file: !3584, line: 467, baseType: !51, size: 64, offset: 960)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3583, file: !3584, line: 473, baseType: !3621, size: 64, offset: 1024)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3584, line: 10, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3583, file: !3584, line: 480, baseType: !51, size: 64, offset: 1088)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3583, file: !3584, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3583, file: !3584, line: 491, baseType: !246, size: 32, offset: 1184)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3583, file: !3584, line: 501, baseType: !3627, size: 33792, offset: 1536)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3628, line: 448, size: 33792, elements: !3629)
!3628 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3629 = !{!3630, !3631, !3632, !3794, !3795, !3801, !3802}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3627, file: !3628, line: 461, baseType: !7, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3627, file: !3628, line: 468, baseType: !51, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3627, file: !3628, line: 476, baseType: !3633, size: 64, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3628, line: 356, size: 33280, align: 512, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3634, file: !3628, line: 358, baseType: !7, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3634, file: !3628, line: 361, baseType: !7, size: 32, offset: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3634, file: !3628, line: 364, baseType: !457, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3634, file: !3628, line: 367, baseType: !457, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3634, file: !3628, line: 370, baseType: !457, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3634, file: !3628, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3634, file: !3628, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3634, file: !3628, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3634, file: !3628, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3634, file: !3628, line: 397, baseType: !3646, size: 32768, offset: 512)
!3646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3628, line: 348, size: 32768, elements: !3647)
!3647 = !{!3648, !3663, !3700, !3777, !3790}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3646, file: !3628, line: 349, baseType: !3649, size: 896)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3628, line: 12, size: 896, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3662}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3649, file: !3628, line: 13, baseType: !246, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3649, file: !3628, line: 14, baseType: !246, size: 32, offset: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3649, file: !3628, line: 15, baseType: !246, size: 32, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3649, file: !3628, line: 16, baseType: !246, size: 32, offset: 96)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3649, file: !3628, line: 17, baseType: !246, size: 32, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3649, file: !3628, line: 18, baseType: !246, size: 32, offset: 160)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3649, file: !3628, line: 19, baseType: !246, size: 32, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3649, file: !3628, line: 22, baseType: !3659, size: 640, offset: 224)
!3659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 640, elements: !3660)
!3660 = !{!3661}
!3661 = !DISubrange(count: 20)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3649, file: !3628, line: 25, baseType: !246, size: 32, offset: 864)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3646, file: !3628, line: 350, baseType: !3664, size: 4096, align: 128)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3628, line: 34, size: 4096, align: 128, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3685, !3686, !3687, !3689, !3691, !3695}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3664, file: !3628, line: 35, baseType: !105, size: 16)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3664, file: !3628, line: 36, baseType: !105, size: 16, offset: 16)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3664, file: !3628, line: 37, baseType: !105, size: 16, offset: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3664, file: !3628, line: 38, baseType: !105, size: 16, offset: 48)
!3670 = !DIDerivedType(tag: DW_TAG_member, scope: !3664, file: !3628, line: 39, baseType: !3671, size: 128, offset: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3664, file: !3628, line: 39, size: 128, elements: !3672)
!3672 = !{!3673, !3678}
!3673 = !DIDerivedType(tag: DW_TAG_member, scope: !3671, file: !3628, line: 40, baseType: !3674, size: 128)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3671, file: !3628, line: 40, size: 128, elements: !3675)
!3675 = !{!3676, !3677}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3674, file: !3628, line: 41, baseType: !457, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3674, file: !3628, line: 42, baseType: !457, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, scope: !3671, file: !3628, line: 44, baseType: !3679, size: 128)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3671, file: !3628, line: 44, size: 128, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3684}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3679, file: !3628, line: 45, baseType: !246, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3679, file: !3628, line: 46, baseType: !246, size: 32, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3679, file: !3628, line: 47, baseType: !246, size: 32, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3679, file: !3628, line: 48, baseType: !246, size: 32, offset: 96)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3664, file: !3628, line: 51, baseType: !246, size: 32, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3664, file: !3628, line: 52, baseType: !246, size: 32, offset: 224)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3664, file: !3628, line: 55, baseType: !3688, size: 1024, offset: 256)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 1024, elements: !1958)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3664, file: !3628, line: 58, baseType: !3690, size: 2048, offset: 1280)
!3690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 2048, elements: !3231)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3664, file: !3628, line: 60, baseType: !3692, size: 384, offset: 3328)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 384, elements: !3693)
!3693 = !{!3694}
!3694 = !DISubrange(count: 12)
!3695 = !DIDerivedType(tag: DW_TAG_member, scope: !3664, file: !3628, line: 62, baseType: !3696, size: 384, offset: 3712)
!3696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3664, file: !3628, line: 62, size: 384, elements: !3697)
!3697 = !{!3698, !3699}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3696, file: !3628, line: 63, baseType: !3692, size: 384)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3696, file: !3628, line: 64, baseType: !3692, size: 384)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3646, file: !3628, line: 351, baseType: !3701, size: 1088)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3628, line: 79, size: 1088, elements: !3702)
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3776}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3701, file: !3628, line: 80, baseType: !246, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3701, file: !3628, line: 81, baseType: !246, size: 32, offset: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3701, file: !3628, line: 82, baseType: !246, size: 32, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3701, file: !3628, line: 83, baseType: !246, size: 32, offset: 96)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3701, file: !3628, line: 84, baseType: !246, size: 32, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3701, file: !3628, line: 85, baseType: !246, size: 32, offset: 160)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3701, file: !3628, line: 86, baseType: !246, size: 32, offset: 192)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3701, file: !3628, line: 88, baseType: !3659, size: 640, offset: 224)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3701, file: !3628, line: 89, baseType: !95, size: 8, offset: 864)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3701, file: !3628, line: 90, baseType: !95, size: 8, offset: 872)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3701, file: !3628, line: 91, baseType: !95, size: 8, offset: 880)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3701, file: !3628, line: 92, baseType: !95, size: 8, offset: 888)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3701, file: !3628, line: 93, baseType: !95, size: 8, offset: 896)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3701, file: !3628, line: 94, baseType: !95, size: 8, offset: 904)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3701, file: !3628, line: 95, baseType: !3718, size: 64, offset: 960)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3720, line: 11, size: 128, elements: !3721)
!3720 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3721 = !{!3722, !3723}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3719, file: !3720, line: 12, baseType: !781, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3719, file: !3720, line: 13, baseType: !3724, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3726, line: 103, size: 1344, elements: !3727)
!3726 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3727 = !{!3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3756, !3757, !3758}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3725, file: !3726, line: 109, baseType: !51, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3725, file: !3726, line: 110, baseType: !51, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3725, file: !3726, line: 111, baseType: !51, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3725, file: !3726, line: 112, baseType: !51, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3725, file: !3726, line: 113, baseType: !51, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3725, file: !3726, line: 114, baseType: !51, size: 64, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3725, file: !3726, line: 117, baseType: !51, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3725, file: !3726, line: 118, baseType: !51, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3725, file: !3726, line: 119, baseType: !51, size: 64, offset: 512)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3725, file: !3726, line: 120, baseType: !51, size: 64, offset: 576)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3725, file: !3726, line: 121, baseType: !51, size: 64, offset: 640)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3725, file: !3726, line: 122, baseType: !51, size: 64, offset: 704)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3725, file: !3726, line: 123, baseType: !51, size: 64, offset: 768)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3725, file: !3726, line: 124, baseType: !51, size: 64, offset: 832)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3725, file: !3726, line: 125, baseType: !51, size: 64, offset: 896)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3725, file: !3726, line: 139, baseType: !51, size: 64, offset: 960)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3725, file: !3726, line: 142, baseType: !51, size: 64, offset: 1024)
!3745 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !3726, line: 144, baseType: !3746, size: 64, offset: 1088)
!3746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !3726, line: 144, size: 64, elements: !3747)
!3747 = !{!3748, !3749, !3750}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3746, file: !3726, line: 146, baseType: !105, size: 16)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3746, file: !3726, line: 148, baseType: !457, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3746, file: !3726, line: 150, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3726, line: 59, size: 64, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3751, file: !3726, line: 61, baseType: !457, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3751, file: !3726, line: 63, baseType: !457, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3751, file: !3726, line: 65, baseType: !457, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3725, file: !3726, line: 153, baseType: !51, size: 64, offset: 1152)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3725, file: !3726, line: 154, baseType: !51, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !3726, line: 156, baseType: !3759, size: 64, offset: 1280)
!3759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !3726, line: 156, size: 64, elements: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3759, file: !3726, line: 158, baseType: !105, size: 16)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3759, file: !3726, line: 160, baseType: !457, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3759, file: !3726, line: 162, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3726, line: 69, size: 64, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3764, file: !3726, line: 71, baseType: !457, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3764, file: !3726, line: 73, baseType: !457, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3764, file: !3726, line: 75, baseType: !457, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3764, file: !3726, line: 77, baseType: !457, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3764, file: !3726, line: 80, baseType: !457, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3764, file: !3726, line: 83, baseType: !457, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3764, file: !3726, line: 86, baseType: !457, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3764, file: !3726, line: 88, baseType: !457, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3764, file: !3726, line: 93, baseType: !457, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3764, file: !3726, line: 100, baseType: !457, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3701, file: !3628, line: 96, baseType: !246, size: 32, offset: 1024)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3646, file: !3628, line: 352, baseType: !3778, size: 4608, align: 512)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3628, line: 333, size: 4608, align: 512, elements: !3779)
!3779 = !{!3780, !3781, !3788}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3778, file: !3628, line: 334, baseType: !3664, size: 4096, align: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3778, file: !3628, line: 335, baseType: !3782, size: 512, offset: 4096)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3628, line: 312, size: 512, elements: !3783)
!3783 = !{!3784, !3785, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3782, file: !3628, line: 313, baseType: !457, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3782, file: !3628, line: 314, baseType: !457, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3782, file: !3628, line: 315, baseType: !3787, size: 384, offset: 128)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 384, elements: !535)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3778, file: !3628, line: 336, baseType: !3789, offset: 4608)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !304)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3646, file: !3628, line: 353, baseType: !3791, size: 32768)
!3791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 32768, elements: !3792)
!3792 = !{!3793}
!3793 = !DISubrange(count: 4096)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3627, file: !3628, line: 484, baseType: !3633, size: 64, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3627, file: !3628, line: 491, baseType: !3796, size: 128, offset: 256)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3628, line: 404, size: 128, elements: !3797)
!3797 = !{!3798, !3799, !3800}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3796, file: !3628, line: 424, baseType: !457, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3796, file: !3628, line: 432, baseType: !7, size: 32, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3796, file: !3628, line: 440, baseType: !7, size: 32, offset: 96)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3627, file: !3628, line: 498, baseType: !3796, size: 128, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3627, file: !3628, line: 508, baseType: !3634, size: 33280, align: 512, offset: 512)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2579, file: !2580, line: 16, baseType: !66, size: 192, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2579, file: !2580, line: 17, baseType: !61, size: 32, offset: 704)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !240, file: !189, line: 1240, baseType: !32, size: 64, offset: 6912)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !240, file: !189, line: 1243, baseType: !246, size: 32, offset: 6976)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !240, file: !189, line: 1245, baseType: !505, size: 64, offset: 7040)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !240, file: !189, line: 1246, baseType: !505, size: 64, offset: 7104)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !240, file: !189, line: 1248, baseType: !247, size: 32, offset: 7168)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !240, file: !189, line: 1249, baseType: !1953, size: 64, offset: 7232)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !240, file: !189, line: 1252, baseType: !3812, size: 256, offset: 7296)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !1958)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !240, file: !189, line: 1253, baseType: !3814, size: 128, offset: 7552)
!3814 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3815, line: 21, baseType: !3816)
!3815 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3815, line: 19, size: 128, elements: !3817)
!3817 = !{!3818}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3816, file: !3815, line: 20, baseType: !3819, size: 128)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !3013)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !240, file: !189, line: 1255, baseType: !7, size: 32, offset: 7680)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !240, file: !189, line: 1261, baseType: !342, size: 256, offset: 7744)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !240, file: !189, line: 1267, baseType: !28, size: 64, offset: 8000)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !240, file: !189, line: 1269, baseType: !1974, size: 64, offset: 8064)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !240, file: !189, line: 1271, baseType: !3825, size: 448, offset: 8128)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2276, line: 63, size: 448, elements: !3826)
!3826 = !{!3827, !3832, !3833, !3834, !3835, !3836, !3837}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3825, file: !2276, line: 64, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!51, !3831, !2274}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3825, file: !2276, line: 66, baseType: !3828, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3825, file: !2276, line: 69, baseType: !781, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3825, file: !2276, line: 70, baseType: !34, size: 32, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3825, file: !2276, line: 71, baseType: !7, size: 32, offset: 224)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3825, file: !2276, line: 74, baseType: !109, size: 128, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3825, file: !2276, line: 85, baseType: !3838, size: 64, offset: 384)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !240, file: !189, line: 1274, baseType: !333, size: 64, offset: 8576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !240, file: !189, line: 1280, baseType: !333, size: 64, offset: 8640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !240, file: !189, line: 1283, baseType: !34, size: 32, offset: 8704)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !240, file: !189, line: 1286, baseType: !1714, size: 32, offset: 8736)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !240, file: !189, line: 1289, baseType: !3844, size: 64, offset: 8768)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !681, line: 18, flags: DIFlagFwdDecl)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !240, file: !189, line: 1290, baseType: !396, size: 64, offset: 8832)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !240, file: !189, line: 1297, baseType: !631, size: 64, offset: 8896)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !240, file: !189, line: 1304, baseType: !3849, size: 64, offset: 8960)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3850, line: 49, size: 64, elements: !3851)
!3850 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3851 = !{!3852}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3849, file: !3850, line: 50, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3850, line: 41, size: 512, align: 512, elements: !3855)
!3855 = !{!3856, !3857, !3862}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3854, file: !3850, line: 43, baseType: !71, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3854, file: !3850, line: 45, baseType: !3858, size: 192, offset: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3850, line: 29, size: 192, elements: !3859)
!3859 = !{!3860, !3861}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3858, file: !3850, line: 30, baseType: !109, size: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3858, file: !3850, line: 32, baseType: !781, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3854, file: !3850, line: 46, baseType: !781, size: 64, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !240, file: !189, line: 1305, baseType: !3849, size: 64, offset: 9024)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !240, file: !189, line: 1306, baseType: !320, size: 128, align: 64, offset: 9088)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !240, file: !189, line: 1307, baseType: !680, size: 256, offset: 9216)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !240, file: !189, line: 1309, baseType: !342, size: 256, offset: 9472)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !240, file: !189, line: 1314, baseType: !34, size: 32, offset: 9728)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !240, file: !189, line: 1317, baseType: !71, size: 32, align: 512, offset: 10240)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !240, file: !189, line: 1318, baseType: !109, size: 128, offset: 10304)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !240, file: !189, line: 1320, baseType: !71, size: 32, offset: 10432)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !240, file: !189, line: 1321, baseType: !109, size: 128, offset: 10496)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !235, file: !236, line: 85, baseType: !3873, size: 64, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !236, line: 34, size: 1856, elements: !3875)
!3875 = !{!3876, !3978, !3979, !3986, !3987, !3988, !4012, !4013, !4014, !4015, !4016, !4017}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3874, file: !236, line: 36, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !209, line: 190, size: 1152, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3957, !3958, !3959, !3960, !3961, !3977}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3878, file: !209, line: 191, baseType: !61, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3878, file: !209, line: 192, baseType: !61, size: 32, offset: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3878, file: !209, line: 202, baseType: !3877, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3878, file: !209, line: 203, baseType: !28, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3878, file: !209, line: 205, baseType: !481, size: 192, align: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3878, file: !209, line: 207, baseType: !2510, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3878, file: !209, line: 208, baseType: !7, size: 32, offset: 448)
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !209, line: 209, baseType: !3888, size: 256, offset: 512)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !209, line: 209, size: 256, elements: !3889)
!3889 = !{!3890, !3897, !3901}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3888, file: !209, line: 210, baseType: !3891, size: 256)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !209, line: 153, size: 256, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3891, file: !209, line: 154, baseType: !51, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3891, file: !209, line: 156, baseType: !761, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3891, file: !209, line: 162, baseType: !3873, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3891, file: !209, line: 167, baseType: !51, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3888, file: !209, line: 211, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !209, line: 170, size: 64, elements: !3899)
!3899 = !{!3900}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3898, file: !209, line: 171, baseType: !3877, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3888, file: !209, line: 212, baseType: !3902, size: 256)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !209, line: 174, size: 256, elements: !3903)
!3903 = !{!3904, !3952, !3955, !3956}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3902, file: !209, line: 175, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3907)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !209, line: 271, size: 768, elements: !3908)
!3908 = !{!3909, !3929, !3933, !3934, !3935, !3936, !3937, !3941, !3942, !3943, !3944, !3948}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3907, file: !209, line: 276, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!34, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !209, line: 251, size: 1216, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3914, file: !209, line: 253, baseType: !3877, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3914, file: !209, line: 254, baseType: !307, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3914, file: !209, line: 255, baseType: !1875, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3914, file: !209, line: 256, baseType: !32, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3914, file: !209, line: 259, baseType: !342, size: 256, offset: 256)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3914, file: !209, line: 260, baseType: !342, size: 256, offset: 512)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3914, file: !209, line: 261, baseType: !34, size: 32, offset: 768)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3914, file: !209, line: 262, baseType: !109, size: 128, offset: 832)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3914, file: !209, line: 263, baseType: !290, size: 64, offset: 960)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3914, file: !209, line: 265, baseType: !47, size: 64, offset: 1024)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3914, file: !209, line: 266, baseType: !548, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3914, file: !209, line: 267, baseType: !548, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3914, file: !209, line: 268, baseType: !1375, size: 64, offset: 1152)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3907, file: !209, line: 277, baseType: !3930, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{null, !3913}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3907, file: !209, line: 290, baseType: !1905, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3907, file: !209, line: 292, baseType: !1893, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3907, file: !209, line: 293, baseType: !1901, size: 64, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3907, file: !209, line: 294, baseType: !1897, size: 64, offset: 320)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3907, file: !209, line: 296, baseType: !3938, size: 64, offset: 384)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!1007, !3913, !290, !47, !53}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3907, file: !209, line: 306, baseType: !47, size: 64, offset: 448)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3907, file: !209, line: 313, baseType: !548, size: 8, offset: 512)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3907, file: !209, line: 314, baseType: !3938, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3907, file: !209, line: 317, baseType: !3945, size: 64, offset: 640)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!1806, !3913, !1808}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3907, file: !209, line: 320, baseType: !3949, size: 64, offset: 704)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!34, !3913, !1198}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3902, file: !209, line: 176, baseType: !3953, size: 64, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !209, line: 35, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3902, file: !209, line: 177, baseType: !53, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3902, file: !209, line: 178, baseType: !3877, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3878, file: !209, line: 215, baseType: !32, size: 64, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3878, file: !209, line: 221, baseType: !457, size: 64, offset: 832)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3878, file: !209, line: 223, baseType: !38, size: 16, offset: 896)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3878, file: !209, line: 224, baseType: !36, size: 16, offset: 912)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3878, file: !209, line: 225, baseType: !3962, size: 64, offset: 960)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !236, line: 22, size: 640, elements: !3964)
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970, !3975, !3976}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3963, file: !236, line: 23, baseType: !420, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3963, file: !236, line: 24, baseType: !438, size: 32, offset: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3963, file: !236, line: 25, baseType: !965, size: 128, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3963, file: !236, line: 26, baseType: !965, size: 128, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3963, file: !236, line: 27, baseType: !965, size: 128, offset: 320)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "xattrs", scope: !3963, file: !236, line: 29, baseType: !3971, size: 128, offset: 448)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_xattrs", file: !2493, line: 104, size: 128, elements: !3972)
!3972 = !{!3973, !3974}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3971, file: !2493, line: 105, baseType: !761, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3971, file: !2493, line: 106, baseType: !360, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_xattrs", scope: !3963, file: !236, line: 30, baseType: !61, size: 32, offset: 576)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "user_xattr_size", scope: !3963, file: !236, line: 31, baseType: !61, size: 32, offset: 608)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3878, file: !209, line: 227, baseType: !320, size: 128, align: 64, offset: 1024)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3874, file: !236, line: 37, baseType: !7, size: 32, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3874, file: !236, line: 40, baseType: !3980, size: 192, offset: 128)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3981, line: 19, size: 192, elements: !3982)
!3981 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3980, file: !3981, line: 20, baseType: !1054, size: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3980, file: !3981, line: 21, baseType: !7, size: 32, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3980, file: !3981, line: 22, baseType: !7, size: 32, offset: 160)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3874, file: !236, line: 41, baseType: !246, size: 32, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3874, file: !236, line: 42, baseType: !246, size: 32, offset: 352)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3874, file: !236, line: 43, baseType: !3989, size: 64, offset: 384)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !209, line: 237, size: 320, elements: !3991)
!3991 = !{!3992, !3996, !4000, !4004, !4008}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3990, file: !209, line: 238, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!34, !1875, !3873}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3990, file: !209, line: 240, baseType: !3997, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!34, !3877, !28, !36}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3990, file: !209, line: 242, baseType: !4001, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!34, !3877}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3990, file: !209, line: 243, baseType: !4005, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!34, !3877, !3877, !28}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3990, file: !209, line: 245, baseType: !4009, size: 64, offset: 256)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!34, !1875, !3877, !3873}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3874, file: !236, line: 46, baseType: !109, size: 128, offset: 448)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3874, file: !236, line: 48, baseType: !66, size: 192, offset: 576)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_rwsem", scope: !3874, file: !236, line: 49, baseType: !489, size: 320, offset: 768)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_iattr_rwsem", scope: !3874, file: !236, line: 50, baseType: !489, size: 320, offset: 1088)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_supers_rwsem", scope: !3874, file: !236, line: 51, baseType: !489, size: 320, offset: 1408)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3874, file: !236, line: 53, baseType: !320, size: 128, align: 64, offset: 1728)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !235, file: !236, line: 93, baseType: !2510, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !235, file: !236, line: 96, baseType: !109, size: 128, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !37, line: 155, baseType: !7)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!4023 = !{!0, !4024, !4029, !4031, !4034, !4039, !4041, !4050, !4053, !4069, !4074, !4079, !4081, !4086}
!4024 = !DIGlobalVariableExpression(var: !4025, expr: !DIExpression())
!4025 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !4026, isLocal: true, isDefinition: true)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 144, elements: !4027)
!4027 = !{!4028}
!4028 = !DISubrange(count: 18)
!4029 = !DIGlobalVariableExpression(var: !4030, expr: !DIExpression())
!4030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 424, type: !4026, isLocal: true, isDefinition: true)
!4031 = !DIGlobalVariableExpression(var: !4032, expr: !DIExpression())
!4032 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !4033, isLocal: true, isDefinition: true)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !3660)
!4034 = !DIGlobalVariableExpression(var: !4035, expr: !DIExpression())
!4035 = distinct !DIGlobalVariable(name: "kernfs_node_cache", scope: !2, file: !3, line: 24, type: !4036, isLocal: false, isDefinition: true)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4038, line: 325, flags: DIFlagFwdDecl)
!4038 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4039 = !DIGlobalVariableExpression(var: !4040, expr: !DIExpression())
!4040 = distinct !DIGlobalVariable(name: "kernfs_iattrs_cache", scope: !2, file: !3, line: 24, type: !4036, isLocal: false, isDefinition: true)
!4041 = !DIGlobalVariableExpression(var: !4042, expr: !DIExpression())
!4042 = distinct !DIGlobalVariable(name: "kernfs_locks", scope: !2, file: !3, line: 25, type: !4043, isLocal: false, isDefinition: true)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_global_locks", file: !209, line: 90, size: 262144, elements: !4045)
!4045 = !{!4046}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_mutex", scope: !4044, file: !209, line: 91, baseType: !4047, size: 262144)
!4047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 262144, elements: !4048)
!4048 = !{!4049}
!4049 = !DISubrange(count: 1024)
!4050 = !DIGlobalVariableExpression(var: !4051, expr: !DIExpression())
!4051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !4052, isLocal: true, isDefinition: true)
!4052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 40, elements: !649)
!4053 = !DIGlobalVariableExpression(var: !4054, expr: !DIExpression())
!4054 = distinct !DIGlobalVariable(name: "__already_done", scope: !4055, file: !3, line: 187, type: !548, isLocal: true, isDefinition: true)
!4055 = distinct !DISubprogram(name: "find_next_ancestor", scope: !3, file: !3, line: 183, type: !4056, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!3877, !3877, !3877}
!4058 = !{!4059, !4060, !4061, !4065, !4068}
!4059 = !DILocalVariable(name: "child", arg: 1, scope: !4055, file: !3, line: 183, type: !3877)
!4060 = !DILocalVariable(name: "parent", arg: 2, scope: !4055, file: !3, line: 184, type: !3877)
!4061 = !DILocalVariable(name: "__ret_do_once", scope: !4062, file: !3, line: 187, type: !548)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 187, column: 3)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 186, column: 23)
!4064 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 186, column: 6)
!4065 = !DILocalVariable(name: "__ret_cond", scope: !4066, file: !3, line: 187, type: !548)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 187, column: 3)
!4067 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 187, column: 3)
!4068 = !DILocalVariable(name: "__ret_once", scope: !4066, file: !3, line: 187, type: !548)
!4069 = !DIGlobalVariableExpression(var: !4070, expr: !DIExpression())
!4070 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !4071, isLocal: true, isDefinition: true)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 456, elements: !4072)
!4072 = !{!4073}
!4073 = !DISubrange(count: 57)
!4074 = !DIGlobalVariableExpression(var: !4075, expr: !DIExpression())
!4075 = distinct !DIGlobalVariable(scope: null, file: !199, line: 480, type: !4076, isLocal: true, isDefinition: true)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 168, elements: !4077)
!4077 = !{!4078}
!4078 = !DISubrange(count: 21)
!4079 = !DIGlobalVariableExpression(var: !4080, expr: !DIExpression())
!4080 = distinct !DIGlobalVariable(name: "kernfs_export_ops", scope: !2, file: !3, line: 154, type: !2411, isLocal: true, isDefinition: true)
!4081 = !DIGlobalVariableExpression(var: !4082, expr: !DIExpression())
!4082 = distinct !DIGlobalVariable(name: "__key", scope: !4083, file: !3, line: 411, type: !2126, isLocal: true, isDefinition: true)
!4083 = distinct !DISubprogram(name: "kernfs_mutex_init", scope: !3, file: !3, line: 406, type: !3228, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4084)
!4084 = !{!4085}
!4085 = !DILocalVariable(name: "count", scope: !4083, file: !3, line: 408, type: !34)
!4086 = !DIGlobalVariableExpression(var: !4087, expr: !DIExpression())
!4087 = distinct !DIGlobalVariable(scope: null, file: !3, line: 411, type: !4088, isLocal: true, isDefinition: true)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 304, elements: !4089)
!4089 = !{!4090}
!4090 = !DISubrange(count: 38)
!4091 = !{i32 7, !"Dwarf Version", i32 5}
!4092 = !{i32 2, !"Debug Info Version", i32 3}
!4093 = !{i32 1, !"wchar_size", i32 2}
!4094 = !{i32 8, !"cf-protection-branch", i32 1}
!4095 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4096 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4097 = !{i32 1, !"Code Model", i32 2}
!4098 = !{i32 1, !"override-stack-alignment", i32 8}
!4099 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4100 = distinct !DISubprogram(name: "kernfs_statfs", scope: !3, file: !3, line: 50, type: !2177, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4101 = !{!4102, !4103}
!4102 = !DILocalVariable(name: "dentry", arg: 1, scope: !4100, file: !3, line: 50, type: !817)
!4103 = !DILocalVariable(name: "buf", arg: 2, scope: !4100, file: !3, line: 50, type: !2179)
!4104 = !DILocation(line: 50, column: 41, scope: !4100)
!4105 = !DILocation(line: 50, column: 65, scope: !4100)
!4106 = !DILocation(line: 52, column: 16, scope: !4100)
!4107 = !DILocation(line: 52, column: 24, scope: !4100)
!4108 = !DILocation(line: 52, column: 2, scope: !4100)
!4109 = !DILocation(line: 53, column: 2, scope: !4100)
!4110 = !DILocation(line: 53, column: 7, scope: !4100)
!4111 = !DILocation(line: 53, column: 16, scope: !4100)
!4112 = !DILocation(line: 53, column: 29, scope: !4100)
!4113 = !DILocation(line: 53, column: 37, scope: !4100)
!4114 = !DILocation(line: 53, column: 43, scope: !4100)
!4115 = !DILocation(line: 53, column: 50, scope: !4100)
!4116 = !DILocation(line: 54, column: 2, scope: !4100)
!4117 = distinct !DISubprogram(name: "kernfs_sop_show_options", scope: !3, file: !3, line: 27, type: !2210, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4118)
!4118 = !{!4119, !4120, !4121, !4122}
!4119 = !DILocalVariable(name: "sf", arg: 1, scope: !4117, file: !3, line: 27, type: !1875)
!4120 = !DILocalVariable(name: "dentry", arg: 2, scope: !4117, file: !3, line: 27, type: !817)
!4121 = !DILocalVariable(name: "root", scope: !4117, file: !3, line: 29, type: !3873)
!4122 = !DILocalVariable(name: "scops", scope: !4117, file: !3, line: 30, type: !3989)
!4123 = !DILocation(line: 27, column: 53, scope: !4117)
!4124 = !DILocation(line: 27, column: 72, scope: !4117)
!4125 = !DILocation(line: 29, column: 2, scope: !4117)
!4126 = !DILocation(line: 29, column: 22, scope: !4117)
!4127 = !DILocation(line: 29, column: 60, scope: !4117)
!4128 = !DILocation(line: 29, column: 41, scope: !4117)
!4129 = !DILocation(line: 29, column: 29, scope: !4117)
!4130 = !DILocation(line: 30, column: 2, scope: !4117)
!4131 = !DILocation(line: 30, column: 29, scope: !4117)
!4132 = !DILocation(line: 30, column: 37, scope: !4117)
!4133 = !DILocation(line: 30, column: 43, scope: !4117)
!4134 = !DILocation(line: 32, column: 6, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 32, column: 6)
!4136 = !DILocation(line: 32, column: 12, scope: !4135)
!4137 = !DILocation(line: 32, column: 15, scope: !4135)
!4138 = !DILocation(line: 32, column: 22, scope: !4135)
!4139 = !DILocation(line: 32, column: 6, scope: !4117)
!4140 = !DILocation(line: 33, column: 10, scope: !4135)
!4141 = !DILocation(line: 33, column: 17, scope: !4135)
!4142 = !DILocation(line: 33, column: 30, scope: !4135)
!4143 = !DILocation(line: 33, column: 34, scope: !4135)
!4144 = !DILocation(line: 33, column: 3, scope: !4135)
!4145 = !DILocation(line: 34, column: 2, scope: !4117)
!4146 = !DILocation(line: 35, column: 1, scope: !4117)
!4147 = distinct !DISubprogram(name: "kernfs_sop_show_path", scope: !3, file: !3, line: 37, type: !2210, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4148)
!4148 = !{!4149, !4150, !4151, !4152, !4153}
!4149 = !DILocalVariable(name: "sf", arg: 1, scope: !4147, file: !3, line: 37, type: !1875)
!4150 = !DILocalVariable(name: "dentry", arg: 2, scope: !4147, file: !3, line: 37, type: !817)
!4151 = !DILocalVariable(name: "node", scope: !4147, file: !3, line: 39, type: !3877)
!4152 = !DILocalVariable(name: "root", scope: !4147, file: !3, line: 40, type: !3873)
!4153 = !DILocalVariable(name: "scops", scope: !4147, file: !3, line: 41, type: !3989)
!4154 = !DILocation(line: 37, column: 50, scope: !4147)
!4155 = !DILocation(line: 37, column: 69, scope: !4147)
!4156 = !DILocation(line: 39, column: 2, scope: !4147)
!4157 = !DILocation(line: 39, column: 22, scope: !4147)
!4158 = !DILocation(line: 39, column: 48, scope: !4147)
!4159 = !DILocation(line: 39, column: 29, scope: !4147)
!4160 = !DILocation(line: 40, column: 2, scope: !4147)
!4161 = !DILocation(line: 40, column: 22, scope: !4147)
!4162 = !DILocation(line: 40, column: 41, scope: !4147)
!4163 = !DILocation(line: 40, column: 29, scope: !4147)
!4164 = !DILocation(line: 41, column: 2, scope: !4147)
!4165 = !DILocation(line: 41, column: 29, scope: !4147)
!4166 = !DILocation(line: 41, column: 37, scope: !4147)
!4167 = !DILocation(line: 41, column: 43, scope: !4147)
!4168 = !DILocation(line: 43, column: 6, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 43, column: 6)
!4170 = !DILocation(line: 43, column: 12, scope: !4169)
!4171 = !DILocation(line: 43, column: 15, scope: !4169)
!4172 = !DILocation(line: 43, column: 22, scope: !4169)
!4173 = !DILocation(line: 43, column: 6, scope: !4147)
!4174 = !DILocation(line: 44, column: 10, scope: !4169)
!4175 = !DILocation(line: 44, column: 17, scope: !4169)
!4176 = !DILocation(line: 44, column: 27, scope: !4169)
!4177 = !DILocation(line: 44, column: 31, scope: !4169)
!4178 = !DILocation(line: 44, column: 37, scope: !4169)
!4179 = !DILocation(line: 44, column: 3, scope: !4169)
!4180 = !DILocation(line: 46, column: 13, scope: !4147)
!4181 = !DILocation(line: 46, column: 17, scope: !4147)
!4182 = !DILocation(line: 46, column: 2, scope: !4147)
!4183 = !DILocation(line: 47, column: 2, scope: !4147)
!4184 = !DILocation(line: 48, column: 1, scope: !4147)
!4185 = distinct !DISubprogram(name: "kernfs_root_from_sb", scope: !3, file: !3, line: 168, type: !4186, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!3873, !239}
!4188 = !{!4189}
!4189 = !DILocalVariable(name: "sb", arg: 1, scope: !4185, file: !3, line: 168, type: !239)
!4190 = !DILocation(line: 168, column: 61, scope: !4185)
!4191 = !DILocation(line: 170, column: 6, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 170, column: 6)
!4193 = !DILocation(line: 170, column: 10, scope: !4192)
!4194 = !DILocation(line: 170, column: 15, scope: !4192)
!4195 = !DILocation(line: 170, column: 6, scope: !4185)
!4196 = !DILocation(line: 171, column: 10, scope: !4192)
!4197 = !DILocation(line: 171, column: 27, scope: !4192)
!4198 = !DILocation(line: 171, column: 3, scope: !4192)
!4199 = !DILocation(line: 172, column: 2, scope: !4185)
!4200 = !DILocation(line: 173, column: 1, scope: !4185)
!4201 = distinct !DISubprogram(name: "kernfs_node_dentry", scope: !3, file: !3, line: 207, type: !4202, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4204)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!817, !3877, !239}
!4204 = !{!4205, !4206, !4207, !4208, !4209, !4212, !4215, !4217, !4218, !4221}
!4205 = !DILocalVariable(name: "kn", arg: 1, scope: !4201, file: !3, line: 207, type: !3877)
!4206 = !DILocalVariable(name: "sb", arg: 2, scope: !4201, file: !3, line: 208, type: !239)
!4207 = !DILocalVariable(name: "dentry", scope: !4201, file: !3, line: 210, type: !817)
!4208 = !DILocalVariable(name: "knparent", scope: !4201, file: !3, line: 211, type: !3877)
!4209 = !DILocalVariable(name: "__ret_warn_on", scope: !4210, file: !3, line: 222, type: !34)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 222, column: 6)
!4211 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 222, column: 6)
!4212 = !DILocalVariable(name: "__flags", scope: !4213, file: !3, line: 222, type: !34)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 222, column: 6)
!4214 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 222, column: 6)
!4215 = !DILocalVariable(name: "dtmp", scope: !4216, file: !3, line: 228, type: !817)
!4216 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 227, column: 5)
!4217 = !DILocalVariable(name: "kntmp", scope: !4216, file: !3, line: 229, type: !3877)
!4218 = !DILocalVariable(name: "__ret_warn_on", scope: !4219, file: !3, line: 234, type: !34)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 234, column: 7)
!4220 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 234, column: 7)
!4221 = !DILocalVariable(name: "__flags", scope: !4222, file: !3, line: 234, type: !34)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 234, column: 7)
!4223 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 234, column: 7)
!4224 = !DILocation(line: 207, column: 55, scope: !4201)
!4225 = !DILocation(line: 208, column: 27, scope: !4201)
!4226 = !DILocation(line: 210, column: 2, scope: !4201)
!4227 = !DILocation(line: 210, column: 17, scope: !4201)
!4228 = !DILocation(line: 211, column: 2, scope: !4201)
!4229 = !DILocation(line: 211, column: 22, scope: !4201)
!4230 = !DILocation(line: 213, column: 2, scope: !4201)
!4231 = !DILocation(line: 213, column: 2, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 213, column: 2)
!4233 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 213, column: 2)
!4234 = !DILocation(line: 213, column: 2, scope: !4233)
!4235 = !DILocation(line: 213, column: 2, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 213, column: 2)
!4237 = !DILocation(line: 213, column: 2, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 213, column: 2)
!4239 = !DILocation(line: 213, column: 2, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 213, column: 2)
!4241 = !{i64 2154384702, i64 2154384731, i64 2154384777, i64 2154384835, i64 2154384889, i64 2154384943, i64 2154384998, i64 2154385029}
!4242 = !DILocation(line: 215, column: 16, scope: !4201)
!4243 = !DILocation(line: 215, column: 20, scope: !4201)
!4244 = !DILocation(line: 215, column: 11, scope: !4201)
!4245 = !DILocation(line: 215, column: 9, scope: !4201)
!4246 = !DILocation(line: 218, column: 7, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 218, column: 6)
!4248 = !DILocation(line: 218, column: 11, scope: !4247)
!4249 = !DILocation(line: 218, column: 6, scope: !4201)
!4250 = !DILocation(line: 219, column: 10, scope: !4247)
!4251 = !DILocation(line: 219, column: 3, scope: !4247)
!4252 = !DILocation(line: 221, column: 32, scope: !4201)
!4253 = !DILocation(line: 221, column: 13, scope: !4201)
!4254 = !DILocation(line: 221, column: 11, scope: !4201)
!4255 = !DILocation(line: 222, column: 6, scope: !4210)
!4256 = !DILocation(line: 222, column: 6, scope: !4214)
!4257 = !DILocation(line: 222, column: 6, scope: !4213)
!4258 = !DILocation(line: 222, column: 6, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 222, column: 6)
!4260 = !DILocation(line: 222, column: 6, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 222, column: 6)
!4262 = !{i64 2154385930, i64 2154385959, i64 2154386005, i64 2154386063, i64 2154386117, i64 2154386171, i64 2154386226, i64 2154386257, i64 2154386565, i64 2154386571, i64 2154386618, i64 2154386641, i64 2154386667}
!4263 = !DILocation(line: 222, column: 6, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 222, column: 6)
!4265 = !DILocation(line: 222, column: 6, scope: !4211)
!4266 = !DILocation(line: 222, column: 6, scope: !4201)
!4267 = !DILocation(line: 223, column: 8, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 222, column: 26)
!4269 = !DILocation(line: 223, column: 3, scope: !4268)
!4270 = !DILocation(line: 224, column: 10, scope: !4268)
!4271 = !DILocation(line: 224, column: 3, scope: !4268)
!4272 = !DILocation(line: 227, column: 2, scope: !4201)
!4273 = !DILocation(line: 228, column: 3, scope: !4216)
!4274 = !DILocation(line: 228, column: 18, scope: !4216)
!4275 = !DILocation(line: 229, column: 3, scope: !4216)
!4276 = !DILocation(line: 229, column: 23, scope: !4216)
!4277 = !DILocation(line: 231, column: 7, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 231, column: 7)
!4279 = !DILocation(line: 231, column: 13, scope: !4278)
!4280 = !DILocation(line: 231, column: 10, scope: !4278)
!4281 = !DILocation(line: 231, column: 7, scope: !4216)
!4282 = !DILocation(line: 232, column: 11, scope: !4278)
!4283 = !DILocation(line: 232, column: 4, scope: !4278)
!4284 = !DILocation(line: 233, column: 30, scope: !4216)
!4285 = !DILocation(line: 233, column: 34, scope: !4216)
!4286 = !DILocation(line: 233, column: 11, scope: !4216)
!4287 = !DILocation(line: 233, column: 9, scope: !4216)
!4288 = !DILocation(line: 234, column: 7, scope: !4219)
!4289 = !DILocation(line: 234, column: 7, scope: !4223)
!4290 = !DILocation(line: 234, column: 7, scope: !4222)
!4291 = !DILocation(line: 234, column: 7, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 234, column: 7)
!4293 = !DILocation(line: 234, column: 7, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 234, column: 7)
!4295 = !{i64 2154387420, i64 2154387449, i64 2154387495, i64 2154387553, i64 2154387607, i64 2154387661, i64 2154387716, i64 2154387747, i64 2154388055, i64 2154388061, i64 2154388108, i64 2154388131, i64 2154388157}
!4296 = !DILocation(line: 234, column: 7, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 234, column: 7)
!4298 = !DILocation(line: 234, column: 7, scope: !4220)
!4299 = !DILocation(line: 234, column: 7, scope: !4216)
!4300 = !DILocation(line: 235, column: 9, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 234, column: 24)
!4302 = !DILocation(line: 235, column: 4, scope: !4301)
!4303 = !DILocation(line: 236, column: 11, scope: !4301)
!4304 = !DILocation(line: 236, column: 4, scope: !4301)
!4305 = !DILocation(line: 238, column: 35, scope: !4216)
!4306 = !DILocation(line: 238, column: 42, scope: !4216)
!4307 = !DILocation(line: 238, column: 48, scope: !4216)
!4308 = !DILocation(line: 239, column: 20, scope: !4216)
!4309 = !DILocation(line: 239, column: 27, scope: !4216)
!4310 = !DILocation(line: 239, column: 13, scope: !4216)
!4311 = !DILocation(line: 238, column: 10, scope: !4216)
!4312 = !DILocation(line: 238, column: 8, scope: !4216)
!4313 = !DILocation(line: 240, column: 8, scope: !4216)
!4314 = !DILocation(line: 240, column: 3, scope: !4216)
!4315 = !DILocation(line: 241, column: 14, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 241, column: 7)
!4317 = !DILocation(line: 241, column: 7, scope: !4316)
!4318 = !DILocation(line: 241, column: 7, scope: !4216)
!4319 = !DILocation(line: 242, column: 11, scope: !4316)
!4320 = !DILocation(line: 242, column: 4, scope: !4316)
!4321 = !DILocation(line: 243, column: 14, scope: !4216)
!4322 = !DILocation(line: 243, column: 12, scope: !4216)
!4323 = !DILocation(line: 244, column: 12, scope: !4216)
!4324 = !DILocation(line: 244, column: 10, scope: !4216)
!4325 = !DILocation(line: 245, column: 2, scope: !4201)
!4326 = !DILocation(line: 245, column: 2, scope: !4216)
!4327 = distinct !{!4327, !4272, !4328, !4329}
!4328 = !DILocation(line: 245, column: 15, scope: !4201)
!4329 = !{!"llvm.loop.unroll.disable"}
!4330 = !DILocation(line: 246, column: 1, scope: !4201)
!4331 = distinct !DISubprogram(name: "dget", scope: !819, file: !819, line: 317, type: !2459, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4332)
!4332 = !{!4333}
!4333 = !DILocalVariable(name: "dentry", arg: 1, scope: !4331, file: !819, line: 317, type: !817)
!4334 = !DILocation(line: 317, column: 50, scope: !4331)
!4335 = !DILocation(line: 319, column: 6, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4331, file: !819, line: 319, column: 6)
!4337 = !DILocation(line: 319, column: 6, scope: !4331)
!4338 = !DILocation(line: 320, column: 16, scope: !4336)
!4339 = !DILocation(line: 320, column: 24, scope: !4336)
!4340 = !DILocation(line: 320, column: 3, scope: !4336)
!4341 = !DILocation(line: 321, column: 9, scope: !4331)
!4342 = !DILocation(line: 321, column: 2, scope: !4331)
!4343 = !DILocation(line: 183, column: 67, scope: !4055)
!4344 = !DILocation(line: 184, column: 32, scope: !4055)
!4345 = !DILocation(line: 186, column: 6, scope: !4064)
!4346 = !DILocation(line: 186, column: 15, scope: !4064)
!4347 = !DILocation(line: 186, column: 12, scope: !4064)
!4348 = !DILocation(line: 186, column: 6, scope: !4055)
!4349 = !DILocation(line: 187, column: 3, scope: !4062)
!4350 = !DILocation(line: 187, column: 3, scope: !4066)
!4351 = !{i8 0, i8 2}
!4352 = !DILocation(line: 187, column: 3, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 187, column: 3)
!4354 = !DILocation(line: 0, scope: !4353)
!4355 = !DILocation(line: 187, column: 3, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 187, column: 3)
!4357 = !DILocation(line: 187, column: 3, scope: !4067)
!4358 = !DILocation(line: 187, column: 3, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 187, column: 3)
!4360 = !DILocation(line: 187, column: 3, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 187, column: 3)
!4362 = !DILocation(line: 187, column: 3, scope: !4063)
!4363 = !DILocation(line: 188, column: 3, scope: !4063)
!4364 = !DILocation(line: 191, column: 2, scope: !4055)
!4365 = !DILocation(line: 191, column: 9, scope: !4055)
!4366 = !DILocation(line: 191, column: 16, scope: !4055)
!4367 = !DILocation(line: 191, column: 26, scope: !4055)
!4368 = !DILocation(line: 191, column: 23, scope: !4055)
!4369 = !DILocation(line: 192, column: 8, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 192, column: 7)
!4371 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 191, column: 34)
!4372 = !DILocation(line: 192, column: 15, scope: !4370)
!4373 = !DILocation(line: 192, column: 7, scope: !4371)
!4374 = !DILocation(line: 193, column: 4, scope: !4370)
!4375 = !DILocation(line: 194, column: 11, scope: !4371)
!4376 = !DILocation(line: 194, column: 18, scope: !4371)
!4377 = !DILocation(line: 194, column: 9, scope: !4371)
!4378 = distinct !{!4378, !4364, !4379, !4380, !4329}
!4379 = !DILocation(line: 195, column: 2, scope: !4055)
!4380 = !{!"llvm.loop.mustprogress"}
!4381 = !DILocation(line: 197, column: 9, scope: !4055)
!4382 = !DILocation(line: 197, column: 2, scope: !4055)
!4383 = !DILocation(line: 198, column: 1, scope: !4055)
!4384 = !DISubprogram(name: "dput", scope: !819, file: !819, line: 368, type: !2006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4385 = distinct !DISubprogram(name: "ERR_PTR", scope: !4386, file: !4386, line: 39, type: !4387, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4389)
!4386 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!32, !781}
!4389 = !{!4390}
!4390 = !DILocalVariable(name: "error", arg: 1, scope: !4385, file: !4386, line: 39, type: !781)
!4391 = !DILocation(line: 39, column: 48, scope: !4385)
!4392 = !DILocation(line: 41, column: 18, scope: !4385)
!4393 = !DILocation(line: 41, column: 9, scope: !4385)
!4394 = !DILocation(line: 41, column: 2, scope: !4385)
!4395 = !DISubprogram(name: "lookup_positive_unlocked", scope: !4396, file: !4396, line: 78, type: !4397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4396 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!817, !28, !817, !34}
!4399 = !DISubprogram(name: "strlen", scope: !4400, file: !4400, line: 128, type: !4401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4400 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!51, !28}
!4403 = distinct !DISubprogram(name: "IS_ERR", scope: !4386, file: !4386, line: 59, type: !4404, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4406)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!548, !2510}
!4406 = !{!4407}
!4407 = !DILocalVariable(name: "ptr", arg: 1, scope: !4403, file: !4386, line: 59, type: !2510)
!4408 = !DILocation(line: 59, column: 60, scope: !4403)
!4409 = !DILocation(line: 61, column: 9, scope: !4403)
!4410 = !DILocation(line: 61, column: 2, scope: !4403)
!4411 = distinct !DISubprogram(name: "kernfs_super_ns", scope: !3, file: !3, line: 312, type: !4412, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4414)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!2510, !239}
!4414 = !{!4415, !4416}
!4415 = !DILocalVariable(name: "sb", arg: 1, scope: !4411, file: !3, line: 312, type: !239)
!4416 = !DILocalVariable(name: "info", scope: !4411, file: !3, line: 314, type: !234)
!4417 = !DILocation(line: 312, column: 49, scope: !4411)
!4418 = !DILocation(line: 314, column: 2, scope: !4411)
!4419 = !DILocation(line: 314, column: 28, scope: !4411)
!4420 = !DILocation(line: 314, column: 35, scope: !4411)
!4421 = !DILocation(line: 316, column: 9, scope: !4411)
!4422 = !DILocation(line: 316, column: 15, scope: !4411)
!4423 = !DILocation(line: 317, column: 1, scope: !4411)
!4424 = !DILocation(line: 316, column: 2, scope: !4411)
!4425 = distinct !DISubprogram(name: "kernfs_get_tree", scope: !3, file: !3, line: 330, type: !259, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4426)
!4426 = !{!4427, !4428, !4436, !4437, !4438, !4439, !4442}
!4427 = !DILocalVariable(name: "fc", arg: 1, scope: !4425, file: !3, line: 330, type: !261)
!4428 = !DILocalVariable(name: "kfc", scope: !4425, file: !3, line: 332, type: !4429)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_fs_context", file: !209, line: 326, size: 256, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4430, file: !209, line: 327, baseType: !3873, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ns_tag", scope: !4430, file: !209, line: 328, baseType: !32, size: 64, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4430, file: !209, line: 329, baseType: !51, size: 64, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "new_sb_created", scope: !4430, file: !209, line: 332, baseType: !548, size: 8, offset: 192)
!4436 = !DILocalVariable(name: "sb", scope: !4425, file: !3, line: 333, type: !239)
!4437 = !DILocalVariable(name: "info", scope: !4425, file: !3, line: 334, type: !234)
!4438 = !DILocalVariable(name: "error", scope: !4425, file: !3, line: 335, type: !34)
!4439 = !DILocalVariable(name: "info", scope: !4440, file: !3, line: 351, type: !234)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 350, column: 19)
!4441 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 350, column: 6)
!4442 = !DILocalVariable(name: "root", scope: !4440, file: !3, line: 352, type: !3873)
!4443 = !DILocation(line: 330, column: 40, scope: !4425)
!4444 = !DILocation(line: 332, column: 2, scope: !4425)
!4445 = !DILocation(line: 332, column: 28, scope: !4425)
!4446 = !DILocation(line: 332, column: 34, scope: !4425)
!4447 = !DILocation(line: 332, column: 38, scope: !4425)
!4448 = !DILocation(line: 333, column: 2, scope: !4425)
!4449 = !DILocation(line: 333, column: 22, scope: !4425)
!4450 = !DILocation(line: 334, column: 2, scope: !4425)
!4451 = !DILocation(line: 334, column: 28, scope: !4425)
!4452 = !DILocation(line: 335, column: 2, scope: !4425)
!4453 = !DILocation(line: 335, column: 6, scope: !4425)
!4454 = !DILocation(line: 337, column: 9, scope: !4425)
!4455 = !DILocation(line: 337, column: 7, scope: !4425)
!4456 = !DILocation(line: 338, column: 7, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 338, column: 6)
!4458 = !DILocation(line: 338, column: 6, scope: !4425)
!4459 = !DILocation(line: 339, column: 3, scope: !4457)
!4460 = !DILocation(line: 341, column: 15, scope: !4425)
!4461 = !DILocation(line: 341, column: 20, scope: !4425)
!4462 = !DILocation(line: 341, column: 2, scope: !4425)
!4463 = !DILocation(line: 341, column: 8, scope: !4425)
!4464 = !DILocation(line: 341, column: 13, scope: !4425)
!4465 = !DILocation(line: 342, column: 13, scope: !4425)
!4466 = !DILocation(line: 342, column: 18, scope: !4425)
!4467 = !DILocation(line: 342, column: 2, scope: !4425)
!4468 = !DILocation(line: 342, column: 8, scope: !4425)
!4469 = !DILocation(line: 342, column: 11, scope: !4425)
!4470 = !DILocation(line: 343, column: 18, scope: !4425)
!4471 = !DILocation(line: 343, column: 24, scope: !4425)
!4472 = !DILocation(line: 343, column: 2, scope: !4425)
!4473 = !DILocation(line: 345, column: 18, scope: !4425)
!4474 = !DILocation(line: 345, column: 2, scope: !4425)
!4475 = !DILocation(line: 345, column: 6, scope: !4425)
!4476 = !DILocation(line: 345, column: 16, scope: !4425)
!4477 = !DILocation(line: 346, column: 15, scope: !4425)
!4478 = !DILocation(line: 346, column: 7, scope: !4425)
!4479 = !DILocation(line: 346, column: 5, scope: !4425)
!4480 = !DILocation(line: 347, column: 13, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 347, column: 6)
!4482 = !DILocation(line: 347, column: 6, scope: !4481)
!4483 = !DILocation(line: 347, column: 6, scope: !4425)
!4484 = !DILocation(line: 348, column: 18, scope: !4481)
!4485 = !DILocation(line: 348, column: 10, scope: !4481)
!4486 = !DILocation(line: 348, column: 3, scope: !4481)
!4487 = !DILocation(line: 350, column: 7, scope: !4441)
!4488 = !DILocation(line: 350, column: 11, scope: !4441)
!4489 = !DILocation(line: 350, column: 6, scope: !4425)
!4490 = !DILocation(line: 351, column: 3, scope: !4440)
!4491 = !DILocation(line: 351, column: 29, scope: !4440)
!4492 = !DILocation(line: 351, column: 36, scope: !4440)
!4493 = !DILocation(line: 352, column: 3, scope: !4440)
!4494 = !DILocation(line: 352, column: 23, scope: !4440)
!4495 = !DILocation(line: 352, column: 30, scope: !4440)
!4496 = !DILocation(line: 352, column: 35, scope: !4440)
!4497 = !DILocation(line: 354, column: 3, scope: !4440)
!4498 = !DILocation(line: 354, column: 8, scope: !4440)
!4499 = !DILocation(line: 354, column: 23, scope: !4440)
!4500 = !DILocation(line: 356, column: 29, scope: !4440)
!4501 = !DILocation(line: 356, column: 33, scope: !4440)
!4502 = !DILocation(line: 356, column: 11, scope: !4440)
!4503 = !DILocation(line: 356, column: 9, scope: !4440)
!4504 = !DILocation(line: 357, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 357, column: 7)
!4506 = !DILocation(line: 357, column: 7, scope: !4440)
!4507 = !DILocation(line: 358, column: 28, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 357, column: 14)
!4509 = !DILocation(line: 358, column: 4, scope: !4508)
!4510 = !DILocation(line: 359, column: 11, scope: !4508)
!4511 = !DILocation(line: 359, column: 4, scope: !4508)
!4512 = !DILocation(line: 361, column: 3, scope: !4440)
!4513 = !DILocation(line: 361, column: 7, scope: !4440)
!4514 = !DILocation(line: 361, column: 15, scope: !4440)
!4515 = !DILocation(line: 363, column: 13, scope: !4440)
!4516 = !DILocation(line: 363, column: 17, scope: !4440)
!4517 = !DILocation(line: 363, column: 3, scope: !4440)
!4518 = !DILocation(line: 365, column: 15, scope: !4440)
!4519 = !DILocation(line: 365, column: 21, scope: !4440)
!4520 = !DILocation(line: 365, column: 3, scope: !4440)
!4521 = !DILocation(line: 366, column: 13, scope: !4440)
!4522 = !DILocation(line: 366, column: 19, scope: !4440)
!4523 = !DILocation(line: 366, column: 26, scope: !4440)
!4524 = !DILocation(line: 366, column: 32, scope: !4440)
!4525 = !DILocation(line: 366, column: 38, scope: !4440)
!4526 = !DILocation(line: 366, column: 3, scope: !4440)
!4527 = !DILocation(line: 367, column: 13, scope: !4440)
!4528 = !DILocation(line: 367, column: 19, scope: !4440)
!4529 = !DILocation(line: 367, column: 3, scope: !4440)
!4530 = !DILocation(line: 368, column: 2, scope: !4441)
!4531 = !DILocation(line: 368, column: 2, scope: !4440)
!4532 = !DILocation(line: 370, column: 18, scope: !4425)
!4533 = !DILocation(line: 370, column: 22, scope: !4425)
!4534 = !DILocation(line: 370, column: 13, scope: !4425)
!4535 = !DILocation(line: 370, column: 2, scope: !4425)
!4536 = !DILocation(line: 370, column: 6, scope: !4425)
!4537 = !DILocation(line: 370, column: 11, scope: !4425)
!4538 = !DILocation(line: 371, column: 2, scope: !4425)
!4539 = !DILocation(line: 372, column: 1, scope: !4425)
!4540 = distinct !DISubprogram(name: "kzalloc", scope: !199, file: !199, line: 719, type: !4541, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4543)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!32, !47, !1059}
!4543 = !{!4544, !4545}
!4544 = !DILocalVariable(name: "size", arg: 1, scope: !4540, file: !199, line: 719, type: !47)
!4545 = !DILocalVariable(name: "flags", arg: 2, scope: !4540, file: !199, line: 719, type: !1059)
!4546 = !DILocation(line: 719, column: 52, scope: !4540)
!4547 = !DILocation(line: 719, column: 64, scope: !4540)
!4548 = !DILocation(line: 721, column: 17, scope: !4540)
!4549 = !DILocation(line: 721, column: 23, scope: !4540)
!4550 = !DILocation(line: 721, column: 29, scope: !4540)
!4551 = !DILocation(line: 721, column: 9, scope: !4540)
!4552 = !DILocation(line: 721, column: 2, scope: !4540)
!4553 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4554, file: !4554, line: 35, type: !4555, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4557)
!4554 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4555 = !DISubroutineType(types: !4556)
!4556 = !{null, !112}
!4557 = !{!4558}
!4558 = !DILocalVariable(name: "list", arg: 1, scope: !4553, file: !4554, line: 35, type: !112)
!4559 = !DILocation(line: 35, column: 53, scope: !4553)
!4560 = !DILocation(line: 37, column: 2, scope: !4553)
!4561 = !DILocation(line: 37, column: 2, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4553, file: !4554, line: 37, column: 2)
!4563 = !DILocation(line: 37, column: 2, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4562, file: !4554, line: 37, column: 2)
!4565 = !DILocation(line: 37, column: 2, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4562, file: !4554, line: 37, column: 2)
!4567 = !DILocation(line: 38, column: 2, scope: !4553)
!4568 = !DILocation(line: 38, column: 2, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4553, file: !4554, line: 38, column: 2)
!4570 = !DILocation(line: 38, column: 2, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4569, file: !4554, line: 38, column: 2)
!4572 = !DILocation(line: 38, column: 2, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4569, file: !4554, line: 38, column: 2)
!4574 = !DILocation(line: 39, column: 1, scope: !4553)
!4575 = !DISubprogram(name: "sget_fc", scope: !189, file: !189, line: 2419, type: !4576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!239, !261, !4578, !4578}
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!34, !239, !261}
!4581 = distinct !DISubprogram(name: "kernfs_test_super", scope: !3, file: !3, line: 290, type: !4579, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4582)
!4582 = !{!4583, !4584, !4585, !4586}
!4583 = !DILocalVariable(name: "sb", arg: 1, scope: !4581, file: !3, line: 290, type: !239)
!4584 = !DILocalVariable(name: "fc", arg: 2, scope: !4581, file: !3, line: 290, type: !261)
!4585 = !DILocalVariable(name: "sb_info", scope: !4581, file: !3, line: 292, type: !234)
!4586 = !DILocalVariable(name: "info", scope: !4581, file: !3, line: 293, type: !234)
!4587 = !DILocation(line: 290, column: 50, scope: !4581)
!4588 = !DILocation(line: 290, column: 73, scope: !4581)
!4589 = !DILocation(line: 292, column: 2, scope: !4581)
!4590 = !DILocation(line: 292, column: 28, scope: !4581)
!4591 = !DILocation(line: 292, column: 38, scope: !4581)
!4592 = !DILocation(line: 293, column: 2, scope: !4581)
!4593 = !DILocation(line: 293, column: 28, scope: !4581)
!4594 = !DILocation(line: 293, column: 35, scope: !4581)
!4595 = !DILocation(line: 293, column: 39, scope: !4581)
!4596 = !DILocation(line: 295, column: 9, scope: !4581)
!4597 = !DILocation(line: 295, column: 18, scope: !4581)
!4598 = !DILocation(line: 295, column: 26, scope: !4581)
!4599 = !DILocation(line: 295, column: 32, scope: !4581)
!4600 = !DILocation(line: 295, column: 23, scope: !4581)
!4601 = !DILocation(line: 295, column: 37, scope: !4581)
!4602 = !DILocation(line: 295, column: 40, scope: !4581)
!4603 = !DILocation(line: 295, column: 49, scope: !4581)
!4604 = !DILocation(line: 295, column: 55, scope: !4581)
!4605 = !DILocation(line: 295, column: 61, scope: !4581)
!4606 = !DILocation(line: 295, column: 52, scope: !4581)
!4607 = !DILocation(line: 0, scope: !4581)
!4608 = !DILocation(line: 296, column: 1, scope: !4581)
!4609 = !DILocation(line: 295, column: 2, scope: !4581)
!4610 = distinct !DISubprogram(name: "kernfs_set_super", scope: !3, file: !3, line: 298, type: !4579, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4611)
!4611 = !{!4612, !4613, !4614}
!4612 = !DILocalVariable(name: "sb", arg: 1, scope: !4610, file: !3, line: 298, type: !239)
!4613 = !DILocalVariable(name: "fc", arg: 2, scope: !4610, file: !3, line: 298, type: !261)
!4614 = !DILocalVariable(name: "kfc", scope: !4610, file: !3, line: 300, type: !4429)
!4615 = !DILocation(line: 298, column: 49, scope: !4610)
!4616 = !DILocation(line: 298, column: 72, scope: !4610)
!4617 = !DILocation(line: 300, column: 2, scope: !4610)
!4618 = !DILocation(line: 300, column: 28, scope: !4610)
!4619 = !DILocation(line: 300, column: 34, scope: !4610)
!4620 = !DILocation(line: 300, column: 38, scope: !4610)
!4621 = !DILocation(line: 302, column: 2, scope: !4610)
!4622 = !DILocation(line: 302, column: 7, scope: !4610)
!4623 = !DILocation(line: 302, column: 14, scope: !4610)
!4624 = !DILocation(line: 303, column: 27, scope: !4610)
!4625 = !DILocation(line: 303, column: 31, scope: !4610)
!4626 = !DILocation(line: 303, column: 9, scope: !4610)
!4627 = !DILocation(line: 304, column: 1, scope: !4610)
!4628 = !DILocation(line: 303, column: 2, scope: !4610)
!4629 = distinct !DISubprogram(name: "PTR_ERR", scope: !4386, file: !4386, line: 49, type: !4630, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4632)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!781, !2510}
!4632 = !{!4633}
!4633 = !DILocalVariable(name: "ptr", arg: 1, scope: !4629, file: !4386, line: 49, type: !2510)
!4634 = !DILocation(line: 49, column: 61, scope: !4629)
!4635 = !DILocation(line: 51, column: 16, scope: !4629)
!4636 = !DILocation(line: 51, column: 9, scope: !4629)
!4637 = !DILocation(line: 51, column: 2, scope: !4629)
!4638 = distinct !DISubprogram(name: "kernfs_fill_super", scope: !3, file: !3, line: 248, type: !4639, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4641)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!34, !239, !4429}
!4641 = !{!4642, !4643, !4644, !4645, !4646, !4647}
!4642 = !DILocalVariable(name: "sb", arg: 1, scope: !4638, file: !3, line: 248, type: !239)
!4643 = !DILocalVariable(name: "kfc", arg: 2, scope: !4638, file: !3, line: 248, type: !4429)
!4644 = !DILocalVariable(name: "info", scope: !4638, file: !3, line: 250, type: !234)
!4645 = !DILocalVariable(name: "kf_root", scope: !4638, file: !3, line: 251, type: !3873)
!4646 = !DILocalVariable(name: "inode", scope: !4638, file: !3, line: 252, type: !857)
!4647 = !DILocalVariable(name: "root", scope: !4638, file: !3, line: 253, type: !817)
!4648 = !DILocation(line: 248, column: 50, scope: !4638)
!4649 = !DILocation(line: 248, column: 80, scope: !4638)
!4650 = !DILocation(line: 250, column: 2, scope: !4638)
!4651 = !DILocation(line: 250, column: 28, scope: !4638)
!4652 = !DILocation(line: 250, column: 35, scope: !4638)
!4653 = !DILocation(line: 251, column: 2, scope: !4638)
!4654 = !DILocation(line: 251, column: 22, scope: !4638)
!4655 = !DILocation(line: 251, column: 32, scope: !4638)
!4656 = !DILocation(line: 251, column: 37, scope: !4638)
!4657 = !DILocation(line: 252, column: 2, scope: !4638)
!4658 = !DILocation(line: 252, column: 16, scope: !4638)
!4659 = !DILocation(line: 253, column: 2, scope: !4638)
!4660 = !DILocation(line: 253, column: 17, scope: !4638)
!4661 = !DILocation(line: 255, column: 13, scope: !4638)
!4662 = !DILocation(line: 255, column: 2, scope: !4638)
!4663 = !DILocation(line: 255, column: 8, scope: !4638)
!4664 = !DILocation(line: 255, column: 11, scope: !4638)
!4665 = !DILocation(line: 257, column: 2, scope: !4638)
!4666 = !DILocation(line: 257, column: 6, scope: !4638)
!4667 = !DILocation(line: 257, column: 15, scope: !4638)
!4668 = !DILocation(line: 258, column: 2, scope: !4638)
!4669 = !DILocation(line: 258, column: 6, scope: !4638)
!4670 = !DILocation(line: 258, column: 18, scope: !4638)
!4671 = !DILocation(line: 259, column: 2, scope: !4638)
!4672 = !DILocation(line: 259, column: 6, scope: !4638)
!4673 = !DILocation(line: 259, column: 23, scope: !4638)
!4674 = !DILocation(line: 260, column: 16, scope: !4638)
!4675 = !DILocation(line: 260, column: 21, scope: !4638)
!4676 = !DILocation(line: 260, column: 2, scope: !4638)
!4677 = !DILocation(line: 260, column: 6, scope: !4638)
!4678 = !DILocation(line: 260, column: 14, scope: !4638)
!4679 = !DILocation(line: 261, column: 2, scope: !4638)
!4680 = !DILocation(line: 261, column: 6, scope: !4638)
!4681 = !DILocation(line: 261, column: 11, scope: !4638)
!4682 = !DILocation(line: 262, column: 2, scope: !4638)
!4683 = !DILocation(line: 262, column: 6, scope: !4638)
!4684 = !DILocation(line: 262, column: 14, scope: !4638)
!4685 = !DILocation(line: 263, column: 6, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 263, column: 6)
!4687 = !DILocation(line: 263, column: 12, scope: !4686)
!4688 = !DILocation(line: 263, column: 18, scope: !4686)
!4689 = !DILocation(line: 263, column: 24, scope: !4686)
!4690 = !DILocation(line: 263, column: 6, scope: !4638)
!4691 = !DILocation(line: 264, column: 3, scope: !4686)
!4692 = !DILocation(line: 264, column: 7, scope: !4686)
!4693 = !DILocation(line: 264, column: 19, scope: !4686)
!4694 = !DILocation(line: 265, column: 2, scope: !4638)
!4695 = !DILocation(line: 265, column: 6, scope: !4638)
!4696 = !DILocation(line: 265, column: 18, scope: !4638)
!4697 = !DILocation(line: 268, column: 2, scope: !4638)
!4698 = !DILocation(line: 268, column: 6, scope: !4638)
!4699 = !DILocation(line: 268, column: 15, scope: !4638)
!4700 = !DILocation(line: 268, column: 21, scope: !4638)
!4701 = !DILocation(line: 271, column: 13, scope: !4638)
!4702 = !DILocation(line: 271, column: 22, scope: !4638)
!4703 = !DILocation(line: 271, column: 2, scope: !4638)
!4704 = !DILocation(line: 272, column: 27, scope: !4638)
!4705 = !DILocation(line: 272, column: 31, scope: !4638)
!4706 = !DILocation(line: 272, column: 37, scope: !4638)
!4707 = !DILocation(line: 272, column: 43, scope: !4638)
!4708 = !DILocation(line: 272, column: 10, scope: !4638)
!4709 = !DILocation(line: 272, column: 8, scope: !4638)
!4710 = !DILocation(line: 273, column: 11, scope: !4638)
!4711 = !DILocation(line: 273, column: 20, scope: !4638)
!4712 = !DILocation(line: 273, column: 2, scope: !4638)
!4713 = !DILocation(line: 274, column: 7, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 274, column: 6)
!4715 = !DILocation(line: 274, column: 6, scope: !4638)
!4716 = !DILocation(line: 275, column: 3, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 275, column: 3)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 275, column: 3)
!4719 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 274, column: 14)
!4720 = !DILocation(line: 275, column: 3, scope: !4718)
!4721 = !DILocation(line: 276, column: 3, scope: !4719)
!4722 = !DILocation(line: 280, column: 21, scope: !4638)
!4723 = !DILocation(line: 280, column: 9, scope: !4638)
!4724 = !DILocation(line: 280, column: 7, scope: !4638)
!4725 = !DILocation(line: 281, column: 7, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 281, column: 6)
!4727 = !DILocation(line: 281, column: 6, scope: !4638)
!4728 = !DILocation(line: 282, column: 3, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 282, column: 3)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 282, column: 3)
!4731 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 281, column: 13)
!4732 = !DILocation(line: 282, column: 3, scope: !4730)
!4733 = !DILocation(line: 283, column: 3, scope: !4731)
!4734 = !DILocation(line: 285, column: 15, scope: !4638)
!4735 = !DILocation(line: 285, column: 2, scope: !4638)
!4736 = !DILocation(line: 285, column: 6, scope: !4638)
!4737 = !DILocation(line: 285, column: 13, scope: !4638)
!4738 = !DILocation(line: 286, column: 2, scope: !4638)
!4739 = !DILocation(line: 286, column: 6, scope: !4638)
!4740 = !DILocation(line: 286, column: 13, scope: !4638)
!4741 = !DILocation(line: 287, column: 2, scope: !4638)
!4742 = !DILocation(line: 288, column: 1, scope: !4638)
!4743 = !DISubprogram(name: "deactivate_locked_super", scope: !189, file: !189, line: 2414, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4744 = !DISubprogram(name: "uuid_gen", scope: !3815, file: !3815, line: 100, type: !4745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{null, !4747}
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!4748 = !DISubprogram(name: "down_write", scope: !490, file: !490, line: 187, type: !4749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{null, !4751}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!4752 = distinct !DISubprogram(name: "list_add", scope: !4554, file: !4554, line: 167, type: !4753, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4755)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{null, !112, !112}
!4755 = !{!4756, !4757}
!4756 = !DILocalVariable(name: "new", arg: 1, scope: !4752, file: !4554, line: 167, type: !112)
!4757 = !DILocalVariable(name: "head", arg: 2, scope: !4752, file: !4554, line: 167, type: !112)
!4758 = !DILocation(line: 167, column: 47, scope: !4752)
!4759 = !DILocation(line: 167, column: 70, scope: !4752)
!4760 = !DILocation(line: 169, column: 13, scope: !4752)
!4761 = !DILocation(line: 169, column: 18, scope: !4752)
!4762 = !DILocation(line: 169, column: 24, scope: !4752)
!4763 = !DILocation(line: 169, column: 30, scope: !4752)
!4764 = !DILocation(line: 169, column: 2, scope: !4752)
!4765 = !DILocation(line: 170, column: 1, scope: !4752)
!4766 = !DISubprogram(name: "up_write", scope: !490, file: !490, line: 203, type: !4749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4767 = distinct !DISubprogram(name: "kernfs_free_fs_context", scope: !3, file: !3, line: 374, type: !271, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4768)
!4768 = !{!4769}
!4769 = !DILocalVariable(name: "fc", arg: 1, scope: !4767, file: !3, line: 374, type: !261)
!4770 = !DILocation(line: 374, column: 48, scope: !4767)
!4771 = !DILocation(line: 377, column: 8, scope: !4767)
!4772 = !DILocation(line: 377, column: 12, scope: !4767)
!4773 = !DILocation(line: 377, column: 2, scope: !4767)
!4774 = !DILocation(line: 378, column: 2, scope: !4767)
!4775 = !DILocation(line: 378, column: 6, scope: !4767)
!4776 = !DILocation(line: 378, column: 16, scope: !4767)
!4777 = !DILocation(line: 379, column: 1, scope: !4767)
!4778 = !DISubprogram(name: "kfree", scope: !199, file: !199, line: 227, type: !4779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{null, !2510}
!4781 = distinct !DISubprogram(name: "kernfs_kill_sb", scope: !3, file: !3, line: 389, type: !2120, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4782)
!4782 = !{!4783, !4784, !4785}
!4783 = !DILocalVariable(name: "sb", arg: 1, scope: !4781, file: !3, line: 389, type: !239)
!4784 = !DILocalVariable(name: "info", scope: !4781, file: !3, line: 391, type: !234)
!4785 = !DILocalVariable(name: "root", scope: !4781, file: !3, line: 392, type: !3873)
!4786 = !DILocation(line: 389, column: 41, scope: !4781)
!4787 = !DILocation(line: 391, column: 2, scope: !4781)
!4788 = !DILocation(line: 391, column: 28, scope: !4781)
!4789 = !DILocation(line: 391, column: 35, scope: !4781)
!4790 = !DILocation(line: 392, column: 2, scope: !4781)
!4791 = !DILocation(line: 392, column: 22, scope: !4781)
!4792 = !DILocation(line: 392, column: 29, scope: !4781)
!4793 = !DILocation(line: 392, column: 35, scope: !4781)
!4794 = !DILocation(line: 394, column: 14, scope: !4781)
!4795 = !DILocation(line: 394, column: 20, scope: !4781)
!4796 = !DILocation(line: 394, column: 2, scope: !4781)
!4797 = !DILocation(line: 395, column: 12, scope: !4781)
!4798 = !DILocation(line: 395, column: 18, scope: !4781)
!4799 = !DILocation(line: 395, column: 2, scope: !4781)
!4800 = !DILocation(line: 396, column: 12, scope: !4781)
!4801 = !DILocation(line: 396, column: 18, scope: !4781)
!4802 = !DILocation(line: 396, column: 2, scope: !4781)
!4803 = !DILocation(line: 402, column: 18, scope: !4781)
!4804 = !DILocation(line: 402, column: 2, scope: !4781)
!4805 = !DILocation(line: 403, column: 8, scope: !4781)
!4806 = !DILocation(line: 403, column: 2, scope: !4781)
!4807 = !DILocation(line: 404, column: 1, scope: !4781)
!4808 = distinct !DISubprogram(name: "list_del", scope: !4554, file: !4554, line: 227, type: !4555, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4809)
!4809 = !{!4810}
!4810 = !DILocalVariable(name: "entry", arg: 1, scope: !4808, file: !4554, line: 227, type: !112)
!4811 = !DILocation(line: 227, column: 47, scope: !4808)
!4812 = !DILocation(line: 229, column: 19, scope: !4808)
!4813 = !DILocation(line: 229, column: 2, scope: !4808)
!4814 = !DILocation(line: 230, column: 2, scope: !4808)
!4815 = !DILocation(line: 230, column: 9, scope: !4808)
!4816 = !DILocation(line: 230, column: 14, scope: !4808)
!4817 = !DILocation(line: 231, column: 2, scope: !4808)
!4818 = !DILocation(line: 231, column: 9, scope: !4808)
!4819 = !DILocation(line: 231, column: 14, scope: !4808)
!4820 = !DILocation(line: 232, column: 1, scope: !4808)
!4821 = !DISubprogram(name: "kill_anon_super", scope: !189, file: !189, line: 2411, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4822 = distinct !DISubprogram(name: "kernfs_init", scope: !3, file: !3, line: 422, type: !3228, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4823 = !DILocation(line: 424, column: 22, scope: !4822)
!4824 = !DILocation(line: 424, column: 20, scope: !4822)
!4825 = !DILocation(line: 429, column: 25, scope: !4822)
!4826 = !DILocation(line: 429, column: 23, scope: !4822)
!4827 = !DILocation(line: 433, column: 2, scope: !4822)
!4828 = !DILocation(line: 434, column: 1, scope: !4822)
!4829 = !DISubprogram(name: "kmem_cache_create", scope: !199, file: !199, line: 189, type: !4830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!4036, !28, !7, !7, !4020, !888}
!4832 = distinct !DISubprogram(name: "kernfs_lock_init", scope: !3, file: !3, line: 414, type: !3228, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4833)
!4833 = !{!4834, !4836}
!4834 = !DILocalVariable(name: "__ret_warn_on", scope: !4835, file: !3, line: 417, type: !34)
!4835 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 417, column: 2)
!4836 = !DILocalVariable(name: "__flags", scope: !4837, file: !3, line: 417, type: !34)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 417, column: 2)
!4838 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 417, column: 2)
!4839 = !DILocation(line: 416, column: 17, scope: !4832)
!4840 = !DILocation(line: 416, column: 15, scope: !4832)
!4841 = !DILocation(line: 417, column: 2, scope: !4835)
!4842 = !DILocation(line: 417, column: 2, scope: !4838)
!4843 = !DILocation(line: 417, column: 2, scope: !4837)
!4844 = !DILocation(line: 417, column: 2, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 417, column: 2)
!4846 = !DILocation(line: 417, column: 2, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 417, column: 2)
!4848 = !{i64 2154391140, i64 2154391169, i64 2154391215, i64 2154391273, i64 2154391327, i64 2154391381, i64 2154391436, i64 2154391467, i64 2154391775, i64 2154391781, i64 2154391828, i64 2154391851, i64 2154391877}
!4849 = !DILocation(line: 417, column: 2, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 417, column: 2)
!4851 = !DILocation(line: 417, column: 2, scope: !4832)
!4852 = !DILocation(line: 419, column: 2, scope: !4832)
!4853 = !DILocation(line: 420, column: 1, scope: !4832)
!4854 = !DISubprogram(name: "simple_statfs", scope: !189, file: !189, line: 3148, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4855 = distinct !DISubprogram(name: "uuid_to_fsid", scope: !2181, file: !2181, line: 55, type: !4856, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4859)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!2191, !4858}
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!4859 = !{!4860}
!4860 = !DILocalVariable(name: "uuid", arg: 1, scope: !4855, file: !2181, line: 55, type: !4858)
!4861 = !DILocation(line: 55, column: 50, scope: !4855)
!4862 = !DILocation(line: 57, column: 42, scope: !4855)
!4863 = !DILocation(line: 57, column: 21, scope: !4855)
!4864 = !DILocation(line: 58, column: 25, scope: !4855)
!4865 = !DILocation(line: 58, column: 30, scope: !4855)
!4866 = !DILocation(line: 58, column: 3, scope: !4855)
!4867 = !DILocation(line: 57, column: 48, scope: !4855)
!4868 = !DILocation(line: 57, column: 9, scope: !4855)
!4869 = !DILocation(line: 57, column: 2, scope: !4855)
!4870 = distinct !DISubprogram(name: "u64_to_fsid", scope: !2181, file: !2181, line: 49, type: !4871, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4873)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!2191, !457}
!4873 = !{!4874}
!4874 = !DILocalVariable(name: "v", arg: 1, scope: !4870, file: !2181, line: 49, type: !457)
!4875 = !DILocation(line: 49, column: 47, scope: !4870)
!4876 = !DILocation(line: 51, column: 26, scope: !4870)
!4877 = !DILocation(line: 51, column: 34, scope: !4870)
!4878 = !DILocation(line: 51, column: 40, scope: !4870)
!4879 = !DILocation(line: 51, column: 35, scope: !4870)
!4880 = !DILocation(line: 51, column: 49, scope: !4870)
!4881 = !DILocation(line: 51, column: 50, scope: !4870)
!4882 = !DILocation(line: 51, column: 43, scope: !4870)
!4883 = !DILocation(line: 51, column: 2, scope: !4870)
!4884 = distinct !DISubprogram(name: "__le64_to_cpup", scope: !4885, file: !4885, line: 49, type: !4886, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4891)
!4885 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e83ca9c46c7eccd1fa31a0d39b270d0a")
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!458, !4888}
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4890)
!4890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !1807, line: 40, baseType: !458)
!4891 = !{!4892}
!4892 = !DILocalVariable(name: "p", arg: 1, scope: !4884, file: !4885, line: 49, type: !4888)
!4893 = !DILocation(line: 49, column: 59, scope: !4884)
!4894 = !DILocation(line: 51, column: 25, scope: !4884)
!4895 = !DILocation(line: 51, column: 24, scope: !4884)
!4896 = !DILocation(line: 51, column: 2, scope: !4884)
!4897 = distinct !DISubprogram(name: "kernfs_root", scope: !236, file: !236, line: 67, type: !4898, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4900)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!3873, !3877}
!4900 = !{!4901}
!4901 = !DILocalVariable(name: "kn", arg: 1, scope: !4897, file: !236, line: 67, type: !3877)
!4902 = !DILocation(line: 67, column: 67, scope: !4897)
!4903 = !DILocation(line: 70, column: 6, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4897, file: !236, line: 70, column: 6)
!4905 = !DILocation(line: 70, column: 10, scope: !4904)
!4906 = !DILocation(line: 70, column: 6, scope: !4897)
!4907 = !DILocation(line: 71, column: 8, scope: !4904)
!4908 = !DILocation(line: 71, column: 12, scope: !4904)
!4909 = !DILocation(line: 71, column: 6, scope: !4904)
!4910 = !DILocation(line: 71, column: 3, scope: !4904)
!4911 = !DILocation(line: 72, column: 9, scope: !4897)
!4912 = !DILocation(line: 72, column: 13, scope: !4897)
!4913 = !DILocation(line: 72, column: 17, scope: !4897)
!4914 = !DILocation(line: 72, column: 2, scope: !4897)
!4915 = distinct !DISubprogram(name: "kernfs_dentry_node", scope: !236, file: !236, line: 100, type: !4916, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4918)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!3877, !817}
!4918 = !{!4919}
!4919 = !DILocalVariable(name: "dentry", arg: 1, scope: !4915, file: !236, line: 100, type: !817)
!4920 = !DILocation(line: 100, column: 69, scope: !4915)
!4921 = !DILocation(line: 102, column: 27, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4915, file: !236, line: 102, column: 6)
!4923 = !DILocation(line: 102, column: 6, scope: !4922)
!4924 = !DILocation(line: 102, column: 6, scope: !4915)
!4925 = !DILocation(line: 103, column: 3, scope: !4922)
!4926 = !DILocation(line: 104, column: 17, scope: !4915)
!4927 = !DILocation(line: 104, column: 9, scope: !4915)
!4928 = !DILocation(line: 104, column: 26, scope: !4915)
!4929 = !DILocation(line: 104, column: 2, scope: !4915)
!4930 = !DILocation(line: 105, column: 1, scope: !4915)
!4931 = distinct !DISubprogram(name: "d_really_is_negative", scope: !819, file: !819, line: 464, type: !4932, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4934)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!548, !1987}
!4934 = !{!4935}
!4935 = !DILocalVariable(name: "dentry", arg: 1, scope: !4931, file: !819, line: 464, type: !1987)
!4936 = !DILocation(line: 464, column: 62, scope: !4931)
!4937 = !DILocation(line: 466, column: 9, scope: !4931)
!4938 = !DILocation(line: 466, column: 17, scope: !4931)
!4939 = !DILocation(line: 466, column: 25, scope: !4931)
!4940 = !DILocation(line: 466, column: 2, scope: !4931)
!4941 = distinct !DISubprogram(name: "d_inode", scope: !819, file: !819, line: 514, type: !4942, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4944)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!857, !1987}
!4944 = !{!4945}
!4945 = !DILocalVariable(name: "dentry", arg: 1, scope: !4941, file: !819, line: 514, type: !1987)
!4946 = !DILocation(line: 514, column: 58, scope: !4941)
!4947 = !DILocation(line: 516, column: 9, scope: !4941)
!4948 = !DILocation(line: 516, column: 17, scope: !4941)
!4949 = !DILocation(line: 516, column: 2, scope: !4941)
!4950 = !DISubprogram(name: "seq_dentry", scope: !1877, file: !1877, line: 161, type: !4951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!34, !1875, !817, !28}
!4953 = !DISubprogram(name: "lockref_get", scope: !1962, file: !1962, line: 37, type: !4954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{null, !4956}
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!4957 = !DISubprogram(name: "_printk", scope: !4958, file: !4958, line: 153, type: !4959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4958 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!34, !28, null}
!4961 = distinct !DISubprogram(name: "kmalloc", scope: !199, file: !199, line: 591, type: !4541, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4962)
!4962 = !{!4963, !4964, !4965}
!4963 = !DILocalVariable(name: "size", arg: 1, scope: !4961, file: !199, line: 591, type: !47)
!4964 = !DILocalVariable(name: "flags", arg: 2, scope: !4961, file: !199, line: 591, type: !1059)
!4965 = !DILocalVariable(name: "index", scope: !4966, file: !199, line: 594, type: !7)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !199, line: 593, column: 42)
!4967 = distinct !DILexicalBlock(scope: !4961, file: !199, line: 593, column: 6)
!4968 = !DILocation(line: 591, column: 61, scope: !4961)
!4969 = !DILocation(line: 591, column: 73, scope: !4961)
!4970 = !DILocation(line: 593, column: 27, scope: !4967)
!4971 = !DILocation(line: 593, column: 6, scope: !4967)
!4972 = !DILocation(line: 593, column: 33, scope: !4967)
!4973 = !DILocation(line: 593, column: 36, scope: !4967)
!4974 = !DILocation(line: 593, column: 6, scope: !4961)
!4975 = !DILocation(line: 594, column: 3, scope: !4966)
!4976 = !DILocation(line: 594, column: 16, scope: !4966)
!4977 = !DILocation(line: 596, column: 7, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4966, file: !199, line: 596, column: 7)
!4979 = !DILocation(line: 596, column: 12, scope: !4978)
!4980 = !DILocation(line: 596, column: 7, scope: !4966)
!4981 = !DILocation(line: 597, column: 25, scope: !4978)
!4982 = !DILocation(line: 597, column: 31, scope: !4978)
!4983 = !DILocation(line: 597, column: 11, scope: !4978)
!4984 = !DILocation(line: 597, column: 4, scope: !4978)
!4985 = !DILocation(line: 599, column: 11, scope: !4966)
!4986 = !DILocation(line: 599, column: 9, scope: !4966)
!4987 = !DILocation(line: 601, column: 33, scope: !4966)
!4988 = !DILocation(line: 601, column: 40, scope: !4966)
!4989 = !DILocation(line: 601, column: 20, scope: !4966)
!4990 = !DILocation(line: 601, column: 5, scope: !4966)
!4991 = !DILocation(line: 601, column: 51, scope: !4966)
!4992 = !DILocation(line: 602, column: 5, scope: !4966)
!4993 = !DILocation(line: 602, column: 12, scope: !4966)
!4994 = !DILocation(line: 600, column: 10, scope: !4966)
!4995 = !DILocation(line: 600, column: 3, scope: !4966)
!4996 = !DILocation(line: 603, column: 2, scope: !4967)
!4997 = !DILocation(line: 604, column: 19, scope: !4961)
!4998 = !DILocation(line: 604, column: 25, scope: !4961)
!4999 = !DILocation(line: 604, column: 9, scope: !4961)
!5000 = !DILocation(line: 604, column: 2, scope: !4961)
!5001 = !DILocation(line: 605, column: 1, scope: !4961)
!5002 = !DISubprogram(name: "kmalloc_large", scope: !199, file: !199, line: 531, type: !4541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5003 = distinct !DISubprogram(name: "__kmalloc_index", scope: !199, file: !199, line: 444, type: !5004, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5006)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!7, !47, !548}
!5006 = !{!5007, !5008}
!5007 = !DILocalVariable(name: "size", arg: 1, scope: !5003, file: !199, line: 444, type: !47)
!5008 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5003, file: !199, line: 445, type: !548)
!5009 = !DILocation(line: 444, column: 60, scope: !5003)
!5010 = !DILocation(line: 445, column: 16, scope: !5003)
!5011 = !DILocation(line: 447, column: 7, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 447, column: 6)
!5013 = !DILocation(line: 447, column: 6, scope: !5003)
!5014 = !DILocation(line: 448, column: 3, scope: !5012)
!5015 = !DILocation(line: 450, column: 6, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 450, column: 6)
!5017 = !DILocation(line: 450, column: 11, scope: !5016)
!5018 = !DILocation(line: 450, column: 6, scope: !5003)
!5019 = !DILocation(line: 451, column: 3, scope: !5016)
!5020 = !DILocation(line: 453, column: 32, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 453, column: 6)
!5022 = !DILocation(line: 453, column: 37, scope: !5021)
!5023 = !DILocation(line: 453, column: 42, scope: !5021)
!5024 = !DILocation(line: 453, column: 45, scope: !5021)
!5025 = !DILocation(line: 453, column: 50, scope: !5021)
!5026 = !DILocation(line: 453, column: 6, scope: !5003)
!5027 = !DILocation(line: 454, column: 3, scope: !5021)
!5028 = !DILocation(line: 455, column: 32, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 455, column: 6)
!5030 = !DILocation(line: 455, column: 37, scope: !5029)
!5031 = !DILocation(line: 455, column: 43, scope: !5029)
!5032 = !DILocation(line: 455, column: 46, scope: !5029)
!5033 = !DILocation(line: 455, column: 51, scope: !5029)
!5034 = !DILocation(line: 455, column: 6, scope: !5003)
!5035 = !DILocation(line: 456, column: 3, scope: !5029)
!5036 = !DILocation(line: 457, column: 6, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 457, column: 6)
!5038 = !DILocation(line: 457, column: 11, scope: !5037)
!5039 = !DILocation(line: 457, column: 6, scope: !5003)
!5040 = !DILocation(line: 457, column: 26, scope: !5037)
!5041 = !DILocation(line: 458, column: 6, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 458, column: 6)
!5043 = !DILocation(line: 458, column: 11, scope: !5042)
!5044 = !DILocation(line: 458, column: 6, scope: !5003)
!5045 = !DILocation(line: 458, column: 26, scope: !5042)
!5046 = !DILocation(line: 459, column: 6, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 459, column: 6)
!5048 = !DILocation(line: 459, column: 11, scope: !5047)
!5049 = !DILocation(line: 459, column: 6, scope: !5003)
!5050 = !DILocation(line: 459, column: 26, scope: !5047)
!5051 = !DILocation(line: 460, column: 6, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 460, column: 6)
!5053 = !DILocation(line: 460, column: 11, scope: !5052)
!5054 = !DILocation(line: 460, column: 6, scope: !5003)
!5055 = !DILocation(line: 460, column: 26, scope: !5052)
!5056 = !DILocation(line: 461, column: 6, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 461, column: 6)
!5058 = !DILocation(line: 461, column: 11, scope: !5057)
!5059 = !DILocation(line: 461, column: 6, scope: !5003)
!5060 = !DILocation(line: 461, column: 26, scope: !5057)
!5061 = !DILocation(line: 462, column: 6, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 462, column: 6)
!5063 = !DILocation(line: 462, column: 11, scope: !5062)
!5064 = !DILocation(line: 462, column: 6, scope: !5003)
!5065 = !DILocation(line: 462, column: 26, scope: !5062)
!5066 = !DILocation(line: 463, column: 6, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 463, column: 6)
!5068 = !DILocation(line: 463, column: 11, scope: !5067)
!5069 = !DILocation(line: 463, column: 6, scope: !5003)
!5070 = !DILocation(line: 463, column: 26, scope: !5067)
!5071 = !DILocation(line: 464, column: 6, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 464, column: 6)
!5073 = !DILocation(line: 464, column: 11, scope: !5072)
!5074 = !DILocation(line: 464, column: 6, scope: !5003)
!5075 = !DILocation(line: 464, column: 26, scope: !5072)
!5076 = !DILocation(line: 465, column: 6, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 465, column: 6)
!5078 = !DILocation(line: 465, column: 11, scope: !5077)
!5079 = !DILocation(line: 465, column: 6, scope: !5003)
!5080 = !DILocation(line: 465, column: 26, scope: !5077)
!5081 = !DILocation(line: 466, column: 6, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 466, column: 6)
!5083 = !DILocation(line: 466, column: 11, scope: !5082)
!5084 = !DILocation(line: 466, column: 6, scope: !5003)
!5085 = !DILocation(line: 466, column: 26, scope: !5082)
!5086 = !DILocation(line: 467, column: 6, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 467, column: 6)
!5088 = !DILocation(line: 467, column: 11, scope: !5087)
!5089 = !DILocation(line: 467, column: 6, scope: !5003)
!5090 = !DILocation(line: 467, column: 26, scope: !5087)
!5091 = !DILocation(line: 468, column: 6, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 468, column: 6)
!5093 = !DILocation(line: 468, column: 11, scope: !5092)
!5094 = !DILocation(line: 468, column: 6, scope: !5003)
!5095 = !DILocation(line: 468, column: 26, scope: !5092)
!5096 = !DILocation(line: 469, column: 6, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 469, column: 6)
!5098 = !DILocation(line: 469, column: 11, scope: !5097)
!5099 = !DILocation(line: 469, column: 6, scope: !5003)
!5100 = !DILocation(line: 469, column: 26, scope: !5097)
!5101 = !DILocation(line: 470, column: 6, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 470, column: 6)
!5103 = !DILocation(line: 470, column: 11, scope: !5102)
!5104 = !DILocation(line: 470, column: 6, scope: !5003)
!5105 = !DILocation(line: 470, column: 26, scope: !5102)
!5106 = !DILocation(line: 471, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 471, column: 6)
!5108 = !DILocation(line: 471, column: 11, scope: !5107)
!5109 = !DILocation(line: 471, column: 6, scope: !5003)
!5110 = !DILocation(line: 471, column: 26, scope: !5107)
!5111 = !DILocation(line: 472, column: 6, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 472, column: 6)
!5113 = !DILocation(line: 472, column: 11, scope: !5112)
!5114 = !DILocation(line: 472, column: 6, scope: !5003)
!5115 = !DILocation(line: 472, column: 26, scope: !5112)
!5116 = !DILocation(line: 473, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 473, column: 6)
!5118 = !DILocation(line: 473, column: 11, scope: !5117)
!5119 = !DILocation(line: 473, column: 6, scope: !5003)
!5120 = !DILocation(line: 473, column: 26, scope: !5117)
!5121 = !DILocation(line: 474, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 474, column: 6)
!5123 = !DILocation(line: 474, column: 11, scope: !5122)
!5124 = !DILocation(line: 474, column: 6, scope: !5003)
!5125 = !DILocation(line: 474, column: 27, scope: !5122)
!5126 = !DILocation(line: 475, column: 6, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 475, column: 6)
!5128 = !DILocation(line: 475, column: 11, scope: !5127)
!5129 = !DILocation(line: 475, column: 6, scope: !5003)
!5130 = !DILocation(line: 475, column: 32, scope: !5127)
!5131 = !DILocation(line: 477, column: 50, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5003, file: !199, line: 477, column: 6)
!5133 = !DILocation(line: 477, column: 6, scope: !5003)
!5134 = !DILocation(line: 478, column: 3, scope: !5132)
!5135 = !DILocation(line: 478, column: 3, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5137, file: !199, line: 478, column: 3)
!5137 = distinct !DILexicalBlock(scope: !5132, file: !199, line: 478, column: 3)
!5138 = !{i32 -2141714488}
!5139 = !DILocation(line: 478, column: 3, scope: !5137)
!5140 = !DILocation(line: 480, column: 3, scope: !5132)
!5141 = !DILocation(line: 480, column: 3, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5132, file: !199, line: 480, column: 3)
!5143 = !DILocation(line: 480, column: 3, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5142, file: !199, line: 480, column: 3)
!5145 = !DILocation(line: 480, column: 3, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5142, file: !199, line: 480, column: 3)
!5147 = !{i64 2153253011, i64 2153253040, i64 2153253086, i64 2153253144, i64 2153253198, i64 2153253252, i64 2153253307, i64 2153253338}
!5148 = !DILocation(line: 483, column: 2, scope: !5003)
!5149 = !DILocation(line: 484, column: 1, scope: !5003)
!5150 = !DISubprogram(name: "kmalloc_trace", scope: !199, file: !199, line: 525, type: !5151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!32, !4036, !1059, !47}
!5153 = distinct !DISubprogram(name: "kmalloc_type", scope: !199, file: !199, line: 401, type: !5154, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5156)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!198, !1059, !51}
!5156 = !{!5157, !5158}
!5157 = !DILocalVariable(name: "flags", arg: 1, scope: !5153, file: !199, line: 401, type: !1059)
!5158 = !DILocalVariable(name: "caller", arg: 2, scope: !5153, file: !199, line: 401, type: !51)
!5159 = !DILocation(line: 401, column: 67, scope: !5153)
!5160 = !DILocation(line: 401, column: 88, scope: !5153)
!5161 = !DILocation(line: 407, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5153, file: !199, line: 407, column: 6)
!5163 = !DILocation(line: 407, column: 6, scope: !5153)
!5164 = !DILocation(line: 413, column: 3, scope: !5162)
!5165 = !DILocation(line: 423, column: 38, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5153, file: !199, line: 423, column: 6)
!5167 = !DILocation(line: 423, column: 44, scope: !5166)
!5168 = !DILocation(line: 423, column: 6, scope: !5153)
!5169 = !DILocation(line: 424, column: 3, scope: !5166)
!5170 = !DILocation(line: 426, column: 3, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5153, file: !199, line: 425, column: 6)
!5172 = !DILocation(line: 429, column: 1, scope: !5153)
!5173 = !DISubprogram(name: "__kmalloc", scope: !199, file: !199, line: 488, type: !4541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5174 = !DISubprogram(name: "__compiletime_assert_245", scope: !199, file: !199, line: 478, type: !3228, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5175 = !DISubprogram(name: "set_anon_super_fc", scope: !189, file: !189, line: 2416, type: !4579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5176 = !DISubprogram(name: "down_read", scope: !490, file: !490, line: 175, type: !4749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5177 = !DISubprogram(name: "kernfs_get_inode", scope: !209, file: !209, line: 411, type: !5178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!857, !239, !3877}
!5180 = !DISubprogram(name: "up_read", scope: !490, file: !490, line: 198, type: !4749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5181 = !DISubprogram(name: "d_make_root", scope: !819, file: !819, line: 249, type: !5182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!817, !857}
!5184 = distinct !DISubprogram(name: "kernfs_encode_fh", scope: !3, file: !3, line: 66, type: !2416, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5185)
!5185 = !{!5186, !5187, !5188, !5189, !5190}
!5186 = !DILocalVariable(name: "inode", arg: 1, scope: !5184, file: !3, line: 66, type: !857)
!5187 = !DILocalVariable(name: "fh", arg: 2, scope: !5184, file: !3, line: 66, type: !2418)
!5188 = !DILocalVariable(name: "max_len", arg: 3, scope: !5184, file: !3, line: 66, type: !2206)
!5189 = !DILocalVariable(name: "parent", arg: 4, scope: !5184, file: !3, line: 67, type: !857)
!5190 = !DILocalVariable(name: "kn", scope: !5184, file: !3, line: 69, type: !3877)
!5191 = !DILocation(line: 66, column: 43, scope: !5184)
!5192 = !DILocation(line: 66, column: 57, scope: !5184)
!5193 = !DILocation(line: 66, column: 66, scope: !5184)
!5194 = !DILocation(line: 67, column: 22, scope: !5184)
!5195 = !DILocation(line: 69, column: 2, scope: !5184)
!5196 = !DILocation(line: 69, column: 22, scope: !5184)
!5197 = !DILocation(line: 69, column: 27, scope: !5184)
!5198 = !DILocation(line: 69, column: 34, scope: !5184)
!5199 = !DILocation(line: 71, column: 7, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 71, column: 6)
!5201 = !DILocation(line: 71, column: 6, scope: !5200)
!5202 = !DILocation(line: 71, column: 15, scope: !5200)
!5203 = !DILocation(line: 71, column: 6, scope: !5184)
!5204 = !DILocation(line: 72, column: 4, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 71, column: 20)
!5206 = !DILocation(line: 72, column: 12, scope: !5205)
!5207 = !DILocation(line: 73, column: 3, scope: !5205)
!5208 = !DILocation(line: 76, column: 3, scope: !5184)
!5209 = !DILocation(line: 76, column: 11, scope: !5184)
!5210 = !DILocation(line: 77, column: 15, scope: !5184)
!5211 = !DILocation(line: 77, column: 19, scope: !5184)
!5212 = !DILocation(line: 77, column: 10, scope: !5184)
!5213 = !DILocation(line: 77, column: 13, scope: !5184)
!5214 = !DILocation(line: 78, column: 2, scope: !5184)
!5215 = !DILocation(line: 79, column: 1, scope: !5184)
!5216 = distinct !DISubprogram(name: "kernfs_fh_to_dentry", scope: !3, file: !3, line: 133, type: !2421, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5217)
!5217 = !{!5218, !5219, !5220, !5221}
!5218 = !DILocalVariable(name: "sb", arg: 1, scope: !5216, file: !3, line: 133, type: !239)
!5219 = !DILocalVariable(name: "fid", arg: 2, scope: !5216, file: !3, line: 134, type: !2423)
!5220 = !DILocalVariable(name: "fh_len", arg: 3, scope: !5216, file: !3, line: 134, type: !34)
!5221 = !DILocalVariable(name: "fh_type", arg: 4, scope: !5216, file: !3, line: 135, type: !34)
!5222 = !DILocation(line: 133, column: 63, scope: !5216)
!5223 = !DILocation(line: 134, column: 20, scope: !5216)
!5224 = !DILocation(line: 134, column: 29, scope: !5216)
!5225 = !DILocation(line: 135, column: 12, scope: !5216)
!5226 = !DILocation(line: 137, column: 31, scope: !5216)
!5227 = !DILocation(line: 137, column: 35, scope: !5216)
!5228 = !DILocation(line: 137, column: 40, scope: !5216)
!5229 = !DILocation(line: 137, column: 48, scope: !5216)
!5230 = !DILocation(line: 137, column: 9, scope: !5216)
!5231 = !DILocation(line: 137, column: 2, scope: !5216)
!5232 = distinct !DISubprogram(name: "kernfs_fh_to_parent", scope: !3, file: !3, line: 140, type: !2421, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5233)
!5233 = !{!5234, !5235, !5236, !5237}
!5234 = !DILocalVariable(name: "sb", arg: 1, scope: !5232, file: !3, line: 140, type: !239)
!5235 = !DILocalVariable(name: "fid", arg: 2, scope: !5232, file: !3, line: 141, type: !2423)
!5236 = !DILocalVariable(name: "fh_len", arg: 3, scope: !5232, file: !3, line: 141, type: !34)
!5237 = !DILocalVariable(name: "fh_type", arg: 4, scope: !5232, file: !3, line: 142, type: !34)
!5238 = !DILocation(line: 140, column: 63, scope: !5232)
!5239 = !DILocation(line: 141, column: 20, scope: !5232)
!5240 = !DILocation(line: 141, column: 29, scope: !5232)
!5241 = !DILocation(line: 142, column: 12, scope: !5232)
!5242 = !DILocation(line: 144, column: 31, scope: !5232)
!5243 = !DILocation(line: 144, column: 35, scope: !5232)
!5244 = !DILocation(line: 144, column: 40, scope: !5232)
!5245 = !DILocation(line: 144, column: 48, scope: !5232)
!5246 = !DILocation(line: 144, column: 9, scope: !5232)
!5247 = !DILocation(line: 144, column: 2, scope: !5232)
!5248 = distinct !DISubprogram(name: "kernfs_get_parent_dentry", scope: !3, file: !3, line: 147, type: !2459, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5249)
!5249 = !{!5250, !5251}
!5250 = !DILocalVariable(name: "child", arg: 1, scope: !5248, file: !3, line: 147, type: !817)
!5251 = !DILocalVariable(name: "kn", scope: !5248, file: !3, line: 149, type: !3877)
!5252 = !DILocation(line: 147, column: 63, scope: !5248)
!5253 = !DILocation(line: 149, column: 2, scope: !5248)
!5254 = !DILocation(line: 149, column: 22, scope: !5248)
!5255 = !DILocation(line: 149, column: 46, scope: !5248)
!5256 = !DILocation(line: 149, column: 27, scope: !5248)
!5257 = !DILocation(line: 151, column: 41, scope: !5248)
!5258 = !DILocation(line: 151, column: 48, scope: !5248)
!5259 = !DILocation(line: 151, column: 54, scope: !5248)
!5260 = !DILocation(line: 151, column: 58, scope: !5248)
!5261 = !DILocation(line: 151, column: 24, scope: !5248)
!5262 = !DILocation(line: 151, column: 9, scope: !5248)
!5263 = !DILocation(line: 152, column: 1, scope: !5248)
!5264 = !DILocation(line: 151, column: 2, scope: !5248)
!5265 = distinct !DISubprogram(name: "__kernfs_fh_to_dentry", scope: !3, file: !3, line: 81, type: !5266, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5268)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!817, !239, !2423, !34, !34, !548}
!5268 = !{!5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278}
!5269 = !DILocalVariable(name: "sb", arg: 1, scope: !5265, file: !3, line: 81, type: !239)
!5270 = !DILocalVariable(name: "fid", arg: 2, scope: !5265, file: !3, line: 82, type: !2423)
!5271 = !DILocalVariable(name: "fh_len", arg: 3, scope: !5265, file: !3, line: 82, type: !34)
!5272 = !DILocalVariable(name: "fh_type", arg: 4, scope: !5265, file: !3, line: 83, type: !34)
!5273 = !DILocalVariable(name: "get_parent", arg: 5, scope: !5265, file: !3, line: 83, type: !548)
!5274 = !DILocalVariable(name: "info", scope: !5265, file: !3, line: 85, type: !234)
!5275 = !DILocalVariable(name: "kn", scope: !5265, file: !3, line: 86, type: !3877)
!5276 = !DILocalVariable(name: "inode", scope: !5265, file: !3, line: 87, type: !857)
!5277 = !DILocalVariable(name: "id", scope: !5265, file: !3, line: 88, type: !457)
!5278 = !DILocalVariable(name: "parent", scope: !5279, file: !3, line: 116, type: !3877)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 115, column: 18)
!5280 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 115, column: 6)
!5281 = !DILocation(line: 81, column: 65, scope: !5265)
!5282 = !DILocation(line: 82, column: 22, scope: !5265)
!5283 = !DILocation(line: 82, column: 31, scope: !5265)
!5284 = !DILocation(line: 83, column: 14, scope: !5265)
!5285 = !DILocation(line: 83, column: 28, scope: !5265)
!5286 = !DILocation(line: 85, column: 2, scope: !5265)
!5287 = !DILocation(line: 85, column: 28, scope: !5265)
!5288 = !DILocation(line: 85, column: 35, scope: !5265)
!5289 = !DILocation(line: 86, column: 2, scope: !5265)
!5290 = !DILocation(line: 86, column: 22, scope: !5265)
!5291 = !DILocation(line: 87, column: 2, scope: !5265)
!5292 = !DILocation(line: 87, column: 16, scope: !5265)
!5293 = !DILocation(line: 88, column: 2, scope: !5265)
!5294 = !DILocation(line: 88, column: 6, scope: !5265)
!5295 = !DILocation(line: 90, column: 6, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 90, column: 6)
!5297 = !DILocation(line: 90, column: 13, scope: !5296)
!5298 = !DILocation(line: 90, column: 6, scope: !5265)
!5299 = !DILocation(line: 91, column: 3, scope: !5296)
!5300 = !DILocation(line: 93, column: 10, scope: !5265)
!5301 = !DILocation(line: 93, column: 2, scope: !5265)
!5302 = !DILocation(line: 95, column: 16, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 93, column: 19)
!5304 = !DILocation(line: 95, column: 8, scope: !5303)
!5305 = !DILocation(line: 95, column: 6, scope: !5303)
!5306 = !DILocation(line: 96, column: 3, scope: !5303)
!5307 = !DILocation(line: 105, column: 14, scope: !5303)
!5308 = !DILocation(line: 105, column: 19, scope: !5303)
!5309 = !DILocation(line: 105, column: 23, scope: !5303)
!5310 = !DILocation(line: 105, column: 9, scope: !5303)
!5311 = !DILocation(line: 105, column: 27, scope: !5303)
!5312 = !DILocation(line: 105, column: 36, scope: !5303)
!5313 = !DILocation(line: 105, column: 41, scope: !5303)
!5314 = !DILocation(line: 105, column: 45, scope: !5303)
!5315 = !DILocation(line: 105, column: 34, scope: !5303)
!5316 = !DILocation(line: 105, column: 6, scope: !5303)
!5317 = !DILocation(line: 106, column: 3, scope: !5303)
!5318 = !DILocation(line: 108, column: 3, scope: !5303)
!5319 = !DILocation(line: 111, column: 38, scope: !5265)
!5320 = !DILocation(line: 111, column: 44, scope: !5265)
!5321 = !DILocation(line: 111, column: 50, scope: !5265)
!5322 = !DILocation(line: 111, column: 7, scope: !5265)
!5323 = !DILocation(line: 111, column: 5, scope: !5265)
!5324 = !DILocation(line: 112, column: 7, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 112, column: 6)
!5326 = !DILocation(line: 112, column: 6, scope: !5265)
!5327 = !DILocation(line: 113, column: 10, scope: !5325)
!5328 = !DILocation(line: 113, column: 3, scope: !5325)
!5329 = !DILocation(line: 115, column: 6, scope: !5280)
!5330 = !DILocation(line: 115, column: 6, scope: !5265)
!5331 = !DILocation(line: 116, column: 3, scope: !5279)
!5332 = !DILocation(line: 116, column: 23, scope: !5279)
!5333 = !DILocation(line: 118, column: 30, scope: !5279)
!5334 = !DILocation(line: 118, column: 12, scope: !5279)
!5335 = !DILocation(line: 118, column: 10, scope: !5279)
!5336 = !DILocation(line: 119, column: 14, scope: !5279)
!5337 = !DILocation(line: 119, column: 3, scope: !5279)
!5338 = !DILocation(line: 120, column: 8, scope: !5279)
!5339 = !DILocation(line: 120, column: 6, scope: !5279)
!5340 = !DILocation(line: 121, column: 8, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 121, column: 7)
!5342 = !DILocation(line: 121, column: 7, scope: !5279)
!5343 = !DILocation(line: 122, column: 11, scope: !5341)
!5344 = !DILocation(line: 122, column: 4, scope: !5341)
!5345 = !DILocation(line: 123, column: 2, scope: !5280)
!5346 = !DILocation(line: 123, column: 2, scope: !5279)
!5347 = !DILocation(line: 125, column: 27, scope: !5265)
!5348 = !DILocation(line: 125, column: 31, scope: !5265)
!5349 = !DILocation(line: 125, column: 10, scope: !5265)
!5350 = !DILocation(line: 125, column: 8, scope: !5265)
!5351 = !DILocation(line: 126, column: 13, scope: !5265)
!5352 = !DILocation(line: 126, column: 2, scope: !5265)
!5353 = !DILocation(line: 127, column: 7, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 127, column: 6)
!5355 = !DILocation(line: 127, column: 6, scope: !5265)
!5356 = !DILocation(line: 128, column: 10, scope: !5354)
!5357 = !DILocation(line: 128, column: 3, scope: !5354)
!5358 = !DILocation(line: 130, column: 24, scope: !5265)
!5359 = !DILocation(line: 130, column: 9, scope: !5265)
!5360 = !DILocation(line: 130, column: 2, scope: !5265)
!5361 = !DILocation(line: 131, column: 1, scope: !5265)
!5362 = !DISubprogram(name: "kernfs_find_and_get_node_by_id", scope: !209, file: !209, line: 462, type: !5363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!3877, !3873, !457}
!5365 = !DISubprogram(name: "kernfs_get_parent", scope: !209, file: !209, line: 401, type: !5366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{!3877, !3877}
!5368 = !DISubprogram(name: "kernfs_put", scope: !209, file: !209, line: 407, type: !5369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{null, !3877}
!5371 = !DISubprogram(name: "d_obtain_alias", scope: !819, file: !819, line: 241, type: !5182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5372 = distinct !DISubprogram(name: "__list_add", scope: !4554, file: !4554, line: 146, type: !5373, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5375)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{null, !112, !112, !112}
!5375 = !{!5376, !5377, !5378}
!5376 = !DILocalVariable(name: "new", arg: 1, scope: !5372, file: !4554, line: 146, type: !112)
!5377 = !DILocalVariable(name: "prev", arg: 2, scope: !5372, file: !4554, line: 147, type: !112)
!5378 = !DILocalVariable(name: "next", arg: 3, scope: !5372, file: !4554, line: 148, type: !112)
!5379 = !DILocation(line: 146, column: 49, scope: !5372)
!5380 = !DILocation(line: 147, column: 28, scope: !5372)
!5381 = !DILocation(line: 148, column: 28, scope: !5372)
!5382 = !DILocation(line: 150, column: 24, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5372, file: !4554, line: 150, column: 6)
!5384 = !DILocation(line: 150, column: 29, scope: !5383)
!5385 = !DILocation(line: 150, column: 35, scope: !5383)
!5386 = !DILocation(line: 150, column: 7, scope: !5383)
!5387 = !DILocation(line: 150, column: 6, scope: !5372)
!5388 = !DILocation(line: 151, column: 3, scope: !5383)
!5389 = !DILocation(line: 153, column: 15, scope: !5372)
!5390 = !DILocation(line: 153, column: 2, scope: !5372)
!5391 = !DILocation(line: 153, column: 8, scope: !5372)
!5392 = !DILocation(line: 153, column: 13, scope: !5372)
!5393 = !DILocation(line: 154, column: 14, scope: !5372)
!5394 = !DILocation(line: 154, column: 2, scope: !5372)
!5395 = !DILocation(line: 154, column: 7, scope: !5372)
!5396 = !DILocation(line: 154, column: 12, scope: !5372)
!5397 = !DILocation(line: 155, column: 14, scope: !5372)
!5398 = !DILocation(line: 155, column: 2, scope: !5372)
!5399 = !DILocation(line: 155, column: 7, scope: !5372)
!5400 = !DILocation(line: 155, column: 12, scope: !5372)
!5401 = !DILocation(line: 156, column: 2, scope: !5372)
!5402 = !DILocation(line: 156, column: 2, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5372, file: !4554, line: 156, column: 2)
!5404 = !DILocation(line: 156, column: 2, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5403, file: !4554, line: 156, column: 2)
!5406 = !DILocation(line: 156, column: 2, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5403, file: !4554, line: 156, column: 2)
!5408 = !DILocation(line: 157, column: 1, scope: !5372)
!5409 = distinct !DISubprogram(name: "__list_add_valid", scope: !4554, file: !4554, line: 128, type: !5410, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5412)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!548, !112, !112, !112}
!5412 = !{!5413, !5414, !5415}
!5413 = !DILocalVariable(name: "new", arg: 1, scope: !5409, file: !4554, line: 128, type: !112)
!5414 = !DILocalVariable(name: "prev", arg: 2, scope: !5409, file: !4554, line: 129, type: !112)
!5415 = !DILocalVariable(name: "next", arg: 3, scope: !5409, file: !4554, line: 130, type: !112)
!5416 = !DILocation(line: 128, column: 55, scope: !5409)
!5417 = !DILocation(line: 129, column: 23, scope: !5409)
!5418 = !DILocation(line: 130, column: 23, scope: !5409)
!5419 = !DILocation(line: 132, column: 2, scope: !5409)
!5420 = distinct !DISubprogram(name: "__list_del_entry", scope: !4554, file: !4554, line: 213, type: !4555, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5421)
!5421 = !{!5422}
!5422 = !DILocalVariable(name: "entry", arg: 1, scope: !5420, file: !4554, line: 213, type: !112)
!5423 = !DILocation(line: 213, column: 55, scope: !5420)
!5424 = !DILocation(line: 215, column: 30, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5420, file: !4554, line: 215, column: 6)
!5426 = !DILocation(line: 215, column: 7, scope: !5425)
!5427 = !DILocation(line: 215, column: 6, scope: !5420)
!5428 = !DILocation(line: 216, column: 3, scope: !5425)
!5429 = !DILocation(line: 218, column: 13, scope: !5420)
!5430 = !DILocation(line: 218, column: 20, scope: !5420)
!5431 = !DILocation(line: 218, column: 26, scope: !5420)
!5432 = !DILocation(line: 218, column: 33, scope: !5420)
!5433 = !DILocation(line: 218, column: 2, scope: !5420)
!5434 = !DILocation(line: 219, column: 1, scope: !5420)
!5435 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4554, file: !4554, line: 134, type: !5436, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5438)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!548, !112}
!5438 = !{!5439}
!5439 = !DILocalVariable(name: "entry", arg: 1, scope: !5435, file: !4554, line: 134, type: !112)
!5440 = !DILocation(line: 134, column: 61, scope: !5435)
!5441 = !DILocation(line: 136, column: 2, scope: !5435)
!5442 = distinct !DISubprogram(name: "__list_del", scope: !4554, file: !4554, line: 193, type: !4753, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5443)
!5443 = !{!5444, !5445}
!5444 = !DILocalVariable(name: "prev", arg: 1, scope: !5442, file: !4554, line: 193, type: !112)
!5445 = !DILocalVariable(name: "next", arg: 2, scope: !5442, file: !4554, line: 193, type: !112)
!5446 = !DILocation(line: 193, column: 50, scope: !5442)
!5447 = !DILocation(line: 193, column: 75, scope: !5442)
!5448 = !DILocation(line: 195, column: 15, scope: !5442)
!5449 = !DILocation(line: 195, column: 2, scope: !5442)
!5450 = !DILocation(line: 195, column: 8, scope: !5442)
!5451 = !DILocation(line: 195, column: 13, scope: !5442)
!5452 = !DILocation(line: 196, column: 2, scope: !5442)
!5453 = !DILocation(line: 196, column: 2, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5442, file: !4554, line: 196, column: 2)
!5455 = !DILocation(line: 196, column: 2, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5454, file: !4554, line: 196, column: 2)
!5457 = !DILocation(line: 196, column: 2, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5454, file: !4554, line: 196, column: 2)
!5459 = !DILocation(line: 197, column: 1, scope: !5442)
!5460 = !DILocation(line: 408, column: 2, scope: !4083)
!5461 = !DILocation(line: 408, column: 6, scope: !4083)
!5462 = !DILocation(line: 410, column: 13, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 410, column: 2)
!5464 = !DILocation(line: 410, column: 7, scope: !5463)
!5465 = !DILocation(line: 410, column: 18, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 410, column: 2)
!5467 = !DILocation(line: 410, column: 24, scope: !5466)
!5468 = !DILocation(line: 410, column: 2, scope: !5463)
!5469 = !DILocation(line: 411, column: 3, scope: !5466)
!5470 = !DILocation(line: 411, column: 3, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 411, column: 3)
!5472 = !DILocation(line: 410, column: 48, scope: !5466)
!5473 = !DILocation(line: 410, column: 2, scope: !5466)
!5474 = distinct !{!5474, !5468, !5475, !4380, !4329}
!5475 = !DILocation(line: 411, column: 3, scope: !5463)
!5476 = !DILocation(line: 412, column: 1, scope: !4083)
!5477 = !DISubprogram(name: "__mutex_init", scope: !343, file: !343, line: 121, type: !5478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{null, !5480, !28, !5481}
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
