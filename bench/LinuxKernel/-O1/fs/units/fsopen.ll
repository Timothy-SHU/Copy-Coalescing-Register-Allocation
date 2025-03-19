; ModuleID = 'fs/fsopen.c'
source_filename = "fs/fsopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.22, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.22 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.23, %struct.qspinlock }
%union.anon.23 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, ptr, [8 x ptr] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.20, i64, i64, %union.anon.21 }
%union.anon.20 = type { i64 }
%union.anon.21 = type { i64 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.fd = type { ptr, i32 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i64, i32 }
%union.anon = type { ptr }
%struct.filename = type { ptr, ptr, %struct.atomic_t, ptr, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.29, %struct.list_head, %struct.list_head, %union.anon.30 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.25, ptr }
%union.anon.25 = type { i64 }
%struct.lockref = type { %union.anon.27 }
%union.anon.27 = type { i64 }
%union.anon.29 = type { %struct.list_head }
%union.anon.30 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }

@fscontext_fops = hidden constant %struct.file_operations { ptr null, ptr null, ptr @fscontext_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @fscontext_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !6012
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6018
@.str.2 = private unnamed_addr constant [12 x i8] c"[fscontext]\00", align 1, !dbg !6023
@legacy_fs_context_ops = external dso_local constant %struct.fs_context_operations, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fscontext_read(ptr noundef %file, ptr noundef %_buf, i64 noundef %len, ptr noundef %pos) #0 align 16 !dbg !6035 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %_buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  %fc = alloca ptr, align 8
  %log = alloca ptr, align 8
  %logsize = alloca i32, align 4
  %ret = alloca i64, align 8
  %p = alloca ptr, align 8
  %need_free = alloca i8, align 1
  %index = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6037, metadata !DIExpression()), !dbg !6050
  store ptr %_buf, ptr %_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_buf.addr, metadata !6038, metadata !DIExpression()), !dbg !6051
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6039, metadata !DIExpression()), !dbg !6052
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6040, metadata !DIExpression()), !dbg !6053
  call void @llvm.lifetime.start.p0(i64 8, ptr %fc) #17, !dbg !6054
  call void @llvm.dbg.declare(metadata ptr %fc, metadata !6041, metadata !DIExpression()), !dbg !6055
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6056
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6057
  %1 = load ptr, ptr %private_data, align 8, !dbg !6057
  store ptr %1, ptr %fc, align 8, !dbg !6055
  call void @llvm.lifetime.start.p0(i64 8, ptr %log) #17, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %log, metadata !6042, metadata !DIExpression()), !dbg !6059
  %2 = load ptr, ptr %fc, align 8, !dbg !6060
  %log1 = getelementptr inbounds %struct.fs_context, ptr %2, i32 0, i32 9, !dbg !6061
  %log2 = getelementptr inbounds %struct.p_log, ptr %log1, i32 0, i32 1, !dbg !6062
  %3 = load ptr, ptr %log2, align 8, !dbg !6062
  store ptr %3, ptr %log, align 8, !dbg !6059
  call void @llvm.lifetime.start.p0(i64 4, ptr %logsize) #17, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %logsize, metadata !6043, metadata !DIExpression()), !dbg !6064
  store i32 8, ptr %logsize, align 4, !dbg !6064
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !6065
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6044, metadata !DIExpression()), !dbg !6066
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6045, metadata !DIExpression()), !dbg !6068
  call void @llvm.lifetime.start.p0(i64 1, ptr %need_free) #17, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %need_free, metadata !6046, metadata !DIExpression()), !dbg !6070
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6071
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6047, metadata !DIExpression()), !dbg !6072
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #17, !dbg !6071
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6048, metadata !DIExpression()), !dbg !6073
  %4 = load ptr, ptr %fc, align 8, !dbg !6074
  %uapi_mutex = getelementptr inbounds %struct.fs_context, ptr %4, i32 0, i32 1, !dbg !6075
  %call = call i32 @mutex_lock_interruptible(ptr noundef %uapi_mutex) #18, !dbg !6076
  %conv = sext i32 %call to i64, !dbg !6076
  store i64 %conv, ptr %ret, align 8, !dbg !6077
  %5 = load i64, ptr %ret, align 8, !dbg !6078
  %cmp = icmp slt i64 %5, 0, !dbg !6080
  br i1 %cmp, label %if.then, label %if.end, !dbg !6081

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %ret, align 8, !dbg !6082
  store i64 %6, ptr %retval, align 8, !dbg !6083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6083

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %log, align 8, !dbg !6084
  %head = getelementptr inbounds %struct.fc_log, ptr %7, i32 0, i32 1, !dbg !6086
  %8 = load i8, ptr %head, align 4, !dbg !6086
  %conv4 = zext i8 %8 to i32, !dbg !6084
  %9 = load ptr, ptr %log, align 8, !dbg !6087
  %tail = getelementptr inbounds %struct.fc_log, ptr %9, i32 0, i32 2, !dbg !6088
  %10 = load i8, ptr %tail, align 1, !dbg !6088
  %conv5 = zext i8 %10 to i32, !dbg !6087
  %cmp6 = icmp eq i32 %conv4, %conv5, !dbg !6089
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !6090

if.then8:                                         ; preds = %if.end
  %11 = load ptr, ptr %fc, align 8, !dbg !6091
  %uapi_mutex9 = getelementptr inbounds %struct.fs_context, ptr %11, i32 0, i32 1, !dbg !6093
  call void @mutex_unlock(ptr noundef %uapi_mutex9) #18, !dbg !6094
  store i64 -61, ptr %retval, align 8, !dbg !6095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6095

if.end10:                                         ; preds = %if.end
  %12 = load ptr, ptr %log, align 8, !dbg !6096
  %tail11 = getelementptr inbounds %struct.fc_log, ptr %12, i32 0, i32 2, !dbg !6097
  %13 = load i8, ptr %tail11, align 1, !dbg !6097
  %conv12 = zext i8 %13 to i32, !dbg !6096
  %14 = load i32, ptr %logsize, align 4, !dbg !6098
  %sub = sub i32 %14, 1, !dbg !6099
  %and = and i32 %conv12, %sub, !dbg !6100
  store i32 %and, ptr %index, align 4, !dbg !6101
  %15 = load ptr, ptr %log, align 8, !dbg !6102
  %buffer = getelementptr inbounds %struct.fc_log, ptr %15, i32 0, i32 5, !dbg !6103
  %16 = load i32, ptr %index, align 4, !dbg !6104
  %idxprom = sext i32 %16 to i64, !dbg !6102
  %arrayidx = getelementptr [8 x ptr], ptr %buffer, i64 0, i64 %idxprom, !dbg !6102
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !6102
  store ptr %17, ptr %p, align 8, !dbg !6105
  %18 = load ptr, ptr %log, align 8, !dbg !6106
  %need_free13 = getelementptr inbounds %struct.fc_log, ptr %18, i32 0, i32 3, !dbg !6107
  %19 = load i8, ptr %need_free13, align 2, !dbg !6107
  %conv14 = zext i8 %19 to i32, !dbg !6106
  %20 = load i32, ptr %index, align 4, !dbg !6108
  %shl = shl i32 1, %20, !dbg !6109
  %and15 = and i32 %conv14, %shl, !dbg !6110
  %tobool = icmp ne i32 %and15, 0, !dbg !6106
  %frombool = zext i1 %tobool to i8, !dbg !6111
  store i8 %frombool, ptr %need_free, align 1, !dbg !6111
  %21 = load ptr, ptr %log, align 8, !dbg !6112
  %buffer16 = getelementptr inbounds %struct.fc_log, ptr %21, i32 0, i32 5, !dbg !6113
  %22 = load i32, ptr %index, align 4, !dbg !6114
  %idxprom17 = sext i32 %22 to i64, !dbg !6112
  %arrayidx18 = getelementptr [8 x ptr], ptr %buffer16, i64 0, i64 %idxprom17, !dbg !6112
  store ptr null, ptr %arrayidx18, align 8, !dbg !6115
  %23 = load i32, ptr %index, align 4, !dbg !6116
  %shl19 = shl i32 1, %23, !dbg !6117
  %not = xor i32 %shl19, -1, !dbg !6118
  %24 = load ptr, ptr %log, align 8, !dbg !6119
  %need_free20 = getelementptr inbounds %struct.fc_log, ptr %24, i32 0, i32 3, !dbg !6120
  %25 = load i8, ptr %need_free20, align 2, !dbg !6121
  %conv21 = zext i8 %25 to i32, !dbg !6121
  %and22 = and i32 %conv21, %not, !dbg !6121
  %conv23 = trunc i32 %and22 to i8, !dbg !6121
  store i8 %conv23, ptr %need_free20, align 2, !dbg !6121
  %26 = load ptr, ptr %log, align 8, !dbg !6122
  %tail24 = getelementptr inbounds %struct.fc_log, ptr %26, i32 0, i32 2, !dbg !6123
  %27 = load i8, ptr %tail24, align 1, !dbg !6124
  %inc = add i8 %27, 1, !dbg !6124
  store i8 %inc, ptr %tail24, align 1, !dbg !6124
  %28 = load ptr, ptr %fc, align 8, !dbg !6125
  %uapi_mutex25 = getelementptr inbounds %struct.fs_context, ptr %28, i32 0, i32 1, !dbg !6126
  call void @mutex_unlock(ptr noundef %uapi_mutex25) #18, !dbg !6127
  store i64 -90, ptr %ret, align 8, !dbg !6128
  %29 = load ptr, ptr %p, align 8, !dbg !6129
  %call26 = call i64 @strlen(ptr noundef %29) #18, !dbg !6130
  %conv27 = trunc i64 %call26 to i32, !dbg !6130
  store i32 %conv27, ptr %n, align 4, !dbg !6131
  %30 = load i32, ptr %n, align 4, !dbg !6132
  %conv28 = sext i32 %30 to i64, !dbg !6132
  %31 = load i64, ptr %len.addr, align 8, !dbg !6134
  %cmp29 = icmp ugt i64 %conv28, %31, !dbg !6135
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !6136

if.then31:                                        ; preds = %if.end10
  br label %err_free, !dbg !6137

if.end32:                                         ; preds = %if.end10
  store i64 -14, ptr %ret, align 8, !dbg !6138
  %32 = load ptr, ptr %_buf.addr, align 8, !dbg !6139
  %33 = load ptr, ptr %p, align 8, !dbg !6141
  %34 = load i32, ptr %n, align 4, !dbg !6142
  %conv33 = sext i32 %34 to i64, !dbg !6142
  %call34 = call i64 @copy_to_user(ptr noundef %32, ptr noundef %33, i64 noundef %conv33) #18, !dbg !6143
  %cmp35 = icmp ne i64 %call34, 0, !dbg !6144
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !6145

if.then37:                                        ; preds = %if.end32
  br label %err_free, !dbg !6146

if.end38:                                         ; preds = %if.end32
  %35 = load i32, ptr %n, align 4, !dbg !6147
  %conv39 = sext i32 %35 to i64, !dbg !6147
  store i64 %conv39, ptr %ret, align 8, !dbg !6148
  br label %err_free, !dbg !6149

err_free:                                         ; preds = %if.end38, %if.then37, %if.then31
  call void @llvm.dbg.label(metadata !6049), !dbg !6150
  %36 = load i8, ptr %need_free, align 1, !dbg !6151, !range !6153, !noundef !774
  %tobool40 = trunc i8 %36 to i1, !dbg !6151
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !6154

if.then41:                                        ; preds = %err_free
  %37 = load ptr, ptr %p, align 8, !dbg !6155
  call void @kfree(ptr noundef %37) #18, !dbg !6156
  br label %if.end42, !dbg !6156

if.end42:                                         ; preds = %if.then41, %err_free
  %38 = load i64, ptr %ret, align 8, !dbg !6157
  store i64 %38, ptr %retval, align 8, !dbg !6158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6158

cleanup:                                          ; preds = %if.end42, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #17, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 1, ptr %need_free) #17, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 4, ptr %logsize) #17, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 8, ptr %log) #17, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 8, ptr %fc) #17, !dbg !6159
  %39 = load i64, ptr %retval, align 8, !dbg !6159
  ret i64 %39, !dbg !6159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fscontext_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6160 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %fc = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6162, metadata !DIExpression()), !dbg !6165
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6163, metadata !DIExpression()), !dbg !6166
  call void @llvm.lifetime.start.p0(i64 8, ptr %fc) #17, !dbg !6167
  call void @llvm.dbg.declare(metadata ptr %fc, metadata !6164, metadata !DIExpression()), !dbg !6168
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6169
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6170
  %1 = load ptr, ptr %private_data, align 8, !dbg !6170
  store ptr %1, ptr %fc, align 8, !dbg !6168
  %2 = load ptr, ptr %fc, align 8, !dbg !6171
  %tobool = icmp ne ptr %2, null, !dbg !6171
  br i1 %tobool, label %if.then, label %if.end, !dbg !6173

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6174
  %private_data1 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15, !dbg !6176
  store ptr null, ptr %private_data1, align 8, !dbg !6177
  %4 = load ptr, ptr %fc, align 8, !dbg !6178
  call void @put_fs_context(ptr noundef %4) #18, !dbg !6179
  br label %if.end, !dbg !6180

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %fc) #17, !dbg !6181
  ret i32 0, !dbg !6182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_fsopen(ptr noundef %regs) #0 align 16 !dbg !6183 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6189, metadata !DIExpression()), !dbg !6190
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6190
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6190
  %1 = load i64, ptr %di, align 8, !dbg !6190
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6190
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6190
  %3 = load i64, ptr %si, align 8, !dbg !6190
  %call = call i64 @__se_sys_fsopen(i64 noundef %1, i64 noundef %3) #18, !dbg !6190
  ret i64 %call, !dbg !6190
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_fsopen(i64 noundef %_fs_name, i64 noundef %flags) #0 align 16 !dbg !6191 {
entry:
  %_fs_name.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %_fs_name, ptr %_fs_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_fs_name.addr, metadata !6195, metadata !DIExpression()), !dbg !6198
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6196, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6197, metadata !DIExpression()), !dbg !6198
  %0 = load i64, ptr %_fs_name.addr, align 8, !dbg !6198
  %1 = inttoptr i64 %0 to ptr, !dbg !6198
  %2 = load i64, ptr %flags.addr, align 8, !dbg !6198
  %conv = trunc i64 %2 to i32, !dbg !6198
  %call = call i64 @__do_sys_fsopen(ptr noundef %1, i32 noundef %conv) #18, !dbg !6198
  store i64 %call, ptr %ret, align 8, !dbg !6198
  br label %do.body, !dbg !6198

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6199

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6199

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !6198
  ret i64 %3, !dbg !6198
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_fsopen(ptr noundef %regs) #0 align 16 !dbg !6201 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6204
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6204
  %1 = load i64, ptr %bx, align 8, !dbg !6204
  %conv = trunc i64 %1 to i32, !dbg !6204
  %conv1 = zext i32 %conv to i64, !dbg !6204
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6204
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6204
  %3 = load i64, ptr %cx, align 8, !dbg !6204
  %conv2 = trunc i64 %3 to i32, !dbg !6204
  %conv3 = zext i32 %conv2 to i64, !dbg !6204
  %call = call i64 @__se_sys_fsopen(i64 noundef %conv1, i64 noundef %conv3) #18, !dbg !6204
  ret i64 %call, !dbg !6204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_fspick(ptr noundef %regs) #0 align 16 !dbg !6205 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6207, metadata !DIExpression()), !dbg !6208
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6208
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6208
  %1 = load i64, ptr %di, align 8, !dbg !6208
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6208
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6208
  %3 = load i64, ptr %si, align 8, !dbg !6208
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6208
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6208
  %5 = load i64, ptr %dx, align 8, !dbg !6208
  %call = call i64 @__se_sys_fspick(i64 noundef %1, i64 noundef %3, i64 noundef %5) #18, !dbg !6208
  ret i64 %call, !dbg !6208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_fspick(i64 noundef %dfd, i64 noundef %path, i64 noundef %flags) #0 align 16 !dbg !6209 {
entry:
  %dfd.addr = alloca i64, align 8
  %path.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %dfd, ptr %dfd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dfd.addr, metadata !6213, metadata !DIExpression()), !dbg !6217
  store i64 %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6214, metadata !DIExpression()), !dbg !6217
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6215, metadata !DIExpression()), !dbg !6217
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !6217
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6216, metadata !DIExpression()), !dbg !6217
  %0 = load i64, ptr %dfd.addr, align 8, !dbg !6217
  %conv = trunc i64 %0 to i32, !dbg !6217
  %1 = load i64, ptr %path.addr, align 8, !dbg !6217
  %2 = inttoptr i64 %1 to ptr, !dbg !6217
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6217
  %conv1 = trunc i64 %3 to i32, !dbg !6217
  %call = call i64 @__do_sys_fspick(i32 noundef %conv, ptr noundef %2, i32 noundef %conv1) #18, !dbg !6217
  store i64 %call, ptr %ret, align 8, !dbg !6217
  br label %do.body, !dbg !6217

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6218

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6218

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !6217
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !6217
  ret i64 %4, !dbg !6217
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_fspick(ptr noundef %regs) #0 align 16 !dbg !6220 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6222, metadata !DIExpression()), !dbg !6223
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6223
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6223
  %1 = load i64, ptr %bx, align 8, !dbg !6223
  %conv = trunc i64 %1 to i32, !dbg !6223
  %conv1 = zext i32 %conv to i64, !dbg !6223
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6223
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6223
  %3 = load i64, ptr %cx, align 8, !dbg !6223
  %conv2 = trunc i64 %3 to i32, !dbg !6223
  %conv3 = zext i32 %conv2 to i64, !dbg !6223
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6223
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6223
  %5 = load i64, ptr %dx, align 8, !dbg !6223
  %conv4 = trunc i64 %5 to i32, !dbg !6223
  %conv5 = zext i32 %conv4 to i64, !dbg !6223
  %call = call i64 @__se_sys_fspick(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #18, !dbg !6223
  ret i64 %call, !dbg !6223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_fsconfig(ptr noundef %regs) #0 align 16 !dbg !6224 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6226, metadata !DIExpression()), !dbg !6227
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6227
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6227
  %1 = load i64, ptr %di, align 8, !dbg !6227
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6227
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6227
  %3 = load i64, ptr %si, align 8, !dbg !6227
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6227
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6227
  %5 = load i64, ptr %dx, align 8, !dbg !6227
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6227
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !6227
  %7 = load i64, ptr %r10, align 8, !dbg !6227
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6227
  %r8 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 9, !dbg !6227
  %9 = load i64, ptr %r8, align 8, !dbg !6227
  %call = call i64 @__se_sys_fsconfig(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9) #18, !dbg !6227
  ret i64 %call, !dbg !6227
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_fsconfig(i64 noundef %fd, i64 noundef %cmd, i64 noundef %_key, i64 noundef %_value, i64 noundef %aux) #0 align 16 !dbg !6228 {
entry:
  %fd.addr = alloca i64, align 8
  %cmd.addr = alloca i64, align 8
  %_key.addr = alloca i64, align 8
  %_value.addr = alloca i64, align 8
  %aux.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6232, metadata !DIExpression()), !dbg !6238
  store i64 %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6233, metadata !DIExpression()), !dbg !6238
  store i64 %_key, ptr %_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_key.addr, metadata !6234, metadata !DIExpression()), !dbg !6238
  store i64 %_value, ptr %_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_value.addr, metadata !6235, metadata !DIExpression()), !dbg !6238
  store i64 %aux, ptr %aux.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aux.addr, metadata !6236, metadata !DIExpression()), !dbg !6238
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !6238
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6237, metadata !DIExpression()), !dbg !6238
  %0 = load i64, ptr %fd.addr, align 8, !dbg !6238
  %conv = trunc i64 %0 to i32, !dbg !6238
  %1 = load i64, ptr %cmd.addr, align 8, !dbg !6238
  %conv1 = trunc i64 %1 to i32, !dbg !6238
  %2 = load i64, ptr %_key.addr, align 8, !dbg !6238
  %3 = inttoptr i64 %2 to ptr, !dbg !6238
  %4 = load i64, ptr %_value.addr, align 8, !dbg !6238
  %5 = inttoptr i64 %4 to ptr, !dbg !6238
  %6 = load i64, ptr %aux.addr, align 8, !dbg !6238
  %conv2 = trunc i64 %6 to i32, !dbg !6238
  %call = call i64 @__do_sys_fsconfig(i32 noundef %conv, i32 noundef %conv1, ptr noundef %3, ptr noundef %5, i32 noundef %conv2) #18, !dbg !6238
  store i64 %call, ptr %ret, align 8, !dbg !6238
  br label %do.body, !dbg !6238

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6239

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6239

do.end:                                           ; preds = %do.cond
  %7 = load i64, ptr %ret, align 8, !dbg !6238
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !6238
  ret i64 %7, !dbg !6238
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_fsconfig(ptr noundef %regs) #0 align 16 !dbg !6241 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6243, metadata !DIExpression()), !dbg !6244
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6244
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6244
  %1 = load i64, ptr %bx, align 8, !dbg !6244
  %conv = trunc i64 %1 to i32, !dbg !6244
  %conv1 = zext i32 %conv to i64, !dbg !6244
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6244
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6244
  %3 = load i64, ptr %cx, align 8, !dbg !6244
  %conv2 = trunc i64 %3 to i32, !dbg !6244
  %conv3 = zext i32 %conv2 to i64, !dbg !6244
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6244
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6244
  %5 = load i64, ptr %dx, align 8, !dbg !6244
  %conv4 = trunc i64 %5 to i32, !dbg !6244
  %conv5 = zext i32 %conv4 to i64, !dbg !6244
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6244
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !6244
  %7 = load i64, ptr %si, align 8, !dbg !6244
  %conv6 = trunc i64 %7 to i32, !dbg !6244
  %conv7 = zext i32 %conv6 to i64, !dbg !6244
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6244
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !6244
  %9 = load i64, ptr %di, align 8, !dbg !6244
  %conv8 = trunc i64 %9 to i32, !dbg !6244
  %conv9 = zext i32 %conv8 to i64, !dbg !6244
  %call = call i64 @__se_sys_fsconfig(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9) #18, !dbg !6244
  ret i64 %call, !dbg !6244
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6245 dso_local i32 @mutex_lock_interruptible(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6249 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6252 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !6256 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6261, metadata !DIExpression()), !dbg !6264
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6262, metadata !DIExpression()), !dbg !6265
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6263, metadata !DIExpression()), !dbg !6266
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6267
  %1 = load i64, ptr %n.addr, align 8, !dbg !6269
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #18, !dbg !6270
  br i1 %call, label %if.then, label %if.end, !dbg !6271

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6272
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6273
  %4 = load i64, ptr %n.addr, align 8, !dbg !6274
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !6275
  store i64 %call1, ptr %n.addr, align 8, !dbg !6276
  br label %if.end, !dbg !6277

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6278
  ret i64 %5, !dbg !6279
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6280 dso_local void @kfree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !6283 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6287, metadata !DIExpression()), !dbg !6297
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6288, metadata !DIExpression()), !dbg !6298
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6289, metadata !DIExpression()), !dbg !6299
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #17, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6290, metadata !DIExpression()), !dbg !6301
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6302
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6303
  %conv = trunc i64 %1 to i32, !dbg !6303
  store i32 %conv, ptr %sz, align 4, !dbg !6301
  %2 = load i32, ptr %sz, align 4, !dbg !6304
  %cmp = icmp sge i32 %2, 0, !dbg !6304
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6304

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6304
  %conv2 = sext i32 %3 to i64, !dbg !6304
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6304
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6304
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6306
  %lnot = xor i1 %5, true, !dbg !6304
  %lnot5 = xor i1 %lnot, true, !dbg !6304
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6304
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6304
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6304
  %tobool = icmp ne i64 %expval, 0, !dbg !6304
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6307

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6308
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6311
  br i1 %7, label %if.else, label %if.then7, !dbg !6312

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6313
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6314
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !6315
  br label %if.end11, !dbg !6315

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6316, !range !6153, !noundef !774
  %tobool8 = trunc i8 %10 to i1, !dbg !6316
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6318

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !6319, !srcloc !6320
  br label %if.end, !dbg !6319

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !6321, !srcloc !6322
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6323

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6291, metadata !DIExpression()), !dbg !6324
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6324
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6324
  %lnot15 = xor i1 %cmp13, true, !dbg !6324
  %lnot17 = xor i1 %lnot15, true, !dbg !6324
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6324
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6324
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6325
  %tobool19 = icmp ne i32 %12, 0, !dbg !6325
  %lnot20 = xor i1 %tobool19, true, !dbg !6325
  %lnot22 = xor i1 %lnot20, true, !dbg !6325
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6325
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6325
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6325
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6325
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6324

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6325

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6326
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6294, metadata !DIExpression()), !dbg !6326
  store i32 2307, ptr %__flags, align 4, !dbg !6326
  br label %do.body28, !dbg !6326

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6327

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6327

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6326

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6329
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #17, !dbg !6329, !srcloc !6331
  br label %do.cond30, !dbg !6329

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6329

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6326

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6332

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6332

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6325
  br label %do.cond35, !dbg !6326

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6326

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6326

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6324
  %tobool38 = icmp ne i32 %14, 0, !dbg !6324
  %lnot39 = xor i1 %tobool38, true, !dbg !6324
  %lnot41 = xor i1 %lnot39, true, !dbg !6324
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6324
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6324
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6324
  store i64 %expval44, ptr %tmp, align 8, !dbg !6325
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6334
  %15 = load i64, ptr %tmp, align 8, !dbg !6324
  %tobool45 = icmp ne i64 %15, 0, !dbg !6334
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6335

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6336

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6337
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6338
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6339, !range !6153, !noundef !774
  %tobool48 = trunc i8 %18 to i1, !dbg !6339
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !6340
  store i1 true, ptr %retval, align 1, !dbg !6341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6341

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #17, !dbg !6342
  %19 = load i1, ptr %retval, align 1, !dbg !6342
  ret i1 %19, !dbg !6342
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6343 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #7 align 16 !dbg !6344 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6348, metadata !DIExpression()), !dbg !6350
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6349, metadata !DIExpression()), !dbg !6351
  %0 = load i32, ptr %size.addr, align 4, !dbg !6352
  %1 = load i64, ptr %count.addr, align 8, !dbg !6354
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !6355
  ret void, !dbg !6356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6357 dso_local void @__bad_copy_from() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6358 dso_local void @__bad_copy_to() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #7 align 16 !dbg !6359 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6363, metadata !DIExpression()), !dbg !6366
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6364, metadata !DIExpression()), !dbg !6367
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6365, metadata !DIExpression()), !dbg !6368
  ret void, !dbg !6369
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6370 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6371 dso_local void @put_fs_context(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_fsopen(ptr noundef %_fs_name, i32 noundef %flags) #7 align 16 !dbg !6372 {
entry:
  %retval = alloca i64, align 8
  %_fs_name.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %fs_type = alloca ptr, align 8
  %fc = alloca ptr, align 8
  %fs_name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_fs_name, ptr %_fs_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_fs_name.addr, metadata !6376, metadata !DIExpression()), !dbg !6383
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6377, metadata !DIExpression()), !dbg !6383
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs_type) #17, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %fs_type, metadata !6378, metadata !DIExpression()), !dbg !6385
  call void @llvm.lifetime.start.p0(i64 8, ptr %fc) #17, !dbg !6386
  call void @llvm.dbg.declare(metadata ptr %fc, metadata !6379, metadata !DIExpression()), !dbg !6387
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs_name) #17, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %fs_name, metadata !6380, metadata !DIExpression()), !dbg !6389
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6390
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6381, metadata !DIExpression()), !dbg !6391
  %call = call zeroext i1 @may_mount() #18, !dbg !6392
  br i1 %call, label %if.end, label %if.then, !dbg !6394

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6395

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6396
  %and = and i32 %0, -2, !dbg !6398
  %tobool = icmp ne i32 %and, 0, !dbg !6398
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6399

if.then1:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6400

if.end2:                                          ; preds = %if.end
  %1 = load ptr, ptr %_fs_name.addr, align 8, !dbg !6401
  %call3 = call ptr @strndup_user(ptr noundef %1, i64 noundef 4096) #18, !dbg !6402
  store ptr %call3, ptr %fs_name, align 8, !dbg !6403
  %2 = load ptr, ptr %fs_name, align 8, !dbg !6404
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %2) #18, !dbg !6406
  br i1 %call4, label %if.then5, label %if.end7, !dbg !6407

if.then5:                                         ; preds = %if.end2
  %3 = load ptr, ptr %fs_name, align 8, !dbg !6408
  %call6 = call i64 @PTR_ERR(ptr noundef %3) #18, !dbg !6409
  store i64 %call6, ptr %retval, align 8, !dbg !6410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6410

if.end7:                                          ; preds = %if.end2
  %4 = load ptr, ptr %fs_name, align 8, !dbg !6411
  %call8 = call ptr @get_fs_type(ptr noundef %4) #18, !dbg !6412
  store ptr %call8, ptr %fs_type, align 8, !dbg !6413
  %5 = load ptr, ptr %fs_name, align 8, !dbg !6414
  call void @kfree(ptr noundef %5) #18, !dbg !6415
  %6 = load ptr, ptr %fs_type, align 8, !dbg !6416
  %tobool9 = icmp ne ptr %6, null, !dbg !6416
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6418

if.then10:                                        ; preds = %if.end7
  store i64 -19, ptr %retval, align 8, !dbg !6419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6419

if.end11:                                         ; preds = %if.end7
  %7 = load ptr, ptr %fs_type, align 8, !dbg !6420
  %call12 = call ptr @fs_context_for_mount(ptr noundef %7, i32 noundef 0) #18, !dbg !6421
  store ptr %call12, ptr %fc, align 8, !dbg !6422
  %8 = load ptr, ptr %fs_type, align 8, !dbg !6423
  call void @put_filesystem(ptr noundef %8) #18, !dbg !6424
  %9 = load ptr, ptr %fc, align 8, !dbg !6425
  %call13 = call zeroext i1 @IS_ERR(ptr noundef %9) #18, !dbg !6427
  br i1 %call13, label %if.then14, label %if.end16, !dbg !6428

if.then14:                                        ; preds = %if.end11
  %10 = load ptr, ptr %fc, align 8, !dbg !6429
  %call15 = call i64 @PTR_ERR(ptr noundef %10) #18, !dbg !6430
  store i64 %call15, ptr %retval, align 8, !dbg !6431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6431

if.end16:                                         ; preds = %if.end11
  %11 = load ptr, ptr %fc, align 8, !dbg !6432
  %phase = getelementptr inbounds %struct.fs_context, ptr %11, i32 0, i32 16, !dbg !6433
  %bf.load = load i32, ptr %phase, align 4, !dbg !6434
  %bf.clear = and i32 %bf.load, -65281, !dbg !6434
  %bf.set = or i32 %bf.clear, 0, !dbg !6434
  store i32 %bf.set, ptr %phase, align 4, !dbg !6434
  %12 = load ptr, ptr %fc, align 8, !dbg !6435
  %call17 = call i32 @fscontext_alloc_log(ptr noundef %12) #18, !dbg !6436
  store i32 %call17, ptr %ret, align 4, !dbg !6437
  %13 = load i32, ptr %ret, align 4, !dbg !6438
  %cmp = icmp slt i32 %13, 0, !dbg !6440
  br i1 %cmp, label %if.then18, label %if.end19, !dbg !6441

if.then18:                                        ; preds = %if.end16
  br label %err_fc, !dbg !6442

if.end19:                                         ; preds = %if.end16
  %14 = load ptr, ptr %fc, align 8, !dbg !6443
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6444
  %and20 = and i32 %15, 1, !dbg !6445
  %tobool21 = icmp ne i32 %and20, 0, !dbg !6444
  %16 = zext i1 %tobool21 to i64, !dbg !6444
  %cond = select i1 %tobool21, i32 524288, i32 0, !dbg !6444
  %call22 = call i32 @fscontext_create_fd(ptr noundef %14, i32 noundef %cond) #18, !dbg !6446
  %conv = sext i32 %call22 to i64, !dbg !6446
  store i64 %conv, ptr %retval, align 8, !dbg !6447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6447

err_fc:                                           ; preds = %if.then18
  call void @llvm.dbg.label(metadata !6382), !dbg !6448
  %17 = load ptr, ptr %fc, align 8, !dbg !6449
  call void @put_fs_context(ptr noundef %17) #18, !dbg !6450
  %18 = load i32, ptr %ret, align 4, !dbg !6451
  %conv23 = sext i32 %18 to i64, !dbg !6451
  store i64 %conv23, ptr %retval, align 8, !dbg !6452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6452

cleanup:                                          ; preds = %err_fc, %if.end19, %if.then14, %if.then10, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs_name) #17, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %fc) #17, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs_type) #17, !dbg !6453
  %19 = load i64, ptr %retval, align 8, !dbg !6453
  ret i64 %19, !dbg !6453
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6454 dso_local zeroext i1 @may_mount() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6456 dso_local ptr @strndup_user(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !6459 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6464, metadata !DIExpression()), !dbg !6465
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6466
  %1 = ptrtoint ptr %0 to i64, !dbg !6466
  %2 = inttoptr i64 %1 to ptr, !dbg !6466
  %3 = ptrtoint ptr %2 to i64, !dbg !6466
  %cmp = icmp uge i64 %3, -4095, !dbg !6466
  %lnot = xor i1 %cmp, true, !dbg !6466
  %lnot1 = xor i1 %lnot, true, !dbg !6466
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6466
  %conv = sext i32 %lnot.ext to i64, !dbg !6466
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6466
  %tobool = icmp ne i64 %expval, 0, !dbg !6466
  ret i1 %tobool, !dbg !6467
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #7 align 16 !dbg !6468 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6472, metadata !DIExpression()), !dbg !6473
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6474
  %1 = ptrtoint ptr %0 to i64, !dbg !6475
  ret i64 %1, !dbg !6476
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6477 dso_local ptr @get_fs_type(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6480 dso_local ptr @fs_context_for_mount(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6483 dso_local void @put_filesystem(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fscontext_alloc_log(ptr noundef %fc) #0 align 16 !dbg !6486 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !6488, metadata !DIExpression()), !dbg !6489
  %call = call noalias ptr @kzalloc(i64 noundef 80, i32 noundef 3264) #19, !dbg !6490
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !6491
  %log = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, !dbg !6492
  %log1 = getelementptr inbounds %struct.p_log, ptr %log, i32 0, i32 1, !dbg !6493
  store ptr %call, ptr %log1, align 8, !dbg !6494
  %1 = load ptr, ptr %fc.addr, align 8, !dbg !6495
  %log2 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, !dbg !6497
  %log3 = getelementptr inbounds %struct.p_log, ptr %log2, i32 0, i32 1, !dbg !6498
  %2 = load ptr, ptr %log3, align 8, !dbg !6498
  %tobool = icmp ne ptr %2, null, !dbg !6495
  br i1 %tobool, label %if.end, label %if.then, !dbg !6499

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6500
  br label %return, !dbg !6500

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fc.addr, align 8, !dbg !6501
  %log4 = getelementptr inbounds %struct.fs_context, ptr %3, i32 0, i32 9, !dbg !6502
  %log5 = getelementptr inbounds %struct.p_log, ptr %log4, i32 0, i32 1, !dbg !6503
  %4 = load ptr, ptr %log5, align 8, !dbg !6503
  %usage = getelementptr inbounds %struct.fc_log, ptr %4, i32 0, i32 0, !dbg !6504
  call void @refcount_set(ptr noundef %usage, i32 noundef 1) #18, !dbg !6505
  %5 = load ptr, ptr %fc.addr, align 8, !dbg !6506
  %fs_type = getelementptr inbounds %struct.fs_context, ptr %5, i32 0, i32 2, !dbg !6507
  %6 = load ptr, ptr %fs_type, align 8, !dbg !6507
  %owner = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 6, !dbg !6508
  %7 = load ptr, ptr %owner, align 8, !dbg !6508
  %8 = load ptr, ptr %fc.addr, align 8, !dbg !6509
  %log6 = getelementptr inbounds %struct.fs_context, ptr %8, i32 0, i32 9, !dbg !6510
  %log7 = getelementptr inbounds %struct.p_log, ptr %log6, i32 0, i32 1, !dbg !6511
  %9 = load ptr, ptr %log7, align 8, !dbg !6511
  %owner8 = getelementptr inbounds %struct.fc_log, ptr %9, i32 0, i32 4, !dbg !6512
  store ptr %7, ptr %owner8, align 8, !dbg !6513
  store i32 0, ptr %retval, align 4, !dbg !6514
  br label %return, !dbg !6514

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !6515
  ret i32 %10, !dbg !6515
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fscontext_create_fd(ptr noundef %fc, i32 noundef %o_flags) #0 align 16 !dbg !6516 {
entry:
  %fc.addr = alloca ptr, align 8
  %o_flags.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !6520, metadata !DIExpression()), !dbg !6523
  store i32 %o_flags, ptr %o_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %o_flags.addr, metadata !6521, metadata !DIExpression()), !dbg !6524
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #17, !dbg !6525
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !6522, metadata !DIExpression()), !dbg !6526
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !6527
  %1 = load i32, ptr %o_flags.addr, align 4, !dbg !6528
  %or = or i32 2, %1, !dbg !6529
  %call = call i32 @anon_inode_getfd(ptr noundef @.str.2, ptr noundef @fscontext_fops, ptr noundef %0, i32 noundef %or) #18, !dbg !6530
  store i32 %call, ptr %fd, align 4, !dbg !6531
  %2 = load i32, ptr %fd, align 4, !dbg !6532
  %cmp = icmp slt i32 %2, 0, !dbg !6534
  br i1 %cmp, label %if.then, label %if.end, !dbg !6535

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %fc.addr, align 8, !dbg !6536
  call void @put_fs_context(ptr noundef %3) #18, !dbg !6537
  br label %if.end, !dbg !6537

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %fd, align 4, !dbg !6538
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #17, !dbg !6539
  ret i32 %4, !dbg !6540
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6541 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6545, metadata !DIExpression()), !dbg !6547
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6546, metadata !DIExpression()), !dbg !6548
  %0 = load i64, ptr %size.addr, align 8, !dbg !6549
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6550
  %or = or i32 %1, 256, !dbg !6551
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !6552
  ret ptr %call, !dbg !6553
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #7 align 16 !dbg !6554 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6559, metadata !DIExpression()), !dbg !6561
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6560, metadata !DIExpression()), !dbg !6562
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6563
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6564
  %1 = load i32, ptr %n.addr, align 4, !dbg !6565
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #18, !dbg !6566
  ret void, !dbg !6567
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6568 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6570, metadata !DIExpression()), !dbg !6575
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6571, metadata !DIExpression()), !dbg !6576
  %0 = load i64, ptr %size.addr, align 8, !dbg !6577
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6578
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6579

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6580
  %tobool = icmp ne i64 %2, 0, !dbg !6580
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6581

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6582
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6572, metadata !DIExpression()), !dbg !6583
  %3 = load i64, ptr %size.addr, align 8, !dbg !6584
  %cmp = icmp ugt i64 %3, 8192, !dbg !6586
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6587

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6588
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6589
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6590
  store ptr %call, ptr %retval, align 8, !dbg !6591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6591

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6592
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6592
  store i32 %call2, ptr %index, align 4, !dbg !6593
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6594
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6595
  %9 = ptrtoint ptr %8 to i64, !dbg !6595
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6596
  %idxprom = zext i32 %call3 to i64, !dbg !6597
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6597
  %10 = load i32, ptr %index, align 4, !dbg !6598
  %idxprom4 = zext i32 %10 to i64, !dbg !6597
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6597
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6597
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6599
  %13 = load i64, ptr %size.addr, align 8, !dbg !6600
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6601
  store ptr %call6, ptr %retval, align 8, !dbg !6602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6602

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6603
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6604
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6605
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6606
  store ptr %call8, ptr %retval, align 8, !dbg !6607
  br label %return, !dbg !6607

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6608
  ret ptr %16, !dbg !6608
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6609 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6610 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6614, metadata !DIExpression()), !dbg !6616
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6615, metadata !DIExpression()), !dbg !6617
  %0 = load i64, ptr %size.addr, align 8, !dbg !6618
  %tobool = icmp ne i64 %0, 0, !dbg !6618
  br i1 %tobool, label %if.end, label %if.then, !dbg !6620

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6621
  br label %return, !dbg !6621

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6622
  %cmp = icmp ule i64 %1, 8, !dbg !6624
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6625

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6626
  br label %return, !dbg !6626

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6627
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6629
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6630

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6631
  %cmp4 = icmp ule i64 %3, 96, !dbg !6632
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6633

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6634
  br label %return, !dbg !6634

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6635
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6637
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6638

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6639
  %cmp9 = icmp ule i64 %5, 192, !dbg !6640
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6641

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6642
  br label %return, !dbg !6642

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6643
  %cmp12 = icmp ule i64 %6, 8, !dbg !6645
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6646

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6647
  br label %return, !dbg !6647

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6648
  %cmp15 = icmp ule i64 %7, 16, !dbg !6650
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6651

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6652
  br label %return, !dbg !6652

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6653
  %cmp18 = icmp ule i64 %8, 32, !dbg !6655
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6656

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6657
  br label %return, !dbg !6657

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6658
  %cmp21 = icmp ule i64 %9, 64, !dbg !6660
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6661

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6662
  br label %return, !dbg !6662

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6663
  %cmp24 = icmp ule i64 %10, 128, !dbg !6665
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6666

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6667
  br label %return, !dbg !6667

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6668
  %cmp27 = icmp ule i64 %11, 256, !dbg !6670
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6671

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6672
  br label %return, !dbg !6672

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6673
  %cmp30 = icmp ule i64 %12, 512, !dbg !6675
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6676

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6677
  br label %return, !dbg !6677

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6678
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6680
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6681

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6682
  br label %return, !dbg !6682

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6683
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6685
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6686

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6687
  br label %return, !dbg !6687

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6688
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6690
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6691

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6692
  br label %return, !dbg !6692

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6693
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6695
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6696

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6697
  br label %return, !dbg !6697

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6698
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6700
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6701

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6702
  br label %return, !dbg !6702

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6703
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6705
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6706

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6707
  br label %return, !dbg !6707

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6708
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6710
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6711

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6712
  br label %return, !dbg !6712

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6713
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6715
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6716

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6717
  br label %return, !dbg !6717

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6718
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6720
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6721

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6722
  br label %return, !dbg !6722

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6723
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6725
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6726

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6727
  br label %return, !dbg !6727

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6728
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6730
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6731

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6732
  br label %return, !dbg !6732

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6733
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6735
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6736

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6737
  br label %return, !dbg !6737

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6738, !range !6153, !noundef !774
  %tobool69 = trunc i8 %25 to i1, !dbg !6738
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6740

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6741

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !6742, !srcloc !6745
  unreachable, !dbg !6742

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6746

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6747

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6748

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6750

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6748

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #17, !dbg !6752, !srcloc !6754
  br label %do.end75, !dbg !6752

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6748

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6755
  br label %return, !dbg !6755

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6756
  ret i32 %26, !dbg !6756
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6757 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6760 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6764, metadata !DIExpression()), !dbg !6766
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6765, metadata !DIExpression()), !dbg !6767
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6768
  %and = and i32 %0, 17, !dbg !6768
  %cmp = icmp eq i32 %and, 0, !dbg !6768
  %lnot = xor i1 %cmp, true, !dbg !6768
  %lnot1 = xor i1 %lnot, true, !dbg !6768
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6768
  %conv = sext i32 %lnot.ext to i64, !dbg !6768
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6768
  %tobool = icmp ne i64 %expval, 0, !dbg !6768
  br i1 %tobool, label %if.then, label %if.end, !dbg !6770

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6771
  br label %return, !dbg !6771

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6772
  %and2 = and i32 %1, 1, !dbg !6774
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6774
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6775

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6776
  br label %return, !dbg !6776

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6777
  br label %return, !dbg !6777

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6779
  ret i32 %2, !dbg !6779
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6780 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6781 dso_local void @__compiletime_assert_245() #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6782 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6788, metadata !DIExpression()), !dbg !6790
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6789, metadata !DIExpression()), !dbg !6791
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6792
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6793
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6794
  %2 = load i32, ptr %i.addr, align 4, !dbg !6795
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !6796
  ret void, !dbg !6797
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6798 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6806, metadata !DIExpression()), !dbg !6808
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6807, metadata !DIExpression()), !dbg !6809
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6810
  %1 = load i64, ptr %size.addr, align 8, !dbg !6811
  %conv = trunc i64 %1 to i32, !dbg !6811
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6812
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6813
  %3 = load i64, ptr %size.addr, align 8, !dbg !6813
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !6813
  ret void, !dbg !6814
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6815 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6818, metadata !DIExpression()), !dbg !6820
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6819, metadata !DIExpression()), !dbg !6821
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6822
  %1 = load i32, ptr %i.addr, align 4, !dbg !6823
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !6824
  ret void, !dbg !6825
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !6826 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6831, metadata !DIExpression()), !dbg !6833
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6832, metadata !DIExpression()), !dbg !6834
  ret i1 true, !dbg !6835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !6836 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6841, metadata !DIExpression()), !dbg !6844
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6842, metadata !DIExpression()), !dbg !6845
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6843, metadata !DIExpression()), !dbg !6846
  ret void, !dbg !6847
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6848 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6851, metadata !DIExpression()), !dbg !6853
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6852, metadata !DIExpression()), !dbg !6854
  br label %do.body, !dbg !6855

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6856
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6856
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6856
  store volatile i32 %0, ptr %counter, align 4, !dbg !6856
  br label %do.end, !dbg !6856

do.end:                                           ; preds = %do.body
  ret void, !dbg !6858
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6859 dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_fspick(i32 noundef %dfd, ptr noundef %path, i32 noundef %flags) #7 align 16 !dbg !6863 {
entry:
  %retval = alloca i64, align 8
  %dfd.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %fc = alloca ptr, align 8
  %target = alloca %struct.path, align 8
  %lookup_flags = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %dfd, ptr %dfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dfd.addr, metadata !6867, metadata !DIExpression()), !dbg !6877
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6868, metadata !DIExpression()), !dbg !6877
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6869, metadata !DIExpression()), !dbg !6877
  call void @llvm.lifetime.start.p0(i64 8, ptr %fc) #17, !dbg !6878
  call void @llvm.dbg.declare(metadata ptr %fc, metadata !6870, metadata !DIExpression()), !dbg !6879
  call void @llvm.lifetime.start.p0(i64 16, ptr %target) #17, !dbg !6880
  call void @llvm.dbg.declare(metadata ptr %target, metadata !6871, metadata !DIExpression()), !dbg !6881
  call void @llvm.lifetime.start.p0(i64 4, ptr %lookup_flags) #17, !dbg !6882
  call void @llvm.dbg.declare(metadata ptr %lookup_flags, metadata !6872, metadata !DIExpression()), !dbg !6883
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6884
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6873, metadata !DIExpression()), !dbg !6885
  %call = call zeroext i1 @may_mount() #18, !dbg !6886
  br i1 %call, label %if.end, label %if.then, !dbg !6888

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6889

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6890
  %and = and i32 %0, -16, !dbg !6892
  %cmp = icmp ne i32 %and, 0, !dbg !6893
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6894

if.then1:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6895

if.end2:                                          ; preds = %if.end
  store i32 5, ptr %lookup_flags, align 4, !dbg !6896
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6897
  %and3 = and i32 %1, 2, !dbg !6899
  %tobool = icmp ne i32 %and3, 0, !dbg !6899
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !6900

if.then4:                                         ; preds = %if.end2
  %2 = load i32, ptr %lookup_flags, align 4, !dbg !6901
  %and5 = and i32 %2, -2, !dbg !6901
  store i32 %and5, ptr %lookup_flags, align 4, !dbg !6901
  br label %if.end6, !dbg !6902

if.end6:                                          ; preds = %if.then4, %if.end2
  %3 = load i32, ptr %flags.addr, align 4, !dbg !6903
  %and7 = and i32 %3, 4, !dbg !6905
  %tobool8 = icmp ne i32 %and7, 0, !dbg !6905
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !6906

if.then9:                                         ; preds = %if.end6
  %4 = load i32, ptr %lookup_flags, align 4, !dbg !6907
  %and10 = and i32 %4, -5, !dbg !6907
  store i32 %and10, ptr %lookup_flags, align 4, !dbg !6907
  br label %if.end11, !dbg !6908

if.end11:                                         ; preds = %if.then9, %if.end6
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6909
  %and12 = and i32 %5, 8, !dbg !6911
  %tobool13 = icmp ne i32 %and12, 0, !dbg !6911
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6912

if.then14:                                        ; preds = %if.end11
  %6 = load i32, ptr %lookup_flags, align 4, !dbg !6913
  %or = or i32 %6, 16384, !dbg !6913
  store i32 %or, ptr %lookup_flags, align 4, !dbg !6913
  br label %if.end15, !dbg !6914

if.end15:                                         ; preds = %if.then14, %if.end11
  %7 = load i32, ptr %dfd.addr, align 4, !dbg !6915
  %8 = load ptr, ptr %path.addr, align 8, !dbg !6916
  %9 = load i32, ptr %lookup_flags, align 4, !dbg !6917
  %call16 = call i32 @user_path_at(i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %target) #18, !dbg !6918
  store i32 %call16, ptr %ret, align 4, !dbg !6919
  %10 = load i32, ptr %ret, align 4, !dbg !6920
  %cmp17 = icmp slt i32 %10, 0, !dbg !6922
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !6923

if.then18:                                        ; preds = %if.end15
  br label %err, !dbg !6924

if.end19:                                         ; preds = %if.end15
  store i32 -22, ptr %ret, align 4, !dbg !6925
  %mnt = getelementptr inbounds %struct.path, ptr %target, i32 0, i32 0, !dbg !6926
  %11 = load ptr, ptr %mnt, align 8, !dbg !6926
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %11, i32 0, i32 0, !dbg !6928
  %12 = load ptr, ptr %mnt_root, align 8, !dbg !6928
  %dentry = getelementptr inbounds %struct.path, ptr %target, i32 0, i32 1, !dbg !6929
  %13 = load ptr, ptr %dentry, align 8, !dbg !6929
  %cmp20 = icmp ne ptr %12, %13, !dbg !6930
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !6931

if.then21:                                        ; preds = %if.end19
  br label %err_path, !dbg !6932

if.end22:                                         ; preds = %if.end19
  %dentry23 = getelementptr inbounds %struct.path, ptr %target, i32 0, i32 1, !dbg !6933
  %14 = load ptr, ptr %dentry23, align 8, !dbg !6933
  %call24 = call ptr @fs_context_for_reconfigure(ptr noundef %14, i32 noundef 0, i32 noundef 0) #18, !dbg !6934
  store ptr %call24, ptr %fc, align 8, !dbg !6935
  %15 = load ptr, ptr %fc, align 8, !dbg !6936
  %call25 = call zeroext i1 @IS_ERR(ptr noundef %15) #18, !dbg !6938
  br i1 %call25, label %if.then26, label %if.end28, !dbg !6939

if.then26:                                        ; preds = %if.end22
  %16 = load ptr, ptr %fc, align 8, !dbg !6940
  %call27 = call i64 @PTR_ERR(ptr noundef %16) #18, !dbg !6942
  %conv = trunc i64 %call27 to i32, !dbg !6942
  store i32 %conv, ptr %ret, align 4, !dbg !6943
  br label %err_path, !dbg !6944

if.end28:                                         ; preds = %if.end22
  %17 = load ptr, ptr %fc, align 8, !dbg !6945
  %phase = getelementptr inbounds %struct.fs_context, ptr %17, i32 0, i32 16, !dbg !6946
  %bf.load = load i32, ptr %phase, align 4, !dbg !6947
  %bf.clear = and i32 %bf.load, -65281, !dbg !6947
  %bf.set = or i32 %bf.clear, 1024, !dbg !6947
  store i32 %bf.set, ptr %phase, align 4, !dbg !6947
  %18 = load ptr, ptr %fc, align 8, !dbg !6948
  %call29 = call i32 @fscontext_alloc_log(ptr noundef %18) #18, !dbg !6949
  store i32 %call29, ptr %ret, align 4, !dbg !6950
  %19 = load i32, ptr %ret, align 4, !dbg !6951
  %cmp30 = icmp slt i32 %19, 0, !dbg !6953
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !6954

if.then32:                                        ; preds = %if.end28
  br label %err_fc, !dbg !6955

if.end33:                                         ; preds = %if.end28
  call void @path_put(ptr noundef %target) #18, !dbg !6956
  %20 = load ptr, ptr %fc, align 8, !dbg !6957
  %21 = load i32, ptr %flags.addr, align 4, !dbg !6958
  %and34 = and i32 %21, 1, !dbg !6959
  %tobool35 = icmp ne i32 %and34, 0, !dbg !6958
  %22 = zext i1 %tobool35 to i64, !dbg !6958
  %cond = select i1 %tobool35, i32 524288, i32 0, !dbg !6958
  %call36 = call i32 @fscontext_create_fd(ptr noundef %20, i32 noundef %cond) #18, !dbg !6960
  %conv37 = sext i32 %call36 to i64, !dbg !6960
  store i64 %conv37, ptr %retval, align 8, !dbg !6961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6961

err_fc:                                           ; preds = %if.then32
  call void @llvm.dbg.label(metadata !6874), !dbg !6962
  %23 = load ptr, ptr %fc, align 8, !dbg !6963
  call void @put_fs_context(ptr noundef %23) #18, !dbg !6964
  br label %err_path, !dbg !6964

err_path:                                         ; preds = %err_fc, %if.then26, %if.then21
  call void @llvm.dbg.label(metadata !6875), !dbg !6965
  call void @path_put(ptr noundef %target) #18, !dbg !6966
  br label %err, !dbg !6966

err:                                              ; preds = %err_path, %if.then18
  call void @llvm.dbg.label(metadata !6876), !dbg !6967
  %24 = load i32, ptr %ret, align 4, !dbg !6968
  %conv38 = sext i32 %24 to i64, !dbg !6968
  store i64 %conv38, ptr %retval, align 8, !dbg !6969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6969

cleanup:                                          ; preds = %err, %if.end33, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6970
  call void @llvm.lifetime.end.p0(i64 4, ptr %lookup_flags) #17, !dbg !6970
  call void @llvm.lifetime.end.p0(i64 16, ptr %target) #17, !dbg !6970
  call void @llvm.lifetime.end.p0(i64 8, ptr %fc) #17, !dbg !6970
  %25 = load i64, ptr %retval, align 8, !dbg !6970
  ret i64 %25, !dbg !6970
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_path_at(i32 noundef %dfd, ptr noundef %name, i32 noundef %flags, ptr noundef %path) #7 align 16 !dbg !6971 {
entry:
  %dfd.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  store i32 %dfd, ptr %dfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dfd.addr, metadata !6976, metadata !DIExpression()), !dbg !6980
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6977, metadata !DIExpression()), !dbg !6981
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6978, metadata !DIExpression()), !dbg !6982
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6979, metadata !DIExpression()), !dbg !6983
  %0 = load i32, ptr %dfd.addr, align 4, !dbg !6984
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6985
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6986
  %3 = load ptr, ptr %path.addr, align 8, !dbg !6987
  %call = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null) #18, !dbg !6988
  ret i32 %call, !dbg !6989
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6990 dso_local ptr @fs_context_for_reconfigure(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6993 dso_local void @path_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6996 dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_fsconfig(i32 noundef %fd, i32 noundef %cmd, ptr noundef %_key, ptr noundef %_value, i32 noundef %aux) #7 align 16 !dbg !6999 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %cmd.addr = alloca i32, align 4
  %_key.addr = alloca ptr, align 8
  %_value.addr = alloca ptr, align 8
  %aux.addr = alloca i32, align 4
  %fc = alloca ptr, align 8
  %f = alloca %struct.fd, align 8
  %ret = alloca i32, align 4
  %lookup_flags = alloca i32, align 4
  %param = alloca %struct.fs_parameter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.fd, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7003, metadata !DIExpression()), !dbg !7020
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !7004, metadata !DIExpression()), !dbg !7020
  store ptr %_key, ptr %_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_key.addr, metadata !7005, metadata !DIExpression()), !dbg !7020
  store ptr %_value, ptr %_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_value.addr, metadata !7006, metadata !DIExpression()), !dbg !7020
  store i32 %aux, ptr %aux.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %aux.addr, metadata !7007, metadata !DIExpression()), !dbg !7020
  call void @llvm.lifetime.start.p0(i64 8, ptr %fc) #17, !dbg !7021
  call void @llvm.dbg.declare(metadata ptr %fc, metadata !7008, metadata !DIExpression()), !dbg !7022
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #17, !dbg !7023
  call void @llvm.dbg.declare(metadata ptr %f, metadata !7009, metadata !DIExpression()), !dbg !7024
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !7025
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7015, metadata !DIExpression()), !dbg !7026
  call void @llvm.lifetime.start.p0(i64 4, ptr %lookup_flags) #17, !dbg !7027
  call void @llvm.dbg.declare(metadata ptr %lookup_flags, metadata !7016, metadata !DIExpression()), !dbg !7028
  store i32 0, ptr %lookup_flags, align 4, !dbg !7028
  call void @llvm.lifetime.start.p0(i64 40, ptr %param) #17, !dbg !7029
  call void @llvm.dbg.declare(metadata ptr %param, metadata !7017, metadata !DIExpression()), !dbg !7030
  call void @llvm.memset.p0.i64(ptr align 8 %param, i8 0, i64 40, i1 false), !dbg !7030
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7031
  %cmp = icmp slt i32 %0, 0, !dbg !7033
  br i1 %cmp, label %if.then, label %if.end, !dbg !7034

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !7035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7035

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %cmd.addr, align 4, !dbg !7036
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb14
    i32 3, label %sw.bb24
    i32 4, label %sw.bb24
    i32 5, label %sw.bb33
    i32 6, label %sw.bb41
    i32 8, label %sw.bb41
    i32 7, label %sw.bb41
  ], !dbg !7037

sw.bb:                                            ; preds = %if.end
  %2 = load ptr, ptr %_key.addr, align 8, !dbg !7038
  %tobool = icmp ne ptr %2, null, !dbg !7038
  br i1 %tobool, label %lor.lhs.false, label %if.then4, !dbg !7041

lor.lhs.false:                                    ; preds = %sw.bb
  %3 = load ptr, ptr %_value.addr, align 8, !dbg !7042
  %tobool1 = icmp ne ptr %3, null, !dbg !7042
  br i1 %tobool1, label %if.then4, label %lor.lhs.false2, !dbg !7043

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %aux.addr, align 4, !dbg !7044
  %tobool3 = icmp ne i32 %4, 0, !dbg !7044
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7045

if.then4:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %sw.bb
  store i64 -22, ptr %retval, align 8, !dbg !7046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7046

if.end5:                                          ; preds = %lor.lhs.false2
  br label %sw.epilog, !dbg !7047

sw.bb6:                                           ; preds = %if.end
  %5 = load ptr, ptr %_key.addr, align 8, !dbg !7048
  %tobool7 = icmp ne ptr %5, null, !dbg !7048
  br i1 %tobool7, label %lor.lhs.false8, label %if.then12, !dbg !7050

lor.lhs.false8:                                   ; preds = %sw.bb6
  %6 = load ptr, ptr %_value.addr, align 8, !dbg !7051
  %tobool9 = icmp ne ptr %6, null, !dbg !7051
  br i1 %tobool9, label %lor.lhs.false10, label %if.then12, !dbg !7052

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %7 = load i32, ptr %aux.addr, align 4, !dbg !7053
  %tobool11 = icmp ne i32 %7, 0, !dbg !7053
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !7054

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false8, %sw.bb6
  store i64 -22, ptr %retval, align 8, !dbg !7055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7055

if.end13:                                         ; preds = %lor.lhs.false10
  br label %sw.epilog, !dbg !7056

sw.bb14:                                          ; preds = %if.end
  %8 = load ptr, ptr %_key.addr, align 8, !dbg !7057
  %tobool15 = icmp ne ptr %8, null, !dbg !7057
  br i1 %tobool15, label %lor.lhs.false16, label %if.then22, !dbg !7059

lor.lhs.false16:                                  ; preds = %sw.bb14
  %9 = load ptr, ptr %_value.addr, align 8, !dbg !7060
  %tobool17 = icmp ne ptr %9, null, !dbg !7060
  br i1 %tobool17, label %lor.lhs.false18, label %if.then22, !dbg !7061

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %10 = load i32, ptr %aux.addr, align 4, !dbg !7062
  %cmp19 = icmp sle i32 %10, 0, !dbg !7063
  br i1 %cmp19, label %if.then22, label %lor.lhs.false20, !dbg !7064

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %11 = load i32, ptr %aux.addr, align 4, !dbg !7065
  %cmp21 = icmp sgt i32 %11, 1048576, !dbg !7066
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7067

if.then22:                                        ; preds = %lor.lhs.false20, %lor.lhs.false18, %lor.lhs.false16, %sw.bb14
  store i64 -22, ptr %retval, align 8, !dbg !7068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7068

if.end23:                                         ; preds = %lor.lhs.false20
  br label %sw.epilog, !dbg !7069

sw.bb24:                                          ; preds = %if.end, %if.end
  %12 = load ptr, ptr %_key.addr, align 8, !dbg !7070
  %tobool25 = icmp ne ptr %12, null, !dbg !7070
  br i1 %tobool25, label %lor.lhs.false26, label %if.then31, !dbg !7072

lor.lhs.false26:                                  ; preds = %sw.bb24
  %13 = load ptr, ptr %_value.addr, align 8, !dbg !7073
  %tobool27 = icmp ne ptr %13, null, !dbg !7073
  br i1 %tobool27, label %lor.lhs.false28, label %if.then31, !dbg !7074

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %14 = load i32, ptr %aux.addr, align 4, !dbg !7075
  %cmp29 = icmp ne i32 %14, -100, !dbg !7076
  br i1 %cmp29, label %land.lhs.true, label %if.end32, !dbg !7077

land.lhs.true:                                    ; preds = %lor.lhs.false28
  %15 = load i32, ptr %aux.addr, align 4, !dbg !7078
  %cmp30 = icmp slt i32 %15, 0, !dbg !7079
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7080

if.then31:                                        ; preds = %land.lhs.true, %lor.lhs.false26, %sw.bb24
  store i64 -22, ptr %retval, align 8, !dbg !7081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7081

if.end32:                                         ; preds = %land.lhs.true, %lor.lhs.false28
  br label %sw.epilog, !dbg !7082

sw.bb33:                                          ; preds = %if.end
  %16 = load ptr, ptr %_key.addr, align 8, !dbg !7083
  %tobool34 = icmp ne ptr %16, null, !dbg !7083
  br i1 %tobool34, label %lor.lhs.false35, label %if.then39, !dbg !7085

lor.lhs.false35:                                  ; preds = %sw.bb33
  %17 = load ptr, ptr %_value.addr, align 8, !dbg !7086
  %tobool36 = icmp ne ptr %17, null, !dbg !7086
  br i1 %tobool36, label %if.then39, label %lor.lhs.false37, !dbg !7087

lor.lhs.false37:                                  ; preds = %lor.lhs.false35
  %18 = load i32, ptr %aux.addr, align 4, !dbg !7088
  %cmp38 = icmp slt i32 %18, 0, !dbg !7089
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !7090

if.then39:                                        ; preds = %lor.lhs.false37, %lor.lhs.false35, %sw.bb33
  store i64 -22, ptr %retval, align 8, !dbg !7091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7091

if.end40:                                         ; preds = %lor.lhs.false37
  br label %sw.epilog, !dbg !7092

sw.bb41:                                          ; preds = %if.end, %if.end, %if.end
  %19 = load ptr, ptr %_key.addr, align 8, !dbg !7093
  %tobool42 = icmp ne ptr %19, null, !dbg !7093
  br i1 %tobool42, label %if.then47, label %lor.lhs.false43, !dbg !7095

lor.lhs.false43:                                  ; preds = %sw.bb41
  %20 = load ptr, ptr %_value.addr, align 8, !dbg !7096
  %tobool44 = icmp ne ptr %20, null, !dbg !7096
  br i1 %tobool44, label %if.then47, label %lor.lhs.false45, !dbg !7097

lor.lhs.false45:                                  ; preds = %lor.lhs.false43
  %21 = load i32, ptr %aux.addr, align 4, !dbg !7098
  %tobool46 = icmp ne i32 %21, 0, !dbg !7098
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !7099

if.then47:                                        ; preds = %lor.lhs.false45, %lor.lhs.false43, %sw.bb41
  store i64 -22, ptr %retval, align 8, !dbg !7100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7100

if.end48:                                         ; preds = %lor.lhs.false45
  br label %sw.epilog, !dbg !7101

sw.default:                                       ; preds = %if.end
  store i64 -95, ptr %retval, align 8, !dbg !7102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7102

sw.epilog:                                        ; preds = %if.end48, %if.end40, %if.end32, %if.end23, %if.end13, %if.end5
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #17, !dbg !7103
  %22 = load i32, ptr %fd.addr, align 4, !dbg !7104
  %call = call { ptr, i32 } @fdget(i32 noundef %22) #18, !dbg !7103
  %23 = getelementptr inbounds { ptr, i32 }, ptr %tmp, i32 0, i32 0, !dbg !7103
  %24 = extractvalue { ptr, i32 } %call, 0, !dbg !7103
  store ptr %24, ptr %23, align 8, !dbg !7103
  %25 = getelementptr inbounds { ptr, i32 }, ptr %tmp, i32 0, i32 1, !dbg !7103
  %26 = extractvalue { ptr, i32 } %call, 1, !dbg !7103
  store i32 %26, ptr %25, align 8, !dbg !7103
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %f, ptr align 8 %tmp, i64 16, i1 false), !dbg !7103
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #17, !dbg !7103
  %file = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7105
  %27 = load ptr, ptr %file, align 8, !dbg !7105
  %tobool49 = icmp ne ptr %27, null, !dbg !7107
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !7108

if.then50:                                        ; preds = %sw.epilog
  store i64 -9, ptr %retval, align 8, !dbg !7109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7109

if.end51:                                         ; preds = %sw.epilog
  store i32 -22, ptr %ret, align 4, !dbg !7110
  %file52 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7111
  %28 = load ptr, ptr %file52, align 8, !dbg !7111
  %f_op = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 12, !dbg !7113
  %29 = load ptr, ptr %f_op, align 8, !dbg !7113
  %cmp53 = icmp ne ptr %29, @fscontext_fops, !dbg !7114
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !7115

if.then54:                                        ; preds = %if.end51
  br label %out_f, !dbg !7116

if.end55:                                         ; preds = %if.end51
  %file56 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7117
  %30 = load ptr, ptr %file56, align 8, !dbg !7117
  %private_data = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 15, !dbg !7118
  %31 = load ptr, ptr %private_data, align 8, !dbg !7118
  store ptr %31, ptr %fc, align 8, !dbg !7119
  %32 = load ptr, ptr %fc, align 8, !dbg !7120
  %ops = getelementptr inbounds %struct.fs_context, ptr %32, i32 0, i32 0, !dbg !7122
  %33 = load ptr, ptr %ops, align 8, !dbg !7122
  %cmp57 = icmp eq ptr %33, @legacy_fs_context_ops, !dbg !7123
  br i1 %cmp57, label %if.then58, label %if.end61, !dbg !7124

if.then58:                                        ; preds = %if.end55
  %34 = load i32, ptr %cmd.addr, align 4, !dbg !7125
  switch i32 %34, label %sw.epilog60 [
    i32 2, label %sw.bb59
    i32 3, label %sw.bb59
    i32 4, label %sw.bb59
    i32 5, label %sw.bb59
  ], !dbg !7127

sw.bb59:                                          ; preds = %if.then58, %if.then58, %if.then58, %if.then58
  store i32 -95, ptr %ret, align 4, !dbg !7128
  br label %out_f, !dbg !7130

sw.epilog60:                                      ; preds = %if.then58
  br label %if.end61, !dbg !7131

if.end61:                                         ; preds = %sw.epilog60, %if.end55
  %35 = load ptr, ptr %_key.addr, align 8, !dbg !7132
  %tobool62 = icmp ne ptr %35, null, !dbg !7132
  br i1 %tobool62, label %if.then63, label %if.end71, !dbg !7134

if.then63:                                        ; preds = %if.end61
  %36 = load ptr, ptr %_key.addr, align 8, !dbg !7135
  %call64 = call ptr @strndup_user(ptr noundef %36, i64 noundef 256) #18, !dbg !7137
  %key = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 0, !dbg !7138
  store ptr %call64, ptr %key, align 8, !dbg !7139
  %key65 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 0, !dbg !7140
  %37 = load ptr, ptr %key65, align 8, !dbg !7140
  %call66 = call zeroext i1 @IS_ERR(ptr noundef %37) #18, !dbg !7142
  br i1 %call66, label %if.then67, label %if.end70, !dbg !7143

if.then67:                                        ; preds = %if.then63
  %key68 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 0, !dbg !7144
  %38 = load ptr, ptr %key68, align 8, !dbg !7144
  %call69 = call i64 @PTR_ERR(ptr noundef %38) #18, !dbg !7146
  %conv = trunc i64 %call69 to i32, !dbg !7146
  store i32 %conv, ptr %ret, align 4, !dbg !7147
  br label %out_f, !dbg !7148

if.end70:                                         ; preds = %if.then63
  br label %if.end71, !dbg !7149

if.end71:                                         ; preds = %if.end70, %if.end61
  %39 = load i32, ptr %cmd.addr, align 4, !dbg !7150
  switch i32 %39, label %sw.default110 [
    i32 0, label %sw.bb72
    i32 1, label %sw.bb73
    i32 2, label %sw.bb82
    i32 4, label %sw.bb93
    i32 3, label %sw.bb94
    i32 5, label %sw.bb104
  ], !dbg !7151

sw.bb72:                                          ; preds = %if.end71
  %type = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 1, !dbg !7152
  store i8 1, ptr %type, align 8, !dbg !7154
  br label %sw.epilog111, !dbg !7155

sw.bb73:                                          ; preds = %if.end71
  %type74 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 1, !dbg !7156
  store i8 2, ptr %type74, align 8, !dbg !7157
  %40 = load ptr, ptr %_value.addr, align 8, !dbg !7158
  %call75 = call ptr @strndup_user(ptr noundef %40, i64 noundef 256) #18, !dbg !7159
  %41 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7160
  store ptr %call75, ptr %41, align 8, !dbg !7161
  %42 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7162
  %43 = load ptr, ptr %42, align 8, !dbg !7162
  %call76 = call zeroext i1 @IS_ERR(ptr noundef %43) #18, !dbg !7164
  br i1 %call76, label %if.then77, label %if.end80, !dbg !7165

if.then77:                                        ; preds = %sw.bb73
  %44 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7166
  %45 = load ptr, ptr %44, align 8, !dbg !7166
  %call78 = call i64 @PTR_ERR(ptr noundef %45) #18, !dbg !7168
  %conv79 = trunc i64 %call78 to i32, !dbg !7168
  store i32 %conv79, ptr %ret, align 4, !dbg !7169
  br label %out_key, !dbg !7170

if.end80:                                         ; preds = %sw.bb73
  %46 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7171
  %47 = load ptr, ptr %46, align 8, !dbg !7171
  %call81 = call i64 @strlen(ptr noundef %47) #18, !dbg !7172
  %size = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 3, !dbg !7173
  store i64 %call81, ptr %size, align 8, !dbg !7174
  br label %sw.epilog111, !dbg !7175

sw.bb82:                                          ; preds = %if.end71
  %type83 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 1, !dbg !7176
  store i8 3, ptr %type83, align 8, !dbg !7177
  %48 = load i32, ptr %aux.addr, align 4, !dbg !7178
  %conv84 = sext i32 %48 to i64, !dbg !7178
  %size85 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 3, !dbg !7179
  store i64 %conv84, ptr %size85, align 8, !dbg !7180
  %49 = load ptr, ptr %_value.addr, align 8, !dbg !7181
  %50 = load i32, ptr %aux.addr, align 4, !dbg !7182
  %conv86 = sext i32 %50 to i64, !dbg !7182
  %call87 = call ptr @memdup_user_nul(ptr noundef %49, i64 noundef %conv86) #18, !dbg !7183
  %51 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7184
  store ptr %call87, ptr %51, align 8, !dbg !7185
  %52 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7186
  %53 = load ptr, ptr %52, align 8, !dbg !7186
  %call88 = call zeroext i1 @IS_ERR(ptr noundef %53) #18, !dbg !7188
  br i1 %call88, label %if.then89, label %if.end92, !dbg !7189

if.then89:                                        ; preds = %sw.bb82
  %54 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7190
  %55 = load ptr, ptr %54, align 8, !dbg !7190
  %call90 = call i64 @PTR_ERR(ptr noundef %55) #18, !dbg !7192
  %conv91 = trunc i64 %call90 to i32, !dbg !7192
  store i32 %conv91, ptr %ret, align 4, !dbg !7193
  br label %out_key, !dbg !7194

if.end92:                                         ; preds = %sw.bb82
  br label %sw.epilog111, !dbg !7195

sw.bb93:                                          ; preds = %if.end71
  store i32 16384, ptr %lookup_flags, align 4, !dbg !7196
  br label %sw.bb94, !dbg !7197

sw.bb94:                                          ; preds = %if.end71, %sw.bb93
  %type95 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 1, !dbg !7198
  store i8 4, ptr %type95, align 8, !dbg !7199
  %56 = load ptr, ptr %_value.addr, align 8, !dbg !7200
  %57 = load i32, ptr %lookup_flags, align 4, !dbg !7201
  %call96 = call ptr @getname_flags(ptr noundef %56, i32 noundef %57, ptr noundef null) #18, !dbg !7202
  %58 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7203
  store ptr %call96, ptr %58, align 8, !dbg !7204
  %59 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7205
  %60 = load ptr, ptr %59, align 8, !dbg !7205
  %call97 = call zeroext i1 @IS_ERR(ptr noundef %60) #18, !dbg !7207
  br i1 %call97, label %if.then98, label %if.end101, !dbg !7208

if.then98:                                        ; preds = %sw.bb94
  %61 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7209
  %62 = load ptr, ptr %61, align 8, !dbg !7209
  %call99 = call i64 @PTR_ERR(ptr noundef %62) #18, !dbg !7211
  %conv100 = trunc i64 %call99 to i32, !dbg !7211
  store i32 %conv100, ptr %ret, align 4, !dbg !7212
  br label %out_key, !dbg !7213

if.end101:                                        ; preds = %sw.bb94
  %63 = load i32, ptr %aux.addr, align 4, !dbg !7214
  %dirfd = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 4, !dbg !7215
  store i32 %63, ptr %dirfd, align 8, !dbg !7216
  %64 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7217
  %65 = load ptr, ptr %64, align 8, !dbg !7217
  %name = getelementptr inbounds %struct.filename, ptr %65, i32 0, i32 0, !dbg !7218
  %66 = load ptr, ptr %name, align 8, !dbg !7218
  %call102 = call i64 @strlen(ptr noundef %66) #18, !dbg !7219
  %size103 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 3, !dbg !7220
  store i64 %call102, ptr %size103, align 8, !dbg !7221
  br label %sw.epilog111, !dbg !7222

sw.bb104:                                         ; preds = %if.end71
  %type105 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 1, !dbg !7223
  store i8 5, ptr %type105, align 8, !dbg !7224
  store i32 -9, ptr %ret, align 4, !dbg !7225
  %67 = load i32, ptr %aux.addr, align 4, !dbg !7226
  %call106 = call ptr @fget(i32 noundef %67) #18, !dbg !7227
  %68 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7228
  store ptr %call106, ptr %68, align 8, !dbg !7229
  %69 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7230
  %70 = load ptr, ptr %69, align 8, !dbg !7230
  %tobool107 = icmp ne ptr %70, null, !dbg !7232
  br i1 %tobool107, label %if.end109, label %if.then108, !dbg !7233

if.then108:                                       ; preds = %sw.bb104
  br label %out_key, !dbg !7234

if.end109:                                        ; preds = %sw.bb104
  br label %sw.epilog111, !dbg !7235

sw.default110:                                    ; preds = %if.end71
  br label %sw.epilog111, !dbg !7236

sw.epilog111:                                     ; preds = %sw.default110, %if.end109, %if.end101, %if.end92, %if.end80, %sw.bb72
  %71 = load ptr, ptr %fc, align 8, !dbg !7237
  %uapi_mutex = getelementptr inbounds %struct.fs_context, ptr %71, i32 0, i32 1, !dbg !7238
  %call112 = call i32 @mutex_lock_interruptible(ptr noundef %uapi_mutex) #18, !dbg !7239
  store i32 %call112, ptr %ret, align 4, !dbg !7240
  %72 = load i32, ptr %ret, align 4, !dbg !7241
  %cmp113 = icmp eq i32 %72, 0, !dbg !7243
  br i1 %cmp113, label %if.then115, label %if.end118, !dbg !7244

if.then115:                                       ; preds = %sw.epilog111
  %73 = load ptr, ptr %fc, align 8, !dbg !7245
  %74 = load i32, ptr %cmd.addr, align 4, !dbg !7247
  %call116 = call i32 @vfs_fsconfig_locked(ptr noundef %73, i32 noundef %74, ptr noundef %param) #18, !dbg !7248
  store i32 %call116, ptr %ret, align 4, !dbg !7249
  %75 = load ptr, ptr %fc, align 8, !dbg !7250
  %uapi_mutex117 = getelementptr inbounds %struct.fs_context, ptr %75, i32 0, i32 1, !dbg !7251
  call void @mutex_unlock(ptr noundef %uapi_mutex117) #18, !dbg !7252
  br label %if.end118, !dbg !7253

if.end118:                                        ; preds = %if.then115, %sw.epilog111
  %76 = load i32, ptr %cmd.addr, align 4, !dbg !7254
  switch i32 %76, label %sw.default128 [
    i32 1, label %sw.bb119
    i32 2, label %sw.bb119
    i32 3, label %sw.bb120
    i32 4, label %sw.bb120
    i32 5, label %sw.bb124
  ], !dbg !7255

sw.bb119:                                         ; preds = %if.end118, %if.end118
  %77 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7256
  %78 = load ptr, ptr %77, align 8, !dbg !7256
  call void @kfree(ptr noundef %78) #18, !dbg !7258
  br label %sw.epilog129, !dbg !7259

sw.bb120:                                         ; preds = %if.end118, %if.end118
  %79 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7260
  %80 = load ptr, ptr %79, align 8, !dbg !7260
  %tobool121 = icmp ne ptr %80, null, !dbg !7262
  br i1 %tobool121, label %if.then122, label %if.end123, !dbg !7263

if.then122:                                       ; preds = %sw.bb120
  %81 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7264
  %82 = load ptr, ptr %81, align 8, !dbg !7264
  call void @putname(ptr noundef %82) #18, !dbg !7265
  br label %if.end123, !dbg !7265

if.end123:                                        ; preds = %if.then122, %sw.bb120
  br label %sw.epilog129, !dbg !7266

sw.bb124:                                         ; preds = %if.end118
  %83 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7267
  %84 = load ptr, ptr %83, align 8, !dbg !7267
  %tobool125 = icmp ne ptr %84, null, !dbg !7269
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !7270

if.then126:                                       ; preds = %sw.bb124
  %85 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2, !dbg !7271
  %86 = load ptr, ptr %85, align 8, !dbg !7271
  call void @fput(ptr noundef %86) #18, !dbg !7272
  br label %if.end127, !dbg !7272

if.end127:                                        ; preds = %if.then126, %sw.bb124
  br label %sw.epilog129, !dbg !7273

sw.default128:                                    ; preds = %if.end118
  br label %sw.epilog129, !dbg !7274

sw.epilog129:                                     ; preds = %sw.default128, %if.end127, %if.end123, %sw.bb119
  br label %out_key, !dbg !7275

out_key:                                          ; preds = %sw.epilog129, %if.then108, %if.then98, %if.then89, %if.then77
  call void @llvm.dbg.label(metadata !7018), !dbg !7276
  %key130 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 0, !dbg !7277
  %87 = load ptr, ptr %key130, align 8, !dbg !7277
  call void @kfree(ptr noundef %87) #18, !dbg !7278
  br label %out_f, !dbg !7278

out_f:                                            ; preds = %out_key, %if.then67, %sw.bb59, %if.then54
  call void @llvm.dbg.label(metadata !7019), !dbg !7279
  %88 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !7280
  %89 = load ptr, ptr %88, align 8, !dbg !7280
  %90 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !7280
  %91 = load i32, ptr %90, align 8, !dbg !7280
  call void @fdput(ptr %89, i32 %91) #18, !dbg !7280
  %92 = load i32, ptr %ret, align 4, !dbg !7281
  %conv131 = sext i32 %92 to i64, !dbg !7281
  store i64 %conv131, ptr %retval, align 8, !dbg !7282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7282

cleanup:                                          ; preds = %out_f, %if.then50, %sw.default, %if.then47, %if.then39, %if.then31, %if.then22, %if.then12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %param) #17, !dbg !7283
  call void @llvm.lifetime.end.p0(i64 4, ptr %lookup_flags) #17, !dbg !7283
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !7283
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #17, !dbg !7283
  call void @llvm.lifetime.end.p0(i64 8, ptr %fc) #17, !dbg !7283
  %93 = load i64, ptr %retval, align 8, !dbg !7283
  ret i64 %93, !dbg !7283
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @fdget(i32 noundef %fd) #7 align 16 !dbg !7284 {
entry:
  %retval = alloca %struct.fd, align 8
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7288, metadata !DIExpression()), !dbg !7289
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7290
  %call = call i64 @__fdget(i32 noundef %0) #18, !dbg !7291
  %call1 = call { ptr, i32 } @__to_fd(i64 noundef %call) #18, !dbg !7292
  %1 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 0, !dbg !7292
  %2 = extractvalue { ptr, i32 } %call1, 0, !dbg !7292
  store ptr %2, ptr %1, align 8, !dbg !7292
  %3 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 1, !dbg !7292
  %4 = extractvalue { ptr, i32 } %call1, 1, !dbg !7292
  store i32 %4, ptr %3, align 8, !dbg !7292
  %5 = load { ptr, i32 }, ptr %retval, align 8, !dbg !7293
  ret { ptr, i32 } %5, !dbg !7293
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7294 dso_local ptr @memdup_user_nul(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7297 dso_local ptr @getname_flags(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7300 dso_local ptr @fget(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vfs_fsconfig_locked(ptr noundef %fc, i32 noundef %cmd, ptr noundef %param) #0 align 16 !dbg !7303 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %param.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !7307, metadata !DIExpression()), !dbg !7311
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !7308, metadata !DIExpression()), !dbg !7312
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !7309, metadata !DIExpression()), !dbg !7313
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !7314
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7310, metadata !DIExpression()), !dbg !7315
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !7316
  %call = call i32 @finish_clean_context(ptr noundef %0) #18, !dbg !7317
  store i32 %call, ptr %ret, align 4, !dbg !7318
  %1 = load i32, ptr %ret, align 4, !dbg !7319
  %tobool = icmp ne i32 %1, 0, !dbg !7319
  br i1 %tobool, label %if.then, label %if.end, !dbg !7321

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !7322
  store i32 %2, ptr %retval, align 4, !dbg !7323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7323

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %cmd.addr, align 4, !dbg !7324
  switch i32 %3, label %sw.default [
    i32 6, label %sw.bb
    i32 8, label %sw.bb2
    i32 7, label %sw.bb4
  ], !dbg !7325

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %fc.addr, align 8, !dbg !7326
  %call1 = call i32 @vfs_cmd_create(ptr noundef %4, i1 noundef zeroext false) #18, !dbg !7328
  store i32 %call1, ptr %retval, align 4, !dbg !7329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7329

sw.bb2:                                           ; preds = %if.end
  %5 = load ptr, ptr %fc.addr, align 8, !dbg !7330
  %call3 = call i32 @vfs_cmd_create(ptr noundef %5, i1 noundef zeroext true) #18, !dbg !7331
  store i32 %call3, ptr %retval, align 4, !dbg !7332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7332

sw.bb4:                                           ; preds = %if.end
  %6 = load ptr, ptr %fc.addr, align 8, !dbg !7333
  %call5 = call i32 @vfs_cmd_reconfigure(ptr noundef %6) #18, !dbg !7334
  store i32 %call5, ptr %retval, align 4, !dbg !7335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7335

sw.default:                                       ; preds = %if.end
  %7 = load ptr, ptr %fc.addr, align 8, !dbg !7336
  %phase = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 16, !dbg !7338
  %bf.load = load i32, ptr %phase, align 4, !dbg !7338
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !7338
  %bf.clear = and i32 %bf.lshr, 255, !dbg !7338
  %cmp = icmp ne i32 %bf.clear, 0, !dbg !7339
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !7340

land.lhs.true:                                    ; preds = %sw.default
  %8 = load ptr, ptr %fc.addr, align 8, !dbg !7341
  %phase6 = getelementptr inbounds %struct.fs_context, ptr %8, i32 0, i32 16, !dbg !7342
  %bf.load7 = load i32, ptr %phase6, align 4, !dbg !7342
  %bf.lshr8 = lshr i32 %bf.load7, 8, !dbg !7342
  %bf.clear9 = and i32 %bf.lshr8, 255, !dbg !7342
  %cmp10 = icmp ne i32 %bf.clear9, 4, !dbg !7343
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !7344

if.then11:                                        ; preds = %land.lhs.true
  store i32 -16, ptr %retval, align 4, !dbg !7345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7345

if.end12:                                         ; preds = %land.lhs.true, %sw.default
  %9 = load ptr, ptr %fc.addr, align 8, !dbg !7346
  %10 = load ptr, ptr %param.addr, align 8, !dbg !7347
  %call13 = call i32 @vfs_parse_fs_param(ptr noundef %9, ptr noundef %10) #18, !dbg !7348
  store i32 %call13, ptr %retval, align 4, !dbg !7349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7349

cleanup:                                          ; preds = %if.end12, %if.then11, %sw.bb4, %sw.bb2, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !7350
  %11 = load i32, ptr %retval, align 4, !dbg !7350
  ret i32 %11, !dbg !7350
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7351 dso_local void @putname(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7354 dso_local void @fput(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fdput(ptr %fd.coerce0, i32 %fd.coerce1) #7 align 16 !dbg !7355 {
entry:
  %fd = alloca %struct.fd, align 8
  %0 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 0
  store ptr %fd.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 1
  store i32 %fd.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !7359, metadata !DIExpression()), !dbg !7360
  %flags = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 1, !dbg !7361
  %2 = load i32, ptr %flags, align 8, !dbg !7361
  %and = and i32 %2, 1, !dbg !7363
  %tobool = icmp ne i32 %and, 0, !dbg !7363
  br i1 %tobool, label %if.then, label %if.end, !dbg !7364

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 0, !dbg !7365
  %3 = load ptr, ptr %file, align 8, !dbg !7365
  call void @fput(ptr noundef %3) #18, !dbg !7366
  br label %if.end, !dbg !7366

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7367
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @__to_fd(i64 noundef %v) #7 align 16 !dbg !7368 {
entry:
  %retval = alloca %struct.fd, align 8
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7372, metadata !DIExpression()), !dbg !7373
  %file = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 0, !dbg !7374
  %0 = load i64, ptr %v.addr, align 8, !dbg !7375
  %and = and i64 %0, -4, !dbg !7376
  %1 = inttoptr i64 %and to ptr, !dbg !7377
  store ptr %1, ptr %file, align 8, !dbg !7374
  %flags = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 1, !dbg !7374
  %2 = load i64, ptr %v.addr, align 8, !dbg !7378
  %and1 = and i64 %2, 3, !dbg !7379
  %conv = trunc i64 %and1 to i32, !dbg !7378
  store i32 %conv, ptr %flags, align 8, !dbg !7374
  %3 = load { ptr, i32 }, ptr %retval, align 8, !dbg !7380
  ret { ptr, i32 } %3, !dbg !7380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7381 dso_local i64 @__fdget(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7384 dso_local i32 @finish_clean_context(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vfs_cmd_create(ptr noundef %fc, i1 noundef zeroext %exclusive) #0 align 16 !dbg !7385 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %exclusive.addr = alloca i8, align 1
  %sb = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !7389, metadata !DIExpression()), !dbg !7393
  %frombool = zext i1 %exclusive to i8
  store i8 %frombool, ptr %exclusive.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %exclusive.addr, metadata !7390, metadata !DIExpression()), !dbg !7394
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #17, !dbg !7395
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !7391, metadata !DIExpression()), !dbg !7396
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !7397
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7392, metadata !DIExpression()), !dbg !7398
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !7399
  %phase = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 16, !dbg !7401
  %bf.load = load i32, ptr %phase, align 4, !dbg !7401
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !7401
  %bf.clear = and i32 %bf.lshr, 255, !dbg !7401
  %cmp = icmp ne i32 %bf.clear, 0, !dbg !7402
  br i1 %cmp, label %if.then, label %if.end, !dbg !7403

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !7404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7404

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fc.addr, align 8, !dbg !7405
  %call = call zeroext i1 @mount_capable(ptr noundef %1) #18, !dbg !7407
  br i1 %call, label %if.end2, label %if.then1, !dbg !7408

if.then1:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !7409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7409

if.end2:                                          ; preds = %if.end
  %2 = load i8, ptr %exclusive.addr, align 1, !dbg !7410, !range !6153, !noundef !774
  %tobool = trunc i8 %2 to i1, !dbg !7410
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !7412

land.lhs.true:                                    ; preds = %if.end2
  %3 = load ptr, ptr %fc.addr, align 8, !dbg !7413
  %ops = getelementptr inbounds %struct.fs_context, ptr %3, i32 0, i32 0, !dbg !7414
  %4 = load ptr, ptr %ops, align 8, !dbg !7414
  %cmp3 = icmp eq ptr %4, @legacy_fs_context_ops, !dbg !7415
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !7416

if.then4:                                         ; preds = %land.lhs.true
  store i32 -95, ptr %retval, align 4, !dbg !7417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7417

if.end5:                                          ; preds = %land.lhs.true, %if.end2
  %5 = load ptr, ptr %fc.addr, align 8, !dbg !7418
  %phase6 = getelementptr inbounds %struct.fs_context, ptr %5, i32 0, i32 16, !dbg !7419
  %bf.load7 = load i32, ptr %phase6, align 4, !dbg !7420
  %bf.clear8 = and i32 %bf.load7, -65281, !dbg !7420
  %bf.set = or i32 %bf.clear8, 256, !dbg !7420
  store i32 %bf.set, ptr %phase6, align 4, !dbg !7420
  %6 = load i8, ptr %exclusive.addr, align 1, !dbg !7421, !range !6153, !noundef !774
  %tobool9 = trunc i8 %6 to i1, !dbg !7421
  %7 = load ptr, ptr %fc.addr, align 8, !dbg !7422
  %exclusive10 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 16, !dbg !7423
  %8 = zext i1 %tobool9 to i32, !dbg !7424
  %bf.load11 = load i32, ptr %exclusive10, align 4, !dbg !7424
  %bf.shl = shl i32 %8, 19, !dbg !7424
  %bf.clear12 = and i32 %bf.load11, -524289, !dbg !7424
  %bf.set13 = or i32 %bf.clear12, %bf.shl, !dbg !7424
  store i32 %bf.set13, ptr %exclusive10, align 4, !dbg !7424
  %bf.result.cast = trunc i32 %8 to i8, !dbg !7424
  %tobool14 = trunc i8 %bf.result.cast to i1, !dbg !7424
  %9 = load ptr, ptr %fc.addr, align 8, !dbg !7425
  %call15 = call i32 @vfs_get_tree(ptr noundef %9) #18, !dbg !7426
  store i32 %call15, ptr %ret, align 4, !dbg !7427
  %10 = load i32, ptr %ret, align 4, !dbg !7428
  %tobool16 = icmp ne i32 %10, 0, !dbg !7428
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !7430

if.then17:                                        ; preds = %if.end5
  %11 = load ptr, ptr %fc.addr, align 8, !dbg !7431
  %phase18 = getelementptr inbounds %struct.fs_context, ptr %11, i32 0, i32 16, !dbg !7433
  %bf.load19 = load i32, ptr %phase18, align 4, !dbg !7434
  %bf.clear20 = and i32 %bf.load19, -65281, !dbg !7434
  %bf.set21 = or i32 %bf.clear20, 1536, !dbg !7434
  store i32 %bf.set21, ptr %phase18, align 4, !dbg !7434
  %12 = load i32, ptr %ret, align 4, !dbg !7435
  store i32 %12, ptr %retval, align 4, !dbg !7436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7436

if.end22:                                         ; preds = %if.end5
  %13 = load ptr, ptr %fc.addr, align 8, !dbg !7437
  %root = getelementptr inbounds %struct.fs_context, ptr %13, i32 0, i32 5, !dbg !7438
  %14 = load ptr, ptr %root, align 8, !dbg !7438
  %d_sb = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 9, !dbg !7439
  %15 = load ptr, ptr %d_sb, align 8, !dbg !7439
  store ptr %15, ptr %sb, align 8, !dbg !7440
  %16 = load ptr, ptr %sb, align 8, !dbg !7441
  %call23 = call i32 @security_sb_kern_mount(ptr noundef %16) #18, !dbg !7442
  store i32 %call23, ptr %ret, align 4, !dbg !7443
  %17 = load i32, ptr %ret, align 4, !dbg !7444
  %tobool24 = icmp ne i32 %17, 0, !dbg !7444
  %lnot = xor i1 %tobool24, true, !dbg !7444
  %lnot25 = xor i1 %lnot, true, !dbg !7444
  %lnot.ext = zext i1 %lnot25 to i32, !dbg !7444
  %conv = sext i32 %lnot.ext to i64, !dbg !7444
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7444
  %tobool26 = icmp ne i64 %expval, 0, !dbg !7444
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !7446

if.then27:                                        ; preds = %if.end22
  %18 = load ptr, ptr %fc.addr, align 8, !dbg !7447
  call void @fc_drop_locked(ptr noundef %18) #18, !dbg !7449
  %19 = load ptr, ptr %fc.addr, align 8, !dbg !7450
  %phase28 = getelementptr inbounds %struct.fs_context, ptr %19, i32 0, i32 16, !dbg !7451
  %bf.load29 = load i32, ptr %phase28, align 4, !dbg !7452
  %bf.clear30 = and i32 %bf.load29, -65281, !dbg !7452
  %bf.set31 = or i32 %bf.clear30, 1536, !dbg !7452
  store i32 %bf.set31, ptr %phase28, align 4, !dbg !7452
  %20 = load i32, ptr %ret, align 4, !dbg !7453
  store i32 %20, ptr %retval, align 4, !dbg !7454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7454

if.end32:                                         ; preds = %if.end22
  %21 = load ptr, ptr %sb, align 8, !dbg !7455
  %s_umount = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 14, !dbg !7456
  call void @up_write(ptr noundef %s_umount) #18, !dbg !7457
  %22 = load ptr, ptr %fc.addr, align 8, !dbg !7458
  %phase33 = getelementptr inbounds %struct.fs_context, ptr %22, i32 0, i32 16, !dbg !7459
  %bf.load34 = load i32, ptr %phase33, align 4, !dbg !7460
  %bf.clear35 = and i32 %bf.load34, -65281, !dbg !7460
  %bf.set36 = or i32 %bf.clear35, 512, !dbg !7460
  store i32 %bf.set36, ptr %phase33, align 4, !dbg !7460
  store i32 0, ptr %retval, align 4, !dbg !7461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7461

cleanup:                                          ; preds = %if.end32, %if.then27, %if.then17, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !7462
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #17, !dbg !7462
  %23 = load i32, ptr %retval, align 4, !dbg !7462
  ret i32 %23, !dbg !7462
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vfs_cmd_reconfigure(ptr noundef %fc) #0 align 16 !dbg !7463 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !7465, metadata !DIExpression()), !dbg !7468
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #17, !dbg !7469
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !7466, metadata !DIExpression()), !dbg !7470
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !7471
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7467, metadata !DIExpression()), !dbg !7472
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !7473
  %phase = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 16, !dbg !7475
  %bf.load = load i32, ptr %phase, align 4, !dbg !7475
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !7475
  %bf.clear = and i32 %bf.lshr, 255, !dbg !7475
  %cmp = icmp ne i32 %bf.clear, 4, !dbg !7476
  br i1 %cmp, label %if.then, label %if.end, !dbg !7477

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !7478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7478

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fc.addr, align 8, !dbg !7479
  %phase1 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 16, !dbg !7480
  %bf.load2 = load i32, ptr %phase1, align 4, !dbg !7481
  %bf.clear3 = and i32 %bf.load2, -65281, !dbg !7481
  %bf.set = or i32 %bf.clear3, 1280, !dbg !7481
  store i32 %bf.set, ptr %phase1, align 4, !dbg !7481
  %2 = load ptr, ptr %fc.addr, align 8, !dbg !7482
  %root = getelementptr inbounds %struct.fs_context, ptr %2, i32 0, i32 5, !dbg !7483
  %3 = load ptr, ptr %root, align 8, !dbg !7483
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9, !dbg !7484
  %4 = load ptr, ptr %d_sb, align 8, !dbg !7484
  store ptr %4, ptr %sb, align 8, !dbg !7485
  %5 = load ptr, ptr %sb, align 8, !dbg !7486
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 48, !dbg !7488
  %6 = load ptr, ptr %s_user_ns, align 8, !dbg !7488
  %call = call zeroext i1 @ns_capable(ptr noundef %6, i32 noundef 21) #18, !dbg !7489
  br i1 %call, label %if.end9, label %if.then4, !dbg !7490

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %fc.addr, align 8, !dbg !7491
  %phase5 = getelementptr inbounds %struct.fs_context, ptr %7, i32 0, i32 16, !dbg !7493
  %bf.load6 = load i32, ptr %phase5, align 4, !dbg !7494
  %bf.clear7 = and i32 %bf.load6, -65281, !dbg !7494
  %bf.set8 = or i32 %bf.clear7, 1536, !dbg !7494
  store i32 %bf.set8, ptr %phase5, align 4, !dbg !7494
  store i32 -1, ptr %retval, align 4, !dbg !7495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7495

if.end9:                                          ; preds = %if.end
  %8 = load ptr, ptr %sb, align 8, !dbg !7496
  %s_umount = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 14, !dbg !7497
  call void @down_write(ptr noundef %s_umount) #18, !dbg !7498
  %9 = load ptr, ptr %fc.addr, align 8, !dbg !7499
  %call10 = call i32 @reconfigure_super(ptr noundef %9) #18, !dbg !7500
  store i32 %call10, ptr %ret, align 4, !dbg !7501
  %10 = load ptr, ptr %sb, align 8, !dbg !7502
  %s_umount11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 14, !dbg !7503
  call void @up_write(ptr noundef %s_umount11) #18, !dbg !7504
  %11 = load i32, ptr %ret, align 4, !dbg !7505
  %tobool = icmp ne i32 %11, 0, !dbg !7505
  br i1 %tobool, label %if.then12, label %if.end17, !dbg !7507

if.then12:                                        ; preds = %if.end9
  %12 = load ptr, ptr %fc.addr, align 8, !dbg !7508
  %phase13 = getelementptr inbounds %struct.fs_context, ptr %12, i32 0, i32 16, !dbg !7510
  %bf.load14 = load i32, ptr %phase13, align 4, !dbg !7511
  %bf.clear15 = and i32 %bf.load14, -65281, !dbg !7511
  %bf.set16 = or i32 %bf.clear15, 1536, !dbg !7511
  store i32 %bf.set16, ptr %phase13, align 4, !dbg !7511
  %13 = load i32, ptr %ret, align 4, !dbg !7512
  store i32 %13, ptr %retval, align 4, !dbg !7513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7513

if.end17:                                         ; preds = %if.end9
  %14 = load ptr, ptr %fc.addr, align 8, !dbg !7514
  call void @vfs_clean_context(ptr noundef %14) #18, !dbg !7515
  store i32 0, ptr %retval, align 4, !dbg !7516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7516

cleanup:                                          ; preds = %if.end17, %if.then12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !7517
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #17, !dbg !7517
  %15 = load i32, ptr %retval, align 4, !dbg !7517
  ret i32 %15, !dbg !7517
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7518 dso_local i32 @vfs_parse_fs_param(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7519 dso_local zeroext i1 @mount_capable(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7522 dso_local i32 @vfs_get_tree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7523 dso_local i32 @security_sb_kern_mount(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7524 dso_local void @fc_drop_locked(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7525 dso_local void @up_write(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7529 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7532 dso_local void @down_write(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7533 dso_local i32 @reconfigure_super(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7534 dso_local void @vfs_clean_context(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6026, !6027, !6028, !6029, !6030, !6031, !6032, !6033}
!llvm.ident = !{!6034}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fscontext_fops", scope: !2, file: !3, line: 78, type: !4999, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.fsopen.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/fsopen\22 -D KBUILD_BASENAME=\22fsopen\22 -D KBUILD_MODNAME=\22fsopen\22 -D __KBUILD_MODNAME=kmod_fsopen -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/fsopen.ll fs/fsopen.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !312, globals: !6011, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/fsopen.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3481c371be000418804dc6c7f795a990")
!4 = !{!5, !13, !22, !27, !123, !129, !145, !153, !160, !166, !173, !181, !188, !194, !203, !208, !213, !219, !228, !239, !245, !253, !258, !267, !272, !278, !285, !290, !300}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !14, line: 51, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!17 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!18 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!19 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!20 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!21 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !23, line: 65, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!26 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !29, file: !28, line: 147, baseType: !7, size: 32, elements: !120)
!28 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !28, line: 135, size: 512, elements: !30)
!30 = !{!31, !35, !37, !39, !43, !44, !60, !118, !119}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !29, file: !28, line: 136, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 137, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !29, file: !28, line: 138, baseType: !38, size: 32, offset: 128)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !29, file: !28, line: 139, baseType: !40, size: 16, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !41, line: 24, baseType: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !28, line: 150, baseType: !27, size: 32, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !29, file: !28, line: 151, baseType: !45, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !28, line: 64, baseType: !47)
!47 = !DISubroutineType(types: !48)
!48 = !{!38, !49, !38, !36, !50, !56}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 61, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !53, line: 72, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !53, line: 16, baseType: !55)
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !41, line: 52, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !53, line: 88, baseType: !59)
!59 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !29, file: !28, line: 152, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !28, line: 117, size: 256, elements: !63)
!63 = !{!64, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !62, file: !28, line: 118, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 174, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 172, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !66, file: !41, line: 173, baseType: !38, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !62, file: !28, line: 119, baseType: !70, size: 192, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !71, line: 41, baseType: !72)
!71 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !71, line: 37, size: 192, elements: !73)
!73 = !{!74, !112}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !72, file: !71, line: 38, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !76, line: 29, baseType: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !76, line: 17, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !76, line: 18, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !76, line: 18, size: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !80, file: !76, line: 19, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !84, line: 14, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !83, file: !84, line: 15, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !88, line: 44, baseType: !89)
!88 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !88, line: 14, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 15, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 15, size: 32, elements: !93)
!93 = !{!94, !95, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !88, line: 16, baseType: !65, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 24, baseType: !96, size: 16)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 24, size: 16, elements: !97)
!97 = !{!98, !104}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !96, file: !88, line: 25, baseType: !99, size: 8)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !100, line: 17, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !102, line: 21, baseType: !103)
!102 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !96, file: !88, line: 26, baseType: !99, size: 8, offset: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 28, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 28, size: 32, elements: !107)
!107 = !{!108, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !106, file: !88, line: 29, baseType: !109, size: 16)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !100, line: 19, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !102, line: 24, baseType: !42)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !106, file: !88, line: 30, baseType: !109, size: 16, offset: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !72, file: !71, line: 39, baseType: !113, size: 128, offset: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 190, size: 128, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !41, line: 191, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !113, file: !41, line: 191, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !29, file: !28, line: 153, baseType: !36, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !29, file: !28, line: 154, baseType: !36, size: 64, offset: 448)
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!122 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !124, line: 16, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "TT_NONE", value: 0)
!127 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!128 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !130, line: 1325, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!132 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!133 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!134 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!135 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!136 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!137 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!138 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!139 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!140 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!141 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!142 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!143 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!144 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !146, line: 68, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!147 = !{!148, !149, !150, !151, !152}
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!149 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!150 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!151 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!152 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !154, line: 51, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!155 = !{!156, !157, !158, !159}
!156 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!157 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!158 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!159 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !161, line: 45, baseType: !7, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!162 = !{!163, !164, !165}
!163 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!164 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!165 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !167, line: 487, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!168 = !{!169, !170, !171, !172}
!169 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!170 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!171 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!172 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !174, line: 620, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!177 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!178 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!179 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!180 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !174, line: 597, baseType: !38, size: 32, elements: !182)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!184 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!185 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!186 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!187 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !189, line: 26, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!190 = !{!191, !192, !193}
!191 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!192 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!193 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !167, line: 547, baseType: !7, size: 32, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202}
!196 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!197 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!198 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!199 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!200 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!201 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!202 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !167, line: 564, baseType: !7, size: 32, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!206 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!207 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !167, line: 577, baseType: !7, size: 32, elements: !209)
!209 = !{!210, !211, !212}
!210 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!211 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!212 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !167, line: 503, baseType: !7, size: 32, elements: !214)
!214 = !{!215, !216, !217, !218}
!215 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!216 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!217 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!218 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !220, line: 593, baseType: !38, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!221 = !{!222, !223, !224, !225, !226, !227}
!222 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!223 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!224 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!225 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!226 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!227 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !229, line: 253, baseType: !7, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238}
!231 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!232 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!233 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!234 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!235 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!236 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!237 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!238 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !229, line: 158, baseType: !7, size: 32, elements: !240)
!240 = !{!241, !242, !243, !244}
!241 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!242 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!243 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!244 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !246, line: 9, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!247 = !{!248, !249, !250, !251, !252}
!248 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!249 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!250 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!251 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!252 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !14, line: 29, baseType: !7, size: 32, elements: !254)
!254 = !{!255, !256, !257}
!255 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!256 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!257 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !14, line: 38, baseType: !7, size: 32, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266}
!260 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!261 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!262 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!263 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!264 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!265 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!266 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !268, line: 2052, baseType: !7, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!269 = !{!270, !271}
!270 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!271 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !273, line: 54, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!274 = !{!275, !276, !277}
!275 = !DIEnumerator(name: "USRQUOTA", value: 0)
!276 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!277 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !279, line: 15, baseType: !7, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!280 = !{!281, !282, !283, !284}
!281 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!282 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!283 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!284 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !286, line: 10, baseType: !7, size: 32, elements: !287)
!286 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!287 = !{!288, !289}
!288 = !DIEnumerator(name: "false", value: 0)
!289 = !DIEnumerator(name: "true", value: 1)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !291, line: 364, baseType: !7, size: 32, elements: !292)
!291 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!292 = !{!293, !294, !295, !296, !297, !298, !299}
!293 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!294 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!295 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!296 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!297 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!298 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!299 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsconfig_command", file: !301, line: 96, baseType: !7, size: 32, elements: !302)
!301 = !DIFile(filename: "./include/uapi/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f185cc6d3d28d2202e6c50c75996877c")
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311}
!303 = !DIEnumerator(name: "FSCONFIG_SET_FLAG", value: 0)
!304 = !DIEnumerator(name: "FSCONFIG_SET_STRING", value: 1)
!305 = !DIEnumerator(name: "FSCONFIG_SET_BINARY", value: 2)
!306 = !DIEnumerator(name: "FSCONFIG_SET_PATH", value: 3)
!307 = !DIEnumerator(name: "FSCONFIG_SET_PATH_EMPTY", value: 4)
!308 = !DIEnumerator(name: "FSCONFIG_SET_FD", value: 5)
!309 = !DIEnumerator(name: "FSCONFIG_CMD_CREATE", value: 6)
!310 = !DIEnumerator(name: "FSCONFIG_CMD_RECONFIGURE", value: 7)
!311 = !DIEnumerator(name: "FSCONFIG_CMD_CREATE_EXCL", value: 8)
!312 = !{!36, !7, !38, !32, !55, !313, !314, !315, !317, !319}
!313 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 154, baseType: !7)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !268, line: 994, size: 1856, align: 64, elements: !321)
!321 = !{!322, !341, !342, !344, !353, !366, !367, !368, !5991, !5992, !6001, !6002, !6003, !6004, !6005, !6006, !6007, !6008, !6009, !6010}
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !268, line: 995, baseType: !323, size: 128)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !268, line: 995, size: 128, elements: !324)
!324 = !{!325, !331, !340}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !323, file: !268, line: 996, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !327, line: 60, size: 64, elements: !328)
!327 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !327, line: 61, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !323, file: !268, line: 997, baseType: !332, size: 128, align: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !41, line: 232, size: 128, align: 64, elements: !333)
!333 = !{!334, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !41, line: 233, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !332, file: !41, line: 234, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !335}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !323, file: !268, line: 998, baseType: !7, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !320, file: !268, line: 1005, baseType: !75, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !320, file: !268, line: 1006, baseType: !343, size: 32, offset: 160)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !41, line: 156, baseType: !7)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !320, file: !268, line: 1007, baseType: !345, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !346, line: 13, baseType: !347)
!346 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !41, line: 181, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 179, size: 64, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !348, file: !41, line: 180, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !100, line: 22, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !102, line: 30, baseType: !59)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !320, file: !268, line: 1008, baseType: !354, size: 256, offset: 256)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !355, line: 66, size: 256, elements: !356)
!355 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!356 = !{!357, !358, !360, !365}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !354, file: !355, line: 67, baseType: !345, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !354, file: !355, line: 68, baseType: !359, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !84, line: 23, baseType: !83)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !354, file: !355, line: 70, baseType: !361, size: 32, offset: 96)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !362, line: 15, size: 32, elements: !363)
!362 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !361, file: !362, line: 20, baseType: !65, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !354, file: !355, line: 72, baseType: !113, size: 128, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !320, file: !268, line: 1009, baseType: !57, size: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !320, file: !268, line: 1010, baseType: !7, size: 32, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !320, file: !268, line: 1011, baseType: !369, size: 256, offset: 640)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !268, line: 948, size: 256, elements: !370)
!370 = !{!371, !394, !5987, !5988, !5989, !5990}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !369, file: !268, line: 949, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !373, line: 34, baseType: !374)
!373 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 25, size: 64, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !374, file: !373, line: 26, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !378, line: 27, baseType: !379)
!378 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !378, line: 13, size: 64, elements: !380)
!380 = !{!381, !393}
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !378, line: 14, baseType: !382, size: 32)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !378, line: 14, size: 32, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !382, file: !378, line: 15, baseType: !65, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !378, line: 16, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !378, line: 16, size: 32, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !386, file: !378, line: 18, baseType: !99, size: 8)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !386, file: !378, line: 19, baseType: !390, size: 24, offset: 8)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 24, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 3)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !379, file: !378, line: 26, baseType: !87, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !369, file: !268, line: 950, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !246, line: 59, size: 768, elements: !397)
!397 = !{!398, !404, !405, !406, !419, !420, !421, !422}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !396, file: !246, line: 61, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !400, line: 113, baseType: !401)
!400 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !400, line: 111, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !401, file: !400, line: 112, baseType: !65, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !396, file: !246, line: 62, baseType: !7, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !396, file: !246, line: 63, baseType: !75, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !396, file: !246, line: 65, baseType: !407, size: 256, offset: 128)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 256, elements: !417)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !41, line: 194, size: 64, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !408, file: !41, line: 195, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !41, line: 198, size: 128, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !41, line: 199, baseType: !411, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !412, file: !41, line: 199, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!417 = !{!418}
!418 = !DISubrange(count: 4)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !396, file: !246, line: 66, baseType: !408, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !396, file: !246, line: 68, baseType: !70, size: 192, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !396, file: !246, line: 69, baseType: !332, size: 128, align: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !396, file: !246, line: 70, baseType: !423, offset: 768)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, elements: !1201)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !246, line: 54, size: 128, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !424, file: !246, line: 55, baseType: !38, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !424, file: !246, line: 56, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !430, line: 26, size: 1152, elements: !431)
!430 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!431 = !{!432, !445, !446, !447, !5966, !5967, !5968, !5969, !5982, !5983, !5984, !5985, !5986}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !429, file: !430, line: 27, baseType: !433, size: 192)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !434, line: 19, size: 192, elements: !435)
!434 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!435 = !{!436, !443, !444}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !433, file: !434, line: 20, baseType: !437, size: 128)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !438, line: 296, size: 128, elements: !439)
!438 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!439 = !{!440, !441, !442}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !437, file: !438, line: 297, baseType: !75, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !437, file: !438, line: 299, baseType: !314, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !437, file: !438, line: 300, baseType: !36, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !433, file: !434, line: 21, baseType: !7, size: 32, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !433, file: !434, line: 22, baseType: !7, size: 32, offset: 160)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !429, file: !430, line: 28, baseType: !332, size: 128, align: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !429, file: !430, line: 29, baseType: !7, size: 32, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !429, file: !430, line: 30, baseType: !448, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !450, line: 746, size: 58368, elements: !451)
!450 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!451 = !{!452, !462, !463, !464, !465, !466, !467, !468, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !544, !555, !655, !659, !662, !693, !694, !695, !696, !707, !709, !710, !711, !712, !713, !714, !725, !726, !729, !730, !731, !732, !733, !734, !735, !736, !743, !744, !751, !752, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1287, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1302, !1303, !1304, !1305, !1307, !1308, !1309, !1310, !1311, !1312, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1336, !1342, !1412, !1413, !1414, !1415, !1419, !1422, !1429, !1434, !1437, !1440, !1443, !5242, !5440, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5478, !5479, !5480, !5489, !5497, !5498, !5499, !5500, !5501, !5506, !5507, !5508, !5511, !5512, !5515, !5518, !5521, !5529, !5532, !5533, !5619, !5620, !5621, !5622, !5623, !5629, !5630, !5631, !5632, !5633, !5634, !5637, !5640, !5641, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5684, !5685, !5691, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5703, !5775, !5777, !5778, !5779, !5780, !5781, !5782, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5799, !5800, !5801}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !449, file: !450, line: 752, baseType: !453, size: 192)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !454, line: 56, size: 192, elements: !455)
!454 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!455 = !{!456, !457, !458, !461}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !454, line: 57, baseType: !55, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !453, file: !454, line: 58, baseType: !55, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !453, file: !454, line: 59, baseType: !459, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100, line: 21, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !102, line: 27, baseType: !7)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !453, file: !454, line: 61, baseType: !459, size: 32, offset: 160)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !449, file: !450, line: 754, baseType: !7, size: 32, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !449, file: !450, line: 767, baseType: !36, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !449, file: !450, line: 768, baseType: !399, size: 32, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !450, line: 770, baseType: !7, size: 32, offset: 352)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !449, file: !450, line: 771, baseType: !7, size: 32, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !449, file: !450, line: 774, baseType: !38, size: 32, offset: 416)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !449, file: !450, line: 775, baseType: !469, size: 128, offset: 448)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !470, line: 58, size: 128, elements: !471)
!470 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!471 = !{!472, !473, !478, !479}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !469, file: !470, line: 59, baseType: !326, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !470, line: 60, baseType: !474, size: 32, offset: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !470, line: 60, size: 32, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !474, file: !470, line: 61, baseType: !7, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !474, file: !470, line: 62, baseType: !65, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !469, file: !470, line: 65, baseType: !109, size: 16, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !469, file: !470, line: 65, baseType: !109, size: 16, offset: 112)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !449, file: !450, line: 776, baseType: !7, size: 32, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !449, file: !450, line: 777, baseType: !55, size: 64, offset: 640)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !449, file: !450, line: 778, baseType: !448, size: 64, offset: 704)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !449, file: !450, line: 787, baseType: !38, size: 32, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !449, file: !450, line: 788, baseType: !38, size: 32, offset: 800)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !449, file: !450, line: 790, baseType: !38, size: 32, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !449, file: !450, line: 792, baseType: !38, size: 32, offset: 864)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !449, file: !450, line: 793, baseType: !38, size: 32, offset: 896)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !449, file: !450, line: 794, baseType: !38, size: 32, offset: 928)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !449, file: !450, line: 795, baseType: !7, size: 32, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !449, file: !450, line: 797, baseType: !491, size: 2048, offset: 1024)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !450, line: 551, size: 2048, elements: !492)
!492 = !{!493, !498, !506, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !523, !526, !527, !528}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !491, file: !450, line: 553, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !450, line: 411, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !494, file: !450, line: 412, baseType: !55, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !494, file: !450, line: 413, baseType: !459, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !491, file: !450, line: 554, baseType: !499, size: 192, align: 64, offset: 128)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !500, line: 5, size: 192, align: 64, elements: !501)
!500 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!501 = !{!502, !503, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !499, file: !500, line: 6, baseType: !55, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !499, file: !500, line: 7, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !499, file: !500, line: 8, baseType: !504, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !491, file: !450, line: 555, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !100, line: 23, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !102, line: 31, baseType: !509)
!509 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !491, file: !450, line: 556, baseType: !507, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !491, file: !450, line: 558, baseType: !113, size: 128, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !491, file: !450, line: 559, baseType: !7, size: 32, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !491, file: !450, line: 561, baseType: !507, size: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !491, file: !450, line: 562, baseType: !507, size: 64, offset: 704)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !491, file: !450, line: 563, baseType: !507, size: 64, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !491, file: !450, line: 564, baseType: !507, size: 64, offset: 832)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !491, file: !450, line: 565, baseType: !351, size: 64, offset: 896)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !491, file: !450, line: 566, baseType: !507, size: 64, offset: 960)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !491, file: !450, line: 568, baseType: !507, size: 64, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !491, file: !450, line: 571, baseType: !38, size: 32, offset: 1088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !491, file: !450, line: 572, baseType: !522, size: 64, offset: 1152)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !491, file: !450, line: 574, baseType: !524, size: 64, offset: 1216)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !450, line: 49, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !491, file: !450, line: 576, baseType: !524, size: 64, offset: 1280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !491, file: !450, line: 578, baseType: !55, size: 64, offset: 1344)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !491, file: !450, line: 588, baseType: !529, size: 512, align: 512, offset: 1536)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !450, line: 497, size: 512, align: 512, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !529, file: !450, line: 498, baseType: !507, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !529, file: !450, line: 499, baseType: !507, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !529, file: !450, line: 500, baseType: !507, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !529, file: !450, line: 501, baseType: !459, size: 32, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !529, file: !450, line: 502, baseType: !459, size: 32, offset: 224)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !529, file: !450, line: 503, baseType: !55, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !529, file: !450, line: 504, baseType: !55, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !529, file: !450, line: 505, baseType: !55, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !529, file: !450, line: 506, baseType: !540, size: 64, align: 64, offset: 448)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !450, line: 445, size: 64, align: 64, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !540, file: !450, line: 446, baseType: !7, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !540, file: !450, line: 447, baseType: !7, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !449, file: !450, line: 798, baseType: !545, size: 384, offset: 3072)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !450, line: 592, size: 384, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !545, file: !450, line: 593, baseType: !113, size: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !545, file: !450, line: 594, baseType: !55, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !545, file: !450, line: 595, baseType: !55, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !545, file: !450, line: 596, baseType: !7, size: 32, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !545, file: !450, line: 597, baseType: !42, size: 16, offset: 288)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !545, file: !450, line: 598, baseType: !42, size: 16, offset: 304)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !545, file: !450, line: 600, baseType: !554, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !449, file: !450, line: 799, baseType: !556, size: 1792, offset: 3456)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !450, line: 610, size: 1792, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !652, !653}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !556, file: !450, line: 611, baseType: !499, size: 192, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !556, file: !450, line: 618, baseType: !507, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !556, file: !450, line: 619, baseType: !507, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !556, file: !450, line: 620, baseType: !507, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !556, file: !450, line: 621, baseType: !507, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !556, file: !450, line: 622, baseType: !507, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !556, file: !450, line: 629, baseType: !351, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !556, file: !450, line: 630, baseType: !507, size: 64, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !450, line: 631, baseType: !7, size: 32, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !556, file: !450, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !556, file: !450, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !556, file: !450, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !556, file: !450, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !556, file: !450, line: 662, baseType: !572, size: 512, offset: 704)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !23, line: 118, size: 512, elements: !573)
!573 = !{!574, !582, !583, !588, !648, !649, !650, !651}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !572, file: !23, line: 119, baseType: !575, size: 256)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !576, line: 9, size: 256, elements: !577)
!576 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !575, file: !576, line: 10, baseType: !499, size: 192, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !575, file: !576, line: 11, baseType: !580, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !581, line: 29, baseType: !351)
!581 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !572, file: !23, line: 120, baseType: !580, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !572, file: !23, line: 121, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!22, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !572, file: !23, line: 122, baseType: !589, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !23, line: 159, size: 512, align: 512, elements: !591)
!591 = !{!592, !617, !618, !621, !631, !632, !643, !647}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !590, file: !23, line: 160, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !23, line: 215, size: 4608, align: 512, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !594, file: !23, line: 216, baseType: !359, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !594, file: !23, line: 217, baseType: !7, size: 32, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !594, file: !23, line: 218, baseType: !7, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !594, file: !23, line: 219, baseType: !7, size: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !594, file: !23, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !594, file: !23, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !594, file: !23, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !594, file: !23, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !594, file: !23, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !594, file: !23, line: 226, baseType: !7, size: 32, offset: 160)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !594, file: !23, line: 227, baseType: !42, size: 16, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !594, file: !23, line: 228, baseType: !42, size: 16, offset: 208)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !594, file: !23, line: 229, baseType: !7, size: 32, offset: 224)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !594, file: !23, line: 235, baseType: !580, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !594, file: !23, line: 236, baseType: !587, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !594, file: !23, line: 237, baseType: !580, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !594, file: !23, line: 238, baseType: !587, size: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !594, file: !23, line: 239, baseType: !614, size: 4096, align: 512, offset: 512)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 4096, align: 512, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 8)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !590, file: !23, line: 161, baseType: !7, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !590, file: !23, line: 162, baseType: !619, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !41, line: 32, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !53, line: 96, baseType: !38)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !590, file: !23, line: 163, baseType: !622, size: 32, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !623, line: 274, baseType: !624)
!623 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !623, line: 274, size: 32, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !624, file: !623, line: 274, baseType: !627, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !623, line: 69, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !623, line: 64, size: 32, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !628, file: !623, line: 65, baseType: !7, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !590, file: !23, line: 164, baseType: !587, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !590, file: !23, line: 165, baseType: !633, size: 128, offset: 256)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !576, line: 14, size: 128, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !633, file: !576, line: 15, baseType: !636, size: 128)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !500, line: 26, size: 128, elements: !637)
!637 = !{!638, !642}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !636, file: !500, line: 27, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !500, line: 12, size: 64, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !639, file: !500, line: 13, baseType: !504, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !636, file: !500, line: 28, baseType: !504, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !590, file: !23, line: 166, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!580}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !590, file: !23, line: 167, baseType: !580, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !572, file: !23, line: 123, baseType: !99, size: 8, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !572, file: !23, line: 124, baseType: !99, size: 8, offset: 456)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !572, file: !23, line: 125, baseType: !99, size: 8, offset: 464)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !572, file: !23, line: 126, baseType: !99, size: 8, offset: 472)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !556, file: !450, line: 671, baseType: !572, size: 512, offset: 1216)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !556, file: !450, line: 679, baseType: !654, size: 64, offset: 1728)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !449, file: !450, line: 800, baseType: !656, size: 64, offset: 5248)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !450, line: 800, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !449, file: !450, line: 809, baseType: !660, size: 64, offset: 5312)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !450, line: 70, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !449, file: !450, line: 825, baseType: !663, size: 2048, align: 512, offset: 5632)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !450, line: 509, size: 2048, align: 512, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !663, file: !450, line: 511, baseType: !507, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !663, file: !450, line: 512, baseType: !507, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !663, file: !450, line: 513, baseType: !507, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !663, file: !450, line: 514, baseType: !507, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !663, file: !450, line: 515, baseType: !507, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !663, file: !450, line: 516, baseType: !507, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !663, file: !450, line: 518, baseType: !507, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !663, file: !450, line: 519, baseType: !507, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !663, file: !450, line: 520, baseType: !351, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !663, file: !450, line: 522, baseType: !507, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !663, file: !450, line: 523, baseType: !507, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !663, file: !450, line: 524, baseType: !351, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !663, file: !450, line: 526, baseType: !351, size: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !663, file: !450, line: 527, baseType: !507, size: 64, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !663, file: !450, line: 529, baseType: !507, size: 64, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !663, file: !450, line: 530, baseType: !507, size: 64, offset: 960)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !663, file: !450, line: 531, baseType: !507, size: 64, offset: 1024)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !663, file: !450, line: 532, baseType: !507, size: 64, offset: 1088)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !663, file: !450, line: 533, baseType: !507, size: 64, offset: 1152)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !663, file: !450, line: 535, baseType: !507, size: 64, offset: 1216)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !663, file: !450, line: 536, baseType: !507, size: 64, offset: 1280)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !663, file: !450, line: 537, baseType: !507, size: 64, offset: 1344)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !663, file: !450, line: 538, baseType: !507, size: 64, offset: 1408)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !663, file: !450, line: 539, baseType: !507, size: 64, offset: 1472)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !663, file: !450, line: 540, baseType: !507, size: 64, offset: 1536)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !663, file: !450, line: 541, baseType: !507, size: 64, offset: 1600)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !663, file: !450, line: 542, baseType: !507, size: 64, offset: 1664)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !663, file: !450, line: 543, baseType: !507, size: 64, offset: 1728)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !449, file: !450, line: 833, baseType: !7, size: 32, offset: 7680)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !449, file: !450, line: 836, baseType: !7, size: 32, offset: 7712)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !449, file: !450, line: 837, baseType: !38, size: 32, offset: 7744)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !449, file: !450, line: 838, baseType: !697, size: 64, offset: 7808)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !700, line: 19, baseType: !701)
!700 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !700, line: 19, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !701, file: !700, line: 19, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 1)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !449, file: !450, line: 839, baseType: !708, size: 64, offset: 7872)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !449, file: !450, line: 840, baseType: !699, size: 64, offset: 7936)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !449, file: !450, line: 841, baseType: !36, size: 64, offset: 8000)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !449, file: !450, line: 843, baseType: !42, size: 16, offset: 8064)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !449, file: !450, line: 845, baseType: !42, size: 16, offset: 8080)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !449, file: !450, line: 848, baseType: !38, size: 32, offset: 8096)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !449, file: !450, line: 849, baseType: !715, size: 32, offset: 8128)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !450, line: 718, size: 32, elements: !716)
!716 = !{!717, !724}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !715, file: !450, line: 724, baseType: !718, size: 32)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !450, line: 719, size: 32, elements: !719)
!719 = !{!720, !721, !722, !723}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !718, file: !450, line: 720, baseType: !99, size: 8)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !718, file: !450, line: 721, baseType: !99, size: 8, offset: 8)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !718, file: !450, line: 722, baseType: !99, size: 8, offset: 16)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !718, file: !450, line: 723, baseType: !99, size: 8, offset: 24)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !715, file: !450, line: 725, baseType: !459, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !449, file: !450, line: 850, baseType: !113, size: 128, offset: 8192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !449, file: !450, line: 851, baseType: !727, size: 64, offset: 8320)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !450, line: 60, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !449, file: !450, line: 855, baseType: !55, size: 64, offset: 8384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !449, file: !450, line: 856, baseType: !99, size: 8, offset: 8448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !449, file: !450, line: 857, baseType: !99, size: 8, offset: 8456)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !449, file: !450, line: 858, baseType: !38, size: 32, offset: 8480)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !449, file: !450, line: 859, baseType: !113, size: 128, offset: 8512)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !449, file: !450, line: 860, baseType: !38, size: 32, offset: 8640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !449, file: !450, line: 861, baseType: !113, size: 128, offset: 8704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !449, file: !450, line: 873, baseType: !737, size: 256, offset: 8832)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !450, line: 376, size: 256, elements: !738)
!738 = !{!739, !740, !741, !742}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !737, file: !450, line: 381, baseType: !55, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !737, file: !450, line: 384, baseType: !509, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !737, file: !450, line: 389, baseType: !509, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !737, file: !450, line: 392, baseType: !509, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !449, file: !450, line: 875, baseType: !113, size: 128, offset: 9088)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !449, file: !450, line: 877, baseType: !745, size: 320, offset: 9216)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !746, line: 86, size: 320, elements: !747)
!746 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!747 = !{!748, !749, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !745, file: !746, line: 87, baseType: !38, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !745, file: !746, line: 88, baseType: !113, size: 128, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !745, file: !746, line: 89, baseType: !113, size: 128, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !449, file: !450, line: 878, baseType: !499, size: 192, align: 64, offset: 9536)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !449, file: !450, line: 881, baseType: !753, size: 64, offset: 9728)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !130, line: 733, size: 10240, elements: !755)
!755 = !{!756, !1199}
!756 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !130, line: 734, baseType: !757, size: 10240)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !130, line: 734, size: 10240, elements: !758)
!758 = !{!759, !763, !777, !781, !782, !783, !784, !785, !786, !795, !796, !797, !803, !804, !805, !806, !807, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !844, !856, !859, !905, !906, !907, !910, !1185, !1186, !1189, !1190, !1191, !1197, !1198}
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !130, line: 739, baseType: !760, size: 512, align: 512)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !130, line: 739, size: 512, align: 512, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !760, file: !130, line: 747, baseType: !65, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !757, file: !130, line: 750, baseType: !764, size: 128, offset: 512)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !765, line: 218, size: 128, elements: !766)
!765 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!766 = !{!767, !775, !776}
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 219, baseType: !768, size: 32)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 219, size: 32, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !768, file: !765, line: 220, baseType: !75, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !768, file: !765, line: 221, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !765, line: 197, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !765, line: 197, elements: !774)
!774 = !{}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !764, file: !765, line: 223, baseType: !7, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !764, file: !765, line: 224, baseType: !36, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !757, file: !130, line: 752, baseType: !778, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!55, !319, !55, !55, !55, !55}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !757, file: !130, line: 756, baseType: !55, size: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !757, file: !130, line: 757, baseType: !55, size: 64, offset: 768)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !757, file: !130, line: 760, baseType: !55, size: 64, offset: 832)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !757, file: !130, line: 761, baseType: !55, size: 64, offset: 896)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !757, file: !130, line: 763, baseType: !55, size: 64, offset: 960)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !757, file: !130, line: 764, baseType: !787, size: 64, offset: 1024)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !789, line: 299, baseType: !790)
!789 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 299, size: 64, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !790, file: !789, line: 299, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !794, line: 18, baseType: !55)
!794 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!795 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !757, file: !130, line: 773, baseType: !65, size: 32, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !757, file: !130, line: 785, baseType: !65, size: 32, offset: 1120)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !757, file: !130, line: 795, baseType: !798, size: 64, offset: 1152)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !130, line: 726, size: 128, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !799, file: !130, line: 727, baseType: !507, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !799, file: !130, line: 728, baseType: !38, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !757, file: !130, line: 801, baseType: !55, size: 64, offset: 1216)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !757, file: !130, line: 804, baseType: !345, size: 64, offset: 1280)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !757, file: !130, line: 806, baseType: !38, size: 32, offset: 1344)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !757, file: !130, line: 808, baseType: !75, size: 32, offset: 1376)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !757, file: !130, line: 823, baseType: !808, size: 320, offset: 1408)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !809, line: 48, size: 320, elements: !810)
!809 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!810 = !{!811, !812, !813, !814, !815}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !808, file: !809, line: 49, baseType: !345, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !808, file: !809, line: 55, baseType: !345, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !808, file: !809, line: 57, baseType: !361, size: 32, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !808, file: !809, line: 59, baseType: !359, size: 32, offset: 160)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !808, file: !809, line: 60, baseType: !113, size: 128, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !757, file: !130, line: 825, baseType: !113, size: 128, offset: 1728)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !757, file: !130, line: 845, baseType: !38, size: 32, offset: 1856)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !757, file: !130, line: 849, baseType: !55, size: 64, offset: 1920)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !757, file: !130, line: 850, baseType: !55, size: 64, offset: 1984)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !757, file: !130, line: 852, baseType: !55, size: 64, offset: 2048)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !757, file: !130, line: 853, baseType: !55, size: 64, offset: 2112)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !757, file: !130, line: 854, baseType: !347, size: 64, offset: 2176)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !757, file: !130, line: 855, baseType: !55, size: 64, offset: 2240)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !757, file: !130, line: 856, baseType: !55, size: 64, offset: 2304)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !757, file: !130, line: 857, baseType: !55, size: 64, offset: 2368)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !757, file: !130, line: 858, baseType: !55, size: 64, offset: 2432)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !757, file: !130, line: 865, baseType: !627, size: 32, offset: 2496)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !757, file: !130, line: 867, baseType: !75, size: 32, offset: 2528)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !757, file: !130, line: 869, baseType: !55, size: 64, offset: 2560)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !757, file: !130, line: 869, baseType: !55, size: 64, offset: 2624)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !757, file: !130, line: 869, baseType: !55, size: 64, offset: 2688)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !757, file: !130, line: 869, baseType: !55, size: 64, offset: 2752)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !757, file: !130, line: 870, baseType: !55, size: 64, offset: 2816)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !757, file: !130, line: 870, baseType: !55, size: 64, offset: 2880)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !757, file: !130, line: 870, baseType: !55, size: 64, offset: 2944)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !757, file: !130, line: 871, baseType: !55, size: 64, offset: 3008)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !757, file: !130, line: 871, baseType: !55, size: 64, offset: 3072)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !757, file: !130, line: 871, baseType: !55, size: 64, offset: 3136)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !757, file: !130, line: 871, baseType: !55, size: 64, offset: 3200)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !757, file: !130, line: 873, baseType: !841, size: 3328, offset: 3264)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3328, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 52)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !757, file: !130, line: 875, baseType: !845, size: 1280, offset: 6592)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 1280, elements: !417)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !847, line: 22, size: 320, elements: !848)
!847 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!848 = !{!849, !850, !851, !852}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !846, file: !847, line: 23, baseType: !359, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !846, file: !847, line: 24, baseType: !351, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !846, file: !847, line: 26, baseType: !113, size: 128, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !846, file: !847, line: 28, baseType: !853, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !100, line: 20, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !102, line: 26, baseType: !38)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !757, file: !130, line: 877, baseType: !857, size: 64, offset: 7872)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !130, line: 877, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !757, file: !130, line: 880, baseType: !860, size: 1088, offset: 7936)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !861, line: 72, baseType: !862)
!861 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !861, line: 23, size: 1088, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !871, !872, !873, !874, !899, !900, !901}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !862, file: !861, line: 28, baseType: !507, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !862, file: !861, line: 38, baseType: !347, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !862, file: !861, line: 40, baseType: !55, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !862, file: !861, line: 43, baseType: !808, size: 320, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !862, file: !861, line: 44, baseType: !869, size: 64, offset: 512)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !861, line: 44, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !862, file: !861, line: 48, baseType: !55, size: 64, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !862, file: !861, line: 59, baseType: !354, size: 256, offset: 640)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !862, file: !861, line: 60, baseType: !36, size: 64, offset: 896)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !862, file: !861, line: 61, baseType: !875, size: 64, offset: 960)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !878, line: 13, size: 1216, elements: !879)
!878 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !877, file: !878, line: 14, baseType: !36, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !877, file: !878, line: 15, baseType: !55, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !877, file: !878, line: 17, baseType: !55, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !877, file: !878, line: 17, baseType: !55, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !877, file: !878, line: 18, baseType: !55, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !877, file: !878, line: 18, baseType: !55, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !877, file: !878, line: 19, baseType: !317, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !877, file: !878, line: 21, baseType: !313, size: 64, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !877, file: !878, line: 23, baseType: !313, size: 64, offset: 512)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !877, file: !878, line: 24, baseType: !313, size: 64, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !877, file: !878, line: 25, baseType: !313, size: 64, offset: 640)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !877, file: !878, line: 26, baseType: !313, size: 64, offset: 704)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !877, file: !878, line: 27, baseType: !313, size: 64, offset: 768)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !877, file: !878, line: 28, baseType: !313, size: 64, offset: 832)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !877, file: !878, line: 29, baseType: !313, size: 64, offset: 896)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !877, file: !878, line: 30, baseType: !313, size: 64, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !877, file: !878, line: 31, baseType: !313, size: 64, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !877, file: !878, line: 32, baseType: !313, size: 64, offset: 1088)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !877, file: !878, line: 33, baseType: !313, size: 64, offset: 1152)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !862, file: !861, line: 63, baseType: !65, size: 32, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !862, file: !861, line: 69, baseType: !109, size: 16, offset: 1056)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !862, file: !861, line: 70, baseType: !902, size: 16, offset: 1072)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !100, line: 18, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !102, line: 23, baseType: !904)
!904 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !130, line: 882, baseType: !55, size: 64, offset: 9024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !757, file: !130, line: 885, baseType: !75, size: 32, offset: 9088)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !757, file: !130, line: 886, baseType: !908, size: 64, offset: 9152)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !130, line: 732, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !757, file: !130, line: 901, baseType: !911, size: 64, offset: 9216)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !913, line: 68, size: 4800, elements: !914)
!913 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!914 = !{!915, !937, !938, !939, !940, !941, !949, !956, !967, !968, !971, !972, !1083, !1084, !1096, !1166, !1167, !1181, !1183}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !912, file: !913, line: 69, baseType: !916, size: 576)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !913, line: 23, size: 576, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !916, file: !913, line: 24, baseType: !459, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !913, line: 25, baseType: !920, size: 512, offset: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !916, file: !913, line: 25, size: 512, elements: !921)
!921 = !{!922, !931}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !920, file: !913, line: 26, baseType: !923, size: 480)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !924, size: 480, elements: !929)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !913, line: 17, size: 96, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !924, file: !913, line: 18, baseType: !459, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !924, file: !913, line: 19, baseType: !459, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !924, file: !913, line: 20, baseType: !459, size: 32, offset: 64)
!929 = !{!930}
!930 = !DISubrange(count: 5)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !913, line: 27, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !913, line: 27, size: 128, elements: !933)
!933 = !{!934, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !932, file: !913, line: 28, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !932, file: !913, line: 29, baseType: !935, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !912, file: !913, line: 70, baseType: !916, size: 576, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !912, file: !913, line: 71, baseType: !916, size: 576, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !912, file: !913, line: 72, baseType: !911, size: 64, offset: 1728)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !912, file: !913, line: 73, baseType: !38, size: 32, offset: 1792)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !912, file: !913, line: 74, baseType: !942, size: 32, offset: 1824)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !943, line: 23, baseType: !944)
!943 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !943, line: 21, size: 32, elements: !945)
!945 = !{!946}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !944, file: !943, line: 22, baseType: !947, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 37, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !53, line: 49, baseType: !7)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !912, file: !913, line: 75, baseType: !950, size: 32, offset: 1856)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !943, line: 28, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !943, line: 26, size: 32, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !951, file: !943, line: 27, baseType: !954, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !41, line: 38, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !53, line: 50, baseType: !7)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !912, file: !913, line: 76, baseType: !957, size: 192, offset: 1920)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !958, line: 9, size: 192, elements: !959)
!958 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!959 = !{!960, !961, !965, !966}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !957, file: !958, line: 10, baseType: !345, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !957, file: !958, line: 11, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !958, line: 7, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !957, file: !958, line: 12, baseType: !7, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !957, file: !958, line: 13, baseType: !399, size: 32, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !912, file: !913, line: 77, baseType: !55, size: 64, offset: 2112)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !912, file: !913, line: 80, baseType: !969, size: 8, offset: 2176)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !970)
!970 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !912, file: !913, line: 88, baseType: !113, size: 128, offset: 2240)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !912, file: !913, line: 89, baseType: !973, size: 64, offset: 2368)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !975, line: 195, size: 1728, elements: !976)
!975 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!976 = !{!977, !978, !981, !986, !987, !990, !991, !998, !999, !1000, !1001, !1004, !1005, !1006, !1007, !1008, !1047, !1068}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !974, file: !975, line: 196, baseType: !399, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !974, file: !975, line: 197, baseType: !979, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !975, line: 28, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !41, line: 104, baseType: !854)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !975, line: 198, baseType: !982, size: 192, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !975, line: 198, size: 192, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !982, file: !975, line: 199, baseType: !113, size: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !982, file: !975, line: 200, baseType: !499, size: 192, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !974, file: !975, line: 205, baseType: !808, size: 320, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !974, file: !975, line: 206, baseType: !988, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !975, line: 206, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !974, file: !975, line: 207, baseType: !36, size: 64, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !975, line: 208, baseType: !992, size: 64, offset: 704)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !975, line: 208, size: 64, elements: !993)
!993 = !{!994, !997}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !992, file: !975, line: 209, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !996, line: 8, baseType: !352)
!996 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!997 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !992, file: !975, line: 210, baseType: !995, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !974, file: !975, line: 212, baseType: !995, size: 64, offset: 768)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !974, file: !975, line: 213, baseType: !942, size: 32, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !974, file: !975, line: 214, baseType: !950, size: 32, offset: 864)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !974, file: !975, line: 215, baseType: !1002, size: 32, offset: 896)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !975, line: 31, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 110, baseType: !459)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !974, file: !975, line: 216, baseType: !42, size: 16, offset: 928)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !974, file: !975, line: 217, baseType: !42, size: 16, offset: 944)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !974, file: !975, line: 221, baseType: !904, size: 16, offset: 960)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !975, line: 228, baseType: !55, size: 64, offset: 1024)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !975, line: 245, baseType: !1009, size: 320, offset: 1088)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !975, line: 245, size: 320, elements: !1010)
!1010 = !{!1011, !1038}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1009, file: !975, line: 246, baseType: !1012, size: 320)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !975, line: 114, size: 320, elements: !1013)
!1013 = !{!1014, !1015, !1027, !1030, !1037}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1012, file: !975, line: 116, baseType: !55, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !975, line: 117, baseType: !1016, size: 64, offset: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !975, line: 117, size: 64, elements: !1017)
!1017 = !{!1018, !1026}
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !975, line: 118, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !975, line: 118, size: 64, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1019, file: !975, line: 120, baseType: !109, size: 16)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1019, file: !975, line: 121, baseType: !1023, size: 48, offset: 16)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 6)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1016, file: !975, line: 127, baseType: !55, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1012, file: !975, line: 129, baseType: !1028, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !975, line: 102, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1012, file: !975, line: 130, baseType: !1031, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !975, line: 108, size: 192, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1032, file: !975, line: 109, baseType: !332, size: 128, align: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1032, file: !975, line: 110, baseType: !399, size: 32, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1032, file: !975, line: 111, baseType: !969, size: 8, offset: 160)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1012, file: !975, line: 131, baseType: !32, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !975, line: 247, baseType: !1039, size: 320)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !975, line: 247, size: 320, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1039, file: !975, line: 248, baseType: !55, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1039, file: !975, line: 249, baseType: !55, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1039, file: !975, line: 250, baseType: !1028, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1039, file: !975, line: 251, baseType: !1031, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1039, file: !975, line: 252, baseType: !1046, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !975, line: 260, baseType: !1048, size: 256, offset: 1408)
!1048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !975, line: 260, size: 256, elements: !1049)
!1049 = !{!1050, !1056}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1048, file: !975, line: 261, baseType: !1051, size: 256)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !975, line: 134, size: 256, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1051, file: !975, line: 135, baseType: !36, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1051, file: !975, line: 136, baseType: !1055, size: 256)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !417)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !975, line: 262, baseType: !1057, size: 256)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !975, line: 262, size: 256, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1057, file: !975, line: 264, baseType: !113, size: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1057, file: !975, line: 265, baseType: !1061, size: 128, offset: 128)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1062, line: 22, size: 128, elements: !1063)
!1062 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1063 = !{!1064, !1067}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1061, file: !1062, line: 23, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1062, line: 23, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1061, file: !1062, line: 24, baseType: !55, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !974, file: !975, line: 280, baseType: !1069, size: 64, offset: 1664)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !975, line: 176, size: 192, elements: !1071)
!1071 = !{!1072, !1081, !1082}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1070, file: !975, line: 177, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !975, line: 171, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!38, !973, !1077, !1079, !973}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1070, file: !975, line: 178, baseType: !973, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1070, file: !975, line: 179, baseType: !1028, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !912, file: !913, line: 90, baseType: !808, size: 320, offset: 2432)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !912, file: !913, line: 97, baseType: !1085, size: 256, offset: 2752)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1086, line: 98, size: 256, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1085, file: !1086, line: 99, baseType: !345, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1085, file: !1086, line: 100, baseType: !113, size: 128, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1085, file: !1086, line: 101, baseType: !1091, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1086, line: 21, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !912, file: !913, line: 99, baseType: !1097, size: 768, offset: 3008)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !28, line: 199, size: 768, elements: !1098)
!1098 = !{!1099, !1104}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1097, file: !28, line: 200, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!38, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1097, file: !28, line: 201, baseType: !1105, size: 704, offset: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !28, line: 193, size: 704, elements: !1106)
!1106 = !{!1107, !1165}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1105, file: !28, line: 195, baseType: !1108, size: 640)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !28, line: 173, size: 640, elements: !1109)
!1109 = !{!1110, !1122, !1134, !1135, !1155, !1156, !1158, !1164}
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !28, line: 174, baseType: !1111, size: 192)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !28, line: 174, size: 192, elements: !1112)
!1112 = !{!1113, !1121}
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !28, line: 175, baseType: !1114, size: 192)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1111, file: !28, line: 175, size: 192, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1120}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1114, file: !28, line: 176, baseType: !49, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1114, file: !28, line: 177, baseType: !38, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1114, file: !28, line: 178, baseType: !38, size: 32, offset: 96)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1114, file: !28, line: 179, baseType: !38, size: 32, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1114, file: !28, line: 180, baseType: !38, size: 32, offset: 160)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1111, file: !28, line: 182, baseType: !332, size: 128, align: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1108, file: !28, line: 184, baseType: !1123, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1125, line: 26, size: 256, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1124, file: !1125, line: 27, baseType: !7, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1124, file: !1125, line: 28, baseType: !1129, size: 192, offset: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1130, line: 43, size: 192, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1129, file: !1130, line: 44, baseType: !359, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1129, file: !1130, line: 45, baseType: !113, size: 128, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1108, file: !28, line: 185, baseType: !49, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1108, file: !28, line: 186, baseType: !1136, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !28, line: 204, size: 960, elements: !1138)
!1138 = !{!1139, !1140, !1144, !1151}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1137, file: !28, line: 205, baseType: !1097, size: 768)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1137, file: !28, line: 206, baseType: !1141, size: 64, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!1103, !1136}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1137, file: !28, line: 207, baseType: !1145, size: 64, offset: 832)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1137, file: !28, line: 209, baseType: !1152, size: 64, offset: 896)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!38, !1148, !49}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1108, file: !28, line: 187, baseType: !1103, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1108, file: !28, line: 188, baseType: !1157, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1108, file: !28, line: 189, baseType: !1159, size: 64, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !28, line: 157, size: 256, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1160, file: !28, line: 158, baseType: !499, size: 192, align: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1160, file: !28, line: 159, baseType: !1148, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1108, file: !28, line: 190, baseType: !408, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1105, file: !28, line: 196, baseType: !639, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !912, file: !913, line: 100, baseType: !1148, size: 64, offset: 3776)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !912, file: !913, line: 102, baseType: !1168, size: 64, offset: 3840)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !913, line: 107, size: 1152, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1179}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1169, file: !913, line: 108, baseType: !412, size: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1169, file: !913, line: 109, baseType: !911, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1169, file: !913, line: 110, baseType: !942, size: 32, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1169, file: !913, line: 111, baseType: !65, size: 32, offset: 224)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1169, file: !913, line: 112, baseType: !1176, size: 640, offset: 256)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 640, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 10)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1169, file: !913, line: 113, baseType: !1180, size: 256, offset: 896)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 256, elements: !417)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !912, file: !913, line: 103, baseType: !1182, size: 640, offset: 3904)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 640, elements: !1177)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !912, file: !913, line: 104, baseType: !1184, size: 256, offset: 4544)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 256, elements: !417)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !757, file: !130, line: 904, baseType: !319, size: 64, offset: 9280)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !757, file: !130, line: 906, baseType: !1187, size: 64, offset: 9344)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !130, line: 906, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !757, file: !130, line: 930, baseType: !65, size: 32, offset: 9408)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !757, file: !130, line: 933, baseType: !65, size: 32, offset: 9440)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !757, file: !130, line: 935, baseType: !1192, size: 64, offset: 9472)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !154, line: 103, size: 64, elements: !1193)
!1193 = !{!1194}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1192, file: !154, line: 104, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !154, line: 101, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !757, file: !130, line: 940, baseType: !345, size: 64, offset: 9536)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !757, file: !130, line: 942, baseType: !1085, size: 256, offset: 9600)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !754, file: !130, line: 986, baseType: !1200, offset: 10240)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: -1)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !449, file: !450, line: 882, baseType: !753, size: 64, offset: 9792)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !449, file: !450, line: 884, baseType: !38, size: 32, offset: 9856)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !449, file: !450, line: 885, baseType: !38, size: 32, offset: 9888)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !449, file: !450, line: 886, baseType: !38, size: 32, offset: 9920)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !449, file: !450, line: 888, baseType: !38, size: 32, offset: 9952)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !449, file: !450, line: 890, baseType: !55, size: 64, offset: 9984)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !449, file: !450, line: 893, baseType: !7, size: 32, offset: 10048)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !449, file: !450, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !449, file: !450, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !449, file: !450, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !449, file: !450, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !449, file: !450, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !449, file: !450, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !449, file: !450, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !449, file: !450, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !449, file: !450, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !449, file: !450, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !449, file: !450, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !449, file: !450, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !449, file: !450, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !449, file: !450, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !449, file: !450, line: 969, baseType: !55, size: 64, offset: 10176)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !449, file: !450, line: 971, baseType: !1226, size: 448, offset: 10240)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !124, line: 25, size: 448, elements: !1227)
!1227 = !{!1228, !1229, !1234}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1226, file: !124, line: 26, baseType: !55, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1226, file: !124, line: 27, baseType: !1230, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!313, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !124, line: 28, baseType: !1235, size: 320, offset: 128)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !124, line: 28, size: 320, elements: !1236)
!1236 = !{!1237, !1247, !1272}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1235, file: !124, line: 37, baseType: !1238, size: 320)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1235, file: !124, line: 30, size: 320, elements: !1239)
!1239 = !{!1240, !1242, !1243, !1244, !1245, !1246}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1238, file: !124, line: 31, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1238, file: !124, line: 32, baseType: !459, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !124, line: 33, baseType: !459, size: 32, offset: 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1238, file: !124, line: 34, baseType: !459, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1238, file: !124, line: 35, baseType: !507, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1238, file: !124, line: 36, baseType: !1241, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1235, file: !124, line: 47, baseType: !1248, size: 192)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1235, file: !124, line: 39, size: 192, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1271}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1248, file: !124, line: 40, baseType: !619, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1248, file: !124, line: 41, baseType: !123, size: 32, offset: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !124, line: 42, baseType: !1253, size: 64, offset: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1248, file: !124, line: 42, size: 64, elements: !1254)
!1254 = !{!1255, !1263}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1253, file: !124, line: 43, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1258, line: 7, size: 128, elements: !1259)
!1258 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1259 = !{!1260, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1257, file: !1258, line: 8, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !53, line: 93, baseType: !59)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1257, file: !1258, line: 9, baseType: !59, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1253, file: !124, line: 44, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1266, line: 7, size: 64, elements: !1267)
!1266 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1267 = !{!1268, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1265, file: !1266, line: 8, baseType: !1269, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1266, line: 5, baseType: !854)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1265, file: !1266, line: 9, baseType: !854, size: 32, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1248, file: !124, line: 46, baseType: !507, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1235, file: !124, line: 55, baseType: !1273, size: 256)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1235, file: !124, line: 49, size: 256, elements: !1274)
!1274 = !{!1275, !1283, !1284, !1285, !1286}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1273, file: !124, line: 50, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1278, line: 36, size: 64, elements: !1279)
!1278 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1277, file: !1278, line: 37, baseType: !38, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1277, file: !1278, line: 38, baseType: !904, size: 16, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1277, file: !1278, line: 39, baseType: !904, size: 16, offset: 48)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1273, file: !124, line: 51, baseType: !38, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1273, file: !124, line: 52, baseType: !38, size: 32, offset: 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1273, file: !124, line: 53, baseType: !55, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1273, file: !124, line: 54, baseType: !55, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !449, file: !450, line: 973, baseType: !1288, size: 32, offset: 10688)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !41, line: 27, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !53, line: 28, baseType: !38)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !449, file: !450, line: 974, baseType: !1288, size: 32, offset: 10720)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !449, file: !450, line: 978, baseType: !55, size: 64, offset: 10752)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !449, file: !450, line: 987, baseType: !448, size: 64, offset: 10816)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !449, file: !450, line: 990, baseType: !448, size: 64, offset: 10880)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !449, file: !450, line: 995, baseType: !113, size: 128, offset: 10944)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !449, file: !450, line: 996, baseType: !113, size: 128, offset: 11072)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !449, file: !450, line: 997, baseType: !448, size: 64, offset: 11200)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !449, file: !450, line: 1005, baseType: !113, size: 128, offset: 11264)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !449, file: !450, line: 1006, baseType: !113, size: 128, offset: 11392)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !449, file: !450, line: 1009, baseType: !395, size: 64, offset: 11520)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !449, file: !450, line: 1010, baseType: !1301, size: 512, offset: 11584)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 512, elements: !417)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !449, file: !450, line: 1011, baseType: !113, size: 128, offset: 12096)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !449, file: !450, line: 1012, baseType: !113, size: 128, offset: 12224)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !449, file: !450, line: 1014, baseType: !1123, size: 64, offset: 12352)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !449, file: !450, line: 1017, baseType: !1306, size: 64, offset: 12416)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !449, file: !450, line: 1020, baseType: !1306, size: 64, offset: 12480)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !449, file: !450, line: 1023, baseType: !36, size: 64, offset: 12544)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !449, file: !450, line: 1025, baseType: !507, size: 64, offset: 12608)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !449, file: !450, line: 1026, baseType: !507, size: 64, offset: 12672)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !449, file: !450, line: 1031, baseType: !507, size: 64, offset: 12736)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !449, file: !450, line: 1032, baseType: !1313, size: 192, offset: 12800)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !450, line: 324, size: 192, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1313, file: !450, line: 326, baseType: !507, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1313, file: !450, line: 327, baseType: !507, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1313, file: !450, line: 328, baseType: !359, size: 32, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !449, file: !450, line: 1041, baseType: !55, size: 64, offset: 12992)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !449, file: !450, line: 1042, baseType: !55, size: 64, offset: 13056)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !449, file: !450, line: 1045, baseType: !507, size: 64, offset: 13120)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !449, file: !450, line: 1048, baseType: !507, size: 64, offset: 13184)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !449, file: !450, line: 1051, baseType: !55, size: 64, offset: 13248)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !449, file: !450, line: 1052, baseType: !55, size: 64, offset: 13312)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !449, file: !450, line: 1055, baseType: !1325, size: 640, offset: 13376)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1326, line: 132, size: 640, elements: !1327)
!1326 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1327 = !{!1328, !1334, !1335}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1325, file: !1326, line: 133, baseType: !1329, size: 576)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1330, size: 576, elements: !391)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1326, line: 117, size: 192, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1330, file: !1326, line: 118, baseType: !507, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1330, file: !1326, line: 119, baseType: !633, size: 128, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1325, file: !1326, line: 134, baseType: !7, size: 32, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1325, file: !1326, line: 135, baseType: !7, size: 32, offset: 608)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !449, file: !450, line: 1058, baseType: !1337, size: 448, offset: 14016)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1326, line: 144, size: 448, elements: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1337, file: !1326, line: 145, baseType: !332, size: 128, align: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1337, file: !1326, line: 146, baseType: !354, size: 256, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1337, file: !1326, line: 147, baseType: !7, size: 32, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !449, file: !450, line: 1064, baseType: !1343, size: 64, offset: 14464)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1346, line: 110, size: 1472, elements: !1347)
!1346 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1397, !1398, !1399, !1407}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1345, file: !1346, line: 111, baseType: !345, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1345, file: !1346, line: 112, baseType: !942, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1345, file: !1346, line: 113, baseType: !950, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1345, file: !1346, line: 114, baseType: !942, size: 32, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1345, file: !1346, line: 115, baseType: !950, size: 32, offset: 160)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1345, file: !1346, line: 116, baseType: !942, size: 32, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1345, file: !1346, line: 117, baseType: !950, size: 32, offset: 224)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1345, file: !1346, line: 118, baseType: !942, size: 32, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1345, file: !1346, line: 119, baseType: !950, size: 32, offset: 288)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1345, file: !1346, line: 120, baseType: !7, size: 32, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1345, file: !1346, line: 121, baseType: !1359, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1360, line: 24, baseType: !1361)
!1360 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1360, line: 24, size: 64, elements: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1361, file: !1360, line: 24, baseType: !507, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1345, file: !1346, line: 122, baseType: !1359, size: 64, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1345, file: !1346, line: 123, baseType: !1359, size: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1345, file: !1346, line: 124, baseType: !1359, size: 64, offset: 576)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1345, file: !1346, line: 125, baseType: !1359, size: 64, offset: 640)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1345, file: !1346, line: 127, baseType: !103, size: 8, offset: 704)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1345, file: !1346, line: 129, baseType: !973, size: 64, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1345, file: !1346, line: 130, baseType: !973, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1345, file: !1346, line: 131, baseType: !973, size: 64, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1345, file: !1346, line: 132, baseType: !973, size: 64, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1345, file: !1346, line: 135, baseType: !36, size: 64, offset: 1024)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1345, file: !1346, line: 137, baseType: !1375, size: 64, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1377, line: 14, size: 1088, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1376, file: !1377, line: 15, baseType: !399, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1376, file: !1377, line: 17, baseType: !846, size: 320, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1376, file: !1377, line: 19, baseType: !55, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1376, file: !1377, line: 20, baseType: !345, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1376, file: !1377, line: 23, baseType: !412, size: 128, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1376, file: !1377, line: 24, baseType: !942, size: 32, offset: 640)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1376, file: !1377, line: 29, baseType: !345, size: 64, offset: 704)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1376, file: !1377, line: 36, baseType: !1387, size: 320, offset: 768)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1388, line: 15, size: 320, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !1388, line: 16, baseType: !359, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1387, file: !1388, line: 18, baseType: !38, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1387, file: !1388, line: 19, baseType: !38, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1387, file: !1388, line: 20, baseType: !38, size: 32, offset: 96)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1387, file: !1388, line: 21, baseType: !38, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1387, file: !1388, line: 22, baseType: !55, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1387, file: !1388, line: 23, baseType: !55, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1345, file: !1346, line: 138, baseType: !911, size: 64, offset: 1152)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1345, file: !1346, line: 139, baseType: !1168, size: 64, offset: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1345, file: !1346, line: 140, baseType: !1400, size: 64, offset: 1280)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1346, line: 25, size: 64, elements: !1402)
!1402 = !{!1403, !1404, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1401, file: !1346, line: 26, baseType: !65, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1401, file: !1346, line: 27, baseType: !38, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1401, file: !1346, line: 28, baseType: !1406, offset: 64)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, elements: !1201)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !1346, line: 142, baseType: !1408, size: 128, offset: 1344)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1345, file: !1346, line: 142, size: 128, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1408, file: !1346, line: 143, baseType: !38, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1408, file: !1346, line: 144, baseType: !332, size: 128, align: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !449, file: !450, line: 1067, baseType: !1343, size: 64, offset: 14528)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !449, file: !450, line: 1070, baseType: !1343, size: 64, offset: 14592)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !449, file: !450, line: 1074, baseType: !973, size: 64, offset: 14656)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !449, file: !450, line: 1084, baseType: !1416, size: 128, offset: 14720)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 16)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !449, file: !450, line: 1086, baseType: !1420, size: 64, offset: 14848)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !450, line: 55, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !449, file: !450, line: 1089, baseType: !1423, size: 64, offset: 14912)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1424, line: 12, size: 64, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1423, file: !1424, line: 13, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1424, line: 8, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !449, file: !450, line: 1090, baseType: !1430, size: 128, offset: 14976)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1431, line: 13, size: 128, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1430, file: !1431, line: 14, baseType: !113, size: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !449, file: !450, line: 1097, baseType: !1435, size: 64, offset: 15104)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !450, line: 50, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !449, file: !450, line: 1100, baseType: !1438, size: 64, offset: 15168)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !450, line: 1100, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !449, file: !450, line: 1103, baseType: !1441, size: 64, offset: 15232)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !450, line: 53, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !449, file: !450, line: 1107, baseType: !1444, size: 64, offset: 15296)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1446, line: 31, size: 576, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1447 = !{!1448, !1449, !1452, !1455, !5227, !5228, !5229, !5232, !5233}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1445, file: !1446, line: 32, baseType: !399, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1445, file: !1446, line: 33, baseType: !1450, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1446, line: 9, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1445, file: !1446, line: 34, baseType: !1453, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1446, line: 10, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1445, file: !1446, line: 35, baseType: !1456, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1458, line: 8, size: 960, elements: !1459)
!1458 = !DIFile(filename: "fs/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a5eb1a988fb7c9469e00ad2dc4ac71")
!1459 = !{!1460, !1461, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1457, file: !1458, line: 9, baseType: !957, size: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1457, file: !1458, line: 10, baseType: !1462, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount", file: !1458, line: 39, size: 2560, elements: !1464)
!1464 = !{!1465, !1466, !1467, !5174, !5175, !5180, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5205, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_hash", scope: !1463, file: !1458, line: 40, baseType: !412, size: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_parent", scope: !1463, file: !1458, line: 41, baseType: !1462, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mountpoint", scope: !1463, file: !1458, line: 42, baseType: !1468, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1470, line: 82, size: 1536, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1471 = !{!1472, !1473, !1478, !1486, !1487, !1502, !5142, !5144, !5157, !5158, !5159, !5160, !5161, !5166, !5167, !5168}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1469, file: !1470, line: 84, baseType: !7, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1469, file: !1470, line: 85, baseType: !1474, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !623, line: 275, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !623, line: 275, size: 32, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1475, file: !623, line: 275, baseType: !627, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1469, file: !1470, line: 86, baseType: !1479, size: 128, offset: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1480, line: 38, size: 128, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1481 = !{!1482, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1479, file: !1480, line: 39, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1479, file: !1480, line: 39, baseType: !1485, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1469, file: !1470, line: 87, baseType: !1468, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1469, file: !1470, line: 88, baseType: !1488, size: 128, offset: 256)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1470, line: 49, size: 128, elements: !1489)
!1489 = !{!1490, !1499}
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1470, line: 50, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1488, file: !1470, line: 50, size: 64, elements: !1492)
!1492 = !{!1493, !1498}
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !1470, line: 51, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1491, file: !1470, line: 51, size: 64, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1494, file: !1470, line: 52, baseType: !459, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1494, file: !1470, line: 52, baseType: !459, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1491, file: !1470, line: 54, baseType: !507, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1488, file: !1470, line: 56, baseType: !1500, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1469, file: !1470, line: 89, baseType: !1503, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !268, line: 641, size: 4800, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1515, !1516, !4956, !4957, !4958, !4959, !4960, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !5124, !5127, !5128, !5129, !5138, !5139, !5140, !5141}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1504, file: !268, line: 642, baseType: !40, size: 16)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1504, file: !268, line: 643, baseType: !42, size: 16, offset: 16)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1504, file: !268, line: 644, baseType: !942, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1504, file: !268, line: 645, baseType: !113, size: 128, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1504, file: !268, line: 646, baseType: !950, size: 32, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1504, file: !268, line: 647, baseType: !7, size: 32, offset: 224)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1504, file: !268, line: 650, baseType: !1513, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !268, line: 607, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1504, file: !268, line: 651, baseType: !1513, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1504, file: !268, line: 654, baseType: !1517, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !268, line: 1966, size: 2048, align: 512, elements: !1520)
!1520 = !{!1521, !1525, !1538, !1544, !1548, !1552, !1556, !1560, !1564, !1568, !1572, !1573, !1579, !1583, !1620, !4907, !4911, !4917, !4921, !4925, !4929, !4933, !4937, !4943, !4947}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1519, file: !268, line: 1967, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1468, !1503, !1468, !7}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1519, file: !268, line: 1968, baseType: !1526, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!32, !1468, !1503, !1529}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1531, line: 10, size: 128, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1532 = !{!1533, !1537}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1530, file: !1531, line: 11, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !36}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1530, file: !1531, line: 12, baseType: !36, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1519, file: !268, line: 1969, baseType: !1539, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!38, !1542, !1503, !38}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1360, line: 42, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1519, file: !268, line: 1970, baseType: !1545, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!1513, !1503, !38, !969}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1519, file: !268, line: 1972, baseType: !1549, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!38, !1468, !1046, !38}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1519, file: !268, line: 1974, baseType: !1553, size: 64, offset: 320)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!38, !1542, !1503, !1468, !40, !969}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1519, file: !268, line: 1976, baseType: !1557, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!38, !1468, !1503, !1468}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1519, file: !268, line: 1977, baseType: !1561, size: 64, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!38, !1503, !1468}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1519, file: !268, line: 1978, baseType: !1565, size: 64, offset: 512)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!38, !1542, !1503, !1468, !32}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1519, file: !268, line: 1980, baseType: !1569, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!38, !1542, !1503, !1468, !40}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1519, file: !268, line: 1982, baseType: !1561, size: 64, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1519, file: !268, line: 1983, baseType: !1574, size: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!38, !1542, !1503, !1468, !40, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !41, line: 21, baseType: !1578)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !41, line: 18, baseType: !459)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1519, file: !268, line: 1985, baseType: !1580, size: 64, offset: 768)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!38, !1542, !1503, !1468, !1503, !1468, !7}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1519, file: !268, line: 1987, baseType: !1584, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!38, !1542, !1468, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !268, line: 226, size: 640, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1602, !1611, !1612, !1617, !1618, !1619}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1588, file: !268, line: 227, baseType: !7, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1588, file: !268, line: 228, baseType: !40, size: 16, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !268, line: 241, baseType: !1593, size: 32, offset: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !268, line: 241, size: 32, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1593, file: !268, line: 242, baseType: !942, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1593, file: !268, line: 243, baseType: !1597, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1598, line: 16, baseType: !1599)
!1598 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1598, line: 14, size: 32, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1599, file: !1598, line: 15, baseType: !947, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !268, line: 245, baseType: !1603, size: 32, offset: 96)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !268, line: 245, size: 32, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1603, file: !268, line: 246, baseType: !950, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1603, file: !268, line: 247, baseType: !1607, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1598, line: 20, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1598, line: 18, size: 32, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1608, file: !1598, line: 19, baseType: !954, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1588, file: !268, line: 249, baseType: !57, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1588, file: !268, line: 250, baseType: !1613, size: 128, offset: 192)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !996, line: 13, size: 128, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1613, file: !996, line: 14, baseType: !995, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1613, file: !996, line: 15, baseType: !313, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1588, file: !268, line: 251, baseType: !1613, size: 128, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1588, file: !268, line: 252, baseType: !1613, size: 128, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1588, file: !268, line: 259, baseType: !319, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1519, file: !268, line: 1988, baseType: !1621, size: 64, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!38, !1542, !1624, !4882, !459, !7}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1626)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1627, line: 8, size: 128, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1628 = !{!1629, !4881}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1626, file: !1627, line: 9, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1632, line: 70, size: 256, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1633 = !{!1634, !1635, !4879, !4880}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1631, file: !1632, line: 71, baseType: !1468, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1631, file: !1632, line: 72, baseType: !1636, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !268, line: 1190, size: 10752, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !4398, !4530, !4570, !4653, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4670, !4674, !4675, !4678, !4681, !4684, !4687, !4688, !4689, !4730, !4752, !4753, !4754, !4755, !4756, !4757, !4760, !4764, !4771, !4772, !4773, !4774, !4833, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1637, file: !268, line: 1191, baseType: !113, size: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1637, file: !268, line: 1192, baseType: !1577, size: 32, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1637, file: !268, line: 1193, baseType: !103, size: 8, offset: 160)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1637, file: !268, line: 1194, baseType: !55, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1637, file: !268, line: 1195, baseType: !57, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1637, file: !268, line: 1196, baseType: !1645, size: 64, offset: 320)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !268, line: 2366, size: 576, elements: !1647)
!1647 = !{!1648, !1649, !1650, !4350, !4377, !4381, !4385, !4386, !4387, !4388, !4390, !4391, !4392, !4394, !4395, !4396, !4397}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1646, file: !268, line: 2367, baseType: !32, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1646, file: !268, line: 2368, baseType: !38, size: 32, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1646, file: !268, line: 2376, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!38, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !14, line: 90, size: 1216, elements: !1656)
!1656 = !{!1657, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1714, !1715, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1655, file: !14, line: 91, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !14, line: 115, size: 384, elements: !1661)
!1661 = !{!1662, !1666, !1670, !1699, !1703, !1704}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1660, file: !14, line: 116, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !1654}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1660, file: !14, line: 117, baseType: !1667, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!38, !1654, !1654}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !1660, file: !14, line: 118, baseType: !1671, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!38, !1654, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !14, line: 63, size: 320, elements: !1676)
!1676 = !{!1677, !1678, !1679, !1697, !1698}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1675, file: !14, line: 64, baseType: !32, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1675, file: !14, line: 65, baseType: !13, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !14, line: 66, baseType: !1680, size: 64, offset: 128)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1675, file: !14, line: 66, size: 64, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1696}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1680, file: !14, line: 67, baseType: !1046, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1680, file: !14, line: 68, baseType: !36, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1680, file: !14, line: 69, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !268, line: 2470, size: 256, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1694}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1686, file: !268, line: 2471, baseType: !32, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1686, file: !268, line: 2472, baseType: !32, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1686, file: !268, line: 2473, baseType: !65, size: 32, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1686, file: !268, line: 2474, baseType: !1692, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !268, line: 2469, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1686, file: !268, line: 2475, baseType: !1695, offset: 256)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !1201)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1680, file: !14, line: 70, baseType: !319, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1675, file: !14, line: 72, baseType: !51, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !1675, file: !14, line: 73, baseType: !38, size: 32, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !1660, file: !14, line: 119, baseType: !1700, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!38, !1654, !36}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !1660, file: !14, line: 120, baseType: !1651, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !1660, file: !14, line: 121, baseType: !1651, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !1655, file: !14, line: 92, baseType: !354, size: 256, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !1655, file: !14, line: 93, baseType: !1645, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !1655, file: !14, line: 94, baseType: !36, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !1655, file: !14, line: 95, baseType: !36, size: 64, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1655, file: !14, line: 96, baseType: !1468, size: 64, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1655, file: !14, line: 97, baseType: !911, size: 64, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1655, file: !14, line: 98, baseType: !1712, size: 64, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !975, line: 34, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1655, file: !14, line: 99, baseType: !1343, size: 64, offset: 704)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1655, file: !14, line: 100, baseType: !1716, size: 128, offset: 768)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !14, line: 76, size: 128, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1716, file: !14, line: 77, baseType: !32, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1716, file: !14, line: 78, baseType: !1720, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !14, line: 173, size: 640, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726, !1727, !4336}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1721, file: !14, line: 174, baseType: !399, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1721, file: !14, line: 175, baseType: !99, size: 8, offset: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1721, file: !14, line: 176, baseType: !99, size: 8, offset: 40)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1721, file: !14, line: 177, baseType: !99, size: 8, offset: 48)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1721, file: !14, line: 178, baseType: !1728, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1737, !2547, !2573, !2574, !2575, !2576, !2580, !2583, !2584, !2585, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2653, !2657, !2677, !2694, !2695, !2696, !2697, !2706, !2729, !2730, !2733, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2747, !2748, !2847, !2855, !2856, !2857, !2859, !4314, !4315, !4324, !4325, !4326, !4327, !4329, !4330, !4331, !4332, !4333, !4334, !4335}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1729, file: !6, line: 403, baseType: !5, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1729, file: !6, line: 406, baseType: !113, size: 128, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1729, file: !6, line: 409, baseType: !1734, size: 448, offset: 192)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 448, elements: !1735)
!1735 = !{!1736}
!1736 = !DISubrange(count: 56)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1729, file: !6, line: 417, baseType: !1738, size: 768, offset: 640)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1739)
!1739 = !{!1740, !2541, !2542, !2543, !2546}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1738, file: !6, line: 46, baseType: !1741, size: 512)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1742, line: 64, size: 512, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1743 = !{!1744, !1745, !1746, !1748, !1792, !2388, !2531, !2536, !2537, !2538, !2539, !2540}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1741, file: !1742, line: 65, baseType: !32, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1741, file: !1742, line: 66, baseType: !113, size: 128, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1741, file: !1742, line: 67, baseType: !1747, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1741, file: !1742, line: 68, baseType: !1749, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1742, line: 168, size: 768, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1750, file: !1742, line: 169, baseType: !113, size: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1750, file: !1742, line: 170, baseType: !75, size: 32, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1750, file: !1742, line: 171, baseType: !1741, size: 512, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1750, file: !1742, line: 172, baseType: !1756, size: 64, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1742, line: 133, size: 192, elements: !1759)
!1759 = !{!1760, !1767, !1772}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1758, file: !1742, line: 134, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!38, !1765}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1758, file: !1742, line: 135, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!32, !1765}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1758, file: !1742, line: 136, baseType: !1773, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!38, !1765, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1742, line: 125, size: 20736, elements: !1779)
!1779 = !{!1780, !1782, !1786, !1787, !1791}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1778, file: !1742, line: 126, baseType: !1781, size: 192)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 192, elements: !391)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1778, file: !1742, line: 127, baseType: !1783, size: 4096, offset: 192)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 4096, elements: !1784)
!1784 = !{!1785}
!1785 = !DISubrange(count: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1778, file: !1742, line: 128, baseType: !38, size: 32, offset: 4288)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1778, file: !1742, line: 129, baseType: !1788, size: 16384, offset: 4320)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16384, elements: !1789)
!1789 = !{!1790}
!1790 = !DISubrange(count: 2048)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1778, file: !1742, line: 130, baseType: !38, size: 32, offset: 20704)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1741, file: !1742, line: 69, baseType: !1793, size: 64, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1742, line: 116, size: 384, elements: !1796)
!1796 = !{!1797, !1801, !1823, !2351, !2380, !2384}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1795, file: !1742, line: 117, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !1747}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1795, file: !1742, line: 118, baseType: !1802, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1805, line: 254, size: 128, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1806 = !{!1807, !1819}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1804, file: !1805, line: 255, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1811, !1747, !1814, !1046}
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 66, baseType: !1812)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !53, line: 73, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !53, line: 15, baseType: !313)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1805, line: 30, size: 128, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1815, file: !1805, line: 31, baseType: !32, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1815, file: !1805, line: 32, baseType: !40, size: 16, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1804, file: !1805, line: 256, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1811, !1747, !1814, !32, !51}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1795, file: !1742, line: 119, baseType: !1824, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1805, line: 84, size: 320, elements: !1828)
!1828 = !{!1829, !1830, !1834, !2347, !2349}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1827, file: !1805, line: 85, baseType: !32, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1827, file: !1805, line: 86, baseType: !1831, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!40, !1747, !1814, !38}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1827, file: !1805, line: 88, baseType: !1835, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!40, !1747, !1838, !38}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1805, line: 175, size: 512, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !2338, !2342, !2343}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1839, file: !1805, line: 176, baseType: !1815, size: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1839, file: !1805, line: 177, baseType: !51, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1839, file: !1805, line: 178, baseType: !36, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1839, file: !1805, line: 179, baseType: !1845, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !268, line: 472, size: 1536, align: 64, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !2330, !2331, !2332, !2335, !2336, !2337}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1849, file: !268, line: 473, baseType: !1503, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1849, file: !268, line: 474, baseType: !437, size: 128, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1849, file: !268, line: 475, baseType: !808, size: 320, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1849, file: !268, line: 476, baseType: !314, size: 32, offset: 512)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1849, file: !268, line: 477, baseType: !65, size: 32, offset: 544)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1849, file: !268, line: 482, baseType: !636, size: 128, offset: 576)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1849, file: !268, line: 483, baseType: !55, size: 64, offset: 704)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1849, file: !268, line: 484, baseType: !55, size: 64, offset: 768)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1849, file: !268, line: 485, baseType: !1860, size: 64, offset: 832)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !268, line: 404, size: 1280, elements: !1863)
!1863 = !{!1864, !2155, !2225, !2229, !2233, !2239, !2245, !2249, !2254, !2258, !2262, !2266, !2294, !2298, !2302, !2306, !2311, !2315, !2322, !2326}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1862, file: !268, line: 405, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!38, !1868, !2153}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !130, line: 74, size: 512, align: 128, elements: !1870)
!1870 = !{!1871, !1872, !2147, !2152}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1869, file: !130, line: 75, baseType: !55, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !130, line: 83, baseType: !1873, size: 320, offset: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1869, file: !130, line: 83, size: 320, elements: !1874)
!1874 = !{!1875, !1896, !1910, !1914, !2146}
!1875 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !130, line: 84, baseType: !1876, size: 320)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1873, file: !130, line: 84, size: 320, elements: !1877)
!1877 = !{!1878, !1889, !1890, !1895}
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !130, line: 90, baseType: !1879, size: 128)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !130, line: 90, size: 128, elements: !1880)
!1880 = !{!1881, !1882, !1887, !1888}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1879, file: !130, line: 91, baseType: !113, size: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !130, line: 94, baseType: !1883, size: 128)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !130, line: 94, size: 128, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1883, file: !130, line: 96, baseType: !36, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1883, file: !130, line: 98, baseType: !7, size: 32, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1879, file: !130, line: 102, baseType: !113, size: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1879, file: !130, line: 103, baseType: !113, size: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1876, file: !130, line: 106, baseType: !1848, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !130, line: 107, baseType: !1891, size: 64, offset: 192)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !130, line: 107, size: 64, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1891, file: !130, line: 108, baseType: !55, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1891, file: !130, line: 109, baseType: !55, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1876, file: !130, line: 117, baseType: !55, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !130, line: 119, baseType: !1897, size: 320)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1873, file: !130, line: 119, size: 320, elements: !1898)
!1898 = !{!1899, !1900, !1903, !1904, !1905}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1897, file: !130, line: 124, baseType: !55, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1897, file: !130, line: 125, baseType: !1901, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !130, line: 125, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1897, file: !130, line: 126, baseType: !55, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1897, file: !130, line: 127, baseType: !55, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !130, line: 128, baseType: !1906, size: 64, offset: 256)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !130, line: 128, size: 64, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1906, file: !130, line: 133, baseType: !55, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1906, file: !130, line: 138, baseType: !345, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !130, line: 141, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1873, file: !130, line: 141, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1911, file: !130, line: 142, baseType: !55, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !130, line: 144, baseType: !1915, size: 128)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1873, file: !130, line: 144, size: 128, elements: !1916)
!1916 = !{!1917, !2145}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1915, file: !130, line: 146, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !146, line: 126, size: 1216, elements: !1920)
!1920 = !{!1921, !1931, !1952, !1953, !1954, !1955, !1956, !2127, !2128, !2129}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1919, file: !146, line: 127, baseType: !1922, size: 384)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !146, line: 21, size: 384, elements: !1923)
!1923 = !{!1924, !1925, !1927, !1928, !1929, !1930}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1922, file: !146, line: 22, baseType: !55, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1922, file: !146, line: 23, baseType: !1926, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1922, file: !146, line: 24, baseType: !1926, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1922, file: !146, line: 25, baseType: !55, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1922, file: !146, line: 26, baseType: !55, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1922, file: !146, line: 27, baseType: !55, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1919, file: !146, line: 128, baseType: !1932, size: 128, offset: 384)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1933, line: 105, size: 128, elements: !1934)
!1933 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1932, file: !1933, line: 110, baseType: !55, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1932, file: !1933, line: 118, baseType: !1937, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1933, line: 95, size: 448, elements: !1939)
!1939 = !{!1940, !1941, !1947, !1948, !1949, !1950, !1951}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1938, file: !1933, line: 96, baseType: !345, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1938, file: !1933, line: 97, baseType: !1942, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1933, line: 60, baseType: !1944)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !1946}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1938, file: !1933, line: 98, baseType: !1942, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1938, file: !1933, line: 99, baseType: !969, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1938, file: !1933, line: 100, baseType: !969, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1938, file: !1933, line: 101, baseType: !332, size: 128, align: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1938, file: !1933, line: 102, baseType: !1946, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1919, file: !146, line: 129, baseType: !1124, size: 256, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1919, file: !146, line: 130, baseType: !145, size: 32, offset: 768)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1919, file: !146, line: 131, baseType: !7, size: 32, offset: 800)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1919, file: !146, line: 132, baseType: !55, size: 64, offset: 832)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1919, file: !146, line: 133, baseType: !1957, size: 64, offset: 896)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1959)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !146, line: 77, size: 192, elements: !1960)
!1960 = !{!1961, !1965, !2123}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1959, file: !146, line: 83, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !1868}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1959, file: !146, line: 89, baseType: !1966, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !130, line: 1184, baseType: !7)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1972, line: 512, size: 896, elements: !1973)
!1972 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1973 = !{!1974, !2090, !2091, !2098, !2105, !2115, !2116, !2117, !2119, !2121}
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !1972, line: 513, baseType: !1975, size: 320)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1971, file: !1972, line: 513, size: 320, elements: !1976)
!1976 = !{!1977, !2086, !2087, !2088, !2089}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1975, file: !1972, line: 514, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !130, line: 625, size: 1344, elements: !1980)
!1980 = !{!1981, !1990, !1991, !1997, !2004, !2005, !2010, !2011, !2016, !2017, !2020, !2079, !2080, !2081, !2082, !2083, !2084}
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !130, line: 628, baseType: !1982, size: 128)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !130, line: 628, size: 128, elements: !1983)
!1983 = !{!1984, !1989}
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !130, line: 629, baseType: !1985, size: 128)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !130, line: 629, size: 128, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1985, file: !130, line: 631, baseType: !55, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1985, file: !130, line: 632, baseType: !55, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1982, file: !130, line: 635, baseType: !332, size: 128, align: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1979, file: !130, line: 639, baseType: !753, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1979, file: !130, line: 640, baseType: !1992, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !789, line: 297, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !789, line: 297, size: 64, elements: !1994)
!1994 = !{!1995}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1993, file: !789, line: 297, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !794, line: 19, baseType: !55)
!1997 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !130, line: 646, baseType: !1998, size: 64, offset: 256)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !130, line: 646, size: 64, elements: !1999)
!1999 = !{!2000, !2003}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1998, file: !130, line: 647, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !130, line: 542, baseType: !55)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1998, file: !130, line: 648, baseType: !2002, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1979, file: !130, line: 666, baseType: !38, size: 32, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1979, file: !130, line: 667, baseType: !2006, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !130, line: 579, size: 320, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2007, file: !130, line: 580, baseType: !808, size: 320)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1979, file: !130, line: 670, baseType: !969, size: 8, offset: 448)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1979, file: !130, line: 681, baseType: !2012, size: 256, offset: 512)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !130, line: 678, size: 256, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2012, file: !130, line: 679, baseType: !499, size: 192, align: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2012, file: !130, line: 680, baseType: !55, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1979, file: !130, line: 689, baseType: !113, size: 128, offset: 768)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1979, file: !130, line: 691, baseType: !2018, size: 64, offset: 896)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !130, line: 691, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1979, file: !130, line: 694, baseType: !2021, size: 64, offset: 960)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1972, line: 563, size: 1024, elements: !2024)
!2024 = !{!2025, !2029, !2030, !2034, !2038, !2042, !2043, !2047, !2051, !2055, !2056, !2057, !2061, !2065, !2071, !2075}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2023, file: !1972, line: 564, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !1978}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2023, file: !1972, line: 569, baseType: !2026, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2023, file: !1972, line: 571, baseType: !2031, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!38, !1978, !55}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2023, file: !1972, line: 572, baseType: !2035, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!38, !1978}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2023, file: !1972, line: 578, baseType: !2039, size: 64, offset: 256)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!38, !1978, !55, !55, !55}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2023, file: !1972, line: 580, baseType: !1966, size: 64, offset: 320)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2023, file: !1972, line: 581, baseType: !2044, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!1969, !1970, !7}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2023, file: !1972, line: 582, baseType: !2048, size: 64, offset: 448)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!1969, !1970, !55, !55}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2023, file: !1972, line: 584, baseType: !2052, size: 64, offset: 512)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!55, !1978}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2023, file: !1972, line: 588, baseType: !1966, size: 64, offset: 576)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2023, file: !1972, line: 591, baseType: !1966, size: 64, offset: 640)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2023, file: !1972, line: 597, baseType: !2058, size: 64, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!38, !1978, !55, !36, !38, !38}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2023, file: !1972, line: 603, baseType: !2062, size: 64, offset: 768)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!32, !1978}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2023, file: !1972, line: 613, baseType: !2066, size: 64, offset: 832)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!38, !1978, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !130, line: 717, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2023, file: !1972, line: 625, baseType: !2072, size: 64, offset: 896)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!2069, !1978, !55}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2023, file: !1972, line: 633, baseType: !2076, size: 64, offset: 960)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!1868, !1978, !55}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1979, file: !130, line: 697, baseType: !55, size: 64, offset: 1024)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1979, file: !130, line: 699, baseType: !319, size: 64, offset: 1088)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1979, file: !130, line: 700, baseType: !36, size: 64, offset: 1152)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1979, file: !130, line: 711, baseType: !345, size: 64, offset: 1216)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1979, file: !130, line: 717, baseType: !2069, size: 64, offset: 1280)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1979, file: !130, line: 722, baseType: !2085, offset: 1344)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !130, line: 570, elements: !774)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1975, file: !1972, line: 515, baseType: !314, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1975, file: !1972, line: 516, baseType: !55, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1975, file: !1972, line: 517, baseType: !55, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1975, file: !1972, line: 518, baseType: !55, size: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1971, file: !1972, line: 520, baseType: !129, size: 32, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1971, file: !1972, line: 522, baseType: !2092, size: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !794, line: 22, baseType: !2094)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 22, size: 64, elements: !2095)
!2095 = !{!2096}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2094, file: !794, line: 22, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !794, line: 15, baseType: !55)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1971, file: !1972, line: 524, baseType: !2099, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !789, line: 372, baseType: !2101)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 372, size: 64, elements: !2102)
!2102 = !{!2103}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2101, file: !789, line: 372, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !794, line: 16, baseType: !55)
!2105 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !1972, line: 527, baseType: !2106, size: 64, offset: 512)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !1972, line: 527, size: 64, elements: !2107)
!2107 = !{!2108, !2114}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2106, file: !1972, line: 528, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !794, line: 21, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 21, size: 64, elements: !2111)
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2110, file: !794, line: 21, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !794, line: 14, baseType: !55)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2106, file: !1972, line: 529, baseType: !2093, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1971, file: !1972, line: 534, baseType: !1868, size: 64, offset: 576)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1971, file: !1972, line: 535, baseType: !1868, size: 64, offset: 640)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1971, file: !1972, line: 541, baseType: !2118, size: 64, offset: 704)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1971, file: !1972, line: 545, baseType: !2120, size: 64, offset: 768)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1971, file: !1972, line: 549, baseType: !2122, size: 64, offset: 832)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !789, line: 520, baseType: !1868)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1959, file: !146, line: 100, baseType: !2124, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!38, !1918, !55, !55, !38}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1919, file: !146, line: 134, baseType: !36, size: 64, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1919, file: !146, line: 135, baseType: !38, size: 32, offset: 1024)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !146, line: 136, baseType: !2130, size: 128, offset: 1088)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1919, file: !146, line: 136, size: 128, elements: !2131)
!2131 = !{!2132, !2138}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2130, file: !146, line: 137, baseType: !2133, size: 128)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2134, line: 6, size: 128, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2133, file: !2134, line: 7, baseType: !507, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2133, file: !2134, line: 8, baseType: !507, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !146, line: 138, baseType: !2139)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !146, line: 138, elements: !2140)
!2140 = !{!2141, !2143}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2139, file: !146, line: 138, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !146, line: 138, elements: !774)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2139, file: !146, line: 138, baseType: !2144)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2133, elements: !1201)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1915, file: !130, line: 147, baseType: !36, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1873, file: !130, line: 161, baseType: !332, size: 128, align: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !130, line: 164, baseType: !2148, size: 32, offset: 384)
!2148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1869, file: !130, line: 164, size: 32, elements: !2149)
!2149 = !{!2150, !2151}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2148, file: !130, line: 169, baseType: !65, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2148, file: !130, line: 177, baseType: !7, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1869, file: !130, line: 181, baseType: !65, size: 32, offset: 416)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !268, line: 309, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1862, file: !268, line: 406, baseType: !2156, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!38, !319, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !130, line: 293, size: 1536, elements: !2161)
!2161 = !{!2162, !2192, !2206}
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !130, line: 295, baseType: !2163, size: 512)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2160, file: !130, line: 295, size: 512, elements: !2164)
!2164 = !{!2165, !2191}
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !130, line: 296, baseType: !2166, size: 448)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2163, file: !130, line: 296, size: 448, elements: !2167)
!2167 = !{!2168, !2169, !2178, !2179, !2180, !2189, !2190}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2166, file: !130, line: 298, baseType: !55, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !130, line: 299, baseType: !2170, size: 128, offset: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2166, file: !130, line: 299, size: 128, elements: !2171)
!2171 = !{!2172, !2173}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2170, file: !130, line: 300, baseType: !113, size: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2170, file: !130, line: 302, baseType: !2174, size: 128)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2170, file: !130, line: 302, size: 128, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2174, file: !130, line: 303, baseType: !36, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2174, file: !130, line: 305, baseType: !7, size: 32, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2166, file: !130, line: 310, baseType: !1848, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2166, file: !130, line: 311, baseType: !55, size: 64, offset: 256)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !130, line: 312, baseType: !2181, size: 64, offset: 320)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2166, file: !130, line: 312, size: 64, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2181, file: !130, line: 313, baseType: !36, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2181, file: !130, line: 314, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !130, line: 257, baseType: !2186)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 255, size: 64, elements: !2187)
!2187 = !{!2188}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2186, file: !130, line: 256, baseType: !55, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2166, file: !130, line: 316, baseType: !65, size: 32, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2166, file: !130, line: 317, baseType: !65, size: 32, offset: 416)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2163, file: !130, line: 323, baseType: !1869, size: 512, align: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !130, line: 325, baseType: !2193, size: 512, offset: 512)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2160, file: !130, line: 325, size: 512, elements: !2194)
!2194 = !{!2195, !2205}
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !130, line: 326, baseType: !2196, size: 320)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !130, line: 326, size: 320, elements: !2197)
!2197 = !{!2198, !2199, !2200, !2201, !2202, !2203, !2204}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2196, file: !130, line: 327, baseType: !55, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2196, file: !130, line: 328, baseType: !55, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2196, file: !130, line: 329, baseType: !55, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2196, file: !130, line: 331, baseType: !65, size: 32, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2196, file: !130, line: 332, baseType: !65, size: 32, offset: 224)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2196, file: !130, line: 333, baseType: !65, size: 32, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2196, file: !130, line: 335, baseType: !7, size: 32, offset: 288)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2193, file: !130, line: 339, baseType: !1869, size: 512, align: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !130, line: 341, baseType: !2207, size: 512, offset: 1024)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2160, file: !130, line: 341, size: 512, elements: !2208)
!2208 = !{!2209, !2218, !2224}
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !130, line: 342, baseType: !2210, size: 384)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2207, file: !130, line: 342, size: 384, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2217}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2210, file: !130, line: 343, baseType: !55, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2210, file: !130, line: 344, baseType: !55, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2210, file: !130, line: 346, baseType: !36, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2210, file: !130, line: 347, baseType: !36, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2210, file: !130, line: 348, baseType: !36, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2210, file: !130, line: 349, baseType: !36, size: 64, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !130, line: 352, baseType: !2219, size: 256)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2207, file: !130, line: 352, size: 256, elements: !2220)
!2220 = !{!2221, !2222, !2223}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2219, file: !130, line: 353, baseType: !55, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2219, file: !130, line: 354, baseType: !55, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2219, file: !130, line: 356, baseType: !113, size: 128, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2207, file: !130, line: 359, baseType: !1869, size: 512, align: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1862, file: !268, line: 409, baseType: !2226, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!38, !1848, !2153}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1862, file: !268, line: 412, baseType: !2230, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!969, !1848, !2159}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1862, file: !268, line: 414, baseType: !2234, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !268, line: 310, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1862, file: !268, line: 416, baseType: !2240, size: 64, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!38, !319, !1848, !57, !7, !2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1862, file: !268, line: 419, baseType: !2246, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!38, !319, !1848, !57, !7, !7, !1868, !36}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1862, file: !268, line: 424, baseType: !2250, size: 64, offset: 448)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!2253, !1848, !2253}
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !41, line: 131, baseType: !507)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1862, file: !268, line: 425, baseType: !2255, size: 64, offset: 512)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !2159, !51, !51}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1862, file: !268, line: 426, baseType: !2259, size: 64, offset: 576)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!969, !2159, !314}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1862, file: !268, line: 427, baseType: !2263, size: 64, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !2159}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1862, file: !268, line: 428, baseType: !2267, size: 64, offset: 704)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!1811, !2270, !2292}
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !268, line: 373, size: 384, elements: !2272)
!2272 = !{!2273, !2274, !2275, !2279, !2280, !2281, !2282}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2271, file: !268, line: 374, baseType: !319, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2271, file: !268, line: 375, baseType: !57, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2271, file: !268, line: 376, baseType: !2276, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !2270, !313}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2271, file: !268, line: 377, baseType: !36, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2271, file: !268, line: 378, baseType: !38, size: 32, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2271, file: !268, line: 379, baseType: !109, size: 16, offset: 288)
!2282 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !268, line: 380, baseType: !2283, size: 64, offset: 320)
!2283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2271, file: !268, line: 380, size: 64, elements: !2284)
!2284 = !{!2285, !2288}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2283, file: !268, line: 386, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !268, line: 386, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2283, file: !268, line: 395, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!1811, !36}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !268, line: 69, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1862, file: !268, line: 433, baseType: !2295, size: 64, offset: 768)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!38, !1848, !2159, !2159, !278}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1862, file: !268, line: 435, baseType: !2299, size: 64, offset: 832)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!38, !2159}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1862, file: !268, line: 436, baseType: !2303, size: 64, offset: 896)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!969, !2159, !51, !51}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1862, file: !268, line: 438, baseType: !2307, size: 64, offset: 960)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !2159, !2310, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1862, file: !268, line: 439, baseType: !2312, size: 64, offset: 1024)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!38, !1848, !1868}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1862, file: !268, line: 442, baseType: !2316, size: 64, offset: 1088)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!38, !2319, !319, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !268, line: 66, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1862, file: !268, line: 444, baseType: !2323, size: 64, offset: 1152)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !319}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1862, file: !268, line: 445, baseType: !2327, size: 64, offset: 1216)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!38, !2270, !2292}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1849, file: !268, line: 486, baseType: !55, size: 64, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1849, file: !268, line: 487, baseType: !808, size: 320, offset: 960)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1849, file: !268, line: 488, baseType: !2333, size: 32, offset: 1280)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2334, line: 8, baseType: !459)
!2334 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1849, file: !268, line: 489, baseType: !75, size: 32, offset: 1312)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1849, file: !268, line: 490, baseType: !113, size: 128, offset: 1344)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1849, file: !268, line: 491, baseType: !36, size: 64, offset: 1472)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1839, file: !1805, line: 180, baseType: !2339, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!1811, !319, !1747, !1838, !1046, !57, !51}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1839, file: !1805, line: 182, baseType: !2339, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1839, file: !1805, line: 184, baseType: !2344, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!38, !319, !1747, !1838, !1978}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1827, file: !1805, line: 90, baseType: !2348, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1827, file: !1805, line: 91, baseType: !2350, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1795, file: !1742, line: 120, baseType: !2352, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2355, !1765}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !189, line: 39, size: 384, elements: !2358)
!2358 = !{!2359, !2360, !2364, !2368, !2375, !2379}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2357, file: !189, line: 40, baseType: !188, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2357, file: !189, line: 41, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!969}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2357, file: !189, line: 42, baseType: !2365, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!36}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2357, file: !189, line: 43, baseType: !2369, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!317, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2374, line: 177, flags: DIFlagFwdDecl)
!2374 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2357, file: !189, line: 44, baseType: !2376, size: 64, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!317}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2357, file: !189, line: 45, baseType: !1534, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1795, file: !1742, line: 121, baseType: !2381, size: 64, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!317, !1765}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1795, file: !1742, line: 122, baseType: !2385, size: 64, offset: 320)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !1765, !1149, !1150}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1741, file: !1742, line: 70, baseType: !2389, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2391, line: 190, size: 1152, elements: !2392)
!2391 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2392 = !{!2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2523, !2524, !2525, !2526, !2527, !2530}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2390, file: !2391, line: 191, baseType: !65, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2390, file: !2391, line: 192, baseType: !65, size: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2390, file: !2391, line: 202, baseType: !2389, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2390, file: !2391, line: 203, baseType: !32, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2390, file: !2391, line: 205, baseType: !499, size: 192, align: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2390, file: !2391, line: 207, baseType: !317, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2390, file: !2391, line: 208, baseType: !7, size: 32, offset: 448)
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !2390, file: !2391, line: 209, baseType: !2401, size: 256, offset: 512)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2390, file: !2391, line: 209, size: 256, elements: !2402)
!2402 = !{!2403, !2412, !2416}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2401, file: !2391, line: 210, baseType: !2404, size: 256)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2391, line: 153, size: 256, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2411}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2404, file: !2391, line: 154, baseType: !55, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2404, file: !2391, line: 156, baseType: !639, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2404, file: !2391, line: 162, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2391, line: 162, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2404, file: !2391, line: 167, baseType: !55, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2401, file: !2391, line: 211, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2391, line: 170, size: 64, elements: !2414)
!2414 = !{!2415}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2413, file: !2391, line: 171, baseType: !2389, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2401, file: !2391, line: 212, baseType: !2417, size: 256)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2391, line: 174, size: 256, elements: !2418)
!2418 = !{!2419, !2518, !2521, !2522}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2417, file: !2391, line: 175, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2391, line: 271, size: 768, elements: !2423)
!2423 = !{!2424, !2482, !2486, !2487, !2488, !2489, !2490, !2494, !2495, !2496, !2497, !2514}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2422, file: !2391, line: 276, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!38, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2391, line: 251, size: 1216, elements: !2430)
!2430 = !{!2431, !2432, !2433, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2429, file: !2391, line: 253, baseType: !2389, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2429, file: !2391, line: 254, baseType: !319, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2429, file: !2391, line: 255, baseType: !2434, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2436, line: 17, size: 960, elements: !2437)
!2436 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2437 = !{!2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2467, !2468, !2471}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2435, file: !2436, line: 18, baseType: !1046, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2435, file: !2436, line: 19, baseType: !51, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2435, file: !2436, line: 20, baseType: !51, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2435, file: !2436, line: 21, baseType: !51, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2435, file: !2436, line: 22, baseType: !51, size: 64, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2435, file: !2436, line: 23, baseType: !57, size: 64, offset: 320)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2435, file: !2436, line: 24, baseType: !57, size: 64, offset: 384)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2435, file: !2436, line: 25, baseType: !354, size: 256, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2435, file: !2436, line: 26, baseType: !2447, size: 64, offset: 704)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2449)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2436, line: 32, size: 256, elements: !2450)
!2450 = !{!2451, !2455, !2459, !2463}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2449, file: !2436, line: 33, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!36, !2434, !56}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2449, file: !2436, line: 34, baseType: !2456, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2434, !36}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2449, file: !2436, line: 35, baseType: !2460, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!36, !2434, !36, !56}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2449, file: !2436, line: 36, baseType: !2464, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!38, !2434, !36}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2435, file: !2436, line: 27, baseType: !38, size: 32, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2435, file: !2436, line: 28, baseType: !2469, size: 64, offset: 832)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2435, file: !2436, line: 29, baseType: !36, size: 64, offset: 896)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2429, file: !2391, line: 256, baseType: !36, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2429, file: !2391, line: 259, baseType: !354, size: 256, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2429, file: !2391, line: 260, baseType: !354, size: 256, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2429, file: !2391, line: 261, baseType: !38, size: 32, offset: 768)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2429, file: !2391, line: 262, baseType: !113, size: 128, offset: 832)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2429, file: !2391, line: 263, baseType: !1046, size: 64, offset: 960)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2429, file: !2391, line: 265, baseType: !51, size: 64, offset: 1024)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2429, file: !2391, line: 266, baseType: !969, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2429, file: !2391, line: 267, baseType: !969, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2429, file: !2391, line: 268, baseType: !2021, size: 64, offset: 1152)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2422, file: !2391, line: 277, baseType: !2483, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null, !2428}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2422, file: !2391, line: 290, baseType: !2464, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2422, file: !2391, line: 292, baseType: !2452, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2422, file: !2391, line: 293, baseType: !2460, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2422, file: !2391, line: 294, baseType: !2456, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2422, file: !2391, line: 296, baseType: !2491, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!1811, !2428, !1046, !51, !57}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2422, file: !2391, line: 306, baseType: !51, size: 64, offset: 448)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2422, file: !2391, line: 313, baseType: !969, size: 8, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2422, file: !2391, line: 314, baseType: !2491, size: 64, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2422, file: !2391, line: 317, baseType: !2498, size: 64, offset: 640)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!2501, !2428, !2503}
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2502, line: 59, baseType: !7)
!2502 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2505, line: 37, size: 128, elements: !2506)
!2505 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2506 = !{!2507, !2513}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2504, file: !2505, line: 38, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2505, line: 31, baseType: !2509)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{null, !319, !2512, !2503}
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2504, file: !2505, line: 39, baseType: !2501, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2422, file: !2391, line: 320, baseType: !2515, size: 64, offset: 704)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!38, !2428, !1978}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2417, file: !2391, line: 176, baseType: !2519, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2391, line: 35, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2417, file: !2391, line: 177, baseType: !57, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2417, file: !2391, line: 178, baseType: !2389, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2390, file: !2391, line: 215, baseType: !36, size: 64, offset: 768)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2390, file: !2391, line: 221, baseType: !507, size: 64, offset: 832)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2390, file: !2391, line: 223, baseType: !42, size: 16, offset: 896)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2390, file: !2391, line: 224, baseType: !40, size: 16, offset: 912)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2390, file: !2391, line: 225, baseType: !2528, size: 64, offset: 960)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2391, line: 36, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2390, file: !2391, line: 227, baseType: !332, size: 128, align: 64, offset: 1024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1741, file: !1742, line: 71, baseType: !2532, size: 32, offset: 448)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2533, line: 19, size: 32, elements: !2534)
!2533 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2532, file: !2533, line: 20, baseType: !399, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1741, file: !1742, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1741, file: !1742, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1741, file: !1742, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1741, file: !1742, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1741, file: !1742, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1738, file: !6, line: 47, baseType: !1728, size: 64, offset: 512)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1738, file: !6, line: 48, baseType: !1747, size: 64, offset: 576)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1738, file: !6, line: 49, baseType: !2544, size: 64, offset: 640)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1738, file: !6, line: 50, baseType: !1123, size: 64, offset: 704)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1729, file: !6, line: 418, baseType: !2548, size: 64, offset: 1408)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2550)
!2550 = !{!2551, !2552, !2557, !2561, !2565, !2569}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2549, file: !6, line: 54, baseType: !1815, size: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2549, file: !6, line: 55, baseType: !2553, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!1811, !2548, !2556, !1046}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2549, file: !6, line: 57, baseType: !2558, size: 64, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!1811, !2548, !2556, !32, !51}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2549, file: !6, line: 59, baseType: !2562, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !1728, !32}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2549, file: !6, line: 60, baseType: !2566, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!38, !1728}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2549, file: !6, line: 61, baseType: !2570, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{null, !1728}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1729, file: !6, line: 419, baseType: !32, size: 64, offset: 1472)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1729, file: !6, line: 420, baseType: !32, size: 64, offset: 1536)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1729, file: !6, line: 421, baseType: !1747, size: 64, offset: 1600)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1729, file: !6, line: 424, baseType: !2577, size: 64, offset: 1664)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2579)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1729, file: !6, line: 425, baseType: !2581, size: 64, offset: 1728)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1729, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1729, file: !6, line: 435, baseType: !354, size: 256, offset: 1856)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1729, file: !6, line: 437, baseType: !2586, size: 64, offset: 2112)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2588, line: 69, size: 320, elements: !2589)
!2588 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2589 = !{!2590, !2591, !2592, !2609, !2611, !2615, !2616}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2587, file: !2588, line: 70, baseType: !32, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2587, file: !2588, line: 71, baseType: !1728, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2587, file: !2588, line: 72, baseType: !2593, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2595)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2588, line: 47, size: 256, elements: !2596)
!2596 = !{!2597, !2598, !2604, !2608}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2595, file: !2588, line: 49, baseType: !7, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2595, file: !2588, line: 51, baseType: !2599, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!38, !32, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2587)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2595, file: !2588, line: 53, baseType: !2605, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!38, !1046, !2602}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2595, file: !2588, line: 55, baseType: !1534, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2587, file: !2588, line: 73, baseType: !2610, size: 16, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2587, file: !2588, line: 74, baseType: !2612, size: 8, offset: 208)
!2612 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !100, line: 16, baseType: !2613)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !102, line: 20, baseType: !2614)
!2614 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2587, file: !2588, line: 75, baseType: !99, size: 8, offset: 216)
!2616 = !DIDerivedType(tag: DW_TAG_member, scope: !2587, file: !2588, line: 76, baseType: !2617, size: 64, offset: 256)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2587, file: !2588, line: 76, size: 64, elements: !2618)
!2618 = !{!2619, !2620, !2627}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2617, file: !2588, line: 77, baseType: !36, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2617, file: !2588, line: 78, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2623)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2588, line: 86, size: 128, elements: !2624)
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2623, file: !2588, line: 87, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2623, file: !2588, line: 88, baseType: !1046, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2617, file: !2588, line: 79, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2630)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2588, line: 92, size: 256, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2636, !2637}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2630, file: !2588, line: 94, baseType: !7, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2630, file: !2588, line: 95, baseType: !7, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2630, file: !2588, line: 96, baseType: !2635, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2630, file: !2588, line: 97, baseType: !2593, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2630, file: !2588, line: 98, baseType: !36, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1729, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1729, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1729, file: !6, line: 442, baseType: !2577, size: 64, offset: 2240)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1729, file: !6, line: 443, baseType: !2581, size: 64, offset: 2304)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1729, file: !6, line: 444, baseType: !969, size: 8, offset: 2368)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1729, file: !6, line: 451, baseType: !969, size: 8, offset: 2376)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1729, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1729, file: !6, line: 455, baseType: !2646, size: 64, offset: 2432)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2648, line: 23, size: 96, elements: !2649)
!2648 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2649 = !{!2650, !2651, !2652}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2647, file: !2648, line: 24, baseType: !38, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2647, file: !2648, line: 24, baseType: !38, size: 32, offset: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2647, file: !2648, line: 24, baseType: !38, size: 32, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1729, file: !6, line: 458, baseType: !2654, size: 64, offset: 2496)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!38}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1729, file: !6, line: 460, baseType: !2658, size: 4032, align: 512, offset: 2560)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2659, size: 4032, elements: !2675)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2660)
!2660 = !{!2661, !2662, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2659, file: !6, line: 363, baseType: !36, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2659, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2659, file: !6, line: 367, baseType: !2664, size: 448, offset: 128)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2665)
!2665 = !{!2666, !2667}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2664, file: !6, line: 320, baseType: !1728, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2664, file: !6, line: 321, baseType: !2668, size: 384, offset: 64)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2669, line: 40, size: 384, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2670 = !{!2671}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2668, file: !2669, line: 41, baseType: !2672, size: 384, align: 64)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 384, align: 64, elements: !2673)
!2673 = !{!2674}
!2674 = !DISubrange(count: 2)
!2675 = !{!2676}
!2676 = !DISubrange(count: 7)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1729, file: !6, line: 463, baseType: !2678, size: 192, offset: 6592)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2679, line: 8, size: 192, elements: !2680)
!2679 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2680 = !{!2681, !2682, !2683}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2678, file: !2679, line: 10, baseType: !7, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2678, file: !2679, line: 11, baseType: !1306, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2678, file: !2679, line: 12, baseType: !2684, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2686, line: 59, size: 48, elements: !2687)
!2686 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2685, file: !2686, line: 60, baseType: !902, size: 16)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2685, file: !2686, line: 61, baseType: !902, size: 16, offset: 16)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2685, file: !2686, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2685, file: !2686, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2685, file: !2686, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2685, file: !2686, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1729, file: !6, line: 465, baseType: !55, size: 64, offset: 6784)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1729, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1729, file: !6, line: 470, baseType: !113, size: 128, offset: 6912)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1729, file: !6, line: 471, baseType: !2698, size: 64, offset: 7040)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2700, line: 33, size: 96, elements: !2701)
!2700 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2701 = !{!2702, !2703, !2704, !2705}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2699, file: !2700, line: 37, baseType: !38, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2699, file: !2700, line: 43, baseType: !38, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2699, file: !2700, line: 45, baseType: !42, size: 16, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2699, file: !2700, line: 47, baseType: !42, size: 16, offset: 80)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1729, file: !6, line: 476, baseType: !2707, size: 64, offset: 7104)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2709)
!2709 = !{!2710, !2726, !2727, !2728}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2708, file: !6, line: 379, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2713, line: 204, baseType: !2714)
!2713 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2713, line: 197, size: 192, elements: !2715)
!2715 = !{!2716, !2718, !2719, !2720, !2722, !2724}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2714, file: !2713, line: 198, baseType: !2717, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2713, line: 21, baseType: !460)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2714, file: !2713, line: 199, baseType: !103, size: 8, offset: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2714, file: !2713, line: 200, baseType: !103, size: 8, offset: 40)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2714, file: !2713, line: 201, baseType: !2721, size: 16, offset: 48)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2713, line: 17, baseType: !110)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2714, file: !2713, line: 202, baseType: !2723, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2713, line: 16, baseType: !508)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2714, file: !2713, line: 203, baseType: !2725, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2713, line: 22, baseType: !508)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2708, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2708, file: !6, line: 381, baseType: !1046, size: 64, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2708, file: !6, line: 382, baseType: !1046, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1729, file: !6, line: 477, baseType: !2708, size: 256, offset: 7168)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1729, file: !6, line: 480, baseType: !2731, size: 64, offset: 7424)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1729, file: !6, line: 483, baseType: !2734, size: 64, offset: 7488)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1729, file: !6, line: 488, baseType: !1046, size: 64, offset: 7552)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1729, file: !6, line: 492, baseType: !36, size: 64, offset: 7616)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1729, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1729, file: !6, line: 495, baseType: !36, size: 64, offset: 7744)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1729, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1729, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1729, file: !6, line: 500, baseType: !2743, size: 64, offset: 7872)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2745, line: 45, baseType: !2746)
!2745 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1729, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1729, file: !6, line: 504, baseType: !2749, size: 64, offset: 8000)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2752, line: 96, size: 192, elements: !2753)
!2752 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2753 = !{!2754, !2755, !2808, !2811}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2751, file: !2752, line: 97, baseType: !7, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2751, file: !2752, line: 98, baseType: !2756, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2752, line: 24, size: 3072, elements: !2758)
!2758 = !{!2759, !2761, !2762, !2763, !2764, !2777, !2778, !2779, !2780, !2792, !2793, !2794, !2805, !2806, !2807}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2757, file: !2752, line: 26, baseType: !2760, size: 128)
!2760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 128, elements: !2673)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2757, file: !2752, line: 27, baseType: !2760, size: 128, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2757, file: !2752, line: 28, baseType: !38, size: 32, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2757, file: !2752, line: 31, baseType: !75, size: 32, align: 512, offset: 512)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2757, file: !2752, line: 32, baseType: !2765, size: 960, offset: 576)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2766, line: 206, size: 960, elements: !2767)
!2766 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2767 = !{!2768, !2769, !2772, !2774, !2775, !2776}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2765, file: !2766, line: 207, baseType: !335, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2765, file: !2766, line: 208, baseType: !2770, size: 256, offset: 64)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2771, size: 256, elements: !417)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2765, file: !2766, line: 209, baseType: !2773, size: 256, offset: 320)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !417)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2765, file: !2766, line: 213, baseType: !313, size: 64, offset: 576)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2765, file: !2766, line: 215, baseType: !1184, size: 256, offset: 640)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2765, file: !2766, line: 216, baseType: !99, size: 8, offset: 896)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2757, file: !2752, line: 33, baseType: !55, size: 64, offset: 1536)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2757, file: !2752, line: 34, baseType: !55, size: 64, offset: 1600)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2757, file: !2752, line: 35, baseType: !969, size: 8, offset: 1664)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2757, file: !2752, line: 36, baseType: !2781, size: 320, offset: 1728)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2782, line: 11, size: 320, elements: !2783)
!2782 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2783 = !{!2784, !2785, !2786, !2791}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2781, file: !2782, line: 16, baseType: !412, size: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2781, file: !2782, line: 17, baseType: !55, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2781, file: !2782, line: 18, baseType: !2787, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2781, file: !2782, line: 19, baseType: !459, size: 32, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2757, file: !2752, line: 37, baseType: !1085, size: 256, offset: 2048)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2757, file: !2752, line: 38, baseType: !332, size: 128, align: 64, offset: 2304)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2757, file: !2752, line: 39, baseType: !2795, size: 64, offset: 2432)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2752, line: 49, size: 768, elements: !2797)
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803, !2804}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2796, file: !2752, line: 50, baseType: !75, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2796, file: !2752, line: 51, baseType: !2773, size: 256, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2796, file: !2752, line: 53, baseType: !2773, size: 256, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2796, file: !2752, line: 54, baseType: !55, size: 64, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2796, file: !2752, line: 55, baseType: !2795, size: 64, offset: 640)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2796, file: !2752, line: 56, baseType: !38, size: 32, offset: 704)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2796, file: !2752, line: 57, baseType: !38, size: 32, offset: 736)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2757, file: !2752, line: 40, baseType: !55, size: 64, offset: 2496)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2757, file: !2752, line: 42, baseType: !38, size: 32, offset: 2560)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2757, file: !2752, line: 43, baseType: !2750, size: 64, offset: 2624)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2751, file: !2752, line: 99, baseType: !2809, offset: 128)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2810, line: 211, elements: !774)
!2810 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2751, file: !2752, line: 100, baseType: !2812, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2752, line: 63, size: 3008, elements: !2814)
!2814 = !{!2815, !2816, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2846}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2813, file: !2752, line: 64, baseType: !2795, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2813, file: !2752, line: 65, baseType: !2817, size: 192, offset: 64)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2795, size: 192, elements: !391)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2813, file: !2752, line: 67, baseType: !38, size: 32, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2813, file: !2752, line: 68, baseType: !354, size: 256, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2813, file: !2752, line: 69, baseType: !75, size: 32, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2813, file: !2752, line: 70, baseType: !354, size: 256, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2813, file: !2752, line: 71, baseType: !55, size: 64, offset: 896)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2813, file: !2752, line: 72, baseType: !55, size: 64, offset: 960)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2813, file: !2752, line: 73, baseType: !55, size: 64, offset: 1024)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2813, file: !2752, line: 74, baseType: !55, size: 64, offset: 1088)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2813, file: !2752, line: 75, baseType: !55, size: 64, offset: 1152)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2813, file: !2752, line: 76, baseType: !55, size: 64, offset: 1216)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2813, file: !2752, line: 77, baseType: !55, size: 64, offset: 1280)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2813, file: !2752, line: 78, baseType: !55, size: 64, offset: 1344)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2813, file: !2752, line: 79, baseType: !969, size: 8, offset: 1408)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2813, file: !2752, line: 80, baseType: !55, size: 64, offset: 1472)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2813, file: !2752, line: 81, baseType: !354, size: 256, offset: 1536)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2813, file: !2752, line: 82, baseType: !1124, size: 256, offset: 1792)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2813, file: !2752, line: 84, baseType: !65, size: 32, offset: 2048)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2813, file: !2752, line: 87, baseType: !55, size: 64, offset: 2112)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2813, file: !2752, line: 88, baseType: !55, size: 64, offset: 2176)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2813, file: !2752, line: 89, baseType: !2838, size: 704, offset: 2240)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1086, line: 111, size: 704, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2845}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2838, file: !1086, line: 112, baseType: !1085, size: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2838, file: !1086, line: 113, baseType: !2781, size: 320, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2838, file: !1086, line: 116, baseType: !2843, size: 64, offset: 576)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1086, line: 18, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2838, file: !1086, line: 117, baseType: !38, size: 32, offset: 640)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2813, file: !2752, line: 90, baseType: !2750, size: 64, offset: 2944)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1729, file: !6, line: 515, baseType: !2848, size: 64, offset: 8064)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2850, line: 117, size: 128, elements: !2851)
!2850 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2851 = !{!2852, !2853, !2854}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2849, file: !2850, line: 118, baseType: !854, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2849, file: !2850, line: 119, baseType: !854, size: 32, offset: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2849, file: !2850, line: 120, baseType: !313, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1729, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1729, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1729, file: !6, line: 520, baseType: !2858, size: 64, offset: 8192)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1729, file: !6, line: 523, baseType: !2860, size: 64, offset: 8256)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !229, line: 372, size: 1024, elements: !2863)
!2863 = !{!2864, !2865, !2905, !2965, !3046, !3047, !3050, !3055, !3056, !3057, !3058, !3060, !3063}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2862, file: !229, line: 373, baseType: !113, size: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2862, file: !229, line: 374, baseType: !2866, size: 64, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !229, line: 291, size: 576, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2872, !2876, !2899, !2903, !2904}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2867, file: !229, line: 292, baseType: !32, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2867, file: !229, line: 293, baseType: !36, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2867, file: !229, line: 295, baseType: !36, size: 64, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2867, file: !229, line: 297, baseType: !2873, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!38, !2861, !228, !36}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2867, file: !229, line: 299, baseType: !2877, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !229, line: 275, size: 320, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2878, file: !229, line: 276, baseType: !32, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !2878, file: !229, line: 277, baseType: !2882, size: 256, offset: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2878, file: !229, line: 277, size: 256, elements: !2883)
!2883 = !{!2884, !2895}
!2884 = !DIDerivedType(tag: DW_TAG_member, scope: !2882, file: !229, line: 278, baseType: !2885, size: 256)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2882, file: !229, line: 278, size: 256, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2890, !2892, !2893, !2894}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2885, file: !229, line: 279, baseType: !32, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2885, file: !229, line: 280, baseType: !2746, size: 32, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2885, file: !229, line: 281, baseType: !2746, size: 32, offset: 96)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2885, file: !229, line: 282, baseType: !2891, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2885, file: !229, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2885, file: !229, line: 284, baseType: !2746, size: 32, offset: 160)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2885, file: !229, line: 285, baseType: !2746, size: 32, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2882, file: !229, line: 287, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!38, !2861}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2867, file: !229, line: 300, baseType: !2900, size: 64, offset: 320)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!116, !2861}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2867, file: !229, line: 301, baseType: !113, size: 128, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2867, file: !229, line: 302, baseType: !2896, size: 64, offset: 512)
!2905 = !DIDerivedType(tag: DW_TAG_member, scope: !2862, file: !229, line: 375, baseType: !2906, size: 64, offset: 192)
!2906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2862, file: !229, line: 375, size: 64, elements: !2907)
!2907 = !{!2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2906, file: !229, line: 376, baseType: !32, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2906, file: !229, line: 378, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2745, line: 32, size: 640, elements: !2912)
!2912 = !{!2913, !2914, !2926, !2950, !2951, !2952, !2953, !2954, !2958}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2911, file: !2745, line: 33, baseType: !32, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2911, file: !2745, line: 34, baseType: !2915, size: 128, offset: 64)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2850, line: 85, size: 128, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2915, file: !2850, line: 86, baseType: !65, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, scope: !2915, file: !2850, line: 101, baseType: !2919, size: 64, offset: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2915, file: !2850, line: 101, size: 64, elements: !2920)
!2920 = !{!2921, !2922, !2923}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2919, file: !2850, line: 102, baseType: !55, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2919, file: !2850, line: 103, baseType: !2848, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2919, file: !2850, line: 104, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2850, line: 104, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2911, file: !2745, line: 35, baseType: !2927, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2929, line: 61, size: 128, elements: !2930)
!2929 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2930 = !{!2931, !2932}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2928, file: !2929, line: 62, baseType: !36, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !2928, file: !2929, line: 63, baseType: !2933, size: 64, offset: 64)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2928, file: !2929, line: 63, size: 64, elements: !2934)
!2934 = !{!2935, !2936, !2949}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2933, file: !2929, line: 65, baseType: !55, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2933, file: !2929, line: 66, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2939, line: 169, size: 192, elements: !2940)
!2939 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2940 = !{!2941, !2942, !2943}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2938, file: !2939, line: 170, baseType: !2937, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2938, file: !2939, line: 171, baseType: !1728, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2938, file: !2939, line: 172, baseType: !2944, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2929, line: 32, size: 64, elements: !2946)
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2945, file: !2929, line: 33, baseType: !854, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2945, file: !2929, line: 34, baseType: !854, size: 32, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2933, file: !2929, line: 67, baseType: !2944, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2911, file: !2745, line: 36, baseType: !36, size: 64, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2911, file: !2745, line: 37, baseType: !36, size: 64, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2911, file: !2745, line: 38, baseType: !36, size: 64, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2911, file: !2745, line: 39, baseType: !2654, size: 64, offset: 448)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2911, file: !2745, line: 40, baseType: !2955, size: 64, offset: 512)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2911, file: !2745, line: 41, baseType: !2959, size: 64, offset: 576)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2745, line: 26, size: 192, elements: !2961)
!2961 = !{!2962, !2963, !2964}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2960, file: !2745, line: 27, baseType: !36, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2960, file: !2745, line: 28, baseType: !36, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2960, file: !2745, line: 29, baseType: !38, size: 32, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2862, file: !229, line: 380, baseType: !2966, size: 256, offset: 256)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !229, line: 148, size: 256, elements: !2967)
!2967 = !{!2968, !2969, !2970}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2966, file: !229, line: 149, baseType: !412, size: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2966, file: !229, line: 150, baseType: !38, size: 32, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2966, file: !229, line: 151, baseType: !2971, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !229, line: 141, size: 256, elements: !2973)
!2973 = !{!2974, !3043, !3044, !3045}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2972, file: !229, line: 142, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !229, line: 138, baseType: !2976)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!239, !2979, !38, !3042}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !229, line: 93, size: 67776, elements: !2981)
!2981 = !{!2982, !2985, !2988, !2991, !2992, !2993, !2994, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3022, !3025, !3026, !3027, !3035, !3036, !3037, !3038, !3039, !3040, !3041}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2980, file: !229, line: 94, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !229, line: 13, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2980, file: !229, line: 95, baseType: !2986, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !229, line: 15, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2980, file: !229, line: 96, baseType: !2989, size: 64, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !229, line: 14, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2980, file: !229, line: 97, baseType: !36, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2980, file: !229, line: 98, baseType: !38, size: 32, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2980, file: !229, line: 99, baseType: !354, size: 256, offset: 320)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2980, file: !229, line: 100, baseType: !2995, size: 64, offset: 576)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2998, line: 10, flags: DIFlagFwdDecl)
!2998 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2980, file: !229, line: 101, baseType: !55, size: 64, offset: 640)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2980, file: !229, line: 102, baseType: !36, size: 64, offset: 704)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2980, file: !229, line: 103, baseType: !7, size: 32, offset: 768)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2980, file: !229, line: 104, baseType: !1046, size: 64, offset: 832)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2980, file: !229, line: 105, baseType: !7, size: 32, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2980, file: !229, line: 106, baseType: !313, size: 64, offset: 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2980, file: !229, line: 109, baseType: !3006, size: 33088, offset: 1024)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !3007, line: 14, size: 33088, elements: !3008)
!3007 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!3008 = !{!3009, !3013, !3020, !3021}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3006, file: !3007, line: 15, baseType: !3010, size: 32768)
!3010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32768, elements: !3011)
!3011 = !{!3012}
!3012 = !DISubrange(count: 4096)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3006, file: !3007, line: 16, baseType: !3014, size: 192, offset: 32768)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !3015, line: 18, size: 192, elements: !3016)
!3015 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!3016 = !{!3017, !3018, !3019}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3014, file: !3015, line: 19, baseType: !1046, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3014, file: !3015, line: 20, baseType: !51, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3014, file: !3015, line: 21, baseType: !51, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !3006, file: !3007, line: 17, baseType: !51, size: 64, offset: 32960)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3006, file: !3007, line: 18, baseType: !38, size: 32, offset: 33024)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2980, file: !229, line: 111, baseType: !3023, size: 64, offset: 34112)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !700, line: 913, baseType: !3024)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 64, elements: !705)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2980, file: !229, line: 114, baseType: !969, size: 8, offset: 34176)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2980, file: !229, line: 117, baseType: !3006, size: 33088, offset: 34240)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2980, file: !229, line: 118, baseType: !3028, size: 64, offset: 67328)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !229, line: 79, size: 64, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3029, file: !229, line: 80, baseType: !42, size: 16)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3029, file: !229, line: 81, baseType: !103, size: 8, offset: 16)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !3029, file: !229, line: 82, baseType: !103, size: 8, offset: 24)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3029, file: !229, line: 83, baseType: !38, size: 32, offset: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2980, file: !229, line: 119, baseType: !55, size: 64, offset: 67392)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2980, file: !229, line: 120, baseType: !38, size: 32, offset: 67456)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2980, file: !229, line: 121, baseType: !38, size: 32, offset: 67488)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2980, file: !229, line: 122, baseType: !38, size: 32, offset: 67520)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2980, file: !229, line: 123, baseType: !507, size: 64, offset: 67584)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2980, file: !229, line: 125, baseType: !57, size: 64, offset: 67648)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2980, file: !229, line: 126, baseType: !313, size: 64, offset: 67712)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2972, file: !229, line: 143, baseType: !2975, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2972, file: !229, line: 144, baseType: !2975, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2972, file: !229, line: 145, baseType: !2975, size: 64, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2862, file: !229, line: 381, baseType: !1046, size: 64, offset: 512)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2862, file: !229, line: 382, baseType: !3048, size: 64, offset: 576)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !220, line: 821, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, scope: !2862, file: !229, line: 387, baseType: !3051, size: 64, offset: 640)
!3051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2862, file: !229, line: 387, size: 64, elements: !3052)
!3052 = !{!3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3051, file: !229, line: 388, baseType: !36, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3051, file: !229, line: 389, baseType: !65, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2862, file: !229, line: 391, baseType: !36, size: 64, offset: 704)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2862, file: !229, line: 394, baseType: !38, size: 32, offset: 768)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2862, file: !229, line: 397, baseType: !38, size: 32, offset: 800)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2862, file: !229, line: 398, baseType: !3059, size: 64, offset: 832)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2862, file: !229, line: 399, baseType: !3061, size: 64, offset: 896)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !229, line: 399, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2862, file: !229, line: 401, baseType: !3064, size: 64, offset: 960)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!38, !2861, !3067}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !220, line: 671, size: 8512, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3605, !3606, !3607, !3608, !3614, !3615, !3616, !3617, !3618, !3702, !3703, !3704, !3705, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3825, !3826, !3827, !3828, !3829, !3830, !3845, !3846, !3847, !3848, !3849, !3855, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3872, !4043, !4044, !4045, !4046, !4311, !4312, !4313}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3068, file: !220, line: 678, baseType: !113, size: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3068, file: !220, line: 684, baseType: !113, size: 128, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3068, file: !220, line: 685, baseType: !113, size: 128, offset: 256)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3068, file: !220, line: 689, baseType: !499, size: 192, align: 64, offset: 384)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3068, file: !220, line: 690, baseType: !507, size: 64, offset: 576)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3068, file: !220, line: 696, baseType: !113, size: 128, offset: 640)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3068, file: !220, line: 698, baseType: !412, size: 128, offset: 768)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3068, file: !220, line: 699, baseType: !113, size: 128, offset: 896)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3068, file: !220, line: 700, baseType: !38, size: 32, offset: 1024)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3068, file: !220, line: 703, baseType: !38, size: 32, offset: 1056)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3068, file: !220, line: 705, baseType: !38, size: 32, offset: 1088)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3068, file: !220, line: 707, baseType: !7, size: 32, offset: 1120)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3068, file: !220, line: 708, baseType: !3067, size: 64, offset: 1152)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3068, file: !220, line: 714, baseType: !3084, size: 64, offset: 1216)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !220, line: 302, size: 2432, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3512, !3513, !3514, !3515, !3516, !3520, !3521, !3525, !3529, !3530, !3534, !3538, !3539, !3540, !3544, !3548, !3552, !3553, !3554, !3558, !3562, !3566, !3570, !3571, !3591, !3595, !3596, !3597, !3601}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3085, file: !220, line: 303, baseType: !113, size: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3085, file: !220, line: 305, baseType: !1728, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3085, file: !220, line: 306, baseType: !3090, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !167, line: 705, size: 5824, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3098, !3099, !3152, !3222, !3223, !3224, !3225, !3226, !3233, !3325, !3338, !3348, !3352, !3354, !3355, !3356, !3360, !3367, !3368, !3371, !3374, !3378, !3381, !3382, !3383, !3384, !3385, !3386, !3416, !3417, !3418, !3421, !3424, !3433, !3434, !3435, !3436, !3437, !3438}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3091, file: !167, line: 706, baseType: !1741, size: 512)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3091, file: !167, line: 707, baseType: !3090, size: 64, offset: 512)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3091, file: !167, line: 709, baseType: !3096, size: 64, offset: 576)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !167, line: 37, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3091, file: !167, line: 711, baseType: !32, size: 64, offset: 640)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3091, file: !167, line: 712, baseType: !3100, size: 64, offset: 704)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3102)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !167, line: 89, size: 384, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3112, !3117, !3121}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3102, file: !167, line: 90, baseType: !32, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3102, file: !167, line: 91, baseType: !1824, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3102, file: !167, line: 92, baseType: !3107, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!38, !3110, !1777}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3091)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3102, file: !167, line: 93, baseType: !3113, size: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!1046, !3110, !3116, !1149, !1150}
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3102, file: !167, line: 95, baseType: !3118, size: 64, offset: 256)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !3090}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3102, file: !167, line: 97, baseType: !3122, size: 64, offset: 320)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3124)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !174, line: 286, size: 1472, elements: !3125)
!3125 = !{!3126, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3124, file: !174, line: 287, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!38, !3090}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3124, file: !174, line: 288, baseType: !3118, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3124, file: !174, line: 289, baseType: !3127, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3124, file: !174, line: 290, baseType: !3127, size: 64, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3124, file: !174, line: 291, baseType: !3127, size: 64, offset: 256)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3124, file: !174, line: 292, baseType: !3127, size: 64, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3124, file: !174, line: 293, baseType: !3127, size: 64, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3124, file: !174, line: 294, baseType: !3127, size: 64, offset: 448)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3124, file: !174, line: 295, baseType: !3127, size: 64, offset: 512)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3124, file: !174, line: 296, baseType: !3127, size: 64, offset: 576)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3124, file: !174, line: 297, baseType: !3127, size: 64, offset: 640)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3124, file: !174, line: 298, baseType: !3127, size: 64, offset: 704)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3124, file: !174, line: 299, baseType: !3127, size: 64, offset: 768)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3124, file: !174, line: 300, baseType: !3127, size: 64, offset: 832)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3124, file: !174, line: 301, baseType: !3127, size: 64, offset: 896)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3124, file: !174, line: 302, baseType: !3127, size: 64, offset: 960)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3124, file: !174, line: 303, baseType: !3127, size: 64, offset: 1024)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3124, file: !174, line: 304, baseType: !3127, size: 64, offset: 1088)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3124, file: !174, line: 305, baseType: !3127, size: 64, offset: 1152)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3124, file: !174, line: 306, baseType: !3127, size: 64, offset: 1216)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3124, file: !174, line: 307, baseType: !3127, size: 64, offset: 1280)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3124, file: !174, line: 308, baseType: !3127, size: 64, offset: 1344)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3124, file: !174, line: 309, baseType: !3127, size: 64, offset: 1408)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3091, file: !167, line: 714, baseType: !3153, size: 64, offset: 768)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3155)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3156, line: 80, size: 1344, elements: !3157)
!3156 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3157 = !{!3158, !3159, !3160, !3161, !3162, !3163, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3221}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3155, file: !3156, line: 81, baseType: !32, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3155, file: !3156, line: 82, baseType: !32, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3155, file: !3156, line: 83, baseType: !1824, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3155, file: !3156, line: 84, baseType: !1824, size: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3155, file: !3156, line: 85, baseType: !1824, size: 64, offset: 256)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3155, file: !3156, line: 87, baseType: !3164, size: 64, offset: 320)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!38, !3090, !3167}
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !161, line: 96, size: 1152, elements: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175, !3176, !3180, !3184, !3185, !3186, !3187, !3188, !3196, !3197, !3198, !3199, !3200, !3201}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3168, file: !161, line: 97, baseType: !32, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3168, file: !161, line: 98, baseType: !3153, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3168, file: !161, line: 100, baseType: !1728, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3168, file: !161, line: 101, baseType: !32, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3168, file: !161, line: 103, baseType: !969, size: 8, offset: 256)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3168, file: !161, line: 104, baseType: !160, size: 32, offset: 288)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3168, file: !161, line: 106, baseType: !3177, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3179)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !161, line: 106, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3168, file: !161, line: 107, baseType: !3181, size: 64, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3183)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !161, line: 107, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3168, file: !161, line: 109, baseType: !3127, size: 64, offset: 448)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3168, file: !161, line: 110, baseType: !3118, size: 64, offset: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3168, file: !161, line: 111, baseType: !3127, size: 64, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3168, file: !161, line: 112, baseType: !3118, size: 64, offset: 640)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3168, file: !161, line: 113, baseType: !3189, size: 64, offset: 704)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!38, !3090, !3192}
!3192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !174, line: 60, baseType: !3193)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !174, line: 58, size: 32, elements: !3194)
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3193, file: !174, line: 59, baseType: !38, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3168, file: !161, line: 114, baseType: !3127, size: 64, offset: 768)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3168, file: !161, line: 115, baseType: !1824, size: 64, offset: 832)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3168, file: !161, line: 116, baseType: !1824, size: 64, offset: 896)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3168, file: !161, line: 118, baseType: !3122, size: 64, offset: 960)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3168, file: !161, line: 119, baseType: !3118, size: 64, offset: 1024)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3168, file: !161, line: 121, baseType: !3202, size: 64, offset: 1088)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !161, line: 121, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3155, file: !3156, line: 88, baseType: !3107, size: 64, offset: 384)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3155, file: !3156, line: 89, baseType: !3127, size: 64, offset: 448)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3155, file: !3156, line: 90, baseType: !3118, size: 64, offset: 512)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3155, file: !3156, line: 91, baseType: !3118, size: 64, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3155, file: !3156, line: 92, baseType: !3118, size: 64, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3155, file: !3156, line: 94, baseType: !3127, size: 64, offset: 704)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3155, file: !3156, line: 95, baseType: !3127, size: 64, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3155, file: !3156, line: 97, baseType: !3189, size: 64, offset: 832)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3155, file: !3156, line: 98, baseType: !3127, size: 64, offset: 896)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3155, file: !3156, line: 100, baseType: !3127, size: 64, offset: 960)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3155, file: !3156, line: 102, baseType: !3127, size: 64, offset: 1024)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3155, file: !3156, line: 103, baseType: !3118, size: 64, offset: 1088)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3155, file: !3156, line: 105, baseType: !3122, size: 64, offset: 1152)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3155, file: !3156, line: 107, baseType: !3218, size: 64, offset: 1216)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3220)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3156, line: 107, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3155, file: !3156, line: 109, baseType: !969, size: 8, offset: 1280)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3091, file: !167, line: 715, baseType: !3167, size: 64, offset: 832)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3091, file: !167, line: 717, baseType: !36, size: 64, offset: 896)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3091, file: !167, line: 719, baseType: !36, size: 64, offset: 960)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3091, file: !167, line: 721, baseType: !354, size: 256, offset: 1024)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3091, file: !167, line: 725, baseType: !3227, size: 448, offset: 1280)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !167, line: 517, size: 448, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3232}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3227, file: !167, line: 518, baseType: !113, size: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3227, file: !167, line: 519, baseType: !113, size: 128, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3227, file: !167, line: 520, baseType: !113, size: 128, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3227, file: !167, line: 521, baseType: !166, size: 32, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3091, file: !167, line: 726, baseType: !3234, size: 2496, offset: 1728)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !174, line: 663, size: 2496, elements: !3235)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3318, !3322}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3234, file: !174, line: 664, baseType: !3192, size: 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3234, file: !174, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3234, file: !174, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3234, file: !174, line: 667, baseType: !969, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3234, file: !174, line: 668, baseType: !969, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3234, file: !174, line: 669, baseType: !969, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3234, file: !174, line: 670, baseType: !969, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3234, file: !174, line: 671, baseType: !969, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3234, file: !174, line: 672, baseType: !969, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3234, file: !174, line: 673, baseType: !969, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3234, file: !174, line: 674, baseType: !969, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3234, file: !174, line: 675, baseType: !459, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3234, file: !174, line: 676, baseType: !75, size: 32, offset: 96)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3234, file: !174, line: 678, baseType: !113, size: 128, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3234, file: !174, line: 679, baseType: !1124, size: 256, offset: 256)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3234, file: !174, line: 680, baseType: !3252, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3254, line: 43, size: 1536, elements: !3255)
!3254 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3253, file: !3254, line: 44, baseType: !32, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3253, file: !3254, line: 45, baseType: !38, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3253, file: !3254, line: 46, baseType: !113, size: 128, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3253, file: !3254, line: 47, baseType: !75, size: 32, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3253, file: !3254, line: 48, baseType: !3261, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !174, line: 629, flags: DIFlagFwdDecl)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3253, file: !3254, line: 49, baseType: !2781, size: 320, offset: 384)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3253, file: !3254, line: 50, baseType: !55, size: 64, offset: 704)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3253, file: !3254, line: 51, baseType: !580, size: 64, offset: 768)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3253, file: !3254, line: 52, baseType: !580, size: 64, offset: 832)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3253, file: !3254, line: 53, baseType: !580, size: 64, offset: 896)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3253, file: !3254, line: 54, baseType: !580, size: 64, offset: 960)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3253, file: !3254, line: 55, baseType: !580, size: 64, offset: 1024)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3253, file: !3254, line: 56, baseType: !55, size: 64, offset: 1088)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3253, file: !3254, line: 57, baseType: !55, size: 64, offset: 1152)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3253, file: !3254, line: 58, baseType: !55, size: 64, offset: 1216)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3253, file: !3254, line: 59, baseType: !55, size: 64, offset: 1280)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3253, file: !3254, line: 60, baseType: !55, size: 64, offset: 1344)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3253, file: !3254, line: 61, baseType: !3090, size: 64, offset: 1408)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3253, file: !3254, line: 62, baseType: !969, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3253, file: !3254, line: 63, baseType: !969, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3234, file: !174, line: 681, baseType: !969, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3234, file: !174, line: 682, baseType: !969, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3234, file: !174, line: 683, baseType: !969, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3234, file: !174, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3234, file: !174, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3234, file: !174, line: 690, baseType: !572, size: 512, offset: 640)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3234, file: !174, line: 691, baseType: !507, size: 64, offset: 1152)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3234, file: !174, line: 692, baseType: !1085, size: 256, offset: 1216)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3234, file: !174, line: 693, baseType: !70, size: 192, offset: 1472)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3234, file: !174, line: 694, baseType: !3261, size: 64, offset: 1664)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3234, file: !174, line: 695, baseType: !65, size: 32, offset: 1728)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3234, file: !174, line: 696, baseType: !65, size: 32, offset: 1760)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3234, file: !174, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3234, file: !174, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3234, file: !174, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3234, file: !174, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3234, file: !174, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3234, file: !174, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3234, file: !174, line: 703, baseType: !969, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3234, file: !174, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3234, file: !174, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3234, file: !174, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3234, file: !174, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3234, file: !174, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3234, file: !174, line: 709, baseType: !7, size: 32, offset: 1824)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3234, file: !174, line: 710, baseType: !173, size: 32, offset: 1856)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3234, file: !174, line: 711, baseType: !181, size: 32, offset: 1888)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3234, file: !174, line: 712, baseType: !181, size: 32, offset: 1920)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3234, file: !174, line: 713, baseType: !38, size: 32, offset: 1952)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3234, file: !174, line: 714, baseType: !38, size: 32, offset: 1984)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3234, file: !174, line: 715, baseType: !507, size: 64, offset: 2048)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3234, file: !174, line: 716, baseType: !507, size: 64, offset: 2112)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3234, file: !174, line: 717, baseType: !507, size: 64, offset: 2176)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3234, file: !174, line: 718, baseType: !507, size: 64, offset: 2240)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3234, file: !174, line: 720, baseType: !3313, size: 64, offset: 2304)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !174, line: 632, size: 64, elements: !3315)
!3315 = !{!3316, !3317}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3314, file: !174, line: 633, baseType: !75, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3314, file: !174, line: 634, baseType: !7, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3234, file: !174, line: 721, baseType: !3319, size: 64, offset: 2368)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !3090, !854}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3234, file: !174, line: 722, baseType: !3323, size: 64, offset: 2432)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !174, line: 722, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3091, file: !167, line: 727, baseType: !3326, size: 64, offset: 4224)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !174, line: 742, size: 1792, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3335, !3336, !3337}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3327, file: !174, line: 743, baseType: !3124, size: 1472)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3327, file: !174, line: 744, baseType: !3127, size: 64, offset: 1472)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3327, file: !174, line: 745, baseType: !3332, size: 64, offset: 1536)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !3090, !969}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3327, file: !174, line: 746, baseType: !3127, size: 64, offset: 1600)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3327, file: !174, line: 747, baseType: !3118, size: 64, offset: 1664)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3327, file: !174, line: 748, baseType: !3118, size: 64, offset: 1728)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3091, file: !167, line: 736, baseType: !3339, size: 128, offset: 4288)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !167, line: 529, size: 128, elements: !3340)
!3340 = !{!3341, !3345}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3339, file: !167, line: 531, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3344, line: 13, flags: DIFlagFwdDecl)
!3344 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3339, file: !167, line: 532, baseType: !3346, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !167, line: 49, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3091, file: !167, line: 738, baseType: !3349, size: 64, offset: 4416)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !167, line: 738, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3091, file: !167, line: 740, baseType: !3353, size: 64, offset: 4480)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3091, file: !167, line: 741, baseType: !507, size: 64, offset: 4544)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3091, file: !167, line: 746, baseType: !507, size: 64, offset: 4608)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3091, file: !167, line: 747, baseType: !3357, size: 64, offset: 4672)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3359)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !167, line: 747, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3091, file: !167, line: 749, baseType: !3361, size: 64, offset: 4736)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !167, line: 428, size: 128, elements: !3363)
!3363 = !{!3364, !3365, !3366}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3362, file: !167, line: 433, baseType: !7, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3362, file: !167, line: 434, baseType: !7, size: 32, offset: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3362, file: !167, line: 435, baseType: !55, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3091, file: !167, line: 751, baseType: !113, size: 128, offset: 4800)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3091, file: !167, line: 762, baseType: !3369, size: 64, offset: 4928)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !167, line: 762, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3091, file: !167, line: 770, baseType: !3372, offset: 4992)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3373, line: 5, elements: !774)
!3373 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3091, file: !167, line: 772, baseType: !3375, size: 64, offset: 4992)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3377, line: 18, flags: DIFlagFwdDecl)
!3377 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3091, file: !167, line: 773, baseType: !3379, size: 64, offset: 5056)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3156, line: 22, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3091, file: !167, line: 776, baseType: !38, size: 32, offset: 5120)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3091, file: !167, line: 778, baseType: !1577, size: 32, offset: 5152)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3091, file: !167, line: 779, baseType: !459, size: 32, offset: 5184)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3091, file: !167, line: 781, baseType: !75, size: 32, offset: 5216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3091, file: !167, line: 782, baseType: !113, size: 128, offset: 5248)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3091, file: !167, line: 784, baseType: !3387, size: 64, offset: 5376)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3389)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3390, line: 52, size: 768, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3400, !3404, !3405, !3406, !3407, !3411, !3415}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3389, file: !3390, line: 53, baseType: !32, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3389, file: !3390, line: 55, baseType: !1824, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3389, file: !3390, line: 56, baseType: !1824, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3389, file: !3390, line: 58, baseType: !3107, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3389, file: !3390, line: 59, baseType: !3397, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!1046, !3110, !3116}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3389, file: !3390, line: 61, baseType: !3401, size: 64, offset: 320)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !3387}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3389, file: !3390, line: 62, baseType: !3118, size: 64, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3389, file: !3390, line: 64, baseType: !3127, size: 64, offset: 448)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3389, file: !3390, line: 66, baseType: !2355, size: 64, offset: 512)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3389, file: !3390, line: 67, baseType: !3408, size: 64, offset: 576)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!317, !3110}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3389, file: !3390, line: 69, baseType: !3412, size: 64, offset: 640)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{null, !3110, !1149, !1150}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3389, file: !3390, line: 71, baseType: !3122, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3091, file: !167, line: 785, baseType: !1824, size: 64, offset: 5440)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3091, file: !167, line: 787, baseType: !3118, size: 64, offset: 5504)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3091, file: !167, line: 788, baseType: !3419, size: 64, offset: 5568)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !167, line: 46, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3091, file: !167, line: 789, baseType: !3422, size: 64, offset: 5632)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !167, line: 48, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3091, file: !167, line: 791, baseType: !3425, size: 64, offset: 5696)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !167, line: 597, size: 128, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3426, file: !167, line: 598, baseType: !194, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3426, file: !167, line: 599, baseType: !203, size: 32, offset: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3426, file: !167, line: 600, baseType: !208, size: 32, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3426, file: !167, line: 601, baseType: !969, size: 8, offset: 96)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3426, file: !167, line: 602, baseType: !969, size: 8, offset: 104)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3091, file: !167, line: 793, baseType: !213, size: 32, offset: 5760)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3091, file: !167, line: 795, baseType: !969, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3091, file: !167, line: 796, baseType: !969, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3091, file: !167, line: 797, baseType: !969, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3091, file: !167, line: 798, baseType: !969, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3091, file: !167, line: 799, baseType: !969, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3085, file: !220, line: 307, baseType: !3090, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3085, file: !220, line: 308, baseType: !1824, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3085, file: !220, line: 309, baseType: !1824, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3085, file: !220, line: 310, baseType: !32, size: 64, offset: 448)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3085, file: !220, line: 311, baseType: !38, size: 32, offset: 512)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3085, file: !220, line: 316, baseType: !38, size: 32, offset: 544)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3085, file: !220, line: 318, baseType: !1306, size: 64, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3085, file: !220, line: 319, baseType: !3447, size: 64, offset: 640)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !220, line: 977, size: 1856, elements: !3449)
!3449 = !{!3450, !3502, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3448, file: !220, line: 978, baseType: !3451, size: 896)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !220, line: 873, size: 896, elements: !3452)
!3452 = !{!3453, !3454, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3451, file: !220, line: 874, baseType: !3084, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3451, file: !220, line: 875, baseType: !3455, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !220, line: 912, size: 1792, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3456, file: !220, line: 917, baseType: !359, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3456, file: !220, line: 923, baseType: !354, size: 256, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3456, file: !220, line: 925, baseType: !113, size: 128, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3456, file: !220, line: 926, baseType: !3462, size: 128, offset: 448)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !220, line: 901, size: 128, elements: !3463)
!3463 = !{!3464, !3465}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3462, file: !220, line: 902, baseType: !639, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3462, file: !220, line: 903, baseType: !507, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3456, file: !220, line: 927, baseType: !3462, size: 128, offset: 576)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3456, file: !220, line: 928, baseType: !113, size: 128, offset: 704)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3456, file: !220, line: 930, baseType: !38, size: 32, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3456, file: !220, line: 931, baseType: !38, size: 32, offset: 864)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3456, file: !220, line: 932, baseType: !38, size: 32, offset: 896)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3456, file: !220, line: 934, baseType: !38, size: 32, offset: 928)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3456, file: !220, line: 935, baseType: !38, size: 32, offset: 960)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3456, file: !220, line: 936, baseType: !38, size: 32, offset: 992)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3456, file: !220, line: 937, baseType: !38, size: 32, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3456, file: !220, line: 939, baseType: !399, size: 32, offset: 1056)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3456, file: !220, line: 940, baseType: !448, size: 64, offset: 1088)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3456, file: !220, line: 945, baseType: !507, size: 64, offset: 1152)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3456, file: !220, line: 946, baseType: !507, size: 64, offset: 1216)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3456, file: !220, line: 947, baseType: !507, size: 64, offset: 1280)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3456, file: !220, line: 953, baseType: !3455, size: 64, offset: 1344)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3456, file: !220, line: 954, baseType: !507, size: 64, offset: 1408)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3456, file: !220, line: 955, baseType: !507, size: 64, offset: 1472)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3456, file: !220, line: 956, baseType: !38, size: 32, offset: 1536)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3456, file: !220, line: 958, baseType: !38, size: 32, offset: 1568)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3456, file: !220, line: 960, baseType: !332, size: 128, align: 64, offset: 1600)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3456, file: !220, line: 968, baseType: !3487, size: 64, offset: 1728)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3488, line: 12, baseType: !3489)
!3488 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3488, line: 10, size: 64, elements: !3490)
!3490 = !{!3491}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3489, file: !3488, line: 11, baseType: !345, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3451, file: !220, line: 877, baseType: !113, size: 128, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3451, file: !220, line: 879, baseType: !113, size: 128, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3451, file: !220, line: 880, baseType: !113, size: 128, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3451, file: !220, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3451, file: !220, line: 885, baseType: !7, size: 32, offset: 544)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3451, file: !220, line: 886, baseType: !7, size: 32, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3451, file: !220, line: 888, baseType: !65, size: 32, offset: 608)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3451, file: !220, line: 889, baseType: !332, size: 128, align: 64, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3451, file: !220, line: 891, baseType: !36, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3451, file: !220, line: 898, baseType: !38, size: 32, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3448, file: !220, line: 979, baseType: !3503, size: 64, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3448, file: !220, line: 981, baseType: !113, size: 128, offset: 960)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3448, file: !220, line: 982, baseType: !38, size: 32, offset: 1088)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3448, file: !220, line: 984, baseType: !38, size: 32, offset: 1120)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3448, file: !220, line: 985, baseType: !38, size: 32, offset: 1152)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3448, file: !220, line: 987, baseType: !359, size: 32, offset: 1184)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3448, file: !220, line: 988, baseType: !572, size: 512, offset: 1216)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3448, file: !220, line: 989, baseType: !580, size: 64, offset: 1728)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3448, file: !220, line: 990, baseType: !7, size: 32, offset: 1792)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3085, file: !220, line: 320, baseType: !65, size: 32, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3085, file: !220, line: 321, baseType: !38, size: 32, offset: 736)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3085, file: !220, line: 322, baseType: !38, size: 32, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3085, file: !220, line: 325, baseType: !7, size: 32, offset: 800)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3085, file: !220, line: 331, baseType: !3517, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !3084}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3085, file: !220, line: 332, baseType: !3517, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3085, file: !220, line: 350, baseType: !3522, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!38, !3067}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3085, file: !220, line: 356, baseType: !3526, size: 64, offset: 1024)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !3067, !753}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3085, file: !220, line: 357, baseType: !3526, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3085, file: !220, line: 385, baseType: !3531, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!38, !3067, !38}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3085, file: !220, line: 386, baseType: !3535, size: 64, offset: 1216)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{null, !3067, !38}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3085, file: !220, line: 406, baseType: !3535, size: 64, offset: 1280)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3085, file: !220, line: 407, baseType: !3535, size: 64, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3085, file: !220, line: 415, baseType: !3541, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{null, !3067}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3085, file: !220, line: 427, baseType: !3545, size: 64, offset: 1472)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{null, !3084, !7}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3085, file: !220, line: 436, baseType: !3549, size: 64, offset: 1536)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!38, !3084}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3085, file: !220, line: 443, baseType: !3517, size: 64, offset: 1600)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3085, file: !220, line: 450, baseType: !3522, size: 64, offset: 1664)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3085, file: !220, line: 455, baseType: !3555, size: 64, offset: 1728)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !3503, !969}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3085, file: !220, line: 461, baseType: !3559, size: 64, offset: 1792)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3561, line: 325, flags: DIFlagFwdDecl)
!3561 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3085, file: !220, line: 469, baseType: !3563, size: 64, offset: 1856)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3503, !3503}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3085, file: !220, line: 476, baseType: !3567, size: 64, offset: 1920)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!36, !3067, !2244, !38, !969}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3085, file: !220, line: 483, baseType: !1534, size: 64, offset: 1984)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3085, file: !220, line: 494, baseType: !3572, size: 64, offset: 2048)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!313, !3067, !3575, !55}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !220, line: 1014, size: 448, elements: !3577)
!3577 = !{!3578, !3579, !3582, !3583, !3584, !3585, !3590}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3576, file: !220, line: 1015, baseType: !3067, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3576, file: !220, line: 1016, baseType: !3580, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !220, line: 641, flags: DIFlagFwdDecl)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3576, file: !220, line: 1017, baseType: !55, size: 64, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3576, file: !220, line: 1018, baseType: !55, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3576, file: !220, line: 1019, baseType: !507, size: 64, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !220, line: 1020, baseType: !3586, size: 64, offset: 320)
!3586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3576, file: !220, line: 1020, size: 64, elements: !3587)
!3587 = !{!3588, !3589}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3586, file: !220, line: 1021, baseType: !36, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3586, file: !220, line: 1022, baseType: !55, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3576, file: !220, line: 1024, baseType: !38, size: 32, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3085, file: !220, line: 506, baseType: !3592, size: 64, offset: 2112)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!38, !116}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3085, file: !220, line: 520, baseType: !3541, size: 64, offset: 2176)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3085, file: !220, line: 530, baseType: !3522, size: 64, offset: 2240)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3085, file: !220, line: 537, baseType: !3598, size: 64, offset: 2304)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!969, !3084, !38}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3085, file: !220, line: 542, baseType: !3602, size: 64, offset: 2368)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!38, !3067, !507}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3068, file: !220, line: 715, baseType: !36, size: 64, offset: 1280)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3068, file: !220, line: 717, baseType: !219, size: 32, offset: 1344)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3068, file: !220, line: 718, baseType: !7, size: 32, offset: 1376)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3068, file: !220, line: 719, baseType: !3609, size: 64, offset: 1408)
!3609 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3610, line: 26, baseType: !3611)
!3610 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3610, line: 24, size: 64, elements: !3612)
!3612 = !{!3613}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3611, file: !3610, line: 25, baseType: !3487, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3068, file: !220, line: 720, baseType: !347, size: 64, offset: 1472)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3068, file: !220, line: 728, baseType: !507, size: 64, offset: 1536)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3068, file: !220, line: 729, baseType: !507, size: 64, offset: 1600)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3068, file: !220, line: 730, baseType: !507, size: 64, offset: 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3068, file: !220, line: 732, baseType: !3619, size: 1088, offset: 1728)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3620, line: 385, size: 1088, elements: !3621)
!3620 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3621 = !{!3622, !3623, !3624, !3625, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3675, !3676, !3683, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3619, file: !3620, line: 390, baseType: !460, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3619, file: !3620, line: 395, baseType: !460, size: 32, offset: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3619, file: !3620, line: 400, baseType: !508, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, scope: !3619, file: !3620, line: 402, baseType: !3626, size: 64, offset: 128)
!3626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3619, file: !3620, line: 402, size: 64, elements: !3627)
!3627 = !{!3628, !3629}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3626, file: !3620, line: 403, baseType: !508, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3626, file: !3620, line: 404, baseType: !508, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3619, file: !3620, line: 407, baseType: !508, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3619, file: !3620, line: 408, baseType: !508, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3619, file: !3620, line: 410, baseType: !508, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3619, file: !3620, line: 411, baseType: !508, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3619, file: !3620, line: 412, baseType: !508, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3619, file: !3620, line: 413, baseType: !508, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3619, file: !3620, line: 414, baseType: !508, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3619, file: !3620, line: 415, baseType: !508, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3619, file: !3620, line: 416, baseType: !508, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3619, file: !3620, line: 417, baseType: !508, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3619, file: !3620, line: 418, baseType: !508, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3619, file: !3620, line: 419, baseType: !508, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3619, file: !3620, line: 420, baseType: !508, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3619, file: !3620, line: 421, baseType: !508, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3619, file: !3620, line: 422, baseType: !508, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3619, file: !3620, line: 423, baseType: !508, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3619, file: !3620, line: 424, baseType: !508, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3619, file: !3620, line: 435, baseType: !508, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3619, file: !3620, line: 436, baseType: !508, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3619, file: !3620, line: 437, baseType: !508, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3619, file: !3620, line: 439, baseType: !508, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3619, file: !3620, line: 440, baseType: !508, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3619, file: !3620, line: 442, baseType: !508, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3619, file: !3620, line: 443, baseType: !508, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3619, file: !3620, line: 444, baseType: !508, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3619, file: !3620, line: 445, baseType: !508, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3619, file: !3620, line: 446, baseType: !508, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3619, file: !3620, line: 447, baseType: !508, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3619, file: !3620, line: 448, baseType: !508, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3619, file: !3620, line: 449, baseType: !508, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3619, file: !3620, line: 450, baseType: !508, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3619, file: !3620, line: 451, baseType: !508, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3619, file: !3620, line: 452, baseType: !508, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3619, file: !3620, line: 453, baseType: !508, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3619, file: !3620, line: 454, baseType: !508, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3619, file: !3620, line: 455, baseType: !508, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3619, file: !3620, line: 456, baseType: !508, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3619, file: !3620, line: 457, baseType: !508, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3619, file: !3620, line: 458, baseType: !508, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3619, file: !3620, line: 459, baseType: !508, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3670 = !DIDerivedType(tag: DW_TAG_member, scope: !3619, file: !3620, line: 461, baseType: !3671, size: 32, offset: 384)
!3671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3619, file: !3620, line: 461, size: 32, elements: !3672)
!3672 = !{!3673, !3674}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3671, file: !3620, line: 462, baseType: !460, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3671, file: !3620, line: 463, baseType: !460, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3619, file: !3620, line: 466, baseType: !460, size: 32, offset: 416)
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3619, file: !3620, line: 467, baseType: !3677, size: 64, offset: 448)
!3677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3619, file: !3620, line: 467, size: 64, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3677, file: !3620, line: 468, baseType: !508, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3677, file: !3620, line: 469, baseType: !508, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3677, file: !3620, line: 470, baseType: !508, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3677, file: !3620, line: 471, baseType: !508, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, scope: !3619, file: !3620, line: 473, baseType: !3684, size: 64, offset: 512)
!3684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3619, file: !3620, line: 473, size: 64, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3684, file: !3620, line: 474, baseType: !508, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3684, file: !3620, line: 475, baseType: !508, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3684, file: !3620, line: 476, baseType: !508, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3684, file: !3620, line: 477, baseType: !508, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3619, file: !3620, line: 479, baseType: !508, size: 64, offset: 576)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3619, file: !3620, line: 485, baseType: !508, size: 64, offset: 640)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3619, file: !3620, line: 490, baseType: !460, size: 32, offset: 704)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3619, file: !3620, line: 492, baseType: !855, size: 32, offset: 736)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3619, file: !3620, line: 501, baseType: !508, size: 64, offset: 768)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3619, file: !3620, line: 506, baseType: !460, size: 32, offset: 832)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3619, file: !3620, line: 507, baseType: !110, size: 16, offset: 864)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3619, file: !3620, line: 508, baseType: !110, size: 16, offset: 880)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3619, file: !3620, line: 509, baseType: !460, size: 32, offset: 896)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3619, file: !3620, line: 510, baseType: !460, size: 32, offset: 928)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3619, file: !3620, line: 518, baseType: !508, size: 64, offset: 960)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3619, file: !3620, line: 520, baseType: !508, size: 64, offset: 1024)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3068, file: !220, line: 733, baseType: !109, size: 16, offset: 2816)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3068, file: !220, line: 734, baseType: !109, size: 16, offset: 2832)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3068, file: !220, line: 735, baseType: !109, size: 16, offset: 2848)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3068, file: !220, line: 736, baseType: !3706, size: 1536, offset: 2880)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !220, line: 155, size: 1536, elements: !3707)
!3707 = !{!3708, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3792, !3793, !3794, !3795}
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !220, line: 157, baseType: !3709, size: 768)
!3709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3706, file: !220, line: 157, size: 768, elements: !3710)
!3710 = !{!3711, !3730, !3734, !3738, !3743, !3765}
!3711 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !220, line: 158, baseType: !3712, size: 768)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3709, file: !220, line: 158, size: 768, elements: !3713)
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3729}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3712, file: !220, line: 159, baseType: !507, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3712, file: !220, line: 160, baseType: !507, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3712, file: !220, line: 161, baseType: !55, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3712, file: !220, line: 162, baseType: !55, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3712, file: !220, line: 163, baseType: !38, size: 32, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3712, file: !220, line: 164, baseType: !38, size: 32, offset: 288)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3712, file: !220, line: 165, baseType: !38, size: 32, offset: 320)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3712, file: !220, line: 166, baseType: !38, size: 32, offset: 352)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3712, file: !220, line: 168, baseType: !3723, size: 192, offset: 384)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !220, line: 134, size: 192, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3728}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3723, file: !220, line: 135, baseType: !507, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3723, file: !220, line: 136, baseType: !7, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3723, file: !220, line: 137, baseType: !38, size: 32, offset: 96)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3723, file: !220, line: 138, baseType: !38, size: 32, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3712, file: !220, line: 169, baseType: !3723, size: 192, offset: 576)
!3730 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !220, line: 171, baseType: !3731, size: 512)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3709, file: !220, line: 171, size: 512, elements: !3732)
!3732 = !{!3733}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3731, file: !220, line: 172, baseType: !572, size: 512)
!3734 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !220, line: 174, baseType: !3735, size: 128)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3709, file: !220, line: 174, size: 128, elements: !3736)
!3736 = !{!3737}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3735, file: !220, line: 176, baseType: !113, size: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !220, line: 178, baseType: !3739, size: 128)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3709, file: !220, line: 178, size: 128, elements: !3740)
!3740 = !{!3741, !3742}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3739, file: !220, line: 179, baseType: !507, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3739, file: !220, line: 180, baseType: !507, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !220, line: 183, baseType: !3744, size: 320)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3709, file: !220, line: 183, size: 320, elements: !3745)
!3745 = !{!3746, !3754}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3744, file: !220, line: 189, baseType: !3747, size: 192)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3748, line: 14, size: 192, elements: !3749)
!3748 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3749 = !{!3750, !3751, !3752, !3753}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3747, file: !3748, line: 15, baseType: !55, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3747, file: !3748, line: 16, baseType: !55, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3747, file: !3748, line: 17, baseType: !99, size: 8, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3747, file: !3748, line: 18, baseType: !99, size: 8, offset: 136)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3744, file: !220, line: 190, baseType: !3755, size: 128, offset: 192)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3756, line: 21, size: 128, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3757 = !{!3758, !3763}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3755, file: !3756, line: 22, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3756, line: 17, size: 64, elements: !3760)
!3760 = !{!3761}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3759, file: !3756, line: 18, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3755, file: !3756, line: 23, baseType: !3764, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !220, line: 193, baseType: !3766, size: 192)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3709, file: !220, line: 193, size: 192, elements: !3767)
!3767 = !{!3768, !3769, !3770, !3771, !3772}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3766, file: !220, line: 194, baseType: !99, size: 8)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3766, file: !220, line: 195, baseType: !99, size: 8, offset: 8)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3766, file: !220, line: 196, baseType: !109, size: 16, offset: 16)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3766, file: !220, line: 197, baseType: !507, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3766, file: !220, line: 198, baseType: !507, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3706, file: !220, line: 205, baseType: !448, size: 64, offset: 768)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3706, file: !220, line: 211, baseType: !36, size: 64, offset: 832)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3706, file: !220, line: 214, baseType: !55, size: 64, offset: 896)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3706, file: !220, line: 223, baseType: !38, size: 32, offset: 960)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3706, file: !220, line: 229, baseType: !3609, size: 64, offset: 1024)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3706, file: !220, line: 234, baseType: !507, size: 64, offset: 1088)
!3779 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !220, line: 236, baseType: !3780, size: 128, offset: 1152)
!3780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3706, file: !220, line: 236, size: 128, elements: !3781)
!3781 = !{!3782, !3787}
!3782 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !220, line: 237, baseType: !3783, size: 128)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3780, file: !220, line: 237, size: 128, elements: !3784)
!3784 = !{!3785, !3786}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3783, file: !220, line: 241, baseType: !507, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3783, file: !220, line: 249, baseType: !3609, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !220, line: 251, baseType: !3788, size: 128)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3780, file: !220, line: 251, size: 128, elements: !3789)
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3788, file: !220, line: 252, baseType: !507, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3788, file: !220, line: 253, baseType: !507, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3706, file: !220, line: 261, baseType: !507, size: 64, offset: 1280)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3706, file: !220, line: 262, baseType: !507, size: 64, offset: 1344)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3706, file: !220, line: 268, baseType: !507, size: 64, offset: 1408)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3706, file: !220, line: 269, baseType: !507, size: 64, offset: 1472)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3068, file: !220, line: 738, baseType: !3455, size: 64, offset: 4416)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3068, file: !220, line: 744, baseType: !3503, size: 64, offset: 4480)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3068, file: !220, line: 745, baseType: !345, size: 64, offset: 4544)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3068, file: !220, line: 751, baseType: !347, size: 64, offset: 4608)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3068, file: !220, line: 752, baseType: !347, size: 64, offset: 4672)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3068, file: !220, line: 757, baseType: !354, size: 256, offset: 4736)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3068, file: !220, line: 758, baseType: !113, size: 128, offset: 4992)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3068, file: !220, line: 759, baseType: !3067, size: 64, offset: 5120)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3068, file: !220, line: 761, baseType: !38, size: 32, offset: 5184)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3068, file: !220, line: 762, baseType: !38, size: 32, offset: 5216)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3068, file: !220, line: 764, baseType: !113, size: 128, offset: 5248)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3068, file: !220, line: 765, baseType: !448, size: 64, offset: 5376)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3068, file: !220, line: 768, baseType: !354, size: 256, offset: 5440)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3068, file: !220, line: 769, baseType: !65, size: 32, offset: 5696)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3068, file: !220, line: 771, baseType: !3580, size: 64, offset: 5760)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3068, file: !220, line: 772, baseType: !113, size: 128, offset: 5824)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3068, file: !220, line: 773, baseType: !55, size: 64, offset: 5952)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3068, file: !220, line: 774, baseType: !38, size: 32, offset: 6016)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3068, file: !220, line: 777, baseType: !70, size: 192, offset: 6080)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3068, file: !220, line: 778, baseType: !3816, size: 64, offset: 6272)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !268, line: 1083, size: 384, elements: !3818)
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3817, file: !268, line: 1084, baseType: !372, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3817, file: !268, line: 1085, baseType: !38, size: 32, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3817, file: !268, line: 1086, baseType: !38, size: 32, offset: 96)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3817, file: !268, line: 1087, baseType: !3816, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3817, file: !268, line: 1088, baseType: !319, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3817, file: !268, line: 1089, baseType: !332, size: 128, align: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3068, file: !220, line: 781, baseType: !7, size: 32, offset: 6336)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3068, file: !220, line: 782, baseType: !7, size: 32, offset: 6368)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3068, file: !220, line: 783, baseType: !7, size: 32, offset: 6400)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3068, file: !220, line: 784, baseType: !7, size: 32, offset: 6432)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3068, file: !220, line: 785, baseType: !55, size: 64, offset: 6464)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3068, file: !220, line: 786, baseType: !3831, size: 256, offset: 6528)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3832, line: 17, size: 256, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3833 = !{!3834, !3835, !3840}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3831, file: !3832, line: 18, baseType: !469, size: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3831, file: !3832, line: 19, baseType: !3836, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !3839}
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3831, file: !3832, line: 20, baseType: !3841, size: 64, offset: 192)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3842, line: 16, size: 64, elements: !3843)
!3842 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3843 = !{!3844}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3841, file: !3842, line: 17, baseType: !448, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3068, file: !220, line: 787, baseType: !332, size: 128, align: 64, offset: 6784)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3068, file: !220, line: 788, baseType: !7, size: 32, offset: 6912)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3068, file: !220, line: 789, baseType: !3841, size: 64, offset: 6976)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3068, file: !220, line: 791, baseType: !65, size: 32, offset: 7040)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3068, file: !220, line: 794, baseType: !3850, size: 192, offset: 7104)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !220, line: 579, size: 192, elements: !3851)
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3850, file: !220, line: 580, baseType: !113, size: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3850, file: !220, line: 581, baseType: !359, size: 32, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3850, file: !220, line: 582, baseType: !7, size: 32, offset: 160)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3068, file: !220, line: 796, baseType: !3856, size: 64, offset: 7296)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !220, line: 585, size: 128, elements: !3858)
!3858 = !{!3859, !3860}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3857, file: !220, line: 586, baseType: !55, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3857, file: !220, line: 587, baseType: !55, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3068, file: !220, line: 797, baseType: !55, size: 64, offset: 7360)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3068, file: !220, line: 800, baseType: !3067, size: 64, offset: 7424)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3068, file: !220, line: 802, baseType: !3541, size: 64, offset: 7488)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3068, file: !220, line: 803, baseType: !332, size: 128, align: 64, offset: 7552)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3068, file: !220, line: 805, baseType: !428, size: 64, offset: 7680)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3068, file: !220, line: 806, baseType: !507, size: 64, offset: 7744)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3068, file: !220, line: 808, baseType: !347, size: 64, offset: 7808)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3068, file: !220, line: 810, baseType: !3869, size: 64, offset: 7872)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!507}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3068, file: !220, line: 811, baseType: !3873, size: 64, offset: 7936)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !220, line: 605, baseType: !3874)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3067, !3877, !3982}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !220, line: 1148, size: 2048, align: 512, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3889, !3890, !3891, !3896, !3897, !3904, !3925, !3947, !3957, !3975, !3976, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3878, file: !220, line: 1153, baseType: !507, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3878, file: !220, line: 1154, baseType: !507, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3878, file: !220, line: 1155, baseType: !507, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3878, file: !220, line: 1161, baseType: !507, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3878, file: !220, line: 1165, baseType: !3885, size: 64, offset: 256)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !220, line: 1162, size: 64, elements: !3886)
!3886 = !{!3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3885, file: !220, line: 1163, baseType: !459, size: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3885, file: !220, line: 1164, baseType: !459, size: 32, offset: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3878, file: !220, line: 1166, baseType: !507, size: 64, offset: 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3878, file: !220, line: 1167, baseType: !507, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3878, file: !220, line: 1171, baseType: !3892, size: 64, offset: 448)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !220, line: 1168, size: 64, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3892, file: !220, line: 1169, baseType: !459, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3892, file: !220, line: 1170, baseType: !459, size: 32, offset: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3878, file: !220, line: 1177, baseType: !507, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3878, file: !220, line: 1178, baseType: !3898, size: 64, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !220, line: 67, size: 64, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3899, file: !220, line: 68, baseType: !508, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3899, file: !220, line: 69, baseType: !3903, offset: 64)
!3903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, elements: !1201)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3878, file: !220, line: 1179, baseType: !3905, size: 64, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !220, line: 93, size: 256, elements: !3907)
!3907 = !{!3908, !3924}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3906, file: !220, line: 94, baseType: !3909, size: 224)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !220, line: 83, size: 224, elements: !3910)
!3910 = !{!3911, !3917, !3922, !3923}
!3911 = !DIDerivedType(tag: DW_TAG_member, scope: !3909, file: !220, line: 84, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3909, file: !220, line: 84, size: 64, elements: !3913)
!3913 = !{!3914, !3916}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3912, file: !220, line: 85, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3912, file: !220, line: 86, baseType: !55, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3909, file: !220, line: 88, baseType: !3918, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !220, line: 80, baseType: !3919)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!55, !36, !317, !55, !55}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3909, file: !220, line: 89, baseType: !36, size: 64, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3909, file: !220, line: 90, baseType: !459, size: 32, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3906, file: !220, line: 95, baseType: !459, size: 32, offset: 224)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3878, file: !220, line: 1180, baseType: !3926, size: 64, offset: 704)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !220, line: 123, size: 128, elements: !3928)
!3928 = !{!3929, !3930, !3931}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3927, file: !220, line: 124, baseType: !508, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3927, file: !220, line: 125, baseType: !508, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3927, file: !220, line: 126, baseType: !3932, offset: 128)
!3932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3933, elements: !1201)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3620, line: 1415, size: 192, elements: !3934)
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3933, file: !3620, line: 1416, baseType: !508, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3933, file: !3620, line: 1417, baseType: !508, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3933, file: !3620, line: 1418, baseType: !508, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3933, file: !3620, line: 1419, baseType: !508, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3933, file: !3620, line: 1420, baseType: !508, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3933, file: !3620, line: 1421, baseType: !508, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3933, file: !3620, line: 1422, baseType: !508, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3933, file: !3620, line: 1423, baseType: !508, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3933, file: !3620, line: 1424, baseType: !508, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3933, file: !3620, line: 1425, baseType: !508, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3933, file: !3620, line: 1426, baseType: !508, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3933, file: !3620, line: 1427, baseType: !508, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3878, file: !220, line: 1181, baseType: !3948, size: 64, offset: 768)
!3948 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3620, line: 1430, size: 64, elements: !3949)
!3949 = !{!3950, !3951}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3948, file: !3620, line: 1431, baseType: !508, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !3948, file: !3620, line: 1433, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3948, file: !3620, line: 1433, size: 64, elements: !3953)
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3952, file: !3620, line: 1434, baseType: !460, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3952, file: !3620, line: 1435, baseType: !110, size: 16, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3952, file: !3620, line: 1436, baseType: !110, size: 16, offset: 48)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3878, file: !220, line: 1182, baseType: !3958, size: 64, offset: 832)
!3958 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3620, line: 1267, size: 64, elements: !3959)
!3959 = !{!3960, !3961}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3958, file: !3620, line: 1268, baseType: !508, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3958, file: !3620, line: 1269, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3958, file: !3620, line: 1269, size: 64, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3962, file: !3620, line: 1270, baseType: !508, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3962, file: !3620, line: 1271, baseType: !508, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3962, file: !3620, line: 1272, baseType: !508, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3962, file: !3620, line: 1273, baseType: !508, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3962, file: !3620, line: 1274, baseType: !508, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3962, file: !3620, line: 1275, baseType: !508, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3962, file: !3620, line: 1276, baseType: !508, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3962, file: !3620, line: 1277, baseType: !508, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3962, file: !3620, line: 1278, baseType: !508, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3962, file: !3620, line: 1279, baseType: !508, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3962, file: !3620, line: 1280, baseType: !508, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3878, file: !220, line: 1183, baseType: !507, size: 64, offset: 896)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3878, file: !220, line: 1185, baseType: !3977, size: 128, offset: 960)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3978, line: 7, size: 128, elements: !3979)
!3978 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3979 = !{!3980, !3981}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3977, file: !3978, line: 8, baseType: !508, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3977, file: !3978, line: 9, baseType: !3982, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3984, line: 103, size: 1344, elements: !3985)
!3984 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4014, !4015, !4016}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3983, file: !3984, line: 109, baseType: !55, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3983, file: !3984, line: 110, baseType: !55, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3983, file: !3984, line: 111, baseType: !55, size: 64, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3983, file: !3984, line: 112, baseType: !55, size: 64, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3983, file: !3984, line: 113, baseType: !55, size: 64, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3983, file: !3984, line: 114, baseType: !55, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3983, file: !3984, line: 117, baseType: !55, size: 64, offset: 384)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3983, file: !3984, line: 118, baseType: !55, size: 64, offset: 448)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3983, file: !3984, line: 119, baseType: !55, size: 64, offset: 512)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3983, file: !3984, line: 120, baseType: !55, size: 64, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3983, file: !3984, line: 121, baseType: !55, size: 64, offset: 640)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3983, file: !3984, line: 122, baseType: !55, size: 64, offset: 704)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3983, file: !3984, line: 123, baseType: !55, size: 64, offset: 768)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3983, file: !3984, line: 124, baseType: !55, size: 64, offset: 832)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3983, file: !3984, line: 125, baseType: !55, size: 64, offset: 896)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3983, file: !3984, line: 139, baseType: !55, size: 64, offset: 960)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3983, file: !3984, line: 142, baseType: !55, size: 64, offset: 1024)
!4003 = !DIDerivedType(tag: DW_TAG_member, scope: !3983, file: !3984, line: 144, baseType: !4004, size: 64, offset: 1088)
!4004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3983, file: !3984, line: 144, size: 64, elements: !4005)
!4005 = !{!4006, !4007, !4008}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4004, file: !3984, line: 146, baseType: !109, size: 16)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4004, file: !3984, line: 148, baseType: !507, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4004, file: !3984, line: 150, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3984, line: 59, size: 64, elements: !4010)
!4010 = !{!4011, !4012, !4013}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4009, file: !3984, line: 61, baseType: !507, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4009, file: !3984, line: 63, baseType: !507, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4009, file: !3984, line: 65, baseType: !507, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3983, file: !3984, line: 153, baseType: !55, size: 64, offset: 1152)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3983, file: !3984, line: 154, baseType: !55, size: 64, offset: 1216)
!4016 = !DIDerivedType(tag: DW_TAG_member, scope: !3983, file: !3984, line: 156, baseType: !4017, size: 64, offset: 1280)
!4017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3983, file: !3984, line: 156, size: 64, elements: !4018)
!4018 = !{!4019, !4020, !4021}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4017, file: !3984, line: 158, baseType: !109, size: 16)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4017, file: !3984, line: 160, baseType: !507, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4017, file: !3984, line: 162, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3984, line: 69, size: 64, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4022, file: !3984, line: 71, baseType: !507, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4022, file: !3984, line: 73, baseType: !507, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4022, file: !3984, line: 75, baseType: !507, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4022, file: !3984, line: 77, baseType: !507, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4022, file: !3984, line: 80, baseType: !507, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4022, file: !3984, line: 83, baseType: !507, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4022, file: !3984, line: 86, baseType: !507, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4022, file: !3984, line: 88, baseType: !507, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4022, file: !3984, line: 93, baseType: !507, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4022, file: !3984, line: 100, baseType: !507, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3878, file: !220, line: 1186, baseType: !3977, size: 128, offset: 1088)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3878, file: !220, line: 1187, baseType: !507, size: 64, offset: 1216)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3878, file: !220, line: 1189, baseType: !507, size: 64, offset: 1280)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3878, file: !220, line: 1190, baseType: !507, size: 64, offset: 1344)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3878, file: !220, line: 1191, baseType: !507, size: 64, offset: 1408)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3878, file: !220, line: 1192, baseType: !507, size: 64, offset: 1472)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3878, file: !220, line: 1193, baseType: !507, size: 64, offset: 1536)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3878, file: !220, line: 1194, baseType: !507, size: 64, offset: 1600)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3878, file: !220, line: 1195, baseType: !507, size: 64, offset: 1664)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3068, file: !220, line: 812, baseType: !36, size: 64, offset: 8000)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3068, file: !220, line: 820, baseType: !2861, size: 64, offset: 8064)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3068, file: !220, line: 821, baseType: !3048, size: 64, offset: 8128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3068, file: !220, line: 828, baseType: !4047, size: 64, offset: 8192)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !220, line: 1046, size: 1664, elements: !4049)
!4049 = !{!4050, !4303}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4048, file: !220, line: 1047, baseType: !4051, size: 1600)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4052, line: 152, size: 1600, elements: !4053)
!4052 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4053 = !{!4054, !4159, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4302}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4051, file: !4052, line: 154, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4052, line: 389, size: 7872, elements: !4057)
!4057 = !{!4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4077, !4078, !4082, !4083, !4084, !4085, !4086, !4091, !4107, !4108, !4110, !4111, !4112, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4146, !4149, !4150, !4157}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4056, file: !4052, line: 391, baseType: !4051, size: 1600)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4056, file: !4052, line: 393, baseType: !55, size: 64, offset: 1600)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4056, file: !4052, line: 401, baseType: !38, size: 32, offset: 1664)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4056, file: !4052, line: 404, baseType: !38, size: 32, offset: 1696)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4056, file: !4052, line: 417, baseType: !38, size: 32, offset: 1728)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4056, file: !4052, line: 418, baseType: !38, size: 32, offset: 1760)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4056, file: !4052, line: 419, baseType: !38, size: 32, offset: 1792)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4056, file: !4052, line: 432, baseType: !38, size: 32, offset: 1824)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4056, file: !4052, line: 433, baseType: !38, size: 32, offset: 1856)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4056, file: !4052, line: 434, baseType: !38, size: 32, offset: 1888)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4056, file: !4052, line: 436, baseType: !38, size: 32, offset: 1920)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4056, file: !4052, line: 439, baseType: !7, size: 32, offset: 1952)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4056, file: !4052, line: 441, baseType: !2389, size: 64, offset: 1984)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4056, file: !4052, line: 442, baseType: !4072, size: 448, offset: 2048)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4052, line: 138, size: 448, elements: !4073)
!4073 = !{!4074, !4075, !4076}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4072, file: !4052, line: 140, baseType: !2389, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4072, file: !4052, line: 141, baseType: !55, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4072, file: !4052, line: 142, baseType: !2781, size: 320, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4056, file: !4052, line: 443, baseType: !4072, size: 448, offset: 2496)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4056, file: !4052, line: 446, baseType: !4079, offset: 2944)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4072, elements: !4080)
!4080 = !{!4081}
!4081 = !DISubrange(count: 0)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4056, file: !4052, line: 455, baseType: !109, size: 16, offset: 2944)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4056, file: !4052, line: 456, baseType: !109, size: 16, offset: 2960)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4056, file: !4052, line: 457, baseType: !109, size: 16, offset: 2976)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4056, file: !4052, line: 458, baseType: !109, size: 16, offset: 2992)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4056, file: !4052, line: 461, baseType: !4087, size: 896, offset: 3008)
!4087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4088, size: 896, elements: !4089)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4089 = !{!4090}
!4090 = !DISubrange(count: 14)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4056, file: !4052, line: 463, baseType: !4092, size: 64, offset: 3904)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4052, line: 537, size: 41664, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4093, file: !4052, line: 538, baseType: !2409, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4093, file: !4052, line: 541, baseType: !7, size: 32, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4093, file: !4052, line: 544, baseType: !38, size: 32, offset: 96)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4093, file: !4052, line: 547, baseType: !113, size: 128, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4093, file: !4052, line: 548, baseType: !332, size: 128, align: 64, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4093, file: !4052, line: 555, baseType: !4056, size: 7872, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4093, file: !4052, line: 558, baseType: !4055, size: 64, offset: 8256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4093, file: !4052, line: 561, baseType: !65, size: 32, offset: 8320)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4093, file: !4052, line: 564, baseType: !7, size: 32, offset: 8352)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4093, file: !4052, line: 567, baseType: !3010, size: 32768, offset: 8384)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4093, file: !4052, line: 570, baseType: !4106, size: 512, offset: 41152)
!4106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, elements: !1784)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4056, file: !4052, line: 469, baseType: !113, size: 128, offset: 3968)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4056, file: !4052, line: 478, baseType: !4109, size: 1792, offset: 4096)
!4109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1792, elements: !4089)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4056, file: !4052, line: 487, baseType: !4055, size: 64, offset: 5888)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4056, file: !4052, line: 488, baseType: !4055, size: 64, offset: 5952)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4056, file: !4052, line: 491, baseType: !4113, size: 64, offset: 6016)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4052, line: 327, size: 896, elements: !4115)
!4115 = !{!4116, !4119, !4129, !4130, !4131, !4132, !4133}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4114, file: !4052, line: 332, baseType: !4117)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4118, line: 64, elements: !774)
!4118 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4114, file: !4052, line: 333, baseType: !4120, size: 192)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4052, line: 299, size: 192, elements: !4121)
!4121 = !{!4122}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4120, file: !4052, line: 300, baseType: !4123, size: 192)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4124, line: 17, size: 192, elements: !4125)
!4124 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4125 = !{!4126, !4127, !4128}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4123, file: !4124, line: 18, baseType: !507, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4123, file: !4124, line: 19, baseType: !507, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4123, file: !4124, line: 20, baseType: !509, size: 64, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4114, file: !4052, line: 339, baseType: !4120, size: 192, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4114, file: !4052, line: 347, baseType: !4120, size: 192, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4114, file: !4052, line: 353, baseType: !4120, size: 192, offset: 576)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4114, file: !4052, line: 366, baseType: !4055, size: 64, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4114, file: !4052, line: 367, baseType: !4055, size: 64, offset: 832)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4056, file: !4052, line: 492, baseType: !113, size: 128, offset: 6080)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4056, file: !4052, line: 495, baseType: !4120, size: 192, offset: 6208)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4056, file: !4052, line: 496, baseType: !4120, size: 192, offset: 6400)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4056, file: !4052, line: 497, baseType: !1313, size: 192, offset: 6592)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4056, file: !4052, line: 503, baseType: !113, size: 128, offset: 6784)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4056, file: !4052, line: 504, baseType: !354, size: 256, offset: 6912)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4056, file: !4052, line: 507, baseType: !70, size: 192, offset: 7168)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4056, file: !4052, line: 510, baseType: !1085, size: 256, offset: 7360)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4056, file: !4052, line: 513, baseType: !4143, size: 64, offset: 7616)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4145, line: 214, elements: !774)
!4145 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4056, file: !4052, line: 516, baseType: !4147, offset: 7680)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4148, line: 76, elements: !774)
!4148 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4056, file: !4052, line: 519, baseType: !65, size: 32, offset: 7680)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4056, file: !4052, line: 522, baseType: !4151, size: 128, offset: 7712)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4052, line: 370, size: 128, elements: !4152)
!4152 = !{!4153, !4154, !4155, !4156}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4151, file: !4052, line: 372, baseType: !969, size: 8)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4151, file: !4052, line: 375, baseType: !38, size: 32, offset: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4151, file: !4052, line: 380, baseType: !38, size: 32, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4151, file: !4052, line: 386, baseType: !38, size: 32, offset: 96)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4056, file: !4052, line: 529, baseType: !4158, offset: 7872)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4055, elements: !1201)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4051, file: !4052, line: 157, baseType: !4160, size: 64, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4052, line: 669, size: 1984, elements: !4162)
!4162 = !{!4163, !4167, !4171, !4175, !4176, !4177, !4178, !4182, !4186, !4187, !4193, !4197, !4198, !4199, !4228, !4232, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4285, !4286}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4161, file: !4052, line: 670, baseType: !4164, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!4088, !4088}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4161, file: !4052, line: 671, baseType: !4168, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!38, !4088}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4161, file: !4052, line: 672, baseType: !4172, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !4088}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4161, file: !4052, line: 673, baseType: !4172, size: 64, offset: 192)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4161, file: !4052, line: 674, baseType: !4172, size: 64, offset: 256)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4161, file: !4052, line: 675, baseType: !4172, size: 64, offset: 320)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4161, file: !4052, line: 676, baseType: !4179, size: 64, offset: 384)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{null, !4088, !38}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4161, file: !4052, line: 677, baseType: !4183, size: 64, offset: 448)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!38, !2434, !4088}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4161, file: !4052, line: 679, baseType: !4183, size: 64, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4161, file: !4052, line: 682, baseType: !4188, size: 64, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!38, !4191}
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4052, line: 30, flags: DIFlagFwdDecl)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4161, file: !4052, line: 683, baseType: !4194, size: 64, offset: 640)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4191}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4161, file: !4052, line: 684, baseType: !4194, size: 64, offset: 704)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4161, file: !4052, line: 685, baseType: !2955, size: 64, offset: 768)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4161, file: !4052, line: 686, baseType: !4200, size: 64, offset: 832)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!38, !448, !4203}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4052, line: 209, size: 4736, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4204, file: !4052, line: 215, baseType: !4087, size: 896)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4204, file: !4052, line: 218, baseType: !399, size: 32, offset: 896)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4204, file: !4052, line: 226, baseType: !4203, size: 64, offset: 960)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4204, file: !4052, line: 229, baseType: !4055, size: 64, offset: 1024)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4204, file: !4052, line: 232, baseType: !38, size: 32, offset: 1088)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4204, file: !4052, line: 241, baseType: !113, size: 128, offset: 1152)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4204, file: !4052, line: 242, baseType: !113, size: 128, offset: 1280)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4204, file: !4052, line: 243, baseType: !113, size: 128, offset: 1408)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4204, file: !4052, line: 246, baseType: !113, size: 128, offset: 1536)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4204, file: !4052, line: 255, baseType: !4109, size: 1792, offset: 1664)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4204, file: !4052, line: 258, baseType: !113, size: 128, offset: 3456)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4204, file: !4052, line: 259, baseType: !113, size: 128, offset: 3584)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4204, file: !4052, line: 265, baseType: !412, size: 128, offset: 3712)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4204, file: !4052, line: 271, baseType: !113, size: 128, offset: 3840)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4204, file: !4052, line: 277, baseType: !113, size: 128, offset: 3968)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4204, file: !4052, line: 278, baseType: !113, size: 128, offset: 4096)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4204, file: !4052, line: 279, baseType: !113, size: 128, offset: 4224)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4204, file: !4052, line: 288, baseType: !4055, size: 64, offset: 4352)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4204, file: !4052, line: 289, baseType: !4055, size: 64, offset: 4416)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4204, file: !4052, line: 290, baseType: !4203, size: 64, offset: 4480)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4204, file: !4052, line: 293, baseType: !969, size: 8, offset: 4544)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4204, file: !4052, line: 296, baseType: !332, size: 128, align: 64, offset: 4608)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4161, file: !4052, line: 688, baseType: !4229, size: 64, offset: 896)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !448, !4203}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4161, file: !4052, line: 689, baseType: !4233, size: 64, offset: 960)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !448}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4161, file: !4052, line: 690, baseType: !4233, size: 64, offset: 1024)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4161, file: !4052, line: 691, baseType: !4233, size: 64, offset: 1088)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4161, file: !4052, line: 692, baseType: !4172, size: 64, offset: 1152)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4161, file: !4052, line: 694, baseType: !969, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4161, file: !4052, line: 707, baseType: !969, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4161, file: !4052, line: 719, baseType: !969, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4161, file: !4052, line: 722, baseType: !38, size: 32, offset: 1248)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4161, file: !4052, line: 723, baseType: !32, size: 64, offset: 1280)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4161, file: !4052, line: 726, baseType: !32, size: 64, offset: 1344)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4161, file: !4052, line: 729, baseType: !4092, size: 64, offset: 1408)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4161, file: !4052, line: 732, baseType: !433, size: 192, offset: 1472)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4161, file: !4052, line: 738, baseType: !113, size: 128, offset: 1664)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4161, file: !4052, line: 744, baseType: !4249, size: 64, offset: 1792)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4052, line: 580, size: 1728, elements: !4251)
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4261, !4262, !4263, !4267, !4271, !4272, !4273, !4274, !4275, !4279, !4283, !4284}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4250, file: !4052, line: 586, baseType: !4106, size: 512)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4250, file: !4052, line: 587, baseType: !55, size: 64, offset: 512)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4250, file: !4052, line: 593, baseType: !51, size: 64, offset: 576)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4250, file: !4052, line: 596, baseType: !7, size: 32, offset: 640)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4250, file: !4052, line: 604, baseType: !7, size: 32, offset: 672)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4250, file: !4052, line: 610, baseType: !4160, size: 64, offset: 704)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4250, file: !4052, line: 611, baseType: !113, size: 128, offset: 768)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4250, file: !4052, line: 612, baseType: !4260, size: 64, offset: 896)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4250, file: !4052, line: 614, baseType: !2425, size: 64, offset: 960)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4250, file: !4052, line: 615, baseType: !2483, size: 64, offset: 1024)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4250, file: !4052, line: 621, baseType: !4264, size: 64, offset: 1088)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!507, !4088, !4249}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4250, file: !4052, line: 625, baseType: !4268, size: 64, offset: 1152)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!351, !4088, !4249}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4250, file: !4052, line: 628, baseType: !2464, size: 64, offset: 1216)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4250, file: !4052, line: 631, baseType: !2452, size: 64, offset: 1280)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4250, file: !4052, line: 632, baseType: !2460, size: 64, offset: 1344)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4250, file: !4052, line: 633, baseType: !2456, size: 64, offset: 1408)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4250, file: !4052, line: 640, baseType: !4276, size: 64, offset: 1472)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!38, !4088, !4249, !507}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4250, file: !4052, line: 645, baseType: !4280, size: 64, offset: 1536)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!38, !4088, !4249, !351}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4250, file: !4052, line: 654, baseType: !2491, size: 64, offset: 1600)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4250, file: !4052, line: 657, baseType: !2498, size: 64, offset: 1664)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4161, file: !4052, line: 745, baseType: !4249, size: 64, offset: 1856)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4161, file: !4052, line: 754, baseType: !7, size: 32, offset: 1920)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4051, file: !4052, line: 160, baseType: !1932, size: 128, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4051, file: !4052, line: 163, baseType: !113, size: 128, offset: 256)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4051, file: !4052, line: 164, baseType: !113, size: 128, offset: 384)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4051, file: !4052, line: 167, baseType: !113, size: 128, offset: 512)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4051, file: !4052, line: 173, baseType: !38, size: 32, offset: 640)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4051, file: !4052, line: 175, baseType: !7, size: 32, offset: 672)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4051, file: !4052, line: 183, baseType: !507, size: 64, offset: 704)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4051, file: !4052, line: 189, baseType: !65, size: 32, offset: 768)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4051, file: !4052, line: 192, baseType: !1085, size: 256, offset: 832)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4051, file: !4052, line: 193, baseType: !4297, size: 448, offset: 1088)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1086, line: 120, size: 448, elements: !4298)
!4298 = !{!4299, !4300, !4301}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4297, file: !1086, line: 121, baseType: !1085, size: 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4297, file: !1086, line: 122, baseType: !332, size: 128, align: 64, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4297, file: !1086, line: 125, baseType: !2843, size: 64, offset: 384)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4051, file: !4052, line: 199, baseType: !4088, size: 64, offset: 1536)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4048, file: !220, line: 1048, baseType: !4304, size: 64, offset: 1600)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !220, line: 1039, size: 256, elements: !4306)
!4306 = !{!4307, !4308, !4309, !4310}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4305, file: !220, line: 1040, baseType: !507, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4305, file: !220, line: 1041, baseType: !507, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4305, file: !220, line: 1042, baseType: !507, size: 64, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4305, file: !220, line: 1043, baseType: !38, size: 32, offset: 192)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3068, file: !220, line: 832, baseType: !36, size: 64, offset: 8256)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3068, file: !220, line: 834, baseType: !113, size: 128, offset: 8320)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3068, file: !220, line: 842, baseType: !460, size: 32, offset: 8448)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1729, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1729, file: !6, line: 525, baseType: !4316, size: 64, offset: 8384)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4319, line: 28, size: 192, elements: !4320)
!4319 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4320 = !{!4321, !4322, !4323}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4318, file: !4319, line: 29, baseType: !32, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4318, file: !4319, line: 30, baseType: !32, size: 64, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4318, file: !4319, line: 31, baseType: !55, size: 64, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1729, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1729, file: !6, line: 533, baseType: !36, size: 64, offset: 8512)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1729, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1729, file: !6, line: 535, baseType: !4328, size: 64, offset: 8640)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1729, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1729, file: !6, line: 539, baseType: !38, size: 32, offset: 8736)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1729, file: !6, line: 540, baseType: !2944, size: 64, offset: 8768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1729, file: !6, line: 563, baseType: !113, size: 128, offset: 8832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1729, file: !6, line: 565, baseType: !113, size: 128, offset: 8960)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1729, file: !6, line: 568, baseType: !2955, size: 64, offset: 9088)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1729, file: !6, line: 570, baseType: !65, size: 32, offset: 9152)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1721, file: !14, line: 179, baseType: !4337, size: 512, offset: 128)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 512, elements: !615)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1655, file: !14, line: 101, baseType: !32, size: 64, offset: 896)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1655, file: !14, line: 102, baseType: !36, size: 64, offset: 960)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1655, file: !14, line: 103, baseType: !36, size: 64, offset: 1024)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !1655, file: !14, line: 104, baseType: !7, size: 32, offset: 1088)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !1655, file: !14, line: 105, baseType: !7, size: 32, offset: 1120)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1655, file: !14, line: 106, baseType: !7, size: 32, offset: 1152)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1655, file: !14, line: 107, baseType: !253, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !1655, file: !14, line: 108, baseType: !258, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1655, file: !14, line: 109, baseType: !969, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1655, file: !14, line: 110, baseType: !969, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !1655, file: !14, line: 111, baseType: !969, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1655, file: !14, line: 112, baseType: !969, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1646, file: !268, line: 2377, baseType: !4351, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4353)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !4354, line: 39, size: 256, elements: !4355)
!4354 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!4355 = !{!4356, !4357, !4374, !4375, !4376}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4353, file: !4354, line: 40, baseType: !32, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4353, file: !4354, line: 41, baseType: !4358, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !4354, line: 22, baseType: !4360)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!38, !4362, !4351, !1674, !4363}
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !4354, line: 53, size: 128, elements: !4365)
!4365 = !{!4366, !4367}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !4364, file: !4354, line: 54, baseType: !969, size: 8)
!4367 = !DIDerivedType(tag: DW_TAG_member, scope: !4364, file: !4354, line: 55, baseType: !4368, size: 64, offset: 64)
!4368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4364, file: !4354, line: 55, size: 64, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4373}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !4368, file: !4354, line: 56, baseType: !969, size: 8)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !4368, file: !4354, line: 57, baseType: !38, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !4368, file: !4354, line: 58, baseType: !7, size: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !4368, file: !4354, line: 59, baseType: !507, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !4353, file: !4354, line: 42, baseType: !99, size: 8, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4353, file: !4354, line: 43, baseType: !42, size: 16, offset: 144)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4353, file: !4354, line: 47, baseType: !317, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1646, file: !268, line: 2378, baseType: !4378, size: 64, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!1468, !1645, !38, !32, !36}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1646, file: !268, line: 2380, baseType: !4382, size: 64, offset: 320)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{null, !1636}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1646, file: !268, line: 2381, baseType: !1728, size: 64, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1646, file: !268, line: 2382, baseType: !1645, size: 64, offset: 448)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1646, file: !268, line: 2383, baseType: !408, size: 64, offset: 512)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1646, file: !268, line: 2385, baseType: !4389, offset: 576)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2810, line: 206, elements: !774)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1646, file: !268, line: 2386, baseType: !4389, offset: 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1646, file: !268, line: 2387, baseType: !4389, offset: 576)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1646, file: !268, line: 2388, baseType: !4393, offset: 576)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4389, elements: !391)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1646, file: !268, line: 2390, baseType: !4389, offset: 576)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1646, file: !268, line: 2391, baseType: !4389, offset: 576)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1646, file: !268, line: 2392, baseType: !4389, offset: 576)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1646, file: !268, line: 2393, baseType: !4389, offset: 576)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1637, file: !268, line: 1197, baseType: !4399, size: 64, offset: 384)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4401)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !268, line: 2057, size: 1664, elements: !4402)
!4402 = !{!4403, !4407, !4411, !4412, !4416, !4420, !4424, !4425, !4426, !4430, !4434, !4438, !4439, !4440, !4446, !4450, !4451, !4455, !4456, !4457, !4458, !4462, !4466, !4513, !4528, !4529}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4401, file: !268, line: 2058, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!1503, !1636}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4401, file: !268, line: 2059, baseType: !4408, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{null, !1503}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4401, file: !268, line: 2060, baseType: !4408, size: 64, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4401, file: !268, line: 2062, baseType: !4413, size: 64, offset: 192)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{null, !1503, !38}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4401, file: !268, line: 2063, baseType: !4417, size: 64, offset: 256)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!38, !1503, !2153}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4401, file: !268, line: 2064, baseType: !4421, size: 64, offset: 320)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!38, !1503}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4401, file: !268, line: 2065, baseType: !4408, size: 64, offset: 384)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4401, file: !268, line: 2066, baseType: !4382, size: 64, offset: 448)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4401, file: !268, line: 2067, baseType: !4427, size: 64, offset: 512)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!38, !1636, !38}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4401, file: !268, line: 2068, baseType: !4431, size: 64, offset: 576)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!38, !1636, !267}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4401, file: !268, line: 2069, baseType: !4435, size: 64, offset: 640)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!38, !1636}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4401, file: !268, line: 2070, baseType: !4431, size: 64, offset: 704)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4401, file: !268, line: 2071, baseType: !4435, size: 64, offset: 768)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4401, file: !268, line: 2072, baseType: !4441, size: 64, offset: 832)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!38, !1468, !4444}
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !268, line: 62, flags: DIFlagFwdDecl)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4401, file: !268, line: 2073, baseType: !4447, size: 64, offset: 896)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!38, !1636, !1306, !1046}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4401, file: !268, line: 2074, baseType: !4382, size: 64, offset: 960)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4401, file: !268, line: 2076, baseType: !4452, size: 64, offset: 1024)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!38, !2434, !1468}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4401, file: !268, line: 2077, baseType: !4452, size: 64, offset: 1088)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4401, file: !268, line: 2078, baseType: !4452, size: 64, offset: 1152)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4401, file: !268, line: 2079, baseType: !4452, size: 64, offset: 1216)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4401, file: !268, line: 2081, baseType: !4459, size: 64, offset: 1280)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!1811, !1636, !38, !1046, !51, !57}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4401, file: !268, line: 2082, baseType: !4463, size: 64, offset: 1344)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!1811, !1636, !38, !32, !51, !57}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4401, file: !268, line: 2083, baseType: !4467, size: 64, offset: 1408)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!4470, !1503}
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !273, line: 296, size: 1664, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4498, !4499, !4500}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4472, file: !273, line: 297, baseType: !412, size: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4472, file: !273, line: 298, baseType: !113, size: 128, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4472, file: !273, line: 299, baseType: !113, size: 128, offset: 256)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4472, file: !273, line: 300, baseType: !113, size: 128, offset: 384)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4472, file: !273, line: 301, baseType: !354, size: 256, offset: 512)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4472, file: !273, line: 302, baseType: !75, size: 32, offset: 768)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4472, file: !273, line: 303, baseType: !65, size: 32, offset: 800)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4472, file: !273, line: 304, baseType: !1636, size: 64, offset: 832)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4472, file: !273, line: 305, baseType: !4483, size: 64, offset: 896)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !273, line: 68, size: 64, elements: !4484)
!4484 = !{!4485, !4497}
!4485 = !DIDerivedType(tag: DW_TAG_member, scope: !4483, file: !273, line: 69, baseType: !4486, size: 32)
!4486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4483, file: !273, line: 69, size: 32, elements: !4487)
!4487 = !{!4488, !4489, !4490}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4486, file: !273, line: 70, baseType: !942, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4486, file: !273, line: 71, baseType: !950, size: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4486, file: !273, line: 72, baseType: !4491, size: 32)
!4491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4492, line: 24, baseType: !4493)
!4492 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4492, line: 22, size: 32, elements: !4494)
!4494 = !{!4495}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4493, file: !4492, line: 23, baseType: !4496, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4492, line: 20, baseType: !948)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4483, file: !273, line: 74, baseType: !272, size: 32, offset: 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4472, file: !273, line: 306, baseType: !57, size: 64, offset: 960)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4472, file: !273, line: 307, baseType: !55, size: 64, offset: 1024)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4472, file: !273, line: 308, baseType: !4501, size: 576, offset: 1088)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !273, line: 205, size: 576, elements: !4502)
!4502 = !{!4503, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4501, file: !273, line: 206, baseType: !4504, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !273, line: 66, baseType: !59)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4501, file: !273, line: 207, baseType: !4504, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4501, file: !273, line: 208, baseType: !4504, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4501, file: !273, line: 209, baseType: !4504, size: 64, offset: 192)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4501, file: !273, line: 210, baseType: !4504, size: 64, offset: 256)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4501, file: !273, line: 211, baseType: !4504, size: 64, offset: 320)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4501, file: !273, line: 212, baseType: !4504, size: 64, offset: 384)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4501, file: !273, line: 213, baseType: !995, size: 64, offset: 448)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4501, file: !273, line: 214, baseType: !995, size: 64, offset: 512)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4401, file: !268, line: 2085, baseType: !4514, size: 64, offset: 1472)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!313, !1636, !4517}
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4519, line: 15, size: 256, elements: !4520)
!4519 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4520 = !{!4521, !4522, !4523, !4524, !4525}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4518, file: !4519, line: 16, baseType: !314, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4518, file: !4519, line: 19, baseType: !38, size: 32, offset: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4518, file: !4519, line: 26, baseType: !55, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4518, file: !4519, line: 33, baseType: !55, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4518, file: !4519, line: 36, baseType: !4526, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4519, line: 36, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4401, file: !268, line: 2087, baseType: !4514, size: 64, offset: 1536)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4401, file: !268, line: 2089, baseType: !4382, size: 64, offset: 1600)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1637, file: !268, line: 1198, baseType: !4531, size: 64, offset: 448)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4533)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !273, line: 324, size: 704, elements: !4534)
!4534 = !{!4535, !4539, !4543, !4547, !4548, !4549, !4550, !4551, !4556, !4561, !4565}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4533, file: !273, line: 325, baseType: !4536, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!38, !4471}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4533, file: !273, line: 326, baseType: !4540, size: 64, offset: 64)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!4471, !1636, !38}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4533, file: !273, line: 327, baseType: !4544, size: 64, offset: 128)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{null, !4471}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4533, file: !273, line: 328, baseType: !4536, size: 64, offset: 192)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4533, file: !273, line: 329, baseType: !4536, size: 64, offset: 256)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4533, file: !273, line: 330, baseType: !4536, size: 64, offset: 320)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4533, file: !273, line: 331, baseType: !4427, size: 64, offset: 384)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4533, file: !273, line: 334, baseType: !4552, size: 64, offset: 448)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!4555, !1503}
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4533, file: !273, line: 335, baseType: !4557, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!38, !1503, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4533, file: !273, line: 337, baseType: !4562, size: 64, offset: 576)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!38, !1503, !4555}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4533, file: !273, line: 339, baseType: !4566, size: 64, offset: 640)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!38, !1636, !4569}
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1637, file: !268, line: 1199, baseType: !4571, size: 64, offset: 512)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4573)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !273, line: 430, size: 704, elements: !4574)
!4574 = !{!4575, !4579, !4580, !4584, !4585, !4586, !4601, !4624, !4628, !4629, !4652}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4573, file: !273, line: 431, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!38, !1636, !38, !38, !1624}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4573, file: !273, line: 432, baseType: !4427, size: 64, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4573, file: !273, line: 433, baseType: !4581, size: 64, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!38, !1636, !7}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4573, file: !273, line: 434, baseType: !4581, size: 64, offset: 192)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4573, file: !273, line: 435, baseType: !4427, size: 64, offset: 256)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4573, file: !273, line: 436, baseType: !4587, size: 64, offset: 320)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!38, !1636, !38, !4590}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !273, line: 417, size: 256, elements: !4592)
!4592 = !{!4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4591, file: !273, line: 418, baseType: !38, size: 32)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4591, file: !273, line: 419, baseType: !7, size: 32, offset: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4591, file: !273, line: 420, baseType: !7, size: 32, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4591, file: !273, line: 422, baseType: !7, size: 32, offset: 96)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4591, file: !273, line: 423, baseType: !7, size: 32, offset: 128)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4591, file: !273, line: 424, baseType: !7, size: 32, offset: 160)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4591, file: !273, line: 425, baseType: !7, size: 32, offset: 192)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4591, file: !273, line: 426, baseType: !7, size: 32, offset: 224)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4573, file: !273, line: 437, baseType: !4602, size: 64, offset: 384)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!38, !1636, !4483, !4605}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !273, line: 345, size: 960, elements: !4607)
!4607 = !{!4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4606, file: !273, line: 346, baseType: !38, size: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4606, file: !273, line: 347, baseType: !507, size: 64, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4606, file: !273, line: 348, baseType: !507, size: 64, offset: 128)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4606, file: !273, line: 349, baseType: !507, size: 64, offset: 192)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4606, file: !273, line: 350, baseType: !507, size: 64, offset: 256)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4606, file: !273, line: 351, baseType: !507, size: 64, offset: 320)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4606, file: !273, line: 352, baseType: !507, size: 64, offset: 384)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4606, file: !273, line: 353, baseType: !351, size: 64, offset: 448)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4606, file: !273, line: 355, baseType: !351, size: 64, offset: 512)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4606, file: !273, line: 356, baseType: !38, size: 32, offset: 576)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4606, file: !273, line: 357, baseType: !38, size: 32, offset: 608)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4606, file: !273, line: 358, baseType: !507, size: 64, offset: 640)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4606, file: !273, line: 359, baseType: !507, size: 64, offset: 704)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4606, file: !273, line: 360, baseType: !507, size: 64, offset: 768)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4606, file: !273, line: 361, baseType: !351, size: 64, offset: 832)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4606, file: !273, line: 362, baseType: !38, size: 32, offset: 896)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4573, file: !273, line: 438, baseType: !4625, size: 64, offset: 448)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!38, !1636, !4569, !4605}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4573, file: !273, line: 440, baseType: !4602, size: 64, offset: 512)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4573, file: !273, line: 441, baseType: !4630, size: 64, offset: 576)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!38, !1636, !4633}
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !273, line: 411, size: 1408, elements: !4635)
!4635 = !{!4636, !4637}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4634, file: !273, line: 412, baseType: !7, size: 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4634, file: !273, line: 413, baseType: !4638, size: 1344, offset: 64)
!4638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4639, size: 1344, elements: !391)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !273, line: 397, size: 448, elements: !4640)
!4640 = !{!4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4651}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4639, file: !273, line: 398, baseType: !7, size: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4639, file: !273, line: 399, baseType: !7, size: 32, offset: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4639, file: !273, line: 401, baseType: !7, size: 32, offset: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4639, file: !273, line: 402, baseType: !7, size: 32, offset: 96)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4639, file: !273, line: 403, baseType: !7, size: 32, offset: 128)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4639, file: !273, line: 404, baseType: !7, size: 32, offset: 160)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4639, file: !273, line: 405, baseType: !7, size: 32, offset: 192)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4639, file: !273, line: 406, baseType: !509, size: 64, offset: 256)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4639, file: !273, line: 407, baseType: !4650, size: 64, offset: 320)
!4650 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !41, line: 132, baseType: !507)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4639, file: !273, line: 408, baseType: !4650, size: 64, offset: 384)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4573, file: !273, line: 442, baseType: !4581, size: 64, offset: 640)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1637, file: !268, line: 1200, baseType: !4654, size: 64, offset: 576)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4656)
!4656 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !268, line: 54, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1637, file: !268, line: 1201, baseType: !55, size: 64, offset: 640)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1637, file: !268, line: 1202, baseType: !55, size: 64, offset: 704)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1637, file: !268, line: 1203, baseType: !55, size: 64, offset: 768)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1637, file: !268, line: 1204, baseType: !1468, size: 64, offset: 832)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1637, file: !268, line: 1205, baseType: !808, size: 320, offset: 896)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1637, file: !268, line: 1206, baseType: !38, size: 32, offset: 1216)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1637, file: !268, line: 1207, baseType: !65, size: 32, offset: 1248)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1637, file: !268, line: 1209, baseType: !36, size: 64, offset: 1280)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1637, file: !268, line: 1211, baseType: !4666, size: 64, offset: 1344)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4669)
!4669 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !268, line: 1211, flags: DIFlagFwdDecl)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1637, file: !268, line: 1223, baseType: !4671, size: 64, offset: 1408)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1480, line: 34, size: 64, elements: !4672)
!4672 = !{!4673}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4671, file: !1480, line: 35, baseType: !1483, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1637, file: !268, line: 1224, baseType: !113, size: 128, offset: 1472)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1637, file: !268, line: 1225, baseType: !4676, size: 64, offset: 1600)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !268, line: 1225, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1637, file: !268, line: 1226, baseType: !4679, size: 64, offset: 1664)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !268, line: 1226, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1637, file: !268, line: 1227, baseType: !4682, size: 64, offset: 1728)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !268, line: 50, flags: DIFlagFwdDecl)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1637, file: !268, line: 1228, baseType: !4685, size: 64, offset: 1792)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !268, line: 1228, flags: DIFlagFwdDecl)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1637, file: !268, line: 1229, baseType: !412, size: 128, offset: 1856)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1637, file: !268, line: 1230, baseType: !7, size: 32, offset: 1984)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1637, file: !268, line: 1231, baseType: !4690, size: 2496, offset: 2048)
!4690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !273, line: 521, size: 2496, elements: !4691)
!4691 = !{!4692, !4693, !4694, !4696, !4728}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4690, file: !273, line: 522, baseType: !7, size: 32)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4690, file: !273, line: 523, baseType: !808, size: 320, offset: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4690, file: !273, line: 524, baseType: !4695, size: 192, offset: 384)
!4695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1503, size: 192, elements: !391)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4690, file: !273, line: 525, baseType: !4697, size: 1728, offset: 576)
!4697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4698, size: 1728, elements: !391)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !273, line: 222, size: 576, elements: !4699)
!4699 = !{!4700, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4698, file: !273, line: 223, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !273, line: 445, size: 256, elements: !4703)
!4703 = !{!4704, !4705, !4718, !4719}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4702, file: !273, line: 446, baseType: !38, size: 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4702, file: !273, line: 447, baseType: !4706, size: 64, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4708)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !273, line: 312, size: 512, elements: !4709)
!4709 = !{!4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4708, file: !273, line: 313, baseType: !4427, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4708, file: !273, line: 314, baseType: !4427, size: 64, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4708, file: !273, line: 315, baseType: !4427, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4708, file: !273, line: 316, baseType: !4427, size: 64, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4708, file: !273, line: 317, baseType: !4536, size: 64, offset: 256)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4708, file: !273, line: 318, baseType: !4536, size: 64, offset: 320)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4708, file: !273, line: 319, baseType: !4536, size: 64, offset: 384)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4708, file: !273, line: 320, baseType: !4566, size: 64, offset: 448)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4702, file: !273, line: 448, baseType: !1728, size: 64, offset: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4702, file: !273, line: 449, baseType: !4701, size: 64, offset: 192)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4698, file: !273, line: 224, baseType: !38, size: 32, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4698, file: !273, line: 226, baseType: !113, size: 128, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4698, file: !273, line: 227, baseType: !55, size: 64, offset: 256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4698, file: !273, line: 228, baseType: !7, size: 32, offset: 320)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4698, file: !273, line: 229, baseType: !7, size: 32, offset: 352)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4698, file: !273, line: 230, baseType: !4504, size: 64, offset: 384)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4698, file: !273, line: 231, baseType: !4504, size: 64, offset: 448)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4698, file: !273, line: 232, baseType: !36, size: 64, offset: 512)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4690, file: !273, line: 526, baseType: !4729, size: 192, offset: 2304)
!4729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4706, size: 192, elements: !391)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1637, file: !268, line: 1233, baseType: !4731, size: 2368, offset: 4544)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !268, line: 1184, size: 2368, elements: !4732)
!4732 = !{!4733, !4734, !4735}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4731, file: !268, line: 1185, baseType: !42, size: 16)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4731, file: !268, line: 1186, baseType: !42, size: 16, offset: 16)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4731, file: !268, line: 1187, baseType: !4736, size: 2304, offset: 64)
!4736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4737, size: 2304, elements: !391)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4738, line: 12, size: 768, elements: !4739)
!4738 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4739 = !{!4740, !4748, !4749, !4750, !4751}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4737, file: !4738, line: 13, baseType: !4741, size: 384)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4742, line: 17, size: 384, elements: !4743)
!4742 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4743 = !{!4744, !4745, !4746, !4747}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4741, file: !4742, line: 18, baseType: !38, size: 32)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4741, file: !4742, line: 19, baseType: !38, size: 32, offset: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4741, file: !4742, line: 20, baseType: !70, size: 192, offset: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4741, file: !4742, line: 22, baseType: !332, size: 128, align: 64, offset: 256)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4737, file: !4738, line: 14, baseType: !2635, size: 64, offset: 384)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4737, file: !4738, line: 15, baseType: !3841, size: 64, offset: 448)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4737, file: !4738, line: 16, baseType: !70, size: 192, offset: 512)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4737, file: !4738, line: 17, baseType: !65, size: 32, offset: 704)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1637, file: !268, line: 1240, baseType: !36, size: 64, offset: 6912)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1637, file: !268, line: 1243, baseType: !459, size: 32, offset: 6976)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1637, file: !268, line: 1245, baseType: !995, size: 64, offset: 7040)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1637, file: !268, line: 1246, baseType: !995, size: 64, offset: 7104)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1637, file: !268, line: 1248, baseType: !460, size: 32, offset: 7168)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1637, file: !268, line: 1249, baseType: !4758, size: 64, offset: 7232)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !268, line: 634, flags: DIFlagFwdDecl)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1637, file: !268, line: 1252, baseType: !4761, size: 256, offset: 7296)
!4761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !4762)
!4762 = !{!4763}
!4763 = !DISubrange(count: 32)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1637, file: !268, line: 1253, baseType: !4765, size: 128, offset: 7552)
!4765 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4766, line: 21, baseType: !4767)
!4766 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4766, line: 19, size: 128, elements: !4768)
!4768 = !{!4769}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4767, file: !4766, line: 20, baseType: !4770, size: 128)
!4770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !1417)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1637, file: !268, line: 1255, baseType: !7, size: 32, offset: 7680)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1637, file: !268, line: 1261, baseType: !354, size: 256, offset: 7744)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1637, file: !268, line: 1267, baseType: !32, size: 64, offset: 8000)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1637, file: !268, line: 1269, baseType: !4775, size: 64, offset: 8064)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4777)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1470, line: 128, size: 1024, align: 512, elements: !4778)
!4778 = !{!4779, !4783, !4784, !4791, !4797, !4801, !4805, !4809, !4810, !4814, !4818, !4823, !4827}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4777, file: !1470, line: 129, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!38, !1468, !7}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4777, file: !1470, line: 130, baseType: !4780, size: 64, offset: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4777, file: !1470, line: 131, baseType: !4785, size: 64, offset: 128)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!38, !4788, !4790}
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1469)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4777, file: !1470, line: 132, baseType: !4792, size: 64, offset: 192)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!38, !4788, !7, !32, !4795}
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4777, file: !1470, line: 134, baseType: !4798, size: 64, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!38, !4788}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4777, file: !1470, line: 135, baseType: !4802, size: 64, offset: 320)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!38, !1468}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4777, file: !1470, line: 136, baseType: !4806, size: 64, offset: 384)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{null, !1468}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4777, file: !1470, line: 137, baseType: !4806, size: 64, offset: 448)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4777, file: !1470, line: 138, baseType: !4811, size: 64, offset: 512)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{null, !1468, !1503}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4777, file: !1470, line: 139, baseType: !4815, size: 64, offset: 576)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!1046, !1468, !1046, !38}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4777, file: !1470, line: 140, baseType: !4819, size: 64, offset: 640)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!1630, !4822}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4777, file: !1470, line: 141, baseType: !4824, size: 64, offset: 704)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!38, !1624, !969}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4777, file: !1470, line: 142, baseType: !4828, size: 64, offset: 768)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!1468, !1468, !4831}
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1637, file: !268, line: 1271, baseType: !4834, size: 448, offset: 8128)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4519, line: 63, size: 448, elements: !4835)
!4835 = !{!4836, !4841, !4842, !4843, !4844, !4845, !4846}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4834, file: !4519, line: 64, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!55, !4840, !4517}
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4834, file: !4519, line: 66, baseType: !4837, size: 64, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4834, file: !4519, line: 69, baseType: !313, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4834, file: !4519, line: 70, baseType: !38, size: 32, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4834, file: !4519, line: 71, baseType: !7, size: 32, offset: 224)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4834, file: !4519, line: 74, baseType: !113, size: 128, offset: 256)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4834, file: !4519, line: 85, baseType: !4847, size: 64, offset: 384)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1637, file: !268, line: 1274, baseType: !345, size: 64, offset: 8576)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1637, file: !268, line: 1280, baseType: !345, size: 64, offset: 8640)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1637, file: !268, line: 1283, baseType: !38, size: 32, offset: 8704)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1637, file: !268, line: 1286, baseType: !2333, size: 32, offset: 8736)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1637, file: !268, line: 1289, baseType: !2843, size: 64, offset: 8768)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1637, file: !268, line: 1290, baseType: !408, size: 64, offset: 8832)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1637, file: !268, line: 1297, baseType: !911, size: 64, offset: 8896)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1637, file: !268, line: 1304, baseType: !4856, size: 64, offset: 8960)
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4857, line: 49, size: 64, elements: !4858)
!4857 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4858 = !{!4859}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4856, file: !4857, line: 50, baseType: !4860, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4857, line: 41, size: 512, align: 512, elements: !4862)
!4862 = !{!4863, !4864, !4869}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4861, file: !4857, line: 43, baseType: !75, size: 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4861, file: !4857, line: 45, baseType: !4865, size: 192, offset: 64)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4857, line: 29, size: 192, elements: !4866)
!4866 = !{!4867, !4868}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4865, file: !4857, line: 30, baseType: !113, size: 128)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4865, file: !4857, line: 32, baseType: !313, size: 64, offset: 128)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4861, file: !4857, line: 46, baseType: !313, size: 64, offset: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1637, file: !268, line: 1305, baseType: !4856, size: 64, offset: 9024)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1637, file: !268, line: 1306, baseType: !332, size: 128, align: 64, offset: 9088)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1637, file: !268, line: 1307, baseType: !1085, size: 256, offset: 9216)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1637, file: !268, line: 1309, baseType: !354, size: 256, offset: 9472)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1637, file: !268, line: 1314, baseType: !38, size: 32, offset: 9728)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1637, file: !268, line: 1317, baseType: !75, size: 32, align: 512, offset: 10240)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1637, file: !268, line: 1318, baseType: !113, size: 128, offset: 10304)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1637, file: !268, line: 1320, baseType: !75, size: 32, offset: 10432)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1637, file: !268, line: 1321, baseType: !113, size: 128, offset: 10496)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1631, file: !1632, line: 73, baseType: !38, size: 32, offset: 128)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1631, file: !1632, line: 74, baseType: !1542, size: 64, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1626, file: !1627, line: 10, baseType: !1468, size: 64, offset: 64)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4884, line: 22, size: 1280, elements: !4885)
!4884 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4885 = !{!4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4883, file: !4884, line: 23, baseType: !459, size: 32)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4883, file: !4884, line: 24, baseType: !40, size: 16, offset: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4883, file: !4884, line: 25, baseType: !7, size: 32, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4883, file: !4884, line: 26, baseType: !1003, size: 32, offset: 96)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4883, file: !4884, line: 27, baseType: !507, size: 64, offset: 128)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4883, file: !4884, line: 28, baseType: !507, size: 64, offset: 192)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4883, file: !4884, line: 41, baseType: !507, size: 64, offset: 256)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4883, file: !4884, line: 42, baseType: !1577, size: 32, offset: 320)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4883, file: !4884, line: 43, baseType: !1577, size: 32, offset: 352)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4883, file: !4884, line: 44, baseType: !942, size: 32, offset: 384)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4883, file: !4884, line: 45, baseType: !950, size: 32, offset: 416)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4883, file: !4884, line: 46, baseType: !57, size: 64, offset: 448)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4883, file: !4884, line: 47, baseType: !1613, size: 128, offset: 512)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4883, file: !4884, line: 48, baseType: !1613, size: 128, offset: 640)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4883, file: !4884, line: 49, baseType: !1613, size: 128, offset: 768)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4883, file: !4884, line: 50, baseType: !1613, size: 128, offset: 896)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4883, file: !4884, line: 51, baseType: !507, size: 64, offset: 1024)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4883, file: !4884, line: 52, baseType: !507, size: 64, offset: 1088)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4883, file: !4884, line: 53, baseType: !459, size: 32, offset: 1152)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4883, file: !4884, line: 54, baseType: !459, size: 32, offset: 1184)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4883, file: !4884, line: 55, baseType: !507, size: 64, offset: 1216)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1519, file: !268, line: 1990, baseType: !4908, size: 64, offset: 960)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!1811, !1468, !1046, !51}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1519, file: !268, line: 1991, baseType: !4912, size: 64, offset: 1024)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!38, !1503, !4915, !507, !507}
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !268, line: 55, flags: DIFlagFwdDecl)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1519, file: !268, line: 1993, baseType: !4918, size: 64, offset: 1088)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!38, !1503, !38}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1519, file: !268, line: 1994, baseType: !4922, size: 64, offset: 1152)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!38, !1503, !1468, !319, !7, !40}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1519, file: !268, line: 1997, baseType: !4926, size: 64, offset: 1216)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!38, !1542, !1503, !319, !40}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1519, file: !268, line: 1999, baseType: !4930, size: 64, offset: 1280)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!1513, !1542, !1468, !38}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1519, file: !268, line: 2001, baseType: !4934, size: 64, offset: 1344)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!38, !1542, !1468, !1513, !38}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1519, file: !268, line: 2003, baseType: !4938, size: 64, offset: 1408)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!38, !1542, !1468, !4941}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !268, line: 76, flags: DIFlagFwdDecl)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1519, file: !268, line: 2005, baseType: !4944, size: 64, offset: 1472)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!38, !1468, !4941}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1519, file: !268, line: 2006, baseType: !4948, size: 64, offset: 1536)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!4951, !1503}
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !268, line: 3192, size: 192, elements: !4953)
!4953 = !{!4954, !4955}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4952, file: !268, line: 3193, baseType: !437, size: 128)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4952, file: !268, line: 3194, baseType: !459, size: 32, offset: 128)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1504, file: !268, line: 655, baseType: !1636, size: 64, offset: 448)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1504, file: !268, line: 656, baseType: !1848, size: 64, offset: 512)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1504, file: !268, line: 659, baseType: !36, size: 64, offset: 576)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1504, file: !268, line: 663, baseType: !55, size: 64, offset: 640)
!4960 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !268, line: 671, baseType: !4961, size: 32, offset: 704)
!4961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !268, line: 671, size: 32, elements: !4962)
!4962 = !{!4963, !4964}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4961, file: !268, line: 672, baseType: !2891, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4961, file: !268, line: 673, baseType: !7, size: 32)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1504, file: !268, line: 675, baseType: !1577, size: 32, offset: 736)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1504, file: !268, line: 676, baseType: !57, size: 64, offset: 768)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1504, file: !268, line: 677, baseType: !1613, size: 128, offset: 832)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1504, file: !268, line: 678, baseType: !1613, size: 128, offset: 960)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1504, file: !268, line: 679, baseType: !1613, size: 128, offset: 1088)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1504, file: !268, line: 680, baseType: !75, size: 32, offset: 1216)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1504, file: !268, line: 681, baseType: !42, size: 16, offset: 1248)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1504, file: !268, line: 682, baseType: !99, size: 8, offset: 1264)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1504, file: !268, line: 683, baseType: !99, size: 8, offset: 1272)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1504, file: !268, line: 684, baseType: !4650, size: 64, offset: 1280)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1504, file: !268, line: 691, baseType: !55, size: 64, offset: 1344)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1504, file: !268, line: 692, baseType: !808, size: 320, offset: 1408)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1504, file: !268, line: 694, baseType: !55, size: 64, offset: 1728)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1504, file: !268, line: 695, baseType: !55, size: 64, offset: 1792)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1504, file: !268, line: 697, baseType: !412, size: 128, offset: 1856)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1504, file: !268, line: 698, baseType: !113, size: 128, offset: 1984)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1504, file: !268, line: 707, baseType: !113, size: 128, offset: 2112)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1504, file: !268, line: 708, baseType: !113, size: 128, offset: 2240)
!4983 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !268, line: 709, baseType: !4984, size: 128, offset: 2368)
!4984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !268, line: 709, size: 128, elements: !4985)
!4985 = !{!4986, !4987}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4984, file: !268, line: 710, baseType: !408, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4984, file: !268, line: 711, baseType: !332, size: 128, align: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1504, file: !268, line: 713, baseType: !347, size: 64, offset: 2496)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1504, file: !268, line: 714, baseType: !347, size: 64, offset: 2560)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1504, file: !268, line: 715, baseType: !65, size: 32, offset: 2624)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1504, file: !268, line: 716, baseType: !65, size: 32, offset: 2656)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1504, file: !268, line: 717, baseType: !65, size: 32, offset: 2688)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1504, file: !268, line: 719, baseType: !65, size: 32, offset: 2720)
!4994 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !268, line: 721, baseType: !4995, size: 64, offset: 2752)
!4995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !268, line: 721, size: 64, elements: !4996)
!4996 = !{!4997, !5123}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4995, file: !268, line: 722, baseType: !4998, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5000)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !268, line: 1914, size: 2112, elements: !5001)
!5001 = !{!5002, !5003, !5007, !5011, !5015, !5016, !5017, !5023, !5036, !5040, !5044, !5045, !5049, !5050, !5054, !5059, !5060, !5064, !5068, !5074, !5075, !5079, !5080, !5086, !5090, !5091, !5096, !5100, !5104, !5108, !5112, !5113, !5119}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5000, file: !268, line: 1915, baseType: !1728, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5000, file: !268, line: 1916, baseType: !5004, size: 64, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!57, !319, !57, !38}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5000, file: !268, line: 1917, baseType: !5008, size: 64, offset: 128)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!1811, !319, !1046, !51, !56}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5000, file: !268, line: 1918, baseType: !5012, size: 64, offset: 192)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!1811, !319, !32, !51, !56}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !5000, file: !268, line: 1919, baseType: !2267, size: 64, offset: 256)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !5000, file: !268, line: 1920, baseType: !2267, size: 64, offset: 320)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !5000, file: !268, line: 1921, baseType: !5018, size: 64, offset: 384)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!38, !2270, !5021, !7}
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !268, line: 53, flags: DIFlagFwdDecl)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !5000, file: !268, line: 1923, baseType: !5024, size: 64, offset: 448)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!38, !319, !5027}
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !268, line: 1858, size: 128, elements: !5029)
!5029 = !{!5030, !5035}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5028, file: !268, line: 1859, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !268, line: 1855, baseType: !5032)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!969, !5027, !32, !38, !57, !507, !7}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5028, file: !268, line: 1860, baseType: !57, size: 64, offset: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5000, file: !268, line: 1924, baseType: !5037, size: 64, offset: 512)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!2501, !319, !2503}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5000, file: !268, line: 1925, baseType: !5041, size: 64, offset: 576)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!313, !319, !7, !55}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5000, file: !268, line: 1926, baseType: !5041, size: 64, offset: 640)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5000, file: !268, line: 1927, baseType: !5046, size: 64, offset: 704)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!38, !319, !1978}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !5000, file: !268, line: 1928, baseType: !55, size: 64, offset: 768)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5000, file: !268, line: 1929, baseType: !5051, size: 64, offset: 832)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!38, !1503, !319}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5000, file: !268, line: 1930, baseType: !5055, size: 64, offset: 896)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!38, !319, !5058}
!5058 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !268, line: 1061, baseType: !36)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5000, file: !268, line: 1931, baseType: !5051, size: 64, offset: 960)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !5000, file: !268, line: 1932, baseType: !5061, size: 64, offset: 1024)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!38, !319, !57, !57, !38}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5000, file: !268, line: 1933, baseType: !5065, size: 64, offset: 1088)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!38, !38, !319, !38}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5000, file: !268, line: 1934, baseType: !5069, size: 64, offset: 1152)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!38, !319, !38, !5072}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !268, line: 1063, flags: DIFlagFwdDecl)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5000, file: !268, line: 1935, baseType: !778, size: 64, offset: 1216)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !5000, file: !268, line: 1936, baseType: !5076, size: 64, offset: 1280)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!38, !38}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !5000, file: !268, line: 1937, baseType: !5069, size: 64, offset: 1344)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !5000, file: !268, line: 1938, baseType: !5081, size: 64, offset: 1408)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!1811, !5084, !319, !56, !51, !7}
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !450, line: 59, flags: DIFlagFwdDecl)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5000, file: !268, line: 1939, baseType: !5087, size: 64, offset: 1472)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!1811, !319, !56, !5084, !51, !7}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !5000, file: !268, line: 1940, baseType: !2323, size: 64, offset: 1536)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !5000, file: !268, line: 1941, baseType: !5092, size: 64, offset: 1600)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!38, !319, !38, !5095, !2244}
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !5000, file: !268, line: 1942, baseType: !5097, size: 64, offset: 1664)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!313, !319, !38, !57, !57}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !5000, file: !268, line: 1944, baseType: !5101, size: 64, offset: 1728)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{null, !2434, !319}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !5000, file: !268, line: 1948, baseType: !5105, size: 64, offset: 1792)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!1811, !319, !57, !319, !57, !51, !7}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !5000, file: !268, line: 1950, baseType: !5109, size: 64, offset: 1856)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!57, !319, !57, !319, !57, !57, !7}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !5000, file: !268, line: 1953, baseType: !5061, size: 64, offset: 1920)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !5000, file: !268, line: 1954, baseType: !5114, size: 64, offset: 1984)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!38, !5117, !7}
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !268, line: 1911, flags: DIFlagFwdDecl)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !5000, file: !268, line: 1955, baseType: !5120, size: 64, offset: 2048)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!38, !5117, !5021, !7}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4995, file: !268, line: 723, baseType: !4408, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1504, file: !268, line: 725, baseType: !5125, size: 64, offset: 2816)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !268, line: 725, flags: DIFlagFwdDecl)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1504, file: !268, line: 726, baseType: !1849, size: 1536, align: 64, offset: 2880)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1504, file: !268, line: 727, baseType: !113, size: 128, offset: 4416)
!5129 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !268, line: 728, baseType: !5130, size: 64, offset: 4544)
!5130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !268, line: 728, size: 64, elements: !5131)
!5131 = !{!5132, !5133, !5136, !5137}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5130, file: !268, line: 729, baseType: !5084, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5130, file: !268, line: 730, baseType: !5134, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !268, line: 730, flags: DIFlagFwdDecl)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5130, file: !268, line: 731, baseType: !1046, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5130, file: !268, line: 732, baseType: !7, size: 32)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1504, file: !268, line: 735, baseType: !460, size: 32, offset: 4608)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1504, file: !268, line: 738, baseType: !460, size: 32, offset: 4640)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1504, file: !268, line: 739, baseType: !4758, size: 64, offset: 4672)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1504, file: !268, line: 750, baseType: !36, size: 64, offset: 4736)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1469, file: !1470, line: 91, baseType: !5143, size: 256, offset: 448)
!5143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !4762)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1469, file: !1470, line: 94, baseType: !5145, size: 64, offset: 704)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5146, line: 25, size: 64, elements: !5147)
!5146 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5147 = !{!5148}
!5148 = !DIDerivedType(tag: DW_TAG_member, scope: !5145, file: !5146, line: 26, baseType: !5149, size: 64)
!5149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5145, file: !5146, line: 26, size: 64, elements: !5150)
!5150 = !{!5151, !5152}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5149, file: !5146, line: 28, baseType: !508, size: 64, align: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, scope: !5149, file: !5146, line: 30, baseType: !5153, size: 64)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5149, file: !5146, line: 30, size: 64, elements: !5154)
!5154 = !{!5155, !5156}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5153, file: !5146, line: 31, baseType: !75, size: 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5153, file: !5146, line: 32, baseType: !38, size: 32, offset: 32)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1469, file: !1470, line: 95, baseType: !4775, size: 64, offset: 768)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1469, file: !1470, line: 96, baseType: !1636, size: 64, offset: 832)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1469, file: !1470, line: 97, baseType: !55, size: 64, offset: 896)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1469, file: !1470, line: 98, baseType: !36, size: 64, offset: 960)
!5161 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1470, line: 100, baseType: !5162, size: 128, offset: 1024)
!5162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !1470, line: 100, size: 128, elements: !5163)
!5163 = !{!5164, !5165}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5162, file: !1470, line: 101, baseType: !113, size: 128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5162, file: !1470, line: 102, baseType: !2512, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1469, file: !1470, line: 104, baseType: !113, size: 128, offset: 1152)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1469, file: !1470, line: 105, baseType: !113, size: 128, offset: 1280)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1469, file: !1470, line: 113, baseType: !5169, size: 128, offset: 1408)
!5169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !1470, line: 109, size: 128, elements: !5170)
!5170 = !{!5171, !5172, !5173}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5169, file: !1470, line: 110, baseType: !412, size: 128)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5169, file: !1470, line: 111, baseType: !1479, size: 128)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5169, file: !1470, line: 112, baseType: !332, size: 128, align: 64)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1463, file: !1458, line: 43, baseType: !1631, size: 256, offset: 256)
!5175 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1458, line: 44, baseType: !5176, size: 128, offset: 512)
!5176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1463, file: !1458, line: 44, size: 128, elements: !5177)
!5177 = !{!5178, !5179}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_rcu", scope: !5176, file: !1458, line: 45, baseType: !332, size: 128, align: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !5176, file: !1458, line: 46, baseType: !326, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pcp", scope: !1463, file: !1458, line: 49, baseType: !5181, size: 64, offset: 640)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_pcp", file: !1458, line: 27, size: 64, elements: !5183)
!5183 = !{!5184, !5185}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_count", scope: !5182, file: !1458, line: 28, baseType: !38, size: 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_writers", scope: !5182, file: !1458, line: 29, baseType: !38, size: 32, offset: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mounts", scope: !1463, file: !1458, line: 54, baseType: !113, size: 128, offset: 704)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_child", scope: !1463, file: !1458, line: 55, baseType: !113, size: 128, offset: 832)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_instance", scope: !1463, file: !1458, line: 56, baseType: !113, size: 128, offset: 960)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_devname", scope: !1463, file: !1458, line: 57, baseType: !32, size: 64, offset: 1088)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_list", scope: !1463, file: !1458, line: 58, baseType: !113, size: 128, offset: 1152)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expire", scope: !1463, file: !1458, line: 59, baseType: !113, size: 128, offset: 1280)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_share", scope: !1463, file: !1458, line: 60, baseType: !113, size: 128, offset: 1408)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave_list", scope: !1463, file: !1458, line: 61, baseType: !113, size: 128, offset: 1536)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave", scope: !1463, file: !1458, line: 62, baseType: !113, size: 128, offset: 1664)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_master", scope: !1463, file: !1458, line: 63, baseType: !1462, size: 64, offset: 1792)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1463, file: !1458, line: 64, baseType: !1456, size: 64, offset: 1856)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp", scope: !1463, file: !1458, line: 65, baseType: !5198, size: 64, offset: 1920)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mountpoint", file: !1458, line: 32, size: 320, elements: !5200)
!5200 = !{!5201, !5202, !5203, !5204}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "m_hash", scope: !5199, file: !1458, line: 33, baseType: !412, size: 128)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "m_dentry", scope: !5199, file: !1458, line: 34, baseType: !1468, size: 64, offset: 128)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !5199, file: !1458, line: 35, baseType: !408, size: 64, offset: 192)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "m_count", scope: !5199, file: !1458, line: 36, baseType: !38, size: 32, offset: 256)
!5205 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1458, line: 66, baseType: !5206, size: 128, offset: 1984)
!5206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1463, file: !1458, line: 66, size: 128, elements: !5207)
!5207 = !{!5208, !5209}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp_list", scope: !5206, file: !1458, line: 67, baseType: !412, size: 128)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umount", scope: !5206, file: !1458, line: 68, baseType: !412, size: 128)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umounting", scope: !1463, file: !1458, line: 70, baseType: !113, size: 128, offset: 2112)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_marks", scope: !1463, file: !1458, line: 72, baseType: !4758, size: 64, offset: 2240)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_mask", scope: !1463, file: !1458, line: 73, baseType: !460, size: 32, offset: 2304)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1463, file: !1458, line: 75, baseType: !38, size: 32, offset: 2336)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_group_id", scope: !1463, file: !1458, line: 76, baseType: !38, size: 32, offset: 2368)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expiry_mark", scope: !1463, file: !1458, line: 77, baseType: !38, size: 32, offset: 2400)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pins", scope: !1463, file: !1458, line: 78, baseType: !408, size: 64, offset: 2432)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_stuck_children", scope: !1463, file: !1458, line: 79, baseType: !408, size: 64, offset: 2496)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1457, file: !1458, line: 16, baseType: !113, size: 128, offset: 256)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "ns_lock", scope: !1457, file: !1458, line: 17, baseType: !75, size: 32, offset: 384)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1457, file: !1458, line: 18, baseType: !911, size: 64, offset: 448)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1457, file: !1458, line: 19, baseType: !1168, size: 64, offset: 512)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1457, file: !1458, line: 20, baseType: !507, size: 64, offset: 576)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1457, file: !1458, line: 21, baseType: !70, size: 192, offset: 640)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1457, file: !1458, line: 22, baseType: !507, size: 64, offset: 832)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "mounts", scope: !1457, file: !1458, line: 23, baseType: !7, size: 32, offset: 896)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mounts", scope: !1457, file: !1458, line: 24, baseType: !7, size: 32, offset: 928)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1445, file: !1446, line: 36, baseType: !428, size: 64, offset: 256)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1445, file: !1446, line: 37, baseType: !1712, size: 64, offset: 320)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1445, file: !1446, line: 38, baseType: !5230, size: 64, offset: 384)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1446, line: 38, flags: DIFlagFwdDecl)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1445, file: !1446, line: 39, baseType: !5230, size: 64, offset: 448)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1445, file: !1446, line: 40, baseType: !5234, size: 64, offset: 512)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5236, line: 771, size: 384, elements: !5237)
!5236 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5237 = !{!5238, !5239, !5240, !5241}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5235, file: !5236, line: 772, baseType: !957, size: 192)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5235, file: !5236, line: 773, baseType: !911, size: 64, offset: 192)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5235, file: !5236, line: 774, baseType: !1168, size: 64, offset: 256)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5235, file: !5236, line: 775, baseType: !4203, size: 64, offset: 320)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !449, file: !450, line: 1110, baseType: !5243, size: 64, offset: 15360)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5245, line: 93, size: 8768, elements: !5246)
!5245 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5246 = !{!5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5295, !5304, !5305, !5307, !5308, !5309, !5312, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5350, !5351, !5358, !5368, !5430, !5431, !5434, !5435, !5436, !5437, !5438, !5439}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5244, file: !5245, line: 94, baseType: !399, size: 32)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5244, file: !5245, line: 95, baseType: !65, size: 32, offset: 32)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5244, file: !5245, line: 96, baseType: !38, size: 32, offset: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5244, file: !5245, line: 97, baseType: !38, size: 32, offset: 96)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5244, file: !5245, line: 98, baseType: !113, size: 128, offset: 128)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5244, file: !5245, line: 100, baseType: !70, size: 192, offset: 256)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5244, file: !5245, line: 103, baseType: !448, size: 64, offset: 448)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5244, file: !5245, line: 106, baseType: !5255, size: 192, offset: 512)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5256, line: 32, size: 192, elements: !5257)
!5256 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5257 = !{!5258, !5259}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5255, file: !5256, line: 33, baseType: !113, size: 128)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5255, file: !5256, line: 34, baseType: !5260, size: 64, offset: 128)
!5260 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5261, line: 25, baseType: !5262)
!5261 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5261, line: 23, size: 64, elements: !5263)
!5263 = !{!5264}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5262, file: !5261, line: 24, baseType: !704, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5244, file: !5245, line: 109, baseType: !408, size: 64, offset: 704)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5244, file: !5245, line: 112, baseType: !38, size: 32, offset: 768)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5244, file: !5245, line: 114, baseType: !38, size: 32, offset: 800)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5244, file: !5245, line: 115, baseType: !448, size: 64, offset: 832)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5244, file: !5245, line: 118, baseType: !38, size: 32, offset: 896)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5244, file: !5245, line: 119, baseType: !7, size: 32, offset: 928)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5244, file: !5245, line: 121, baseType: !5272, size: 64, offset: 960)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5245, line: 80, size: 448, elements: !5274)
!5274 = !{!5275, !5276, !5282}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5273, file: !5245, line: 81, baseType: !65, size: 32)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5273, file: !5245, line: 82, baseType: !5277, size: 128, offset: 64)
!5277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5245, line: 75, size: 128, elements: !5278)
!5278 = !{!5279, !5280}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5277, file: !5245, line: 76, baseType: !448, size: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5277, file: !5245, line: 77, baseType: !5281, size: 64, offset: 64)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5273, file: !5245, line: 83, baseType: !1124, size: 256, offset: 192)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5244, file: !5245, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5244, file: !5245, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5244, file: !5245, line: 138, baseType: !7, size: 32, offset: 1056)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5244, file: !5245, line: 139, baseType: !113, size: 128, offset: 1088)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5244, file: !5245, line: 142, baseType: !572, size: 512, offset: 1216)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5244, file: !5245, line: 143, baseType: !580, size: 64, offset: 1728)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5244, file: !5245, line: 150, baseType: !5290, size: 256, offset: 1792)
!5290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5291, size: 256, elements: !2673)
!5291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5245, line: 38, size: 128, elements: !5292)
!5292 = !{!5293, !5294}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5291, file: !5245, line: 39, baseType: !507, size: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5291, file: !5245, line: 40, baseType: !507, size: 64, offset: 64)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5244, file: !5245, line: 156, baseType: !5296, size: 192, offset: 2048)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5245, line: 66, size: 192, elements: !5297)
!5297 = !{!5298}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5296, file: !5245, line: 67, baseType: !5299, size: 192)
!5299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5245, line: 47, size: 192, elements: !5300)
!5300 = !{!5301, !5302, !5303}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5299, file: !5245, line: 48, baseType: !347, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5299, file: !5245, line: 49, baseType: !347, size: 64, offset: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5299, file: !5245, line: 50, baseType: !347, size: 64, offset: 128)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5244, file: !5245, line: 160, baseType: !1325, size: 640, offset: 2240)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5244, file: !5245, line: 163, baseType: !5306, size: 256, offset: 2880)
!5306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 256, elements: !417)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5244, file: !5245, line: 169, baseType: !395, size: 64, offset: 3136)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5244, file: !5245, line: 172, baseType: !38, size: 32, offset: 3200)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5244, file: !5245, line: 174, baseType: !5310, size: 64, offset: 3264)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5245, line: 174, flags: DIFlagFwdDecl)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5244, file: !5245, line: 185, baseType: !5313, size: 64, offset: 3328)
!5313 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !623, line: 860, baseType: !5314)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 853, size: 64, elements: !5315)
!5315 = !{!5316, !5317}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5314, file: !623, line: 858, baseType: !1474, size: 32)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5314, file: !623, line: 859, baseType: !75, size: 32, offset: 32)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5244, file: !5245, line: 186, baseType: !507, size: 64, offset: 3392)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5244, file: !5245, line: 186, baseType: !507, size: 64, offset: 3456)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5244, file: !5245, line: 186, baseType: !507, size: 64, offset: 3520)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5244, file: !5245, line: 186, baseType: !507, size: 64, offset: 3584)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5244, file: !5245, line: 187, baseType: !507, size: 64, offset: 3648)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5244, file: !5245, line: 188, baseType: !507, size: 64, offset: 3712)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5244, file: !5245, line: 189, baseType: !1313, size: 192, offset: 3776)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5244, file: !5245, line: 190, baseType: !55, size: 64, offset: 3968)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5244, file: !5245, line: 190, baseType: !55, size: 64, offset: 4032)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5244, file: !5245, line: 190, baseType: !55, size: 64, offset: 4096)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5244, file: !5245, line: 190, baseType: !55, size: 64, offset: 4160)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5244, file: !5245, line: 191, baseType: !55, size: 64, offset: 4224)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5244, file: !5245, line: 191, baseType: !55, size: 64, offset: 4288)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5244, file: !5245, line: 191, baseType: !55, size: 64, offset: 4352)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5244, file: !5245, line: 191, baseType: !55, size: 64, offset: 4416)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5244, file: !5245, line: 192, baseType: !55, size: 64, offset: 4480)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5244, file: !5245, line: 192, baseType: !55, size: 64, offset: 4544)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5244, file: !5245, line: 192, baseType: !55, size: 64, offset: 4608)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5244, file: !5245, line: 192, baseType: !55, size: 64, offset: 4672)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5244, file: !5245, line: 193, baseType: !55, size: 64, offset: 4736)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5244, file: !5245, line: 193, baseType: !55, size: 64, offset: 4800)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5244, file: !5245, line: 194, baseType: !5340, size: 448, offset: 4864)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5341, line: 12, size: 448, elements: !5342)
!5341 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5342 = !{!5343, !5344, !5345, !5346, !5347, !5348, !5349}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5340, file: !5341, line: 15, baseType: !507, size: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5340, file: !5341, line: 17, baseType: !507, size: 64, offset: 64)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5340, file: !5341, line: 19, baseType: !507, size: 64, offset: 128)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5340, file: !5341, line: 21, baseType: !507, size: 64, offset: 192)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5340, file: !5341, line: 29, baseType: !507, size: 64, offset: 256)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5340, file: !5341, line: 35, baseType: !507, size: 64, offset: 320)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5340, file: !5341, line: 44, baseType: !507, size: 64, offset: 384)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5244, file: !5245, line: 202, baseType: !509, size: 64, offset: 5312)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5244, file: !5245, line: 213, baseType: !5352, size: 2048, offset: 5376)
!5352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5353, size: 2048, elements: !1417)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5354, line: 43, size: 128, elements: !5355)
!5354 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5355 = !{!5356, !5357}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5353, file: !5354, line: 44, baseType: !54, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5353, file: !5354, line: 45, baseType: !54, size: 64, offset: 64)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5244, file: !5245, line: 216, baseType: !5359, size: 448, offset: 7424)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5245, line: 30, size: 448, elements: !5360)
!5360 = !{!5361, !5362, !5363, !5364, !5365, !5366, !5367}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5359, file: !5245, line: 31, baseType: !38, size: 32)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5359, file: !5245, line: 32, baseType: !313, size: 64, offset: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5359, file: !5245, line: 33, baseType: !55, size: 64, offset: 128)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5359, file: !5245, line: 34, baseType: !507, size: 64, offset: 192)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5359, file: !5245, line: 34, baseType: !507, size: 64, offset: 256)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5359, file: !5245, line: 35, baseType: !55, size: 64, offset: 320)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5359, file: !5245, line: 35, baseType: !55, size: 64, offset: 384)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5244, file: !5245, line: 219, baseType: !5369, size: 64, offset: 7872)
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5370, size: 64)
!5370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5371, line: 41, size: 3456, elements: !5372)
!5371 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5372 = !{!5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5370, file: !5371, line: 47, baseType: !110, size: 16)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5370, file: !5371, line: 48, baseType: !460, size: 32, offset: 32)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5370, file: !5371, line: 54, baseType: !101, size: 8, offset: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5370, file: !5371, line: 55, baseType: !101, size: 8, offset: 72)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5370, file: !5371, line: 73, baseType: !508, size: 64, align: 64, offset: 128)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5370, file: !5371, line: 74, baseType: !508, size: 64, offset: 192)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5370, file: !5371, line: 81, baseType: !508, size: 64, offset: 256)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5370, file: !5371, line: 82, baseType: !508, size: 64, offset: 320)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5370, file: !5371, line: 85, baseType: !508, size: 64, offset: 384)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5370, file: !5371, line: 86, baseType: !508, size: 64, offset: 448)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5370, file: !5371, line: 94, baseType: !508, size: 64, offset: 512)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5370, file: !5371, line: 102, baseType: !508, size: 64, offset: 576)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5370, file: !5371, line: 107, baseType: !4761, size: 256, offset: 640)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5370, file: !5371, line: 108, baseType: !101, size: 8, align: 64, offset: 896)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5370, file: !5371, line: 110, baseType: !5388, size: 24, offset: 904)
!5388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 24, elements: !391)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5370, file: !5371, line: 111, baseType: !460, size: 32, align: 64, offset: 960)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5370, file: !5371, line: 113, baseType: !460, size: 32, offset: 992)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5370, file: !5371, line: 114, baseType: !460, size: 32, offset: 1024)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5370, file: !5371, line: 115, baseType: !460, size: 32, offset: 1056)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5370, file: !5371, line: 117, baseType: !460, size: 32, offset: 1088)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5370, file: !5371, line: 118, baseType: !508, size: 64, align: 64, offset: 1152)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5370, file: !5371, line: 120, baseType: !508, size: 64, offset: 1216)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5370, file: !5371, line: 121, baseType: !508, size: 64, offset: 1280)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5370, file: !5371, line: 122, baseType: !508, size: 64, offset: 1344)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5370, file: !5371, line: 123, baseType: !508, size: 64, offset: 1408)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5370, file: !5371, line: 133, baseType: !508, size: 64, offset: 1472)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5370, file: !5371, line: 137, baseType: !508, size: 64, offset: 1536)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5370, file: !5371, line: 142, baseType: !508, size: 64, offset: 1600)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5370, file: !5371, line: 143, baseType: !508, size: 64, offset: 1664)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5370, file: !5371, line: 146, baseType: !508, size: 64, offset: 1728)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5370, file: !5371, line: 147, baseType: !508, size: 64, offset: 1792)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5370, file: !5371, line: 148, baseType: !508, size: 64, offset: 1856)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5370, file: !5371, line: 149, baseType: !508, size: 64, offset: 1920)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5370, file: !5371, line: 154, baseType: !508, size: 64, offset: 1984)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5370, file: !5371, line: 155, baseType: !508, size: 64, offset: 2048)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5370, file: !5371, line: 156, baseType: !508, size: 64, offset: 2112)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5370, file: !5371, line: 158, baseType: !508, size: 64, offset: 2176)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5370, file: !5371, line: 159, baseType: !508, size: 64, offset: 2240)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5370, file: !5371, line: 162, baseType: !508, size: 64, offset: 2304)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5370, file: !5371, line: 163, baseType: !508, size: 64, offset: 2368)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5370, file: !5371, line: 164, baseType: !508, size: 64, offset: 2432)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5370, file: !5371, line: 167, baseType: !508, size: 64, offset: 2496)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5370, file: !5371, line: 168, baseType: !508, size: 64, offset: 2560)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5370, file: !5371, line: 171, baseType: !508, size: 64, offset: 2624)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5370, file: !5371, line: 172, baseType: !508, size: 64, offset: 2688)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5370, file: !5371, line: 175, baseType: !508, size: 64, offset: 2752)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5370, file: !5371, line: 178, baseType: !508, size: 64, offset: 2816)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5370, file: !5371, line: 179, baseType: !508, size: 64, offset: 2880)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5370, file: !5371, line: 182, baseType: !460, size: 32, offset: 2944)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5370, file: !5371, line: 186, baseType: !508, size: 64, align: 64, offset: 3008)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5370, file: !5371, line: 194, baseType: !508, size: 64, offset: 3072)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5370, file: !5371, line: 195, baseType: !508, size: 64, offset: 3136)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5370, file: !5371, line: 199, baseType: !508, size: 64, offset: 3200)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5370, file: !5371, line: 200, baseType: !508, size: 64, offset: 3264)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5370, file: !5371, line: 203, baseType: !508, size: 64, offset: 3328)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5370, file: !5371, line: 204, baseType: !508, size: 64, offset: 3392)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5244, file: !5245, line: 222, baseType: !7, size: 32, offset: 7936)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5244, file: !5245, line: 223, baseType: !5432, size: 64, offset: 8000)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5245, line: 223, flags: DIFlagFwdDecl)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5244, file: !5245, line: 230, baseType: !969, size: 8, offset: 8064)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5244, file: !5245, line: 231, baseType: !904, size: 16, offset: 8080)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5244, file: !5245, line: 232, baseType: !904, size: 16, offset: 8096)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5244, file: !5245, line: 234, baseType: !753, size: 64, offset: 8128)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5244, file: !5245, line: 237, baseType: !354, size: 256, offset: 8192)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5244, file: !5245, line: 243, baseType: !808, size: 320, offset: 8448)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !449, file: !450, line: 1111, baseType: !5441, size: 64, offset: 15424)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5245, line: 20, size: 16640, elements: !5443)
!5443 = !{!5444, !5445, !5446, !5447}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5442, file: !5245, line: 21, baseType: !75, size: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5442, file: !5245, line: 22, baseType: !399, size: 32, offset: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5442, file: !5245, line: 23, baseType: !70, size: 192, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5442, file: !5245, line: 24, baseType: !5448, size: 16384, offset: 256)
!5448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5449, size: 16384, elements: !1784)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5256, line: 51, size: 256, elements: !5450)
!5450 = !{!5451}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5449, file: !5256, line: 52, baseType: !5452, size: 256)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5256, line: 37, size: 256, elements: !5453)
!5453 = !{!5454, !5461, !5462, !5466}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5452, file: !5256, line: 39, baseType: !5455, size: 64)
!5455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5456, line: 83, baseType: !5457)
!5456 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5456, line: 82, baseType: !5459)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{null, !38}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5452, file: !5256, line: 40, baseType: !55, size: 64, offset: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5452, file: !5256, line: 46, baseType: !5463, size: 64, offset: 128)
!5463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5456, line: 86, baseType: !5464)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5456, line: 85, baseType: !2956)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5452, file: !5256, line: 48, baseType: !5260, size: 64, offset: 192)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !449, file: !450, line: 1112, baseType: !5260, size: 64, offset: 15488)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !449, file: !450, line: 1113, baseType: !5260, size: 64, offset: 15552)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !449, file: !450, line: 1115, baseType: !5260, size: 64, offset: 15616)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !449, file: !450, line: 1116, baseType: !5255, size: 192, offset: 15680)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !449, file: !450, line: 1117, baseType: !55, size: 64, offset: 15872)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !449, file: !450, line: 1118, baseType: !51, size: 64, offset: 15936)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !449, file: !450, line: 1119, baseType: !7, size: 32, offset: 16000)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !449, file: !450, line: 1121, baseType: !335, size: 64, offset: 16064)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !449, file: !450, line: 1125, baseType: !5476, size: 64, offset: 16128)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !450, line: 43, flags: DIFlagFwdDecl)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !449, file: !450, line: 1127, baseType: !942, size: 32, offset: 16192)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !449, file: !450, line: 1128, baseType: !7, size: 32, offset: 16224)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !449, file: !450, line: 1130, baseType: !5481, size: 128, offset: 16256)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5482, line: 37, size: 128, elements: !5483)
!5482 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5483 = !{!5484, !5485, !5486}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5481, file: !5482, line: 38, baseType: !38, size: 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5481, file: !5482, line: 39, baseType: !65, size: 32, offset: 32)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5481, file: !5482, line: 40, baseType: !5487, size: 64, offset: 64)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5482, line: 24, flags: DIFlagFwdDecl)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !449, file: !450, line: 1131, baseType: !5490, size: 256, offset: 16384)
!5490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5491, line: 12, size: 256, elements: !5492)
!5491 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5492 = !{!5493, !5494, !5495, !5496}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5490, file: !5491, line: 13, baseType: !1046, size: 64)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5490, file: !5491, line: 14, baseType: !55, size: 64, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5490, file: !5491, line: 15, baseType: !55, size: 64, offset: 128)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5490, file: !5491, line: 16, baseType: !969, size: 8, offset: 192)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !449, file: !450, line: 1134, baseType: !507, size: 64, offset: 16640)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !449, file: !450, line: 1135, baseType: !507, size: 64, offset: 16704)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !449, file: !450, line: 1138, baseType: !75, size: 32, offset: 16768)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !449, file: !450, line: 1141, baseType: !359, size: 32, offset: 16800)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !449, file: !450, line: 1143, baseType: !5502, size: 64, offset: 16832)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !450, line: 735, size: 64, elements: !5503)
!5503 = !{!5504}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5502, file: !450, line: 736, baseType: !5505, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !449, file: !450, line: 1147, baseType: !636, size: 128, offset: 16896)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !449, file: !450, line: 1149, baseType: !448, size: 64, offset: 17024)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !449, file: !450, line: 1151, baseType: !5509, size: 64, offset: 17088)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5510, size: 64)
!5510 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !450, line: 1151, flags: DIFlagFwdDecl)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !449, file: !450, line: 1188, baseType: !36, size: 64, offset: 17152)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !449, file: !450, line: 1191, baseType: !5513, size: 64, offset: 17216)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !450, line: 44, flags: DIFlagFwdDecl)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !449, file: !450, line: 1194, baseType: !5516, size: 64, offset: 17280)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !450, line: 45, flags: DIFlagFwdDecl)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !449, file: !450, line: 1197, baseType: !5519, size: 64, offset: 17344)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !450, line: 61, flags: DIFlagFwdDecl)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !449, file: !450, line: 1199, baseType: !5522, size: 64, offset: 17408)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5524, line: 99, size: 128, elements: !5525)
!5524 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5525 = !{!5526, !5527, !5528}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5523, file: !5524, line: 100, baseType: !345, size: 64)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5523, file: !5524, line: 101, baseType: !65, size: 32, offset: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5523, file: !5524, line: 103, baseType: !42, size: 16, offset: 96)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !449, file: !450, line: 1202, baseType: !5530, size: 64, offset: 17472)
!5530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5531, size: 64)
!5531 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !450, line: 48, flags: DIFlagFwdDecl)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !449, file: !450, line: 1205, baseType: !55, size: 64, offset: 17536)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !449, file: !450, line: 1206, baseType: !5534, size: 64, offset: 17600)
!5534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5535, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5256, line: 14, baseType: !5536)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5256, line: 12, size: 384, elements: !5537)
!5537 = !{!5538}
!5538 = !DIDerivedType(tag: DW_TAG_member, scope: !5536, file: !5256, line: 13, baseType: !5539, size: 384)
!5539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5536, file: !5256, line: 13, size: 384, elements: !5540)
!5540 = !{!5541, !5542, !5543, !5544}
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5539, file: !5256, line: 13, baseType: !38, size: 32)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5539, file: !5256, line: 13, baseType: !38, size: 32, offset: 32)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5539, file: !5256, line: 13, baseType: !38, size: 32, offset: 64)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5539, file: !5256, line: 13, baseType: !5545, size: 256, offset: 128)
!5545 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5546, line: 37, size: 256, elements: !5547)
!5546 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5547 = !{!5548, !5553, !5566, !5572, !5581, !5608, !5613}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5545, file: !5546, line: 42, baseType: !5549, size: 64)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5545, file: !5546, line: 39, size: 64, elements: !5550)
!5550 = !{!5551, !5552}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5549, file: !5546, line: 40, baseType: !1289, size: 32)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5549, file: !5546, line: 41, baseType: !948, size: 32, offset: 32)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5545, file: !5546, line: 50, baseType: !5554, size: 192)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5545, file: !5546, line: 45, size: 192, elements: !5555)
!5555 = !{!5556, !5558, !5559, !5565}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5554, file: !5546, line: 46, baseType: !5557, size: 32)
!5557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !53, line: 95, baseType: !38)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5554, file: !5546, line: 47, baseType: !38, size: 32, offset: 32)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5554, file: !5546, line: 48, baseType: !5560, size: 64, offset: 64)
!5560 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5546, line: 11, baseType: !5561)
!5561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5546, line: 8, size: 64, elements: !5562)
!5562 = !{!5563, !5564}
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5561, file: !5546, line: 9, baseType: !38, size: 32)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5561, file: !5546, line: 10, baseType: !36, size: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5554, file: !5546, line: 49, baseType: !38, size: 32, offset: 128)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5545, file: !5546, line: 57, baseType: !5567, size: 128)
!5567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5545, file: !5546, line: 53, size: 128, elements: !5568)
!5568 = !{!5569, !5570, !5571}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5567, file: !5546, line: 54, baseType: !1289, size: 32)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5567, file: !5546, line: 55, baseType: !948, size: 32, offset: 32)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5567, file: !5546, line: 56, baseType: !5560, size: 64, offset: 64)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5545, file: !5546, line: 66, baseType: !5573, size: 256)
!5573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5545, file: !5546, line: 60, size: 256, elements: !5574)
!5574 = !{!5575, !5576, !5577, !5578, !5580}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5573, file: !5546, line: 61, baseType: !1289, size: 32)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5573, file: !5546, line: 62, baseType: !948, size: 32, offset: 32)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5573, file: !5546, line: 63, baseType: !38, size: 32, offset: 64)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5573, file: !5546, line: 64, baseType: !5579, size: 64, offset: 128)
!5579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !53, line: 94, baseType: !1813)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5573, file: !5546, line: 65, baseType: !5579, size: 64, offset: 192)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5545, file: !5546, line: 105, baseType: !5582, size: 256)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5545, file: !5546, line: 69, size: 256, elements: !5583)
!5583 = !{!5584, !5585}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5582, file: !5546, line: 70, baseType: !36, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_member, scope: !5582, file: !5546, line: 79, baseType: !5586, size: 192, offset: 64)
!5586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5582, file: !5546, line: 79, size: 192, elements: !5587)
!5587 = !{!5588, !5589, !5590, !5597, !5602}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5586, file: !5546, line: 81, baseType: !38, size: 32)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5586, file: !5546, line: 86, baseType: !904, size: 16)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5586, file: !5546, line: 92, baseType: !5591, size: 192)
!5591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5586, file: !5546, line: 88, size: 192, elements: !5592)
!5592 = !{!5593, !5595, !5596}
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5591, file: !5546, line: 89, baseType: !5594, size: 64)
!5594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !615)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5591, file: !5546, line: 90, baseType: !36, size: 64, offset: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5591, file: !5546, line: 91, baseType: !36, size: 64, offset: 128)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5586, file: !5546, line: 97, baseType: !5598, size: 96)
!5598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5586, file: !5546, line: 94, size: 96, elements: !5599)
!5599 = !{!5600, !5601}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5598, file: !5546, line: 95, baseType: !5594, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5598, file: !5546, line: 96, baseType: !460, size: 32, offset: 64)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5586, file: !5546, line: 103, baseType: !5603, size: 128)
!5603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5586, file: !5546, line: 99, size: 128, elements: !5604)
!5604 = !{!5605, !5606, !5607}
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5603, file: !5546, line: 100, baseType: !55, size: 64)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5603, file: !5546, line: 101, baseType: !460, size: 32, offset: 64)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5603, file: !5546, line: 102, baseType: !460, size: 32, offset: 96)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5545, file: !5546, line: 111, baseType: !5609, size: 128)
!5609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5545, file: !5546, line: 108, size: 128, elements: !5610)
!5610 = !{!5611, !5612}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5609, file: !5546, line: 109, baseType: !313, size: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5609, file: !5546, line: 110, baseType: !38, size: 32, offset: 64)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5545, file: !5546, line: 118, baseType: !5614, size: 128)
!5614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5545, file: !5546, line: 114, size: 128, elements: !5615)
!5615 = !{!5616, !5617, !5618}
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5614, file: !5546, line: 115, baseType: !36, size: 64)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5614, file: !5546, line: 116, baseType: !38, size: 32, offset: 64)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5614, file: !5546, line: 117, baseType: !7, size: 32, offset: 96)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !449, file: !450, line: 1208, baseType: !5340, size: 448, offset: 17664)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !449, file: !450, line: 1215, baseType: !507, size: 64, offset: 18112)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !449, file: !450, line: 1217, baseType: !507, size: 64, offset: 18176)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !449, file: !450, line: 1219, baseType: !507, size: 64, offset: 18240)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !449, file: !450, line: 1223, baseType: !5624, size: 64, offset: 18304)
!5624 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5625, line: 99, baseType: !5626)
!5625 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5625, line: 99, size: 64, elements: !5627)
!5627 = !{!5628}
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5626, file: !5625, line: 99, baseType: !704, size: 64)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !449, file: !450, line: 1225, baseType: !1474, size: 32, offset: 18368)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !449, file: !450, line: 1226, baseType: !38, size: 32, offset: 18400)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !449, file: !450, line: 1227, baseType: !38, size: 32, offset: 18432)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !449, file: !450, line: 1231, baseType: !4203, size: 64, offset: 18496)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !449, file: !450, line: 1233, baseType: !113, size: 128, offset: 18560)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !449, file: !450, line: 1240, baseType: !5635, size: 64, offset: 18688)
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5636, size: 64)
!5636 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !450, line: 62, flags: DIFlagFwdDecl)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !449, file: !450, line: 1242, baseType: !5638, size: 64, offset: 18752)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !450, line: 1242, flags: DIFlagFwdDecl)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !449, file: !450, line: 1244, baseType: !113, size: 128, offset: 18816)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !449, file: !450, line: 1245, baseType: !5642, size: 64, offset: 18944)
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5643, size: 64)
!5643 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !450, line: 51, flags: DIFlagFwdDecl)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !449, file: !450, line: 1246, baseType: !354, size: 256, offset: 19008)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !449, file: !450, line: 1247, baseType: !7, size: 32, offset: 19264)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !449, file: !450, line: 1250, baseType: !3455, size: 64, offset: 19328)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !449, file: !450, line: 1251, baseType: !354, size: 256, offset: 19392)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !449, file: !450, line: 1252, baseType: !113, size: 128, offset: 19648)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !449, file: !450, line: 1259, baseType: !2069, size: 64, offset: 19776)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !449, file: !450, line: 1260, baseType: !904, size: 16, offset: 19840)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !449, file: !450, line: 1261, baseType: !904, size: 16, offset: 19856)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !449, file: !450, line: 1314, baseType: !5653, size: 64, offset: 19904)
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5654, size: 64)
!5654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5655, line: 62, size: 256, align: 256, elements: !5656)
!5655 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5656 = !{!5657, !5658, !5659, !5660, !5661, !5662, !5663}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5654, file: !5655, line: 75, baseType: !460, size: 32)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5654, file: !5655, line: 90, baseType: !460, size: 32, offset: 32)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5654, file: !5655, line: 112, baseType: !508, size: 64, offset: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5654, file: !5655, line: 132, baseType: !460, size: 32, offset: 128)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5654, file: !5655, line: 140, baseType: !460, size: 32, offset: 160)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5654, file: !5655, line: 149, baseType: !460, size: 32, offset: 192)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5654, file: !5655, line: 154, baseType: !5664, offset: 224)
!5664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, elements: !1201)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !449, file: !450, line: 1315, baseType: !459, size: 32, offset: 19968)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !449, file: !450, line: 1316, baseType: !459, size: 32, offset: 20000)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !449, file: !450, line: 1321, baseType: !55, size: 64, offset: 20032)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !449, file: !450, line: 1325, baseType: !38, size: 32, offset: 20096)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !449, file: !450, line: 1326, baseType: !38, size: 32, offset: 20128)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !449, file: !450, line: 1327, baseType: !38, size: 32, offset: 20160)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !449, file: !450, line: 1328, baseType: !38, size: 32, offset: 20192)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !449, file: !450, line: 1329, baseType: !332, size: 128, align: 64, offset: 20224)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !449, file: !450, line: 1332, baseType: !5674, size: 128, offset: 20352)
!5674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5675, line: 51, size: 128, elements: !5676)
!5675 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5676 = !{!5677, !5682, !5683}
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5674, file: !5675, line: 60, baseType: !5678, size: 64)
!5678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5679, line: 7, size: 64, elements: !5680)
!5679 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5680 = !{!5681}
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5678, file: !5679, line: 12, baseType: !701, size: 64)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5674, file: !5675, line: 63, baseType: !969, size: 8, offset: 64)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5674, file: !5675, line: 70, baseType: !969, size: 8, offset: 72)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !449, file: !450, line: 1335, baseType: !5084, size: 64, offset: 20480)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !449, file: !450, line: 1337, baseType: !5686, size: 128, offset: 20544)
!5686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5675, line: 39, size: 128, elements: !5687)
!5687 = !{!5688, !5689, !5690}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5686, file: !5675, line: 40, baseType: !1868, size: 64)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5686, file: !5675, line: 42, baseType: !460, size: 32, offset: 64)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5686, file: !5675, line: 43, baseType: !460, size: 32, offset: 96)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !449, file: !450, line: 1340, baseType: !5692, size: 64, offset: 20672)
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !450, line: 69, flags: DIFlagFwdDecl)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !449, file: !450, line: 1351, baseType: !38, size: 32, offset: 20736)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !449, file: !450, line: 1352, baseType: !38, size: 32, offset: 20768)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !449, file: !450, line: 1354, baseType: !55, size: 64, offset: 20800)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !449, file: !450, line: 1364, baseType: !507, size: 64, offset: 20864)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !449, file: !450, line: 1365, baseType: !507, size: 64, offset: 20928)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !449, file: !450, line: 1412, baseType: !55, size: 64, offset: 20992)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !449, file: !450, line: 1453, baseType: !5701, size: 64, offset: 21056)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !450, line: 1453, flags: DIFlagFwdDecl)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !449, file: !450, line: 1457, baseType: !5704, size: 64, offset: 21120)
!5704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5705, size: 64)
!5705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !154, line: 61, size: 576, elements: !5706)
!5706 = !{!5707, !5708, !5727, !5730, !5731, !5764, !5774}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5705, file: !154, line: 62, baseType: !153, size: 32)
!5708 = !DIDerivedType(tag: DW_TAG_member, scope: !5705, file: !154, line: 64, baseType: !5709, size: 192, offset: 64)
!5709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5705, file: !154, line: 64, size: 192, elements: !5710)
!5710 = !{!5711, !5722}
!5711 = !DIDerivedType(tag: DW_TAG_member, scope: !5709, file: !154, line: 65, baseType: !5712, size: 192)
!5712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5709, file: !154, line: 65, size: 192, elements: !5713)
!5713 = !{!5714, !5721}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5712, file: !154, line: 66, baseType: !5715, size: 128)
!5715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5716, line: 50, size: 128, elements: !5717)
!5716 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5717 = !{!5718, !5719, !5720}
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5715, file: !5716, line: 52, baseType: !55, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5715, file: !5716, line: 54, baseType: !7, size: 32, offset: 64)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5715, file: !5716, line: 55, baseType: !7, size: 32, offset: 96)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5712, file: !154, line: 67, baseType: !55, size: 64, offset: 128)
!5722 = !DIDerivedType(tag: DW_TAG_member, scope: !5709, file: !154, line: 70, baseType: !5723, size: 192)
!5723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5709, file: !154, line: 70, size: 192, elements: !5724)
!5724 = !{!5725, !5726}
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5723, file: !154, line: 71, baseType: !332, size: 128, align: 64)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5723, file: !154, line: 72, baseType: !55, size: 64, offset: 128)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5705, file: !154, line: 76, baseType: !5728, size: 64, offset: 256)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !154, line: 76, flags: DIFlagFwdDecl)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5705, file: !154, line: 77, baseType: !55, size: 64, offset: 320)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5705, file: !154, line: 79, baseType: !5732, size: 64, offset: 384)
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5733, size: 64)
!5733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5716, line: 25, size: 256, elements: !5734)
!5734 = !{!5735, !5741, !5745}
!5735 = !DIDerivedType(tag: DW_TAG_member, scope: !5733, file: !5716, line: 26, baseType: !5736, size: 128)
!5736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5733, file: !5716, line: 26, size: 128, elements: !5737)
!5737 = !{!5738, !5740}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5736, file: !5716, line: 27, baseType: !5739, size: 128)
!5739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !1417)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5736, file: !5716, line: 28, baseType: !5739, size: 128)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5733, file: !5716, line: 31, baseType: !5742, size: 64, offset: 128)
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5743, size: 64)
!5743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5744)
!5744 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5716, line: 23, flags: DIFlagFwdDecl)
!5745 = !DIDerivedType(tag: DW_TAG_member, scope: !5733, file: !5716, line: 33, baseType: !5746, size: 64, offset: 192)
!5746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5733, file: !5716, line: 33, size: 64, elements: !5747)
!5747 = !{!5748, !5754, !5759}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5746, file: !5716, line: 38, baseType: !5749, size: 64)
!5749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5746, file: !5716, line: 34, size: 64, elements: !5750)
!5750 = !{!5751, !5752, !5753}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5749, file: !5716, line: 35, baseType: !854, size: 32)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5749, file: !5716, line: 36, baseType: !99, size: 8, offset: 32)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5749, file: !5716, line: 37, baseType: !99, size: 8, offset: 40)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5746, file: !5716, line: 42, baseType: !5755, size: 16)
!5755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5746, file: !5716, line: 39, size: 16, elements: !5756)
!5756 = !{!5757, !5758}
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5755, file: !5716, line: 40, baseType: !99, size: 8)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5755, file: !5716, line: 41, baseType: !99, size: 8, offset: 8)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5746, file: !5716, line: 46, baseType: !5760, size: 16)
!5760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5746, file: !5716, line: 43, size: 16, elements: !5761)
!5761 = !{!5762, !5763}
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5760, file: !5716, line: 44, baseType: !99, size: 8)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5760, file: !5716, line: 45, baseType: !99, size: 8, offset: 8)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5705, file: !154, line: 81, baseType: !5765, size: 64, offset: 448)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !154, line: 85, size: 384, elements: !5767)
!5767 = !{!5768, !5769, !5770, !5771, !5772, !5773}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5766, file: !154, line: 86, baseType: !5728, size: 64)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5766, file: !154, line: 87, baseType: !55, size: 64, offset: 64)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5766, file: !154, line: 88, baseType: !55, size: 64, offset: 128)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5766, file: !154, line: 89, baseType: !55, size: 64, offset: 192)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5766, file: !154, line: 90, baseType: !969, size: 8, offset: 256)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5766, file: !154, line: 92, baseType: !5765, size: 64, offset: 320)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5705, file: !154, line: 82, baseType: !7, size: 32, offset: 512)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !449, file: !450, line: 1463, baseType: !5776, offset: 21184)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !450, line: 739, elements: !774)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !449, file: !450, line: 1470, baseType: !332, size: 128, align: 64, offset: 21184)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !449, file: !450, line: 1471, baseType: !399, size: 32, offset: 21312)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !449, file: !450, line: 1472, baseType: !38, size: 32, offset: 21344)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !449, file: !450, line: 1474, baseType: !448, size: 64, offset: 21376)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !449, file: !450, line: 1475, baseType: !2781, size: 320, offset: 21440)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !449, file: !450, line: 1478, baseType: !5783, size: 64, offset: 21760)
!5783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5784, size: 64)
!5784 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !450, line: 1478, flags: DIFlagFwdDecl)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !449, file: !450, line: 1482, baseType: !399, size: 32, offset: 21824)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !449, file: !450, line: 1489, baseType: !36, size: 64, offset: 21888)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !449, file: !450, line: 1504, baseType: !36, size: 64, offset: 21952)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !449, file: !450, line: 1505, baseType: !508, size: 64, offset: 22016)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !449, file: !450, line: 1506, baseType: !507, size: 64, offset: 22080)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !449, file: !450, line: 1507, baseType: !508, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !449, file: !450, line: 1508, baseType: !508, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !449, file: !450, line: 1509, baseType: !508, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !449, file: !450, line: 1510, baseType: !332, size: 128, align: 64, offset: 22208)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !449, file: !450, line: 1511, baseType: !38, size: 32, offset: 22336)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !449, file: !450, line: 1515, baseType: !5796, size: 64, offset: 22400)
!5796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !327, line: 56, size: 64, elements: !5797)
!5797 = !{!5798}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5796, file: !327, line: 57, baseType: !330, size: 64)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !449, file: !450, line: 1518, baseType: !5796, size: 64, offset: 22464)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !449, file: !450, line: 1528, baseType: !332, size: 128, align: 64, offset: 22528)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !449, file: !450, line: 1552, baseType: !5802, size: 35328, offset: 23040)
!5802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5803, line: 430, size: 35328, elements: !5804)
!5803 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5804 = !{!5805, !5823, !5824, !5825, !5826, !5827, !5828, !5829, !5830, !5832, !5833, !5834, !5835, !5836, !5837, !5840, !5841, !5842, !5843}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5802, file: !5803, line: 432, baseType: !5806, size: 192)
!5806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5807, size: 192, elements: !391)
!5807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5808, line: 16, size: 64, elements: !5809)
!5808 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5809 = !{!5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5807, file: !5808, line: 17, baseType: !109, size: 16)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5807, file: !5808, line: 18, baseType: !109, size: 16, offset: 16)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5807, file: !5808, line: 19, baseType: !109, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5807, file: !5808, line: 19, baseType: !109, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5807, file: !5808, line: 19, baseType: !109, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5807, file: !5808, line: 19, baseType: !109, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5807, file: !5808, line: 19, baseType: !109, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5807, file: !5808, line: 20, baseType: !109, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5807, file: !5808, line: 20, baseType: !109, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5807, file: !5808, line: 20, baseType: !109, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5807, file: !5808, line: 20, baseType: !109, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5807, file: !5808, line: 20, baseType: !109, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5807, file: !5808, line: 20, baseType: !109, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5802, file: !5803, line: 436, baseType: !55, size: 64, offset: 192)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5802, file: !5803, line: 440, baseType: !42, size: 16, offset: 256)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5802, file: !5803, line: 441, baseType: !42, size: 16, offset: 272)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5802, file: !5803, line: 442, baseType: !42, size: 16, offset: 288)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5802, file: !5803, line: 443, baseType: !42, size: 16, offset: 304)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5802, file: !5803, line: 447, baseType: !55, size: 64, offset: 320)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5802, file: !5803, line: 448, baseType: !55, size: 64, offset: 384)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5802, file: !5803, line: 459, baseType: !5831, size: 256, offset: 448)
!5831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3067, size: 256, elements: !417)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5802, file: !5803, line: 461, baseType: !55, size: 64, offset: 704)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5802, file: !5803, line: 463, baseType: !55, size: 64, offset: 768)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5802, file: !5803, line: 465, baseType: !55, size: 64, offset: 832)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5802, file: !5803, line: 466, baseType: !55, size: 64, offset: 896)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5802, file: !5803, line: 467, baseType: !55, size: 64, offset: 960)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5802, file: !5803, line: 473, baseType: !5838, size: 64, offset: 1024)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5803, line: 10, flags: DIFlagFwdDecl)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5802, file: !5803, line: 480, baseType: !55, size: 64, offset: 1088)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5802, file: !5803, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5802, file: !5803, line: 491, baseType: !459, size: 32, offset: 1184)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5802, file: !5803, line: 501, baseType: !5844, size: 33792, offset: 1536)
!5844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5845, line: 448, size: 33792, elements: !5846)
!5845 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5846 = !{!5847, !5848, !5849, !5957, !5958, !5964, !5965}
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5844, file: !5845, line: 461, baseType: !7, size: 32)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5844, file: !5845, line: 468, baseType: !55, size: 64, offset: 64)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5844, file: !5845, line: 476, baseType: !5850, size: 64, offset: 128)
!5850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5851, size: 64)
!5851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5845, line: 356, size: 33280, align: 512, elements: !5852)
!5852 = !{!5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862}
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5851, file: !5845, line: 358, baseType: !7, size: 32)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5851, file: !5845, line: 361, baseType: !7, size: 32, offset: 32)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5851, file: !5845, line: 364, baseType: !507, size: 64, offset: 64)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5851, file: !5845, line: 367, baseType: !507, size: 64, offset: 128)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5851, file: !5845, line: 370, baseType: !507, size: 64, offset: 192)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5851, file: !5845, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5851, file: !5845, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5851, file: !5845, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5851, file: !5845, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5851, file: !5845, line: 397, baseType: !5863, size: 32768, offset: 512)
!5863 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5845, line: 348, size: 32768, elements: !5864)
!5864 = !{!5865, !5880, !5917, !5942, !5955}
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5863, file: !5845, line: 349, baseType: !5866, size: 896)
!5866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5845, line: 12, size: 896, elements: !5867)
!5867 = !{!5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5879}
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5866, file: !5845, line: 13, baseType: !459, size: 32)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5866, file: !5845, line: 14, baseType: !459, size: 32, offset: 32)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5866, file: !5845, line: 15, baseType: !459, size: 32, offset: 64)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5866, file: !5845, line: 16, baseType: !459, size: 32, offset: 96)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5866, file: !5845, line: 17, baseType: !459, size: 32, offset: 128)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5866, file: !5845, line: 18, baseType: !459, size: 32, offset: 160)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5866, file: !5845, line: 19, baseType: !459, size: 32, offset: 192)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5866, file: !5845, line: 22, baseType: !5876, size: 640, offset: 224)
!5876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 640, elements: !5877)
!5877 = !{!5878}
!5878 = !DISubrange(count: 20)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5866, file: !5845, line: 25, baseType: !459, size: 32, offset: 864)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5863, file: !5845, line: 350, baseType: !5881, size: 4096, align: 128)
!5881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5845, line: 34, size: 4096, align: 128, elements: !5882)
!5882 = !{!5883, !5884, !5885, !5886, !5887, !5902, !5903, !5904, !5906, !5908, !5912}
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5881, file: !5845, line: 35, baseType: !109, size: 16)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5881, file: !5845, line: 36, baseType: !109, size: 16, offset: 16)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5881, file: !5845, line: 37, baseType: !109, size: 16, offset: 32)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5881, file: !5845, line: 38, baseType: !109, size: 16, offset: 48)
!5887 = !DIDerivedType(tag: DW_TAG_member, scope: !5881, file: !5845, line: 39, baseType: !5888, size: 128, offset: 64)
!5888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5881, file: !5845, line: 39, size: 128, elements: !5889)
!5889 = !{!5890, !5895}
!5890 = !DIDerivedType(tag: DW_TAG_member, scope: !5888, file: !5845, line: 40, baseType: !5891, size: 128)
!5891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5888, file: !5845, line: 40, size: 128, elements: !5892)
!5892 = !{!5893, !5894}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5891, file: !5845, line: 41, baseType: !507, size: 64)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5891, file: !5845, line: 42, baseType: !507, size: 64, offset: 64)
!5895 = !DIDerivedType(tag: DW_TAG_member, scope: !5888, file: !5845, line: 44, baseType: !5896, size: 128)
!5896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5888, file: !5845, line: 44, size: 128, elements: !5897)
!5897 = !{!5898, !5899, !5900, !5901}
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5896, file: !5845, line: 45, baseType: !459, size: 32)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5896, file: !5845, line: 46, baseType: !459, size: 32, offset: 32)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5896, file: !5845, line: 47, baseType: !459, size: 32, offset: 64)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5896, file: !5845, line: 48, baseType: !459, size: 32, offset: 96)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5881, file: !5845, line: 51, baseType: !459, size: 32, offset: 192)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5881, file: !5845, line: 52, baseType: !459, size: 32, offset: 224)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5881, file: !5845, line: 55, baseType: !5905, size: 1024, offset: 256)
!5905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 1024, elements: !4762)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5881, file: !5845, line: 58, baseType: !5907, size: 2048, offset: 1280)
!5907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 2048, elements: !1784)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5881, file: !5845, line: 60, baseType: !5909, size: 384, offset: 3328)
!5909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 384, elements: !5910)
!5910 = !{!5911}
!5911 = !DISubrange(count: 12)
!5912 = !DIDerivedType(tag: DW_TAG_member, scope: !5881, file: !5845, line: 62, baseType: !5913, size: 384, offset: 3712)
!5913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5881, file: !5845, line: 62, size: 384, elements: !5914)
!5914 = !{!5915, !5916}
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5913, file: !5845, line: 63, baseType: !5909, size: 384)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5913, file: !5845, line: 64, baseType: !5909, size: 384)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5863, file: !5845, line: 351, baseType: !5918, size: 1088)
!5918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5845, line: 79, size: 1088, elements: !5919)
!5919 = !{!5920, !5921, !5922, !5923, !5924, !5925, !5926, !5927, !5928, !5929, !5930, !5931, !5932, !5933, !5934, !5941}
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5918, file: !5845, line: 80, baseType: !459, size: 32)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5918, file: !5845, line: 81, baseType: !459, size: 32, offset: 32)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5918, file: !5845, line: 82, baseType: !459, size: 32, offset: 64)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5918, file: !5845, line: 83, baseType: !459, size: 32, offset: 96)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5918, file: !5845, line: 84, baseType: !459, size: 32, offset: 128)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5918, file: !5845, line: 85, baseType: !459, size: 32, offset: 160)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5918, file: !5845, line: 86, baseType: !459, size: 32, offset: 192)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5918, file: !5845, line: 88, baseType: !5876, size: 640, offset: 224)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5918, file: !5845, line: 89, baseType: !99, size: 8, offset: 864)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5918, file: !5845, line: 90, baseType: !99, size: 8, offset: 872)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5918, file: !5845, line: 91, baseType: !99, size: 8, offset: 880)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5918, file: !5845, line: 92, baseType: !99, size: 8, offset: 888)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5918, file: !5845, line: 93, baseType: !99, size: 8, offset: 896)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5918, file: !5845, line: 94, baseType: !99, size: 8, offset: 904)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5918, file: !5845, line: 95, baseType: !5935, size: 64, offset: 960)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5936, size: 64)
!5936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5937, line: 11, size: 128, elements: !5938)
!5937 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5938 = !{!5939, !5940}
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5936, file: !5937, line: 12, baseType: !313, size: 64)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5936, file: !5937, line: 13, baseType: !3982, size: 64, offset: 64)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5918, file: !5845, line: 96, baseType: !459, size: 32, offset: 1024)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5863, file: !5845, line: 352, baseType: !5943, size: 4608, align: 512)
!5943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5845, line: 333, size: 4608, align: 512, elements: !5944)
!5944 = !{!5945, !5946, !5953}
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5943, file: !5845, line: 334, baseType: !5881, size: 4096, align: 128)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5943, file: !5845, line: 335, baseType: !5947, size: 512, offset: 4096)
!5947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5845, line: 312, size: 512, elements: !5948)
!5948 = !{!5949, !5950, !5951}
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5947, file: !5845, line: 313, baseType: !507, size: 64)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5947, file: !5845, line: 314, baseType: !507, size: 64, offset: 64)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5947, file: !5845, line: 315, baseType: !5952, size: 384, offset: 128)
!5952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 384, elements: !1024)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5943, file: !5845, line: 336, baseType: !5954, offset: 4608)
!5954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !1201)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5863, file: !5845, line: 353, baseType: !5956, size: 32768)
!5956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 32768, elements: !3011)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5844, file: !5845, line: 484, baseType: !5850, size: 64, offset: 192)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5844, file: !5845, line: 491, baseType: !5959, size: 128, offset: 256)
!5959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5845, line: 404, size: 128, elements: !5960)
!5960 = !{!5961, !5962, !5963}
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5959, file: !5845, line: 424, baseType: !507, size: 64)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5959, file: !5845, line: 432, baseType: !7, size: 32, offset: 64)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5959, file: !5845, line: 440, baseType: !7, size: 32, offset: 96)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5844, file: !5845, line: 498, baseType: !5959, size: 128, offset: 384)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5844, file: !5845, line: 508, baseType: !5851, size: 33280, align: 512, offset: 512)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !429, file: !430, line: 31, baseType: !3559, size: 64, offset: 448)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !429, file: !430, line: 32, baseType: !7, size: 32, offset: 512)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !429, file: !430, line: 33, baseType: !428, size: 64, offset: 576)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !429, file: !430, line: 35, baseType: !5970, size: 64, offset: 640)
!5970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5971, size: 64)
!5971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !5972, line: 4, size: 576, elements: !5973)
!5972 = !DIFile(filename: "./include/linux/fs_pin.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d07c4a418236e4e1036969d5e8bd56f6")
!5973 = !{!5974, !5975, !5976, !5977, !5978}
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5971, file: !5972, line: 5, baseType: !70, size: 192)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5971, file: !5972, line: 6, baseType: !38, size: 32, offset: 192)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !5971, file: !5972, line: 7, baseType: !412, size: 128, offset: 256)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !5971, file: !5972, line: 8, baseType: !412, size: 128, offset: 384)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !5971, file: !5972, line: 9, baseType: !5979, size: 64, offset: 512)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5980, size: 64)
!5980 = !DISubroutineType(types: !5981)
!5981 = !{null, !5970}
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !429, file: !430, line: 37, baseType: !911, size: 64, offset: 704)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !429, file: !430, line: 38, baseType: !1168, size: 64, offset: 768)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !429, file: !430, line: 39, baseType: !38, size: 32, offset: 832)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !429, file: !430, line: 40, baseType: !957, size: 192, offset: 896)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !429, file: !430, line: 42, baseType: !38, size: 32, offset: 1088)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !369, file: !268, line: 951, baseType: !245, size: 32, offset: 128)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !369, file: !268, line: 952, baseType: !942, size: 32, offset: 160)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !369, file: !268, line: 952, baseType: !942, size: 32, offset: 192)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !369, file: !268, line: 953, baseType: !38, size: 32, offset: 224)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !320, file: !268, line: 1012, baseType: !1343, size: 64, offset: 896)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !320, file: !268, line: 1013, baseType: !5993, size: 256, offset: 960)
!5993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !268, line: 970, size: 256, elements: !5994)
!5994 = !{!5995, !5996, !5997, !5998, !5999, !6000}
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5993, file: !268, line: 971, baseType: !55, size: 64)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5993, file: !268, line: 972, baseType: !7, size: 32, offset: 64)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !5993, file: !268, line: 973, baseType: !7, size: 32, offset: 96)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !5993, file: !268, line: 974, baseType: !7, size: 32, offset: 128)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !5993, file: !268, line: 975, baseType: !7, size: 32, offset: 160)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !5993, file: !268, line: 976, baseType: !57, size: 64, offset: 192)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !320, file: !268, line: 1014, baseType: !1626, size: 128, offset: 1216)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !320, file: !268, line: 1015, baseType: !1503, size: 64, offset: 1344)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !320, file: !268, line: 1016, baseType: !4998, size: 64, offset: 1408)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !320, file: !268, line: 1018, baseType: !507, size: 64, offset: 1472)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !320, file: !268, line: 1020, baseType: !36, size: 64, offset: 1536)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !320, file: !268, line: 1023, baseType: !36, size: 64, offset: 1600)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !320, file: !268, line: 1027, baseType: !3059, size: 64, offset: 1664)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !320, file: !268, line: 1029, baseType: !1848, size: 64, offset: 1728)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !320, file: !268, line: 1030, baseType: !2333, size: 32, offset: 1792)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !320, file: !268, line: 1031, baseType: !2333, size: 32, offset: 1824)
!6011 = !{!0, !6012, !6018, !6023}
!6012 = !DIGlobalVariableExpression(var: !6013, expr: !DIExpression())
!6013 = distinct !DIGlobalVariable(scope: null, file: !6014, line: 249, type: !6015, isLocal: true, isDefinition: true)
!6014 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 224, elements: !6016)
!6016 = !{!6017}
!6017 = !DISubrange(count: 28)
!6018 = !DIGlobalVariableExpression(var: !6019, expr: !DIExpression())
!6019 = distinct !DIGlobalVariable(scope: null, file: !291, line: 480, type: !6020, isLocal: true, isDefinition: true)
!6020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 168, elements: !6021)
!6021 = !{!6022}
!6022 = !DISubrange(count: 21)
!6023 = !DIGlobalVariableExpression(var: !6024, expr: !DIExpression())
!6024 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !6025, isLocal: true, isDefinition: true)
!6025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 96, elements: !5910)
!6026 = !{i32 7, !"Dwarf Version", i32 5}
!6027 = !{i32 2, !"Debug Info Version", i32 3}
!6028 = !{i32 1, !"wchar_size", i32 2}
!6029 = !{i32 8, !"cf-protection-branch", i32 1}
!6030 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6031 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6032 = !{i32 1, !"Code Model", i32 2}
!6033 = !{i32 1, !"override-stack-alignment", i32 8}
!6034 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6035 = distinct !DISubprogram(name: "fscontext_read", scope: !3, file: !3, line: 24, type: !5009, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6036)
!6036 = !{!6037, !6038, !6039, !6040, !6041, !6042, !6043, !6044, !6045, !6046, !6047, !6048, !6049}
!6037 = !DILocalVariable(name: "file", arg: 1, scope: !6035, file: !3, line: 24, type: !319)
!6038 = !DILocalVariable(name: "_buf", arg: 2, scope: !6035, file: !3, line: 25, type: !1046)
!6039 = !DILocalVariable(name: "len", arg: 3, scope: !6035, file: !3, line: 25, type: !51)
!6040 = !DILocalVariable(name: "pos", arg: 4, scope: !6035, file: !3, line: 25, type: !56)
!6041 = !DILocalVariable(name: "fc", scope: !6035, file: !3, line: 27, type: !1654)
!6042 = !DILocalVariable(name: "log", scope: !6035, file: !3, line: 28, type: !1720)
!6043 = !DILocalVariable(name: "logsize", scope: !6035, file: !3, line: 29, type: !7)
!6044 = !DILocalVariable(name: "ret", scope: !6035, file: !3, line: 30, type: !1811)
!6045 = !DILocalVariable(name: "p", scope: !6035, file: !3, line: 31, type: !1046)
!6046 = !DILocalVariable(name: "need_free", scope: !6035, file: !3, line: 32, type: !969)
!6047 = !DILocalVariable(name: "index", scope: !6035, file: !3, line: 33, type: !38)
!6048 = !DILocalVariable(name: "n", scope: !6035, file: !3, line: 33, type: !38)
!6049 = !DILabel(scope: !6035, name: "err_free", file: !3, line: 61)
!6050 = !DILocation(line: 24, column: 44, scope: !6035)
!6051 = !DILocation(line: 25, column: 23, scope: !6035)
!6052 = !DILocation(line: 25, column: 36, scope: !6035)
!6053 = !DILocation(line: 25, column: 49, scope: !6035)
!6054 = !DILocation(line: 27, column: 2, scope: !6035)
!6055 = !DILocation(line: 27, column: 21, scope: !6035)
!6056 = !DILocation(line: 27, column: 26, scope: !6035)
!6057 = !DILocation(line: 27, column: 32, scope: !6035)
!6058 = !DILocation(line: 28, column: 2, scope: !6035)
!6059 = !DILocation(line: 28, column: 17, scope: !6035)
!6060 = !DILocation(line: 28, column: 23, scope: !6035)
!6061 = !DILocation(line: 28, column: 27, scope: !6035)
!6062 = !DILocation(line: 28, column: 31, scope: !6035)
!6063 = !DILocation(line: 29, column: 2, scope: !6035)
!6064 = !DILocation(line: 29, column: 15, scope: !6035)
!6065 = !DILocation(line: 30, column: 2, scope: !6035)
!6066 = !DILocation(line: 30, column: 10, scope: !6035)
!6067 = !DILocation(line: 31, column: 2, scope: !6035)
!6068 = !DILocation(line: 31, column: 8, scope: !6035)
!6069 = !DILocation(line: 32, column: 2, scope: !6035)
!6070 = !DILocation(line: 32, column: 7, scope: !6035)
!6071 = !DILocation(line: 33, column: 2, scope: !6035)
!6072 = !DILocation(line: 33, column: 6, scope: !6035)
!6073 = !DILocation(line: 33, column: 13, scope: !6035)
!6074 = !DILocation(line: 35, column: 34, scope: !6035)
!6075 = !DILocation(line: 35, column: 38, scope: !6035)
!6076 = !DILocation(line: 35, column: 8, scope: !6035)
!6077 = !DILocation(line: 35, column: 6, scope: !6035)
!6078 = !DILocation(line: 36, column: 6, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 36, column: 6)
!6080 = !DILocation(line: 36, column: 10, scope: !6079)
!6081 = !DILocation(line: 36, column: 6, scope: !6035)
!6082 = !DILocation(line: 37, column: 10, scope: !6079)
!6083 = !DILocation(line: 37, column: 3, scope: !6079)
!6084 = !DILocation(line: 39, column: 6, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 39, column: 6)
!6086 = !DILocation(line: 39, column: 11, scope: !6085)
!6087 = !DILocation(line: 39, column: 19, scope: !6085)
!6088 = !DILocation(line: 39, column: 24, scope: !6085)
!6089 = !DILocation(line: 39, column: 16, scope: !6085)
!6090 = !DILocation(line: 39, column: 6, scope: !6035)
!6091 = !DILocation(line: 40, column: 17, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 39, column: 30)
!6093 = !DILocation(line: 40, column: 21, scope: !6092)
!6094 = !DILocation(line: 40, column: 3, scope: !6092)
!6095 = !DILocation(line: 41, column: 3, scope: !6092)
!6096 = !DILocation(line: 44, column: 10, scope: !6035)
!6097 = !DILocation(line: 44, column: 15, scope: !6035)
!6098 = !DILocation(line: 44, column: 23, scope: !6035)
!6099 = !DILocation(line: 44, column: 31, scope: !6035)
!6100 = !DILocation(line: 44, column: 20, scope: !6035)
!6101 = !DILocation(line: 44, column: 8, scope: !6035)
!6102 = !DILocation(line: 45, column: 6, scope: !6035)
!6103 = !DILocation(line: 45, column: 11, scope: !6035)
!6104 = !DILocation(line: 45, column: 18, scope: !6035)
!6105 = !DILocation(line: 45, column: 4, scope: !6035)
!6106 = !DILocation(line: 46, column: 14, scope: !6035)
!6107 = !DILocation(line: 46, column: 19, scope: !6035)
!6108 = !DILocation(line: 46, column: 37, scope: !6035)
!6109 = !DILocation(line: 46, column: 34, scope: !6035)
!6110 = !DILocation(line: 46, column: 29, scope: !6035)
!6111 = !DILocation(line: 46, column: 12, scope: !6035)
!6112 = !DILocation(line: 47, column: 2, scope: !6035)
!6113 = !DILocation(line: 47, column: 7, scope: !6035)
!6114 = !DILocation(line: 47, column: 14, scope: !6035)
!6115 = !DILocation(line: 47, column: 21, scope: !6035)
!6116 = !DILocation(line: 48, column: 27, scope: !6035)
!6117 = !DILocation(line: 48, column: 24, scope: !6035)
!6118 = !DILocation(line: 48, column: 20, scope: !6035)
!6119 = !DILocation(line: 48, column: 2, scope: !6035)
!6120 = !DILocation(line: 48, column: 7, scope: !6035)
!6121 = !DILocation(line: 48, column: 17, scope: !6035)
!6122 = !DILocation(line: 49, column: 2, scope: !6035)
!6123 = !DILocation(line: 49, column: 7, scope: !6035)
!6124 = !DILocation(line: 49, column: 11, scope: !6035)
!6125 = !DILocation(line: 50, column: 16, scope: !6035)
!6126 = !DILocation(line: 50, column: 20, scope: !6035)
!6127 = !DILocation(line: 50, column: 2, scope: !6035)
!6128 = !DILocation(line: 52, column: 6, scope: !6035)
!6129 = !DILocation(line: 53, column: 13, scope: !6035)
!6130 = !DILocation(line: 53, column: 6, scope: !6035)
!6131 = !DILocation(line: 53, column: 4, scope: !6035)
!6132 = !DILocation(line: 54, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 54, column: 6)
!6134 = !DILocation(line: 54, column: 10, scope: !6133)
!6135 = !DILocation(line: 54, column: 8, scope: !6133)
!6136 = !DILocation(line: 54, column: 6, scope: !6035)
!6137 = !DILocation(line: 55, column: 3, scope: !6133)
!6138 = !DILocation(line: 56, column: 6, scope: !6035)
!6139 = !DILocation(line: 57, column: 19, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 57, column: 6)
!6141 = !DILocation(line: 57, column: 25, scope: !6140)
!6142 = !DILocation(line: 57, column: 28, scope: !6140)
!6143 = !DILocation(line: 57, column: 6, scope: !6140)
!6144 = !DILocation(line: 57, column: 31, scope: !6140)
!6145 = !DILocation(line: 57, column: 6, scope: !6035)
!6146 = !DILocation(line: 58, column: 3, scope: !6140)
!6147 = !DILocation(line: 59, column: 8, scope: !6035)
!6148 = !DILocation(line: 59, column: 6, scope: !6035)
!6149 = !DILocation(line: 59, column: 2, scope: !6035)
!6150 = !DILocation(line: 61, column: 1, scope: !6035)
!6151 = !DILocation(line: 62, column: 6, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 62, column: 6)
!6153 = !{i8 0, i8 2}
!6154 = !DILocation(line: 62, column: 6, scope: !6035)
!6155 = !DILocation(line: 63, column: 9, scope: !6152)
!6156 = !DILocation(line: 63, column: 3, scope: !6152)
!6157 = !DILocation(line: 64, column: 9, scope: !6035)
!6158 = !DILocation(line: 64, column: 2, scope: !6035)
!6159 = !DILocation(line: 65, column: 1, scope: !6035)
!6160 = distinct !DISubprogram(name: "fscontext_release", scope: !3, file: !3, line: 67, type: !5052, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6161)
!6161 = !{!6162, !6163, !6164}
!6162 = !DILocalVariable(name: "inode", arg: 1, scope: !6160, file: !3, line: 67, type: !1503)
!6163 = !DILocalVariable(name: "file", arg: 2, scope: !6160, file: !3, line: 67, type: !319)
!6164 = !DILocalVariable(name: "fc", scope: !6160, file: !3, line: 69, type: !1654)
!6165 = !DILocation(line: 67, column: 44, scope: !6160)
!6166 = !DILocation(line: 67, column: 64, scope: !6160)
!6167 = !DILocation(line: 69, column: 2, scope: !6160)
!6168 = !DILocation(line: 69, column: 21, scope: !6160)
!6169 = !DILocation(line: 69, column: 26, scope: !6160)
!6170 = !DILocation(line: 69, column: 32, scope: !6160)
!6171 = !DILocation(line: 71, column: 6, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 71, column: 6)
!6173 = !DILocation(line: 71, column: 6, scope: !6160)
!6174 = !DILocation(line: 72, column: 3, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 71, column: 10)
!6176 = !DILocation(line: 72, column: 9, scope: !6175)
!6177 = !DILocation(line: 72, column: 22, scope: !6175)
!6178 = !DILocation(line: 73, column: 18, scope: !6175)
!6179 = !DILocation(line: 73, column: 3, scope: !6175)
!6180 = !DILocation(line: 74, column: 2, scope: !6175)
!6181 = !DILocation(line: 76, column: 1, scope: !6160)
!6182 = !DILocation(line: 75, column: 2, scope: !6160)
!6183 = distinct !DISubprogram(name: "__x64_sys_fsopen", scope: !3, file: !3, line: 115, type: !6184, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6188)
!6184 = !DISubroutineType(types: !6185)
!6185 = !{!313, !6186}
!6186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6187, size: 64)
!6187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3983)
!6188 = !{!6189}
!6189 = !DILocalVariable(name: "regs", arg: 1, scope: !6183, file: !3, line: 115, type: !6186)
!6190 = !DILocation(line: 115, column: 1, scope: !6183)
!6191 = distinct !DISubprogram(name: "__se_sys_fsopen", scope: !3, file: !3, line: 115, type: !6192, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6194)
!6192 = !DISubroutineType(types: !6193)
!6193 = !{!313, !313, !313}
!6194 = !{!6195, !6196, !6197}
!6195 = !DILocalVariable(name: "_fs_name", arg: 1, scope: !6191, file: !3, line: 115, type: !313)
!6196 = !DILocalVariable(name: "flags", arg: 2, scope: !6191, file: !3, line: 115, type: !313)
!6197 = !DILocalVariable(name: "ret", scope: !6191, file: !3, line: 115, type: !313)
!6198 = !DILocation(line: 115, column: 1, scope: !6191)
!6199 = !DILocation(line: 115, column: 1, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6191, file: !3, line: 115, column: 1)
!6201 = distinct !DISubprogram(name: "__ia32_sys_fsopen", scope: !3, file: !3, line: 115, type: !6184, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6202 = !{!6203}
!6203 = !DILocalVariable(name: "regs", arg: 1, scope: !6201, file: !3, line: 115, type: !6186)
!6204 = !DILocation(line: 115, column: 1, scope: !6201)
!6205 = distinct !DISubprogram(name: "__x64_sys_fspick", scope: !3, file: !3, line: 158, type: !6184, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6206)
!6206 = !{!6207}
!6207 = !DILocalVariable(name: "regs", arg: 1, scope: !6205, file: !3, line: 158, type: !6186)
!6208 = !DILocation(line: 158, column: 1, scope: !6205)
!6209 = distinct !DISubprogram(name: "__se_sys_fspick", scope: !3, file: !3, line: 158, type: !6210, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6212)
!6210 = !DISubroutineType(types: !6211)
!6211 = !{!313, !313, !313, !313}
!6212 = !{!6213, !6214, !6215, !6216}
!6213 = !DILocalVariable(name: "dfd", arg: 1, scope: !6209, file: !3, line: 158, type: !313)
!6214 = !DILocalVariable(name: "path", arg: 2, scope: !6209, file: !3, line: 158, type: !313)
!6215 = !DILocalVariable(name: "flags", arg: 3, scope: !6209, file: !3, line: 158, type: !313)
!6216 = !DILocalVariable(name: "ret", scope: !6209, file: !3, line: 158, type: !313)
!6217 = !DILocation(line: 158, column: 1, scope: !6209)
!6218 = !DILocation(line: 158, column: 1, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 158, column: 1)
!6220 = distinct !DISubprogram(name: "__ia32_sys_fspick", scope: !3, file: !3, line: 158, type: !6184, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6221)
!6221 = !{!6222}
!6222 = !DILocalVariable(name: "regs", arg: 1, scope: !6220, file: !3, line: 158, type: !6186)
!6223 = !DILocation(line: 158, column: 1, scope: !6220)
!6224 = distinct !DISubprogram(name: "__x64_sys_fsconfig", scope: !3, file: !3, line: 349, type: !6184, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6225)
!6225 = !{!6226}
!6226 = !DILocalVariable(name: "regs", arg: 1, scope: !6224, file: !3, line: 349, type: !6186)
!6227 = !DILocation(line: 349, column: 1, scope: !6224)
!6228 = distinct !DISubprogram(name: "__se_sys_fsconfig", scope: !3, file: !3, line: 349, type: !6229, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6231)
!6229 = !DISubroutineType(types: !6230)
!6230 = !{!313, !313, !313, !313, !313, !313}
!6231 = !{!6232, !6233, !6234, !6235, !6236, !6237}
!6232 = !DILocalVariable(name: "fd", arg: 1, scope: !6228, file: !3, line: 349, type: !313)
!6233 = !DILocalVariable(name: "cmd", arg: 2, scope: !6228, file: !3, line: 349, type: !313)
!6234 = !DILocalVariable(name: "_key", arg: 3, scope: !6228, file: !3, line: 349, type: !313)
!6235 = !DILocalVariable(name: "_value", arg: 4, scope: !6228, file: !3, line: 349, type: !313)
!6236 = !DILocalVariable(name: "aux", arg: 5, scope: !6228, file: !3, line: 349, type: !313)
!6237 = !DILocalVariable(name: "ret", scope: !6228, file: !3, line: 349, type: !313)
!6238 = !DILocation(line: 349, column: 1, scope: !6228)
!6239 = !DILocation(line: 349, column: 1, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 349, column: 1)
!6241 = distinct !DISubprogram(name: "__ia32_sys_fsconfig", scope: !3, file: !3, line: 349, type: !6184, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6242)
!6242 = !{!6243}
!6243 = !DILocalVariable(name: "regs", arg: 1, scope: !6241, file: !3, line: 349, type: !6186)
!6244 = !DILocation(line: 349, column: 1, scope: !6241)
!6245 = !DISubprogram(name: "mutex_lock_interruptible", scope: !355, file: !355, line: 228, type: !6246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6246 = !DISubroutineType(types: !6247)
!6247 = !{!38, !6248}
!6248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!6249 = !DISubprogram(name: "mutex_unlock", scope: !355, file: !355, line: 246, type: !6250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6250 = !DISubroutineType(types: !6251)
!6251 = !{null, !6248}
!6252 = !DISubprogram(name: "strlen", scope: !6253, file: !6253, line: 128, type: !6254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6253 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6254 = !DISubroutineType(types: !6255)
!6255 = !{!55, !32}
!6256 = distinct !DISubprogram(name: "copy_to_user", scope: !6257, file: !6257, line: 188, type: !6258, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6260)
!6257 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6258 = !DISubroutineType(types: !6259)
!6259 = !{!55, !36, !317, !55}
!6260 = !{!6261, !6262, !6263}
!6261 = !DILocalVariable(name: "to", arg: 1, scope: !6256, file: !6257, line: 188, type: !36)
!6262 = !DILocalVariable(name: "from", arg: 2, scope: !6256, file: !6257, line: 188, type: !317)
!6263 = !DILocalVariable(name: "n", arg: 3, scope: !6256, file: !6257, line: 188, type: !55)
!6264 = !DILocation(line: 188, column: 27, scope: !6256)
!6265 = !DILocation(line: 188, column: 43, scope: !6256)
!6266 = !DILocation(line: 188, column: 63, scope: !6256)
!6267 = !DILocation(line: 190, column: 22, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6256, file: !6257, line: 190, column: 6)
!6269 = !DILocation(line: 190, column: 28, scope: !6268)
!6270 = !DILocation(line: 190, column: 6, scope: !6268)
!6271 = !DILocation(line: 190, column: 6, scope: !6256)
!6272 = !DILocation(line: 191, column: 21, scope: !6268)
!6273 = !DILocation(line: 191, column: 25, scope: !6268)
!6274 = !DILocation(line: 191, column: 31, scope: !6268)
!6275 = !DILocation(line: 191, column: 7, scope: !6268)
!6276 = !DILocation(line: 191, column: 5, scope: !6268)
!6277 = !DILocation(line: 191, column: 3, scope: !6268)
!6278 = !DILocation(line: 192, column: 9, scope: !6256)
!6279 = !DILocation(line: 192, column: 2, scope: !6256)
!6280 = !DISubprogram(name: "kfree", scope: !291, file: !291, line: 227, type: !6281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6281 = !DISubroutineType(types: !6282)
!6282 = !{null, !317}
!6283 = distinct !DISubprogram(name: "check_copy_size", scope: !6014, file: !6014, line: 237, type: !6284, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6286)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{!969, !317, !51, !969}
!6286 = !{!6287, !6288, !6289, !6290, !6291, !6294}
!6287 = !DILocalVariable(name: "addr", arg: 1, scope: !6283, file: !6014, line: 237, type: !317)
!6288 = !DILocalVariable(name: "bytes", arg: 2, scope: !6283, file: !6014, line: 237, type: !51)
!6289 = !DILocalVariable(name: "is_source", arg: 3, scope: !6283, file: !6014, line: 237, type: !969)
!6290 = !DILocalVariable(name: "sz", scope: !6283, file: !6014, line: 239, type: !38)
!6291 = !DILocalVariable(name: "__ret_warn_on", scope: !6292, file: !6014, line: 249, type: !38)
!6292 = distinct !DILexicalBlock(scope: !6293, file: !6014, line: 249, column: 6)
!6293 = distinct !DILexicalBlock(scope: !6283, file: !6014, line: 249, column: 6)
!6294 = !DILocalVariable(name: "__flags", scope: !6295, file: !6014, line: 249, type: !38)
!6295 = distinct !DILexicalBlock(scope: !6296, file: !6014, line: 249, column: 6)
!6296 = distinct !DILexicalBlock(scope: !6292, file: !6014, line: 249, column: 6)
!6297 = !DILocation(line: 237, column: 29, scope: !6283)
!6298 = !DILocation(line: 237, column: 42, scope: !6283)
!6299 = !DILocation(line: 237, column: 54, scope: !6283)
!6300 = !DILocation(line: 239, column: 2, scope: !6283)
!6301 = !DILocation(line: 239, column: 6, scope: !6283)
!6302 = !DILocation(line: 239, column: 33, scope: !6283)
!6303 = !DILocation(line: 239, column: 11, scope: !6283)
!6304 = !DILocation(line: 240, column: 6, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6283, file: !6014, line: 240, column: 6)
!6306 = !DILocation(line: 0, scope: !6305)
!6307 = !DILocation(line: 240, column: 6, scope: !6283)
!6308 = !DILocation(line: 241, column: 29, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6310, file: !6014, line: 241, column: 7)
!6310 = distinct !DILexicalBlock(scope: !6305, file: !6014, line: 240, column: 39)
!6311 = !DILocation(line: 241, column: 8, scope: !6309)
!6312 = !DILocation(line: 241, column: 7, scope: !6310)
!6313 = !DILocation(line: 242, column: 18, scope: !6309)
!6314 = !DILocation(line: 242, column: 22, scope: !6309)
!6315 = !DILocation(line: 242, column: 4, scope: !6309)
!6316 = !DILocation(line: 243, column: 12, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6309, file: !6014, line: 243, column: 12)
!6318 = !DILocation(line: 243, column: 12, scope: !6309)
!6319 = !DILocation(line: 244, column: 4, scope: !6317)
!6320 = !{i32 1647192}
!6321 = !DILocation(line: 246, column: 4, scope: !6317)
!6322 = !{i32 1647221}
!6323 = !DILocation(line: 247, column: 3, scope: !6310)
!6324 = !DILocation(line: 249, column: 6, scope: !6292)
!6325 = !DILocation(line: 249, column: 6, scope: !6296)
!6326 = !DILocation(line: 249, column: 6, scope: !6295)
!6327 = !DILocation(line: 249, column: 6, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6295, file: !6014, line: 249, column: 6)
!6329 = !DILocation(line: 249, column: 6, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6295, file: !6014, line: 249, column: 6)
!6331 = !{i64 2149599613, i64 2149599642, i64 2149599688, i64 2149599746, i64 2149599800, i64 2149599854, i64 2149599909, i64 2149599940, i64 2149600248, i64 2149600254, i64 2149600301, i64 2149600324, i64 2149600350}
!6332 = !DILocation(line: 249, column: 6, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6295, file: !6014, line: 249, column: 6)
!6334 = !DILocation(line: 249, column: 6, scope: !6293)
!6335 = !DILocation(line: 249, column: 6, scope: !6283)
!6336 = !DILocation(line: 250, column: 3, scope: !6293)
!6337 = !DILocation(line: 251, column: 20, scope: !6283)
!6338 = !DILocation(line: 251, column: 26, scope: !6283)
!6339 = !DILocation(line: 251, column: 33, scope: !6283)
!6340 = !DILocation(line: 251, column: 2, scope: !6283)
!6341 = !DILocation(line: 252, column: 2, scope: !6283)
!6342 = !DILocation(line: 253, column: 1, scope: !6283)
!6343 = !DISubprogram(name: "_copy_to_user", scope: !6257, file: !6257, line: 176, type: !6258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6344 = distinct !DISubprogram(name: "copy_overflow", scope: !6014, file: !6014, line: 230, type: !6345, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6347)
!6345 = !DISubroutineType(types: !6346)
!6346 = !{null, !38, !55}
!6347 = !{!6348, !6349}
!6348 = !DILocalVariable(name: "size", arg: 1, scope: !6344, file: !6014, line: 230, type: !38)
!6349 = !DILocalVariable(name: "count", arg: 2, scope: !6344, file: !6014, line: 230, type: !55)
!6350 = !DILocation(line: 230, column: 38, scope: !6344)
!6351 = !DILocation(line: 230, column: 58, scope: !6344)
!6352 = !DILocation(line: 233, column: 19, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6344, file: !6014, line: 232, column: 6)
!6354 = !DILocation(line: 233, column: 25, scope: !6353)
!6355 = !DILocation(line: 233, column: 3, scope: !6353)
!6356 = !DILocation(line: 234, column: 1, scope: !6344)
!6357 = !DISubprogram(name: "__bad_copy_from", scope: !6014, file: !6014, line: 224, type: !2956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6358 = !DISubprogram(name: "__bad_copy_to", scope: !6014, file: !6014, line: 226, type: !2956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6359 = distinct !DISubprogram(name: "check_object_size", scope: !6014, file: !6014, line: 218, type: !6360, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6362)
!6360 = !DISubroutineType(types: !6361)
!6361 = !{null, !317, !55, !969}
!6362 = !{!6363, !6364, !6365}
!6363 = !DILocalVariable(name: "ptr", arg: 1, scope: !6359, file: !6014, line: 218, type: !317)
!6364 = !DILocalVariable(name: "n", arg: 2, scope: !6359, file: !6014, line: 218, type: !55)
!6365 = !DILocalVariable(name: "to_user", arg: 3, scope: !6359, file: !6014, line: 219, type: !969)
!6366 = !DILocation(line: 218, column: 50, scope: !6359)
!6367 = !DILocation(line: 218, column: 69, scope: !6359)
!6368 = !DILocation(line: 219, column: 15, scope: !6359)
!6369 = !DILocation(line: 220, column: 3, scope: !6359)
!6370 = !DISubprogram(name: "__copy_overflow", scope: !6014, file: !6014, line: 228, type: !6345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6371 = !DISubprogram(name: "put_fs_context", scope: !14, file: !14, line: 143, type: !1664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6372 = distinct !DISubprogram(name: "__do_sys_fsopen", scope: !3, file: !3, line: 115, type: !6373, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6375)
!6373 = !DISubroutineType(types: !6374)
!6374 = !{!313, !32, !7}
!6375 = !{!6376, !6377, !6378, !6379, !6380, !6381, !6382}
!6376 = !DILocalVariable(name: "_fs_name", arg: 1, scope: !6372, file: !3, line: 115, type: !32)
!6377 = !DILocalVariable(name: "flags", arg: 2, scope: !6372, file: !3, line: 115, type: !7)
!6378 = !DILocalVariable(name: "fs_type", scope: !6372, file: !3, line: 117, type: !1645)
!6379 = !DILocalVariable(name: "fc", scope: !6372, file: !3, line: 118, type: !1654)
!6380 = !DILocalVariable(name: "fs_name", scope: !6372, file: !3, line: 119, type: !32)
!6381 = !DILocalVariable(name: "ret", scope: !6372, file: !3, line: 120, type: !38)
!6382 = !DILabel(scope: !6372, name: "err_fc", file: !3, line: 150)
!6383 = !DILocation(line: 115, column: 1, scope: !6372)
!6384 = !DILocation(line: 117, column: 2, scope: !6372)
!6385 = !DILocation(line: 117, column: 27, scope: !6372)
!6386 = !DILocation(line: 118, column: 2, scope: !6372)
!6387 = !DILocation(line: 118, column: 21, scope: !6372)
!6388 = !DILocation(line: 119, column: 2, scope: !6372)
!6389 = !DILocation(line: 119, column: 14, scope: !6372)
!6390 = !DILocation(line: 120, column: 2, scope: !6372)
!6391 = !DILocation(line: 120, column: 6, scope: !6372)
!6392 = !DILocation(line: 122, column: 7, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 122, column: 6)
!6394 = !DILocation(line: 122, column: 6, scope: !6372)
!6395 = !DILocation(line: 123, column: 3, scope: !6393)
!6396 = !DILocation(line: 125, column: 6, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 125, column: 6)
!6398 = !DILocation(line: 125, column: 12, scope: !6397)
!6399 = !DILocation(line: 125, column: 6, scope: !6372)
!6400 = !DILocation(line: 126, column: 3, scope: !6397)
!6401 = !DILocation(line: 128, column: 25, scope: !6372)
!6402 = !DILocation(line: 128, column: 12, scope: !6372)
!6403 = !DILocation(line: 128, column: 10, scope: !6372)
!6404 = !DILocation(line: 129, column: 13, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 129, column: 6)
!6406 = !DILocation(line: 129, column: 6, scope: !6405)
!6407 = !DILocation(line: 129, column: 6, scope: !6372)
!6408 = !DILocation(line: 130, column: 18, scope: !6405)
!6409 = !DILocation(line: 130, column: 10, scope: !6405)
!6410 = !DILocation(line: 130, column: 3, scope: !6405)
!6411 = !DILocation(line: 132, column: 24, scope: !6372)
!6412 = !DILocation(line: 132, column: 12, scope: !6372)
!6413 = !DILocation(line: 132, column: 10, scope: !6372)
!6414 = !DILocation(line: 133, column: 8, scope: !6372)
!6415 = !DILocation(line: 133, column: 2, scope: !6372)
!6416 = !DILocation(line: 134, column: 7, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 134, column: 6)
!6418 = !DILocation(line: 134, column: 6, scope: !6372)
!6419 = !DILocation(line: 135, column: 3, scope: !6417)
!6420 = !DILocation(line: 137, column: 28, scope: !6372)
!6421 = !DILocation(line: 137, column: 7, scope: !6372)
!6422 = !DILocation(line: 137, column: 5, scope: !6372)
!6423 = !DILocation(line: 138, column: 17, scope: !6372)
!6424 = !DILocation(line: 138, column: 2, scope: !6372)
!6425 = !DILocation(line: 139, column: 13, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 139, column: 6)
!6427 = !DILocation(line: 139, column: 6, scope: !6426)
!6428 = !DILocation(line: 139, column: 6, scope: !6372)
!6429 = !DILocation(line: 140, column: 18, scope: !6426)
!6430 = !DILocation(line: 140, column: 10, scope: !6426)
!6431 = !DILocation(line: 140, column: 3, scope: !6426)
!6432 = !DILocation(line: 142, column: 2, scope: !6372)
!6433 = !DILocation(line: 142, column: 6, scope: !6372)
!6434 = !DILocation(line: 142, column: 12, scope: !6372)
!6435 = !DILocation(line: 144, column: 28, scope: !6372)
!6436 = !DILocation(line: 144, column: 8, scope: !6372)
!6437 = !DILocation(line: 144, column: 6, scope: !6372)
!6438 = !DILocation(line: 145, column: 6, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 145, column: 6)
!6440 = !DILocation(line: 145, column: 10, scope: !6439)
!6441 = !DILocation(line: 145, column: 6, scope: !6372)
!6442 = !DILocation(line: 146, column: 3, scope: !6439)
!6443 = !DILocation(line: 148, column: 29, scope: !6372)
!6444 = !DILocation(line: 148, column: 33, scope: !6372)
!6445 = !DILocation(line: 148, column: 39, scope: !6372)
!6446 = !DILocation(line: 148, column: 9, scope: !6372)
!6447 = !DILocation(line: 148, column: 2, scope: !6372)
!6448 = !DILocation(line: 150, column: 1, scope: !6372)
!6449 = !DILocation(line: 151, column: 17, scope: !6372)
!6450 = !DILocation(line: 151, column: 2, scope: !6372)
!6451 = !DILocation(line: 152, column: 9, scope: !6372)
!6452 = !DILocation(line: 152, column: 2, scope: !6372)
!6453 = !DILocation(line: 153, column: 1, scope: !6372)
!6454 = !DISubprogram(name: "may_mount", scope: !6455, file: !6455, line: 80, type: !2362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6455 = !DIFile(filename: "fs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8afc0abbd20470e9e11dfbcff1f3969f")
!6456 = !DISubprogram(name: "strndup_user", scope: !6253, file: !6253, line: 14, type: !6457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6457 = !DISubroutineType(types: !6458)
!6458 = !{!1046, !32, !313}
!6459 = distinct !DISubprogram(name: "IS_ERR", scope: !6460, file: !6460, line: 59, type: !6461, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6463)
!6460 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6461 = !DISubroutineType(types: !6462)
!6462 = !{!969, !317}
!6463 = !{!6464}
!6464 = !DILocalVariable(name: "ptr", arg: 1, scope: !6459, file: !6460, line: 59, type: !317)
!6465 = !DILocation(line: 59, column: 60, scope: !6459)
!6466 = !DILocation(line: 61, column: 9, scope: !6459)
!6467 = !DILocation(line: 61, column: 2, scope: !6459)
!6468 = distinct !DISubprogram(name: "PTR_ERR", scope: !6460, file: !6460, line: 49, type: !6469, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6471)
!6469 = !DISubroutineType(types: !6470)
!6470 = !{!313, !317}
!6471 = !{!6472}
!6472 = !DILocalVariable(name: "ptr", arg: 1, scope: !6468, file: !6460, line: 49, type: !317)
!6473 = !DILocation(line: 49, column: 61, scope: !6468)
!6474 = !DILocation(line: 51, column: 16, scope: !6468)
!6475 = !DILocation(line: 51, column: 9, scope: !6468)
!6476 = !DILocation(line: 51, column: 2, scope: !6468)
!6477 = !DISubprogram(name: "get_fs_type", scope: !268, file: !268, line: 3132, type: !6478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6478 = !DISubroutineType(types: !6479)
!6479 = !{!1645, !32}
!6480 = !DISubprogram(name: "fs_context_for_mount", scope: !14, file: !14, line: 127, type: !6481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{!1654, !1645, !7}
!6483 = !DISubprogram(name: "put_filesystem", scope: !268, file: !268, line: 3131, type: !6484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6484 = !DISubroutineType(types: !6485)
!6485 = !{null, !1645}
!6486 = distinct !DISubprogram(name: "fscontext_alloc_log", scope: !3, file: !3, line: 98, type: !1652, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6487)
!6487 = !{!6488}
!6488 = !DILocalVariable(name: "fc", arg: 1, scope: !6486, file: !3, line: 98, type: !1654)
!6489 = !DILocation(line: 98, column: 51, scope: !6486)
!6490 = !DILocation(line: 100, column: 16, scope: !6486)
!6491 = !DILocation(line: 100, column: 2, scope: !6486)
!6492 = !DILocation(line: 100, column: 6, scope: !6486)
!6493 = !DILocation(line: 100, column: 10, scope: !6486)
!6494 = !DILocation(line: 100, column: 14, scope: !6486)
!6495 = !DILocation(line: 101, column: 7, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 101, column: 6)
!6497 = !DILocation(line: 101, column: 11, scope: !6496)
!6498 = !DILocation(line: 101, column: 15, scope: !6496)
!6499 = !DILocation(line: 101, column: 6, scope: !6486)
!6500 = !DILocation(line: 102, column: 3, scope: !6496)
!6501 = !DILocation(line: 103, column: 16, scope: !6486)
!6502 = !DILocation(line: 103, column: 20, scope: !6486)
!6503 = !DILocation(line: 103, column: 24, scope: !6486)
!6504 = !DILocation(line: 103, column: 29, scope: !6486)
!6505 = !DILocation(line: 103, column: 2, scope: !6486)
!6506 = !DILocation(line: 104, column: 23, scope: !6486)
!6507 = !DILocation(line: 104, column: 27, scope: !6486)
!6508 = !DILocation(line: 104, column: 36, scope: !6486)
!6509 = !DILocation(line: 104, column: 2, scope: !6486)
!6510 = !DILocation(line: 104, column: 6, scope: !6486)
!6511 = !DILocation(line: 104, column: 10, scope: !6486)
!6512 = !DILocation(line: 104, column: 15, scope: !6486)
!6513 = !DILocation(line: 104, column: 21, scope: !6486)
!6514 = !DILocation(line: 105, column: 2, scope: !6486)
!6515 = !DILocation(line: 106, column: 1, scope: !6486)
!6516 = distinct !DISubprogram(name: "fscontext_create_fd", scope: !3, file: !3, line: 87, type: !6517, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6519)
!6517 = !DISubroutineType(types: !6518)
!6518 = !{!38, !1654, !7}
!6519 = !{!6520, !6521, !6522}
!6520 = !DILocalVariable(name: "fc", arg: 1, scope: !6516, file: !3, line: 87, type: !1654)
!6521 = !DILocalVariable(name: "o_flags", arg: 2, scope: !6516, file: !3, line: 87, type: !7)
!6522 = !DILocalVariable(name: "fd", scope: !6516, file: !3, line: 89, type: !38)
!6523 = !DILocation(line: 87, column: 51, scope: !6516)
!6524 = !DILocation(line: 87, column: 68, scope: !6516)
!6525 = !DILocation(line: 89, column: 2, scope: !6516)
!6526 = !DILocation(line: 89, column: 6, scope: !6516)
!6527 = !DILocation(line: 91, column: 56, scope: !6516)
!6528 = !DILocation(line: 92, column: 19, scope: !6516)
!6529 = !DILocation(line: 92, column: 17, scope: !6516)
!6530 = !DILocation(line: 91, column: 7, scope: !6516)
!6531 = !DILocation(line: 91, column: 5, scope: !6516)
!6532 = !DILocation(line: 93, column: 6, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 93, column: 6)
!6534 = !DILocation(line: 93, column: 9, scope: !6533)
!6535 = !DILocation(line: 93, column: 6, scope: !6516)
!6536 = !DILocation(line: 94, column: 18, scope: !6533)
!6537 = !DILocation(line: 94, column: 3, scope: !6533)
!6538 = !DILocation(line: 95, column: 9, scope: !6516)
!6539 = !DILocation(line: 96, column: 1, scope: !6516)
!6540 = !DILocation(line: 95, column: 2, scope: !6516)
!6541 = distinct !DISubprogram(name: "kzalloc", scope: !291, file: !291, line: 719, type: !6542, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6544)
!6542 = !DISubroutineType(types: !6543)
!6543 = !{!36, !51, !314}
!6544 = !{!6545, !6546}
!6545 = !DILocalVariable(name: "size", arg: 1, scope: !6541, file: !291, line: 719, type: !51)
!6546 = !DILocalVariable(name: "flags", arg: 2, scope: !6541, file: !291, line: 719, type: !314)
!6547 = !DILocation(line: 719, column: 52, scope: !6541)
!6548 = !DILocation(line: 719, column: 64, scope: !6541)
!6549 = !DILocation(line: 721, column: 17, scope: !6541)
!6550 = !DILocation(line: 721, column: 23, scope: !6541)
!6551 = !DILocation(line: 721, column: 29, scope: !6541)
!6552 = !DILocation(line: 721, column: 9, scope: !6541)
!6553 = !DILocation(line: 721, column: 2, scope: !6541)
!6554 = distinct !DISubprogram(name: "refcount_set", scope: !400, file: !400, line: 134, type: !6555, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6558)
!6555 = !DISubroutineType(types: !6556)
!6556 = !{null, !6557, !38}
!6557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!6558 = !{!6559, !6560}
!6559 = !DILocalVariable(name: "r", arg: 1, scope: !6554, file: !400, line: 134, type: !6557)
!6560 = !DILocalVariable(name: "n", arg: 2, scope: !6554, file: !400, line: 134, type: !38)
!6561 = !DILocation(line: 134, column: 45, scope: !6554)
!6562 = !DILocation(line: 134, column: 52, scope: !6554)
!6563 = !DILocation(line: 136, column: 14, scope: !6554)
!6564 = !DILocation(line: 136, column: 17, scope: !6554)
!6565 = !DILocation(line: 136, column: 23, scope: !6554)
!6566 = !DILocation(line: 136, column: 2, scope: !6554)
!6567 = !DILocation(line: 137, column: 1, scope: !6554)
!6568 = distinct !DISubprogram(name: "kmalloc", scope: !291, file: !291, line: 591, type: !6542, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6569)
!6569 = !{!6570, !6571, !6572}
!6570 = !DILocalVariable(name: "size", arg: 1, scope: !6568, file: !291, line: 591, type: !51)
!6571 = !DILocalVariable(name: "flags", arg: 2, scope: !6568, file: !291, line: 591, type: !314)
!6572 = !DILocalVariable(name: "index", scope: !6573, file: !291, line: 594, type: !7)
!6573 = distinct !DILexicalBlock(scope: !6574, file: !291, line: 593, column: 42)
!6574 = distinct !DILexicalBlock(scope: !6568, file: !291, line: 593, column: 6)
!6575 = !DILocation(line: 591, column: 61, scope: !6568)
!6576 = !DILocation(line: 591, column: 73, scope: !6568)
!6577 = !DILocation(line: 593, column: 27, scope: !6574)
!6578 = !DILocation(line: 593, column: 6, scope: !6574)
!6579 = !DILocation(line: 593, column: 33, scope: !6574)
!6580 = !DILocation(line: 593, column: 36, scope: !6574)
!6581 = !DILocation(line: 593, column: 6, scope: !6568)
!6582 = !DILocation(line: 594, column: 3, scope: !6573)
!6583 = !DILocation(line: 594, column: 16, scope: !6573)
!6584 = !DILocation(line: 596, column: 7, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6573, file: !291, line: 596, column: 7)
!6586 = !DILocation(line: 596, column: 12, scope: !6585)
!6587 = !DILocation(line: 596, column: 7, scope: !6573)
!6588 = !DILocation(line: 597, column: 25, scope: !6585)
!6589 = !DILocation(line: 597, column: 31, scope: !6585)
!6590 = !DILocation(line: 597, column: 11, scope: !6585)
!6591 = !DILocation(line: 597, column: 4, scope: !6585)
!6592 = !DILocation(line: 599, column: 11, scope: !6573)
!6593 = !DILocation(line: 599, column: 9, scope: !6573)
!6594 = !DILocation(line: 601, column: 33, scope: !6573)
!6595 = !DILocation(line: 601, column: 40, scope: !6573)
!6596 = !DILocation(line: 601, column: 20, scope: !6573)
!6597 = !DILocation(line: 601, column: 5, scope: !6573)
!6598 = !DILocation(line: 601, column: 51, scope: !6573)
!6599 = !DILocation(line: 602, column: 5, scope: !6573)
!6600 = !DILocation(line: 602, column: 12, scope: !6573)
!6601 = !DILocation(line: 600, column: 10, scope: !6573)
!6602 = !DILocation(line: 600, column: 3, scope: !6573)
!6603 = !DILocation(line: 603, column: 2, scope: !6574)
!6604 = !DILocation(line: 604, column: 19, scope: !6568)
!6605 = !DILocation(line: 604, column: 25, scope: !6568)
!6606 = !DILocation(line: 604, column: 9, scope: !6568)
!6607 = !DILocation(line: 604, column: 2, scope: !6568)
!6608 = !DILocation(line: 605, column: 1, scope: !6568)
!6609 = !DISubprogram(name: "kmalloc_large", scope: !291, file: !291, line: 531, type: !6542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6610 = distinct !DISubprogram(name: "__kmalloc_index", scope: !291, file: !291, line: 444, type: !6611, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6613)
!6611 = !DISubroutineType(types: !6612)
!6612 = !{!7, !51, !969}
!6613 = !{!6614, !6615}
!6614 = !DILocalVariable(name: "size", arg: 1, scope: !6610, file: !291, line: 444, type: !51)
!6615 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6610, file: !291, line: 445, type: !969)
!6616 = !DILocation(line: 444, column: 60, scope: !6610)
!6617 = !DILocation(line: 445, column: 16, scope: !6610)
!6618 = !DILocation(line: 447, column: 7, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 447, column: 6)
!6620 = !DILocation(line: 447, column: 6, scope: !6610)
!6621 = !DILocation(line: 448, column: 3, scope: !6619)
!6622 = !DILocation(line: 450, column: 6, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 450, column: 6)
!6624 = !DILocation(line: 450, column: 11, scope: !6623)
!6625 = !DILocation(line: 450, column: 6, scope: !6610)
!6626 = !DILocation(line: 451, column: 3, scope: !6623)
!6627 = !DILocation(line: 453, column: 32, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 453, column: 6)
!6629 = !DILocation(line: 453, column: 37, scope: !6628)
!6630 = !DILocation(line: 453, column: 42, scope: !6628)
!6631 = !DILocation(line: 453, column: 45, scope: !6628)
!6632 = !DILocation(line: 453, column: 50, scope: !6628)
!6633 = !DILocation(line: 453, column: 6, scope: !6610)
!6634 = !DILocation(line: 454, column: 3, scope: !6628)
!6635 = !DILocation(line: 455, column: 32, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 455, column: 6)
!6637 = !DILocation(line: 455, column: 37, scope: !6636)
!6638 = !DILocation(line: 455, column: 43, scope: !6636)
!6639 = !DILocation(line: 455, column: 46, scope: !6636)
!6640 = !DILocation(line: 455, column: 51, scope: !6636)
!6641 = !DILocation(line: 455, column: 6, scope: !6610)
!6642 = !DILocation(line: 456, column: 3, scope: !6636)
!6643 = !DILocation(line: 457, column: 6, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 457, column: 6)
!6645 = !DILocation(line: 457, column: 11, scope: !6644)
!6646 = !DILocation(line: 457, column: 6, scope: !6610)
!6647 = !DILocation(line: 457, column: 26, scope: !6644)
!6648 = !DILocation(line: 458, column: 6, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 458, column: 6)
!6650 = !DILocation(line: 458, column: 11, scope: !6649)
!6651 = !DILocation(line: 458, column: 6, scope: !6610)
!6652 = !DILocation(line: 458, column: 26, scope: !6649)
!6653 = !DILocation(line: 459, column: 6, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 459, column: 6)
!6655 = !DILocation(line: 459, column: 11, scope: !6654)
!6656 = !DILocation(line: 459, column: 6, scope: !6610)
!6657 = !DILocation(line: 459, column: 26, scope: !6654)
!6658 = !DILocation(line: 460, column: 6, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 460, column: 6)
!6660 = !DILocation(line: 460, column: 11, scope: !6659)
!6661 = !DILocation(line: 460, column: 6, scope: !6610)
!6662 = !DILocation(line: 460, column: 26, scope: !6659)
!6663 = !DILocation(line: 461, column: 6, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 461, column: 6)
!6665 = !DILocation(line: 461, column: 11, scope: !6664)
!6666 = !DILocation(line: 461, column: 6, scope: !6610)
!6667 = !DILocation(line: 461, column: 26, scope: !6664)
!6668 = !DILocation(line: 462, column: 6, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 462, column: 6)
!6670 = !DILocation(line: 462, column: 11, scope: !6669)
!6671 = !DILocation(line: 462, column: 6, scope: !6610)
!6672 = !DILocation(line: 462, column: 26, scope: !6669)
!6673 = !DILocation(line: 463, column: 6, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 463, column: 6)
!6675 = !DILocation(line: 463, column: 11, scope: !6674)
!6676 = !DILocation(line: 463, column: 6, scope: !6610)
!6677 = !DILocation(line: 463, column: 26, scope: !6674)
!6678 = !DILocation(line: 464, column: 6, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 464, column: 6)
!6680 = !DILocation(line: 464, column: 11, scope: !6679)
!6681 = !DILocation(line: 464, column: 6, scope: !6610)
!6682 = !DILocation(line: 464, column: 26, scope: !6679)
!6683 = !DILocation(line: 465, column: 6, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 465, column: 6)
!6685 = !DILocation(line: 465, column: 11, scope: !6684)
!6686 = !DILocation(line: 465, column: 6, scope: !6610)
!6687 = !DILocation(line: 465, column: 26, scope: !6684)
!6688 = !DILocation(line: 466, column: 6, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 466, column: 6)
!6690 = !DILocation(line: 466, column: 11, scope: !6689)
!6691 = !DILocation(line: 466, column: 6, scope: !6610)
!6692 = !DILocation(line: 466, column: 26, scope: !6689)
!6693 = !DILocation(line: 467, column: 6, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 467, column: 6)
!6695 = !DILocation(line: 467, column: 11, scope: !6694)
!6696 = !DILocation(line: 467, column: 6, scope: !6610)
!6697 = !DILocation(line: 467, column: 26, scope: !6694)
!6698 = !DILocation(line: 468, column: 6, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 468, column: 6)
!6700 = !DILocation(line: 468, column: 11, scope: !6699)
!6701 = !DILocation(line: 468, column: 6, scope: !6610)
!6702 = !DILocation(line: 468, column: 26, scope: !6699)
!6703 = !DILocation(line: 469, column: 6, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 469, column: 6)
!6705 = !DILocation(line: 469, column: 11, scope: !6704)
!6706 = !DILocation(line: 469, column: 6, scope: !6610)
!6707 = !DILocation(line: 469, column: 26, scope: !6704)
!6708 = !DILocation(line: 470, column: 6, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 470, column: 6)
!6710 = !DILocation(line: 470, column: 11, scope: !6709)
!6711 = !DILocation(line: 470, column: 6, scope: !6610)
!6712 = !DILocation(line: 470, column: 26, scope: !6709)
!6713 = !DILocation(line: 471, column: 6, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 471, column: 6)
!6715 = !DILocation(line: 471, column: 11, scope: !6714)
!6716 = !DILocation(line: 471, column: 6, scope: !6610)
!6717 = !DILocation(line: 471, column: 26, scope: !6714)
!6718 = !DILocation(line: 472, column: 6, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 472, column: 6)
!6720 = !DILocation(line: 472, column: 11, scope: !6719)
!6721 = !DILocation(line: 472, column: 6, scope: !6610)
!6722 = !DILocation(line: 472, column: 26, scope: !6719)
!6723 = !DILocation(line: 473, column: 6, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 473, column: 6)
!6725 = !DILocation(line: 473, column: 11, scope: !6724)
!6726 = !DILocation(line: 473, column: 6, scope: !6610)
!6727 = !DILocation(line: 473, column: 26, scope: !6724)
!6728 = !DILocation(line: 474, column: 6, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 474, column: 6)
!6730 = !DILocation(line: 474, column: 11, scope: !6729)
!6731 = !DILocation(line: 474, column: 6, scope: !6610)
!6732 = !DILocation(line: 474, column: 27, scope: !6729)
!6733 = !DILocation(line: 475, column: 6, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 475, column: 6)
!6735 = !DILocation(line: 475, column: 11, scope: !6734)
!6736 = !DILocation(line: 475, column: 6, scope: !6610)
!6737 = !DILocation(line: 475, column: 32, scope: !6734)
!6738 = !DILocation(line: 477, column: 50, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6610, file: !291, line: 477, column: 6)
!6740 = !DILocation(line: 477, column: 6, scope: !6610)
!6741 = !DILocation(line: 478, column: 3, scope: !6739)
!6742 = !DILocation(line: 478, column: 3, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6744, file: !291, line: 478, column: 3)
!6744 = distinct !DILexicalBlock(scope: !6739, file: !291, line: 478, column: 3)
!6745 = !{i32 -2141633449}
!6746 = !DILocation(line: 478, column: 3, scope: !6744)
!6747 = !DILocation(line: 480, column: 3, scope: !6739)
!6748 = !DILocation(line: 480, column: 3, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6739, file: !291, line: 480, column: 3)
!6750 = !DILocation(line: 480, column: 3, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6749, file: !291, line: 480, column: 3)
!6752 = !DILocation(line: 480, column: 3, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6749, file: !291, line: 480, column: 3)
!6754 = !{i64 2153334050, i64 2153334079, i64 2153334125, i64 2153334183, i64 2153334237, i64 2153334291, i64 2153334346, i64 2153334377}
!6755 = !DILocation(line: 483, column: 2, scope: !6610)
!6756 = !DILocation(line: 484, column: 1, scope: !6610)
!6757 = !DISubprogram(name: "kmalloc_trace", scope: !291, file: !291, line: 525, type: !6758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6758 = !DISubroutineType(types: !6759)
!6759 = !{!36, !3559, !314, !51}
!6760 = distinct !DISubprogram(name: "kmalloc_type", scope: !291, file: !291, line: 401, type: !6761, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6763)
!6761 = !DISubroutineType(types: !6762)
!6762 = !{!290, !314, !55}
!6763 = !{!6764, !6765}
!6764 = !DILocalVariable(name: "flags", arg: 1, scope: !6760, file: !291, line: 401, type: !314)
!6765 = !DILocalVariable(name: "caller", arg: 2, scope: !6760, file: !291, line: 401, type: !55)
!6766 = !DILocation(line: 401, column: 67, scope: !6760)
!6767 = !DILocation(line: 401, column: 88, scope: !6760)
!6768 = !DILocation(line: 407, column: 6, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6760, file: !291, line: 407, column: 6)
!6770 = !DILocation(line: 407, column: 6, scope: !6760)
!6771 = !DILocation(line: 413, column: 3, scope: !6769)
!6772 = !DILocation(line: 423, column: 38, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6760, file: !291, line: 423, column: 6)
!6774 = !DILocation(line: 423, column: 44, scope: !6773)
!6775 = !DILocation(line: 423, column: 6, scope: !6760)
!6776 = !DILocation(line: 424, column: 3, scope: !6773)
!6777 = !DILocation(line: 426, column: 3, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6760, file: !291, line: 425, column: 6)
!6779 = !DILocation(line: 429, column: 1, scope: !6760)
!6780 = !DISubprogram(name: "__kmalloc", scope: !291, file: !291, line: 488, type: !6542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6781 = !DISubprogram(name: "__compiletime_assert_245", scope: !291, file: !291, line: 478, type: !2956, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6782 = distinct !DISubprogram(name: "atomic_set", scope: !6783, file: !6783, line: 65, type: !6784, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6787)
!6783 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6784 = !DISubroutineType(types: !6785)
!6785 = !{null, !6786, !38}
!6786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!6787 = !{!6788, !6789}
!6788 = !DILocalVariable(name: "v", arg: 1, scope: !6782, file: !6783, line: 65, type: !6786)
!6789 = !DILocalVariable(name: "i", arg: 2, scope: !6782, file: !6783, line: 65, type: !38)
!6790 = !DILocation(line: 65, column: 22, scope: !6782)
!6791 = !DILocation(line: 65, column: 29, scope: !6782)
!6792 = !DILocation(line: 67, column: 26, scope: !6782)
!6793 = !DILocation(line: 67, column: 2, scope: !6782)
!6794 = !DILocation(line: 68, column: 17, scope: !6782)
!6795 = !DILocation(line: 68, column: 20, scope: !6782)
!6796 = !DILocation(line: 68, column: 2, scope: !6782)
!6797 = !DILocation(line: 69, column: 1, scope: !6782)
!6798 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6799, file: !6799, line: 80, type: !6800, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6805)
!6799 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6800 = !DISubroutineType(types: !6801)
!6801 = !{null, !6802, !51}
!6802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6803, size: 64)
!6803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6804)
!6804 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6805 = !{!6806, !6807}
!6806 = !DILocalVariable(name: "v", arg: 1, scope: !6798, file: !6799, line: 80, type: !6802)
!6807 = !DILocalVariable(name: "size", arg: 2, scope: !6798, file: !6799, line: 80, type: !51)
!6808 = !DILocation(line: 80, column: 74, scope: !6798)
!6809 = !DILocation(line: 80, column: 84, scope: !6798)
!6810 = !DILocation(line: 82, column: 20, scope: !6798)
!6811 = !DILocation(line: 82, column: 23, scope: !6798)
!6812 = !DILocation(line: 82, column: 2, scope: !6798)
!6813 = !DILocation(line: 83, column: 2, scope: !6798)
!6814 = !DILocation(line: 84, column: 1, scope: !6798)
!6815 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6816, file: !6816, line: 488, type: !6784, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6817)
!6816 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6817 = !{!6818, !6819}
!6818 = !DILocalVariable(name: "v", arg: 1, scope: !6815, file: !6816, line: 488, type: !6786)
!6819 = !DILocalVariable(name: "i", arg: 2, scope: !6815, file: !6816, line: 488, type: !38)
!6820 = !DILocation(line: 488, column: 26, scope: !6815)
!6821 = !DILocation(line: 488, column: 33, scope: !6815)
!6822 = !DILocation(line: 490, column: 18, scope: !6815)
!6823 = !DILocation(line: 490, column: 21, scope: !6815)
!6824 = !DILocation(line: 490, column: 2, scope: !6815)
!6825 = !DILocation(line: 491, column: 1, scope: !6815)
!6826 = distinct !DISubprogram(name: "kasan_check_write", scope: !6827, file: !6827, line: 44, type: !6828, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6830)
!6827 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6828 = !DISubroutineType(types: !6829)
!6829 = !{!969, !6802, !7}
!6830 = !{!6831, !6832}
!6831 = !DILocalVariable(name: "p", arg: 1, scope: !6826, file: !6827, line: 44, type: !6802)
!6832 = !DILocalVariable(name: "size", arg: 2, scope: !6826, file: !6827, line: 44, type: !7)
!6833 = !DILocation(line: 44, column: 59, scope: !6826)
!6834 = !DILocation(line: 44, column: 75, scope: !6826)
!6835 = !DILocation(line: 46, column: 2, scope: !6826)
!6836 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6837, file: !6837, line: 229, type: !6838, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6840)
!6837 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6838 = !DISubroutineType(types: !6839)
!6839 = !{null, !6802, !51, !38}
!6840 = !{!6841, !6842, !6843}
!6841 = !DILocalVariable(name: "ptr", arg: 1, scope: !6836, file: !6837, line: 229, type: !6802)
!6842 = !DILocalVariable(name: "size", arg: 2, scope: !6836, file: !6837, line: 229, type: !51)
!6843 = !DILocalVariable(name: "type", arg: 3, scope: !6836, file: !6837, line: 230, type: !38)
!6844 = !DILocation(line: 229, column: 60, scope: !6836)
!6845 = !DILocation(line: 229, column: 72, scope: !6836)
!6846 = !DILocation(line: 230, column: 15, scope: !6836)
!6847 = !DILocation(line: 230, column: 23, scope: !6836)
!6848 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6849, file: !6849, line: 26, type: !6784, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6850)
!6849 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6850 = !{!6851, !6852}
!6851 = !DILocalVariable(name: "v", arg: 1, scope: !6848, file: !6849, line: 26, type: !6786)
!6852 = !DILocalVariable(name: "i", arg: 2, scope: !6848, file: !6849, line: 26, type: !38)
!6853 = !DILocation(line: 26, column: 55, scope: !6848)
!6854 = !DILocation(line: 26, column: 62, scope: !6848)
!6855 = !DILocation(line: 28, column: 2, scope: !6848)
!6856 = !DILocation(line: 28, column: 2, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6848, file: !6849, line: 28, column: 2)
!6858 = !DILocation(line: 29, column: 1, scope: !6848)
!6859 = !DISubprogram(name: "anon_inode_getfd", scope: !6860, file: !6860, line: 22, type: !6861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6860 = !DIFile(filename: "./include/linux/anon_inodes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00c0a889ffd591b5a8b4ccaa2c6d3740")
!6861 = !DISubroutineType(types: !6862)
!6862 = !{!38, !32, !4998, !36, !38}
!6863 = distinct !DISubprogram(name: "__do_sys_fspick", scope: !3, file: !3, line: 158, type: !6864, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6866)
!6864 = !DISubroutineType(types: !6865)
!6865 = !{!313, !38, !32, !7}
!6866 = !{!6867, !6868, !6869, !6870, !6871, !6872, !6873, !6874, !6875, !6876}
!6867 = !DILocalVariable(name: "dfd", arg: 1, scope: !6863, file: !3, line: 158, type: !38)
!6868 = !DILocalVariable(name: "path", arg: 2, scope: !6863, file: !3, line: 158, type: !32)
!6869 = !DILocalVariable(name: "flags", arg: 3, scope: !6863, file: !3, line: 158, type: !7)
!6870 = !DILocalVariable(name: "fc", scope: !6863, file: !3, line: 160, type: !1654)
!6871 = !DILocalVariable(name: "target", scope: !6863, file: !3, line: 161, type: !1626)
!6872 = !DILocalVariable(name: "lookup_flags", scope: !6863, file: !3, line: 162, type: !7)
!6873 = !DILocalVariable(name: "ret", scope: !6863, file: !3, line: 163, type: !38)
!6874 = !DILabel(scope: !6863, name: "err_fc", file: !3, line: 204)
!6875 = !DILabel(scope: !6863, name: "err_path", file: !3, line: 206)
!6876 = !DILabel(scope: !6863, name: "err", file: !3, line: 208)
!6877 = !DILocation(line: 158, column: 1, scope: !6863)
!6878 = !DILocation(line: 160, column: 2, scope: !6863)
!6879 = !DILocation(line: 160, column: 21, scope: !6863)
!6880 = !DILocation(line: 161, column: 2, scope: !6863)
!6881 = !DILocation(line: 161, column: 14, scope: !6863)
!6882 = !DILocation(line: 162, column: 2, scope: !6863)
!6883 = !DILocation(line: 162, column: 15, scope: !6863)
!6884 = !DILocation(line: 163, column: 2, scope: !6863)
!6885 = !DILocation(line: 163, column: 6, scope: !6863)
!6886 = !DILocation(line: 165, column: 7, scope: !6887)
!6887 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 165, column: 6)
!6888 = !DILocation(line: 165, column: 6, scope: !6863)
!6889 = !DILocation(line: 166, column: 3, scope: !6887)
!6890 = !DILocation(line: 168, column: 7, scope: !6891)
!6891 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 168, column: 6)
!6892 = !DILocation(line: 168, column: 13, scope: !6891)
!6893 = !DILocation(line: 171, column: 30, scope: !6891)
!6894 = !DILocation(line: 168, column: 6, scope: !6863)
!6895 = !DILocation(line: 172, column: 3, scope: !6891)
!6896 = !DILocation(line: 174, column: 15, scope: !6863)
!6897 = !DILocation(line: 175, column: 6, scope: !6898)
!6898 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 175, column: 6)
!6899 = !DILocation(line: 175, column: 12, scope: !6898)
!6900 = !DILocation(line: 175, column: 6, scope: !6863)
!6901 = !DILocation(line: 176, column: 16, scope: !6898)
!6902 = !DILocation(line: 176, column: 3, scope: !6898)
!6903 = !DILocation(line: 177, column: 6, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 177, column: 6)
!6905 = !DILocation(line: 177, column: 12, scope: !6904)
!6906 = !DILocation(line: 177, column: 6, scope: !6863)
!6907 = !DILocation(line: 178, column: 16, scope: !6904)
!6908 = !DILocation(line: 178, column: 3, scope: !6904)
!6909 = !DILocation(line: 179, column: 6, scope: !6910)
!6910 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 179, column: 6)
!6911 = !DILocation(line: 179, column: 12, scope: !6910)
!6912 = !DILocation(line: 179, column: 6, scope: !6863)
!6913 = !DILocation(line: 180, column: 16, scope: !6910)
!6914 = !DILocation(line: 180, column: 3, scope: !6910)
!6915 = !DILocation(line: 181, column: 21, scope: !6863)
!6916 = !DILocation(line: 181, column: 26, scope: !6863)
!6917 = !DILocation(line: 181, column: 32, scope: !6863)
!6918 = !DILocation(line: 181, column: 8, scope: !6863)
!6919 = !DILocation(line: 181, column: 6, scope: !6863)
!6920 = !DILocation(line: 182, column: 6, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 182, column: 6)
!6922 = !DILocation(line: 182, column: 10, scope: !6921)
!6923 = !DILocation(line: 182, column: 6, scope: !6863)
!6924 = !DILocation(line: 183, column: 3, scope: !6921)
!6925 = !DILocation(line: 185, column: 6, scope: !6863)
!6926 = !DILocation(line: 186, column: 13, scope: !6927)
!6927 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 186, column: 6)
!6928 = !DILocation(line: 186, column: 18, scope: !6927)
!6929 = !DILocation(line: 186, column: 37, scope: !6927)
!6930 = !DILocation(line: 186, column: 27, scope: !6927)
!6931 = !DILocation(line: 186, column: 6, scope: !6863)
!6932 = !DILocation(line: 187, column: 3, scope: !6927)
!6933 = !DILocation(line: 189, column: 41, scope: !6863)
!6934 = !DILocation(line: 189, column: 7, scope: !6863)
!6935 = !DILocation(line: 189, column: 5, scope: !6863)
!6936 = !DILocation(line: 190, column: 13, scope: !6937)
!6937 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 190, column: 6)
!6938 = !DILocation(line: 190, column: 6, scope: !6937)
!6939 = !DILocation(line: 190, column: 6, scope: !6863)
!6940 = !DILocation(line: 191, column: 17, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !6937, file: !3, line: 190, column: 18)
!6942 = !DILocation(line: 191, column: 9, scope: !6941)
!6943 = !DILocation(line: 191, column: 7, scope: !6941)
!6944 = !DILocation(line: 192, column: 3, scope: !6941)
!6945 = !DILocation(line: 195, column: 2, scope: !6863)
!6946 = !DILocation(line: 195, column: 6, scope: !6863)
!6947 = !DILocation(line: 195, column: 12, scope: !6863)
!6948 = !DILocation(line: 197, column: 28, scope: !6863)
!6949 = !DILocation(line: 197, column: 8, scope: !6863)
!6950 = !DILocation(line: 197, column: 6, scope: !6863)
!6951 = !DILocation(line: 198, column: 6, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 198, column: 6)
!6953 = !DILocation(line: 198, column: 10, scope: !6952)
!6954 = !DILocation(line: 198, column: 6, scope: !6863)
!6955 = !DILocation(line: 199, column: 3, scope: !6952)
!6956 = !DILocation(line: 201, column: 2, scope: !6863)
!6957 = !DILocation(line: 202, column: 29, scope: !6863)
!6958 = !DILocation(line: 202, column: 33, scope: !6863)
!6959 = !DILocation(line: 202, column: 39, scope: !6863)
!6960 = !DILocation(line: 202, column: 9, scope: !6863)
!6961 = !DILocation(line: 202, column: 2, scope: !6863)
!6962 = !DILocation(line: 204, column: 1, scope: !6863)
!6963 = !DILocation(line: 205, column: 17, scope: !6863)
!6964 = !DILocation(line: 205, column: 2, scope: !6863)
!6965 = !DILocation(line: 206, column: 1, scope: !6863)
!6966 = !DILocation(line: 207, column: 2, scope: !6863)
!6967 = !DILocation(line: 208, column: 1, scope: !6863)
!6968 = !DILocation(line: 209, column: 9, scope: !6863)
!6969 = !DILocation(line: 209, column: 2, scope: !6863)
!6970 = !DILocation(line: 210, column: 1, scope: !6863)
!6971 = distinct !DISubprogram(name: "user_path_at", scope: !6972, file: !6972, line: 54, type: !6973, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6975)
!6972 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!6973 = !DISubroutineType(types: !6974)
!6974 = !{!38, !38, !32, !7, !4822}
!6975 = !{!6976, !6977, !6978, !6979}
!6976 = !DILocalVariable(name: "dfd", arg: 1, scope: !6971, file: !6972, line: 54, type: !38)
!6977 = !DILocalVariable(name: "name", arg: 2, scope: !6971, file: !6972, line: 54, type: !32)
!6978 = !DILocalVariable(name: "flags", arg: 3, scope: !6971, file: !6972, line: 54, type: !7)
!6979 = !DILocalVariable(name: "path", arg: 4, scope: !6971, file: !6972, line: 55, type: !4822)
!6980 = !DILocation(line: 54, column: 36, scope: !6971)
!6981 = !DILocation(line: 54, column: 60, scope: !6971)
!6982 = !DILocation(line: 54, column: 75, scope: !6971)
!6983 = !DILocation(line: 55, column: 17, scope: !6971)
!6984 = !DILocation(line: 57, column: 28, scope: !6971)
!6985 = !DILocation(line: 57, column: 33, scope: !6971)
!6986 = !DILocation(line: 57, column: 39, scope: !6971)
!6987 = !DILocation(line: 57, column: 46, scope: !6971)
!6988 = !DILocation(line: 57, column: 9, scope: !6971)
!6989 = !DILocation(line: 57, column: 2, scope: !6971)
!6990 = !DISubprogram(name: "fs_context_for_reconfigure", scope: !14, file: !14, line: 129, type: !6991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6991 = !DISubroutineType(types: !6992)
!6992 = !{!1654, !1468, !7, !7}
!6993 = !DISubprogram(name: "path_put", scope: !1627, file: !1627, line: 14, type: !6994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6994 = !DISubroutineType(types: !6995)
!6995 = !{null, !1624}
!6996 = !DISubprogram(name: "user_path_at_empty", scope: !6972, file: !6972, line: 52, type: !6997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6997 = !DISubroutineType(types: !6998)
!6998 = !{!38, !38, !32, !7, !4822, !1306}
!6999 = distinct !DISubprogram(name: "__do_sys_fsconfig", scope: !3, file: !3, line: 349, type: !7000, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7002)
!7000 = !DISubroutineType(types: !7001)
!7001 = !{!313, !38, !7, !32, !317, !38}
!7002 = !{!7003, !7004, !7005, !7006, !7007, !7008, !7009, !7015, !7016, !7017, !7018, !7019}
!7003 = !DILocalVariable(name: "fd", arg: 1, scope: !6999, file: !3, line: 349, type: !38)
!7004 = !DILocalVariable(name: "cmd", arg: 2, scope: !6999, file: !3, line: 349, type: !7)
!7005 = !DILocalVariable(name: "_key", arg: 3, scope: !6999, file: !3, line: 349, type: !32)
!7006 = !DILocalVariable(name: "_value", arg: 4, scope: !6999, file: !3, line: 349, type: !317)
!7007 = !DILocalVariable(name: "aux", arg: 5, scope: !6999, file: !3, line: 349, type: !38)
!7008 = !DILocalVariable(name: "fc", scope: !6999, file: !3, line: 356, type: !1654)
!7009 = !DILocalVariable(name: "f", scope: !6999, file: !3, line: 357, type: !7010)
!7010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd", file: !7011, line: 36, size: 128, elements: !7012)
!7011 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!7012 = !{!7013, !7014}
!7013 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !7010, file: !7011, line: 37, baseType: !319, size: 64)
!7014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7010, file: !7011, line: 38, baseType: !7, size: 32, offset: 64)
!7015 = !DILocalVariable(name: "ret", scope: !6999, file: !3, line: 358, type: !38)
!7016 = !DILocalVariable(name: "lookup_flags", scope: !6999, file: !3, line: 359, type: !38)
!7017 = !DILocalVariable(name: "param", scope: !6999, file: !3, line: 361, type: !1675)
!7018 = !DILabel(scope: !6999, name: "out_key", file: !3, line: 500)
!7019 = !DILabel(scope: !6999, name: "out_f", file: !3, line: 502)
!7020 = !DILocation(line: 349, column: 1, scope: !6999)
!7021 = !DILocation(line: 356, column: 2, scope: !6999)
!7022 = !DILocation(line: 356, column: 21, scope: !6999)
!7023 = !DILocation(line: 357, column: 2, scope: !6999)
!7024 = !DILocation(line: 357, column: 12, scope: !6999)
!7025 = !DILocation(line: 358, column: 2, scope: !6999)
!7026 = !DILocation(line: 358, column: 6, scope: !6999)
!7027 = !DILocation(line: 359, column: 2, scope: !6999)
!7028 = !DILocation(line: 359, column: 6, scope: !6999)
!7029 = !DILocation(line: 361, column: 2, scope: !6999)
!7030 = !DILocation(line: 361, column: 22, scope: !6999)
!7031 = !DILocation(line: 365, column: 6, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 365, column: 6)
!7033 = !DILocation(line: 365, column: 9, scope: !7032)
!7034 = !DILocation(line: 365, column: 6, scope: !6999)
!7035 = !DILocation(line: 366, column: 3, scope: !7032)
!7036 = !DILocation(line: 368, column: 10, scope: !6999)
!7037 = !DILocation(line: 368, column: 2, scope: !6999)
!7038 = !DILocation(line: 370, column: 8, scope: !7039)
!7039 = distinct !DILexicalBlock(scope: !7040, file: !3, line: 370, column: 7)
!7040 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 368, column: 15)
!7041 = !DILocation(line: 370, column: 13, scope: !7039)
!7042 = !DILocation(line: 370, column: 16, scope: !7039)
!7043 = !DILocation(line: 370, column: 23, scope: !7039)
!7044 = !DILocation(line: 370, column: 26, scope: !7039)
!7045 = !DILocation(line: 370, column: 7, scope: !7040)
!7046 = !DILocation(line: 371, column: 4, scope: !7039)
!7047 = !DILocation(line: 372, column: 3, scope: !7040)
!7048 = !DILocation(line: 374, column: 8, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !7040, file: !3, line: 374, column: 7)
!7050 = !DILocation(line: 374, column: 13, scope: !7049)
!7051 = !DILocation(line: 374, column: 17, scope: !7049)
!7052 = !DILocation(line: 374, column: 24, scope: !7049)
!7053 = !DILocation(line: 374, column: 27, scope: !7049)
!7054 = !DILocation(line: 374, column: 7, scope: !7040)
!7055 = !DILocation(line: 375, column: 4, scope: !7049)
!7056 = !DILocation(line: 376, column: 3, scope: !7040)
!7057 = !DILocation(line: 378, column: 8, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !7040, file: !3, line: 378, column: 7)
!7059 = !DILocation(line: 378, column: 13, scope: !7058)
!7060 = !DILocation(line: 378, column: 17, scope: !7058)
!7061 = !DILocation(line: 378, column: 24, scope: !7058)
!7062 = !DILocation(line: 378, column: 27, scope: !7058)
!7063 = !DILocation(line: 378, column: 31, scope: !7058)
!7064 = !DILocation(line: 378, column: 36, scope: !7058)
!7065 = !DILocation(line: 378, column: 39, scope: !7058)
!7066 = !DILocation(line: 378, column: 43, scope: !7058)
!7067 = !DILocation(line: 378, column: 7, scope: !7040)
!7068 = !DILocation(line: 379, column: 4, scope: !7058)
!7069 = !DILocation(line: 380, column: 3, scope: !7040)
!7070 = !DILocation(line: 383, column: 8, scope: !7071)
!7071 = distinct !DILexicalBlock(scope: !7040, file: !3, line: 383, column: 7)
!7072 = !DILocation(line: 383, column: 13, scope: !7071)
!7073 = !DILocation(line: 383, column: 17, scope: !7071)
!7074 = !DILocation(line: 383, column: 24, scope: !7071)
!7075 = !DILocation(line: 383, column: 28, scope: !7071)
!7076 = !DILocation(line: 383, column: 32, scope: !7071)
!7077 = !DILocation(line: 383, column: 44, scope: !7071)
!7078 = !DILocation(line: 383, column: 47, scope: !7071)
!7079 = !DILocation(line: 383, column: 51, scope: !7071)
!7080 = !DILocation(line: 383, column: 7, scope: !7040)
!7081 = !DILocation(line: 384, column: 4, scope: !7071)
!7082 = !DILocation(line: 385, column: 3, scope: !7040)
!7083 = !DILocation(line: 387, column: 8, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !7040, file: !3, line: 387, column: 7)
!7085 = !DILocation(line: 387, column: 13, scope: !7084)
!7086 = !DILocation(line: 387, column: 16, scope: !7084)
!7087 = !DILocation(line: 387, column: 23, scope: !7084)
!7088 = !DILocation(line: 387, column: 26, scope: !7084)
!7089 = !DILocation(line: 387, column: 30, scope: !7084)
!7090 = !DILocation(line: 387, column: 7, scope: !7040)
!7091 = !DILocation(line: 388, column: 4, scope: !7084)
!7092 = !DILocation(line: 389, column: 3, scope: !7040)
!7093 = !DILocation(line: 393, column: 7, scope: !7094)
!7094 = distinct !DILexicalBlock(scope: !7040, file: !3, line: 393, column: 7)
!7095 = !DILocation(line: 393, column: 12, scope: !7094)
!7096 = !DILocation(line: 393, column: 15, scope: !7094)
!7097 = !DILocation(line: 393, column: 22, scope: !7094)
!7098 = !DILocation(line: 393, column: 25, scope: !7094)
!7099 = !DILocation(line: 393, column: 7, scope: !7040)
!7100 = !DILocation(line: 394, column: 4, scope: !7094)
!7101 = !DILocation(line: 395, column: 3, scope: !7040)
!7102 = !DILocation(line: 397, column: 3, scope: !7040)
!7103 = !DILocation(line: 400, column: 6, scope: !6999)
!7104 = !DILocation(line: 400, column: 12, scope: !6999)
!7105 = !DILocation(line: 401, column: 9, scope: !7106)
!7106 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 401, column: 6)
!7107 = !DILocation(line: 401, column: 7, scope: !7106)
!7108 = !DILocation(line: 401, column: 6, scope: !6999)
!7109 = !DILocation(line: 402, column: 3, scope: !7106)
!7110 = !DILocation(line: 403, column: 6, scope: !6999)
!7111 = !DILocation(line: 404, column: 8, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 404, column: 6)
!7113 = !DILocation(line: 404, column: 14, scope: !7112)
!7114 = !DILocation(line: 404, column: 19, scope: !7112)
!7115 = !DILocation(line: 404, column: 6, scope: !6999)
!7116 = !DILocation(line: 405, column: 3, scope: !7112)
!7117 = !DILocation(line: 407, column: 9, scope: !6999)
!7118 = !DILocation(line: 407, column: 15, scope: !6999)
!7119 = !DILocation(line: 407, column: 5, scope: !6999)
!7120 = !DILocation(line: 408, column: 6, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 408, column: 6)
!7122 = !DILocation(line: 408, column: 10, scope: !7121)
!7123 = !DILocation(line: 408, column: 14, scope: !7121)
!7124 = !DILocation(line: 408, column: 6, scope: !6999)
!7125 = !DILocation(line: 409, column: 11, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7121, file: !3, line: 408, column: 41)
!7127 = !DILocation(line: 409, column: 3, scope: !7126)
!7128 = !DILocation(line: 414, column: 8, scope: !7129)
!7129 = distinct !DILexicalBlock(scope: !7126, file: !3, line: 409, column: 16)
!7130 = !DILocation(line: 415, column: 4, scope: !7129)
!7131 = !DILocation(line: 417, column: 2, scope: !7126)
!7132 = !DILocation(line: 419, column: 6, scope: !7133)
!7133 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 419, column: 6)
!7134 = !DILocation(line: 419, column: 6, scope: !6999)
!7135 = !DILocation(line: 420, column: 28, scope: !7136)
!7136 = distinct !DILexicalBlock(scope: !7133, file: !3, line: 419, column: 12)
!7137 = !DILocation(line: 420, column: 15, scope: !7136)
!7138 = !DILocation(line: 420, column: 9, scope: !7136)
!7139 = !DILocation(line: 420, column: 13, scope: !7136)
!7140 = !DILocation(line: 421, column: 20, scope: !7141)
!7141 = distinct !DILexicalBlock(scope: !7136, file: !3, line: 421, column: 7)
!7142 = !DILocation(line: 421, column: 7, scope: !7141)
!7143 = !DILocation(line: 421, column: 7, scope: !7136)
!7144 = !DILocation(line: 422, column: 24, scope: !7145)
!7145 = distinct !DILexicalBlock(scope: !7141, file: !3, line: 421, column: 26)
!7146 = !DILocation(line: 422, column: 10, scope: !7145)
!7147 = !DILocation(line: 422, column: 8, scope: !7145)
!7148 = !DILocation(line: 423, column: 4, scope: !7145)
!7149 = !DILocation(line: 425, column: 2, scope: !7136)
!7150 = !DILocation(line: 427, column: 10, scope: !6999)
!7151 = !DILocation(line: 427, column: 2, scope: !6999)
!7152 = !DILocation(line: 429, column: 9, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 427, column: 15)
!7154 = !DILocation(line: 429, column: 14, scope: !7153)
!7155 = !DILocation(line: 430, column: 3, scope: !7153)
!7156 = !DILocation(line: 432, column: 9, scope: !7153)
!7157 = !DILocation(line: 432, column: 14, scope: !7153)
!7158 = !DILocation(line: 433, column: 31, scope: !7153)
!7159 = !DILocation(line: 433, column: 18, scope: !7153)
!7160 = !DILocation(line: 433, column: 9, scope: !7153)
!7161 = !DILocation(line: 433, column: 16, scope: !7153)
!7162 = !DILocation(line: 434, column: 20, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 434, column: 7)
!7164 = !DILocation(line: 434, column: 7, scope: !7163)
!7165 = !DILocation(line: 434, column: 7, scope: !7153)
!7166 = !DILocation(line: 435, column: 24, scope: !7167)
!7167 = distinct !DILexicalBlock(scope: !7163, file: !3, line: 434, column: 29)
!7168 = !DILocation(line: 435, column: 10, scope: !7167)
!7169 = !DILocation(line: 435, column: 8, scope: !7167)
!7170 = !DILocation(line: 436, column: 4, scope: !7167)
!7171 = !DILocation(line: 438, column: 29, scope: !7153)
!7172 = !DILocation(line: 438, column: 16, scope: !7153)
!7173 = !DILocation(line: 438, column: 9, scope: !7153)
!7174 = !DILocation(line: 438, column: 14, scope: !7153)
!7175 = !DILocation(line: 439, column: 3, scope: !7153)
!7176 = !DILocation(line: 441, column: 9, scope: !7153)
!7177 = !DILocation(line: 441, column: 14, scope: !7153)
!7178 = !DILocation(line: 442, column: 16, scope: !7153)
!7179 = !DILocation(line: 442, column: 9, scope: !7153)
!7180 = !DILocation(line: 442, column: 14, scope: !7153)
!7181 = !DILocation(line: 443, column: 32, scope: !7153)
!7182 = !DILocation(line: 443, column: 40, scope: !7153)
!7183 = !DILocation(line: 443, column: 16, scope: !7153)
!7184 = !DILocation(line: 443, column: 9, scope: !7153)
!7185 = !DILocation(line: 443, column: 14, scope: !7153)
!7186 = !DILocation(line: 444, column: 20, scope: !7187)
!7187 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 444, column: 7)
!7188 = !DILocation(line: 444, column: 7, scope: !7187)
!7189 = !DILocation(line: 444, column: 7, scope: !7153)
!7190 = !DILocation(line: 445, column: 24, scope: !7191)
!7191 = distinct !DILexicalBlock(scope: !7187, file: !3, line: 444, column: 27)
!7192 = !DILocation(line: 445, column: 10, scope: !7191)
!7193 = !DILocation(line: 445, column: 8, scope: !7191)
!7194 = !DILocation(line: 446, column: 4, scope: !7191)
!7195 = !DILocation(line: 448, column: 3, scope: !7153)
!7196 = !DILocation(line: 450, column: 16, scope: !7153)
!7197 = !DILocation(line: 450, column: 3, scope: !7153)
!7198 = !DILocation(line: 453, column: 9, scope: !7153)
!7199 = !DILocation(line: 453, column: 14, scope: !7153)
!7200 = !DILocation(line: 454, column: 30, scope: !7153)
!7201 = !DILocation(line: 454, column: 38, scope: !7153)
!7202 = !DILocation(line: 454, column: 16, scope: !7153)
!7203 = !DILocation(line: 454, column: 9, scope: !7153)
!7204 = !DILocation(line: 454, column: 14, scope: !7153)
!7205 = !DILocation(line: 455, column: 20, scope: !7206)
!7206 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 455, column: 7)
!7207 = !DILocation(line: 455, column: 7, scope: !7206)
!7208 = !DILocation(line: 455, column: 7, scope: !7153)
!7209 = !DILocation(line: 456, column: 24, scope: !7210)
!7210 = distinct !DILexicalBlock(scope: !7206, file: !3, line: 455, column: 27)
!7211 = !DILocation(line: 456, column: 10, scope: !7210)
!7212 = !DILocation(line: 456, column: 8, scope: !7210)
!7213 = !DILocation(line: 457, column: 4, scope: !7210)
!7214 = !DILocation(line: 459, column: 17, scope: !7153)
!7215 = !DILocation(line: 459, column: 9, scope: !7153)
!7216 = !DILocation(line: 459, column: 15, scope: !7153)
!7217 = !DILocation(line: 460, column: 29, scope: !7153)
!7218 = !DILocation(line: 460, column: 35, scope: !7153)
!7219 = !DILocation(line: 460, column: 16, scope: !7153)
!7220 = !DILocation(line: 460, column: 9, scope: !7153)
!7221 = !DILocation(line: 460, column: 14, scope: !7153)
!7222 = !DILocation(line: 461, column: 3, scope: !7153)
!7223 = !DILocation(line: 463, column: 9, scope: !7153)
!7224 = !DILocation(line: 463, column: 14, scope: !7153)
!7225 = !DILocation(line: 464, column: 7, scope: !7153)
!7226 = !DILocation(line: 465, column: 21, scope: !7153)
!7227 = !DILocation(line: 465, column: 16, scope: !7153)
!7228 = !DILocation(line: 465, column: 9, scope: !7153)
!7229 = !DILocation(line: 465, column: 14, scope: !7153)
!7230 = !DILocation(line: 466, column: 14, scope: !7231)
!7231 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 466, column: 7)
!7232 = !DILocation(line: 466, column: 8, scope: !7231)
!7233 = !DILocation(line: 466, column: 7, scope: !7153)
!7234 = !DILocation(line: 467, column: 4, scope: !7231)
!7235 = !DILocation(line: 468, column: 3, scope: !7153)
!7236 = !DILocation(line: 470, column: 3, scope: !7153)
!7237 = !DILocation(line: 473, column: 34, scope: !6999)
!7238 = !DILocation(line: 473, column: 38, scope: !6999)
!7239 = !DILocation(line: 473, column: 8, scope: !6999)
!7240 = !DILocation(line: 473, column: 6, scope: !6999)
!7241 = !DILocation(line: 474, column: 6, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 474, column: 6)
!7243 = !DILocation(line: 474, column: 10, scope: !7242)
!7244 = !DILocation(line: 474, column: 6, scope: !6999)
!7245 = !DILocation(line: 475, column: 29, scope: !7246)
!7246 = distinct !DILexicalBlock(scope: !7242, file: !3, line: 474, column: 16)
!7247 = !DILocation(line: 475, column: 33, scope: !7246)
!7248 = !DILocation(line: 475, column: 9, scope: !7246)
!7249 = !DILocation(line: 475, column: 7, scope: !7246)
!7250 = !DILocation(line: 476, column: 17, scope: !7246)
!7251 = !DILocation(line: 476, column: 21, scope: !7246)
!7252 = !DILocation(line: 476, column: 3, scope: !7246)
!7253 = !DILocation(line: 477, column: 2, scope: !7246)
!7254 = !DILocation(line: 483, column: 10, scope: !6999)
!7255 = !DILocation(line: 483, column: 2, scope: !6999)
!7256 = !DILocation(line: 486, column: 15, scope: !7257)
!7257 = distinct !DILexicalBlock(scope: !6999, file: !3, line: 483, column: 15)
!7258 = !DILocation(line: 486, column: 3, scope: !7257)
!7259 = !DILocation(line: 487, column: 3, scope: !7257)
!7260 = !DILocation(line: 490, column: 13, scope: !7261)
!7261 = distinct !DILexicalBlock(scope: !7257, file: !3, line: 490, column: 7)
!7262 = !DILocation(line: 490, column: 7, scope: !7261)
!7263 = !DILocation(line: 490, column: 7, scope: !7257)
!7264 = !DILocation(line: 491, column: 18, scope: !7261)
!7265 = !DILocation(line: 491, column: 4, scope: !7261)
!7266 = !DILocation(line: 492, column: 3, scope: !7257)
!7267 = !DILocation(line: 494, column: 13, scope: !7268)
!7268 = distinct !DILexicalBlock(scope: !7257, file: !3, line: 494, column: 7)
!7269 = !DILocation(line: 494, column: 7, scope: !7268)
!7270 = !DILocation(line: 494, column: 7, scope: !7257)
!7271 = !DILocation(line: 495, column: 15, scope: !7268)
!7272 = !DILocation(line: 495, column: 4, scope: !7268)
!7273 = !DILocation(line: 496, column: 3, scope: !7257)
!7274 = !DILocation(line: 498, column: 3, scope: !7257)
!7275 = !DILocation(line: 499, column: 2, scope: !7257)
!7276 = !DILocation(line: 500, column: 1, scope: !6999)
!7277 = !DILocation(line: 501, column: 14, scope: !6999)
!7278 = !DILocation(line: 501, column: 2, scope: !6999)
!7279 = !DILocation(line: 502, column: 1, scope: !6999)
!7280 = !DILocation(line: 503, column: 2, scope: !6999)
!7281 = !DILocation(line: 504, column: 9, scope: !6999)
!7282 = !DILocation(line: 504, column: 2, scope: !6999)
!7283 = !DILocation(line: 505, column: 1, scope: !6999)
!7284 = distinct !DISubprogram(name: "fdget", scope: !7011, file: !7011, line: 62, type: !7285, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7287)
!7285 = !DISubroutineType(types: !7286)
!7286 = !{!7010, !7}
!7287 = !{!7288}
!7288 = !DILocalVariable(name: "fd", arg: 1, scope: !7284, file: !7011, line: 62, type: !7)
!7289 = !DILocation(line: 62, column: 44, scope: !7284)
!7290 = !DILocation(line: 64, column: 25, scope: !7284)
!7291 = !DILocation(line: 64, column: 17, scope: !7284)
!7292 = !DILocation(line: 64, column: 9, scope: !7284)
!7293 = !DILocation(line: 64, column: 2, scope: !7284)
!7294 = !DISubprogram(name: "memdup_user_nul", scope: !6253, file: !6253, line: 17, type: !7295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7295 = !DISubroutineType(types: !7296)
!7296 = !{!36, !317, !51}
!7297 = !DISubprogram(name: "getname_flags", scope: !268, file: !268, line: 2545, type: !7298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7298 = !DISubroutineType(types: !7299)
!7299 = !{!1685, !32, !38, !1306}
!7300 = !DISubprogram(name: "fget", scope: !7011, file: !7011, line: 49, type: !7301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7301 = !DISubroutineType(types: !7302)
!7302 = !{!319, !7}
!7303 = distinct !DISubprogram(name: "vfs_fsconfig_locked", scope: !3, file: !3, line: 282, type: !7304, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7306)
!7304 = !DISubroutineType(types: !7305)
!7305 = !{!38, !1654, !38, !1674}
!7306 = !{!7307, !7308, !7309, !7310}
!7307 = !DILocalVariable(name: "fc", arg: 1, scope: !7303, file: !3, line: 282, type: !1654)
!7308 = !DILocalVariable(name: "cmd", arg: 2, scope: !7303, file: !3, line: 282, type: !38)
!7309 = !DILocalVariable(name: "param", arg: 3, scope: !7303, file: !3, line: 283, type: !1674)
!7310 = !DILocalVariable(name: "ret", scope: !7303, file: !3, line: 285, type: !38)
!7311 = !DILocation(line: 282, column: 51, scope: !7303)
!7312 = !DILocation(line: 282, column: 59, scope: !7303)
!7313 = !DILocation(line: 283, column: 32, scope: !7303)
!7314 = !DILocation(line: 285, column: 2, scope: !7303)
!7315 = !DILocation(line: 285, column: 6, scope: !7303)
!7316 = !DILocation(line: 287, column: 29, scope: !7303)
!7317 = !DILocation(line: 287, column: 8, scope: !7303)
!7318 = !DILocation(line: 287, column: 6, scope: !7303)
!7319 = !DILocation(line: 288, column: 6, scope: !7320)
!7320 = distinct !DILexicalBlock(scope: !7303, file: !3, line: 288, column: 6)
!7321 = !DILocation(line: 288, column: 6, scope: !7303)
!7322 = !DILocation(line: 289, column: 10, scope: !7320)
!7323 = !DILocation(line: 289, column: 3, scope: !7320)
!7324 = !DILocation(line: 290, column: 10, scope: !7303)
!7325 = !DILocation(line: 290, column: 2, scope: !7303)
!7326 = !DILocation(line: 292, column: 25, scope: !7327)
!7327 = distinct !DILexicalBlock(scope: !7303, file: !3, line: 290, column: 15)
!7328 = !DILocation(line: 292, column: 10, scope: !7327)
!7329 = !DILocation(line: 292, column: 3, scope: !7327)
!7330 = !DILocation(line: 294, column: 25, scope: !7327)
!7331 = !DILocation(line: 294, column: 10, scope: !7327)
!7332 = !DILocation(line: 294, column: 3, scope: !7327)
!7333 = !DILocation(line: 296, column: 30, scope: !7327)
!7334 = !DILocation(line: 296, column: 10, scope: !7327)
!7335 = !DILocation(line: 296, column: 3, scope: !7327)
!7336 = !DILocation(line: 298, column: 7, scope: !7337)
!7337 = distinct !DILexicalBlock(scope: !7327, file: !3, line: 298, column: 7)
!7338 = !DILocation(line: 298, column: 11, scope: !7337)
!7339 = !DILocation(line: 298, column: 17, scope: !7337)
!7340 = !DILocation(line: 298, column: 45, scope: !7337)
!7341 = !DILocation(line: 299, column: 7, scope: !7337)
!7342 = !DILocation(line: 299, column: 11, scope: !7337)
!7343 = !DILocation(line: 299, column: 17, scope: !7337)
!7344 = !DILocation(line: 298, column: 7, scope: !7327)
!7345 = !DILocation(line: 300, column: 4, scope: !7337)
!7346 = !DILocation(line: 302, column: 29, scope: !7327)
!7347 = !DILocation(line: 302, column: 33, scope: !7327)
!7348 = !DILocation(line: 302, column: 10, scope: !7327)
!7349 = !DILocation(line: 302, column: 3, scope: !7327)
!7350 = !DILocation(line: 304, column: 1, scope: !7303)
!7351 = !DISubprogram(name: "putname", scope: !268, file: !268, line: 2549, type: !7352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7352 = !DISubroutineType(types: !7353)
!7353 = !{null, !1685}
!7354 = !DISubprogram(name: "fput", scope: !7011, file: !7011, line: 17, type: !2324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7355 = distinct !DISubprogram(name: "fdput", scope: !7011, file: !7011, line: 43, type: !7356, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7358)
!7356 = !DISubroutineType(types: !7357)
!7357 = !{null, !7010}
!7358 = !{!7359}
!7359 = !DILocalVariable(name: "fd", arg: 1, scope: !7355, file: !7011, line: 43, type: !7010)
!7360 = !DILocation(line: 43, column: 36, scope: !7355)
!7361 = !DILocation(line: 45, column: 9, scope: !7362)
!7362 = distinct !DILexicalBlock(scope: !7355, file: !7011, line: 45, column: 6)
!7363 = !DILocation(line: 45, column: 15, scope: !7362)
!7364 = !DILocation(line: 45, column: 6, scope: !7355)
!7365 = !DILocation(line: 46, column: 11, scope: !7362)
!7366 = !DILocation(line: 46, column: 3, scope: !7362)
!7367 = !DILocation(line: 47, column: 1, scope: !7355)
!7368 = distinct !DISubprogram(name: "__to_fd", scope: !7011, file: !7011, line: 57, type: !7369, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7371)
!7369 = !DISubroutineType(types: !7370)
!7370 = !{!7010, !55}
!7371 = !{!7372}
!7372 = !DILocalVariable(name: "v", arg: 1, scope: !7368, file: !7011, line: 57, type: !55)
!7373 = !DILocation(line: 57, column: 47, scope: !7368)
!7374 = !DILocation(line: 59, column: 20, scope: !7368)
!7375 = !DILocation(line: 59, column: 37, scope: !7368)
!7376 = !DILocation(line: 59, column: 39, scope: !7368)
!7377 = !DILocation(line: 59, column: 21, scope: !7368)
!7378 = !DILocation(line: 59, column: 45, scope: !7368)
!7379 = !DILocation(line: 59, column: 47, scope: !7368)
!7380 = !DILocation(line: 59, column: 2, scope: !7368)
!7381 = !DISubprogram(name: "__fdget", scope: !7011, file: !7011, line: 52, type: !7382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7382 = !DISubroutineType(types: !7383)
!7383 = !{!55, !7}
!7384 = !DISubprogram(name: "finish_clean_context", scope: !6455, file: !6455, line: 49, type: !1652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7385 = distinct !DISubprogram(name: "vfs_cmd_create", scope: !3, file: !3, line: 212, type: !7386, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7388)
!7386 = !DISubroutineType(types: !7387)
!7387 = !{!38, !1654, !969}
!7388 = !{!7389, !7390, !7391, !7392}
!7389 = !DILocalVariable(name: "fc", arg: 1, scope: !7385, file: !3, line: 212, type: !1654)
!7390 = !DILocalVariable(name: "exclusive", arg: 2, scope: !7385, file: !3, line: 212, type: !969)
!7391 = !DILocalVariable(name: "sb", scope: !7385, file: !3, line: 214, type: !1636)
!7392 = !DILocalVariable(name: "ret", scope: !7385, file: !3, line: 215, type: !38)
!7393 = !DILocation(line: 212, column: 46, scope: !7385)
!7394 = !DILocation(line: 212, column: 55, scope: !7385)
!7395 = !DILocation(line: 214, column: 2, scope: !7385)
!7396 = !DILocation(line: 214, column: 22, scope: !7385)
!7397 = !DILocation(line: 215, column: 2, scope: !7385)
!7398 = !DILocation(line: 215, column: 6, scope: !7385)
!7399 = !DILocation(line: 217, column: 6, scope: !7400)
!7400 = distinct !DILexicalBlock(scope: !7385, file: !3, line: 217, column: 6)
!7401 = !DILocation(line: 217, column: 10, scope: !7400)
!7402 = !DILocation(line: 217, column: 16, scope: !7400)
!7403 = !DILocation(line: 217, column: 6, scope: !7385)
!7404 = !DILocation(line: 218, column: 3, scope: !7400)
!7405 = !DILocation(line: 220, column: 21, scope: !7406)
!7406 = distinct !DILexicalBlock(scope: !7385, file: !3, line: 220, column: 6)
!7407 = !DILocation(line: 220, column: 7, scope: !7406)
!7408 = !DILocation(line: 220, column: 6, scope: !7385)
!7409 = !DILocation(line: 221, column: 3, scope: !7406)
!7410 = !DILocation(line: 224, column: 6, scope: !7411)
!7411 = distinct !DILexicalBlock(scope: !7385, file: !3, line: 224, column: 6)
!7412 = !DILocation(line: 224, column: 16, scope: !7411)
!7413 = !DILocation(line: 224, column: 19, scope: !7411)
!7414 = !DILocation(line: 224, column: 23, scope: !7411)
!7415 = !DILocation(line: 224, column: 27, scope: !7411)
!7416 = !DILocation(line: 224, column: 6, scope: !7385)
!7417 = !DILocation(line: 225, column: 3, scope: !7411)
!7418 = !DILocation(line: 227, column: 2, scope: !7385)
!7419 = !DILocation(line: 227, column: 6, scope: !7385)
!7420 = !DILocation(line: 227, column: 12, scope: !7385)
!7421 = !DILocation(line: 228, column: 18, scope: !7385)
!7422 = !DILocation(line: 228, column: 2, scope: !7385)
!7423 = !DILocation(line: 228, column: 6, scope: !7385)
!7424 = !DILocation(line: 228, column: 16, scope: !7385)
!7425 = !DILocation(line: 230, column: 21, scope: !7385)
!7426 = !DILocation(line: 230, column: 8, scope: !7385)
!7427 = !DILocation(line: 230, column: 6, scope: !7385)
!7428 = !DILocation(line: 231, column: 6, scope: !7429)
!7429 = distinct !DILexicalBlock(scope: !7385, file: !3, line: 231, column: 6)
!7430 = !DILocation(line: 231, column: 6, scope: !7385)
!7431 = !DILocation(line: 232, column: 3, scope: !7432)
!7432 = distinct !DILexicalBlock(scope: !7429, file: !3, line: 231, column: 11)
!7433 = !DILocation(line: 232, column: 7, scope: !7432)
!7434 = !DILocation(line: 232, column: 13, scope: !7432)
!7435 = !DILocation(line: 233, column: 10, scope: !7432)
!7436 = !DILocation(line: 233, column: 3, scope: !7432)
!7437 = !DILocation(line: 236, column: 7, scope: !7385)
!7438 = !DILocation(line: 236, column: 11, scope: !7385)
!7439 = !DILocation(line: 236, column: 17, scope: !7385)
!7440 = !DILocation(line: 236, column: 5, scope: !7385)
!7441 = !DILocation(line: 237, column: 31, scope: !7385)
!7442 = !DILocation(line: 237, column: 8, scope: !7385)
!7443 = !DILocation(line: 237, column: 6, scope: !7385)
!7444 = !DILocation(line: 238, column: 6, scope: !7445)
!7445 = distinct !DILexicalBlock(scope: !7385, file: !3, line: 238, column: 6)
!7446 = !DILocation(line: 238, column: 6, scope: !7385)
!7447 = !DILocation(line: 239, column: 18, scope: !7448)
!7448 = distinct !DILexicalBlock(scope: !7445, file: !3, line: 238, column: 21)
!7449 = !DILocation(line: 239, column: 3, scope: !7448)
!7450 = !DILocation(line: 240, column: 3, scope: !7448)
!7451 = !DILocation(line: 240, column: 7, scope: !7448)
!7452 = !DILocation(line: 240, column: 13, scope: !7448)
!7453 = !DILocation(line: 241, column: 10, scope: !7448)
!7454 = !DILocation(line: 241, column: 3, scope: !7448)
!7455 = !DILocation(line: 245, column: 12, scope: !7385)
!7456 = !DILocation(line: 245, column: 16, scope: !7385)
!7457 = !DILocation(line: 245, column: 2, scope: !7385)
!7458 = !DILocation(line: 246, column: 2, scope: !7385)
!7459 = !DILocation(line: 246, column: 6, scope: !7385)
!7460 = !DILocation(line: 246, column: 12, scope: !7385)
!7461 = !DILocation(line: 247, column: 2, scope: !7385)
!7462 = !DILocation(line: 248, column: 1, scope: !7385)
!7463 = distinct !DISubprogram(name: "vfs_cmd_reconfigure", scope: !3, file: !3, line: 250, type: !1652, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7464)
!7464 = !{!7465, !7466, !7467}
!7465 = !DILocalVariable(name: "fc", arg: 1, scope: !7463, file: !3, line: 250, type: !1654)
!7466 = !DILocalVariable(name: "sb", scope: !7463, file: !3, line: 252, type: !1636)
!7467 = !DILocalVariable(name: "ret", scope: !7463, file: !3, line: 253, type: !38)
!7468 = !DILocation(line: 250, column: 51, scope: !7463)
!7469 = !DILocation(line: 252, column: 2, scope: !7463)
!7470 = !DILocation(line: 252, column: 22, scope: !7463)
!7471 = !DILocation(line: 253, column: 2, scope: !7463)
!7472 = !DILocation(line: 253, column: 6, scope: !7463)
!7473 = !DILocation(line: 255, column: 6, scope: !7474)
!7474 = distinct !DILexicalBlock(scope: !7463, file: !3, line: 255, column: 6)
!7475 = !DILocation(line: 255, column: 10, scope: !7474)
!7476 = !DILocation(line: 255, column: 16, scope: !7474)
!7477 = !DILocation(line: 255, column: 6, scope: !7463)
!7478 = !DILocation(line: 256, column: 3, scope: !7474)
!7479 = !DILocation(line: 258, column: 2, scope: !7463)
!7480 = !DILocation(line: 258, column: 6, scope: !7463)
!7481 = !DILocation(line: 258, column: 12, scope: !7463)
!7482 = !DILocation(line: 260, column: 7, scope: !7463)
!7483 = !DILocation(line: 260, column: 11, scope: !7463)
!7484 = !DILocation(line: 260, column: 17, scope: !7463)
!7485 = !DILocation(line: 260, column: 5, scope: !7463)
!7486 = !DILocation(line: 261, column: 18, scope: !7487)
!7487 = distinct !DILexicalBlock(scope: !7463, file: !3, line: 261, column: 6)
!7488 = !DILocation(line: 261, column: 22, scope: !7487)
!7489 = !DILocation(line: 261, column: 7, scope: !7487)
!7490 = !DILocation(line: 261, column: 6, scope: !7463)
!7491 = !DILocation(line: 262, column: 3, scope: !7492)
!7492 = distinct !DILexicalBlock(scope: !7487, file: !3, line: 261, column: 49)
!7493 = !DILocation(line: 262, column: 7, scope: !7492)
!7494 = !DILocation(line: 262, column: 13, scope: !7492)
!7495 = !DILocation(line: 263, column: 3, scope: !7492)
!7496 = !DILocation(line: 266, column: 14, scope: !7463)
!7497 = !DILocation(line: 266, column: 18, scope: !7463)
!7498 = !DILocation(line: 266, column: 2, scope: !7463)
!7499 = !DILocation(line: 267, column: 26, scope: !7463)
!7500 = !DILocation(line: 267, column: 8, scope: !7463)
!7501 = !DILocation(line: 267, column: 6, scope: !7463)
!7502 = !DILocation(line: 268, column: 12, scope: !7463)
!7503 = !DILocation(line: 268, column: 16, scope: !7463)
!7504 = !DILocation(line: 268, column: 2, scope: !7463)
!7505 = !DILocation(line: 269, column: 6, scope: !7506)
!7506 = distinct !DILexicalBlock(scope: !7463, file: !3, line: 269, column: 6)
!7507 = !DILocation(line: 269, column: 6, scope: !7463)
!7508 = !DILocation(line: 270, column: 3, scope: !7509)
!7509 = distinct !DILexicalBlock(scope: !7506, file: !3, line: 269, column: 11)
!7510 = !DILocation(line: 270, column: 7, scope: !7509)
!7511 = !DILocation(line: 270, column: 13, scope: !7509)
!7512 = !DILocation(line: 271, column: 10, scope: !7509)
!7513 = !DILocation(line: 271, column: 3, scope: !7509)
!7514 = !DILocation(line: 274, column: 20, scope: !7463)
!7515 = !DILocation(line: 274, column: 2, scope: !7463)
!7516 = !DILocation(line: 275, column: 2, scope: !7463)
!7517 = !DILocation(line: 276, column: 1, scope: !7463)
!7518 = !DISubprogram(name: "vfs_parse_fs_param", scope: !14, file: !14, line: 136, type: !1672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7519 = !DISubprogram(name: "mount_capable", scope: !6455, file: !6455, line: 115, type: !7520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7520 = !DISubroutineType(types: !7521)
!7521 = !{!969, !1654}
!7522 = !DISubprogram(name: "vfs_get_tree", scope: !14, file: !14, line: 142, type: !1652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7523 = !DISubprogram(name: "security_sb_kern_mount", scope: !2374, file: !2374, line: 307, type: !4436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7524 = !DISubprogram(name: "fc_drop_locked", scope: !14, file: !14, line: 146, type: !1664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7525 = !DISubprogram(name: "up_write", scope: !809, file: !809, line: 203, type: !7526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7526 = !DISubroutineType(types: !7527)
!7527 = !{null, !7528}
!7528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!7529 = !DISubprogram(name: "ns_capable", scope: !1360, file: !1360, line: 149, type: !7530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7530 = !DISubroutineType(types: !7531)
!7531 = !{!969, !911, !38}
!7532 = !DISubprogram(name: "down_write", scope: !809, file: !809, line: 187, type: !7526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7533 = !DISubprogram(name: "reconfigure_super", scope: !6455, file: !6455, line: 111, type: !1652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7534 = !DISubprogram(name: "vfs_clean_context", scope: !6455, file: !6455, line: 48, type: !1664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
