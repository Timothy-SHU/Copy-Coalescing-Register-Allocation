; ModuleID = 'fs/9p/vfs_super.c'
source_filename = "fs/9p/vfs_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.23 }
%struct.atomic_t = type { i32 }
%union.anon.23 = type { i64 }
%struct.v9fs_session_info = type { i32, i8, i16, i32, i32, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i64 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.p9_stat_dotl = type { i64, %struct.p9_qid, i32, %struct.kuid_t, %struct.kgid_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.p9_qid = type { i8, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.14 = type { %struct.callback_head }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, i64, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i64, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { ptr, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.21, %struct.list_head, %struct.list_head, %union.anon.22 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.17, ptr }
%union.anon.17 = type { i64 }
%struct.lockref = type { %union.anon.19 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { %struct.list_head }
%union.anon.22 = type { %struct.hlist_node }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.p9_rstatfs = type { i32, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.kstatfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i64, i64, i64, [4 x i64] }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8, ptr }

@.str = private unnamed_addr constant [3 x i8] c"9p\00", align 1, !dbg !0
@v9fs_fs_type = hidden global %struct.file_system_type { ptr @.str, i32 32768, ptr null, ptr null, ptr @v9fs_mount, ptr @v9fs_kill_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !7
@__UNIQUE_ID_alias321 = internal constant [15 x i8] c"9p.alias=fs-9p\00", section ".modinfo", align 1, !dbg !5079
@v9fs_cached_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@v9fs_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5084
@v9fs_super_ops_dotl = internal constant %struct.super_operations { ptr @v9fs_alloc_inode, ptr null, ptr @v9fs_free_inode, ptr null, ptr @v9fs_write_inode_dotl, ptr @v9fs_drop_inode, ptr @v9fs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_statfs, ptr null, ptr @v9fs_umount_begin, ptr @v9fs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5089
@v9fs_xattr_handlers = external dso_local global [0 x ptr], align 8
@v9fs_super_ops = internal constant %struct.super_operations { ptr @v9fs_alloc_inode, ptr null, ptr @v9fs_free_inode, ptr null, ptr @v9fs_write_inode, ptr @v9fs_drop_inode, ptr @v9fs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr @v9fs_umount_begin, ptr @v9fs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5091
@__tracepoint_9p_fid_ref = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_alias321], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 16 !dbg !5102 {
entry:
  %retval = alloca ptr, align 8
  %fs_type.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %dev_name.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %root = alloca ptr, align 8
  %v9ses = alloca ptr, align 8
  %mode = alloca i16, align 2
  %fid = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %st = alloca ptr, align 8
  %st47 = alloca ptr, align 8
  %tmp67 = alloca i32, align 4
  store ptr %fs_type, ptr %fs_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_type.addr, metadata !5104, metadata !DIExpression()), !dbg !5233
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5105, metadata !DIExpression()), !dbg !5234
  store ptr %dev_name, ptr %dev_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_name.addr, metadata !5106, metadata !DIExpression()), !dbg !5235
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5107, metadata !DIExpression()), !dbg !5236
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #14, !dbg !5237
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5108, metadata !DIExpression()), !dbg !5238
  store ptr null, ptr %sb, align 8, !dbg !5238
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #14, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5109, metadata !DIExpression()), !dbg !5240
  store ptr null, ptr %inode, align 8, !dbg !5240
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #14, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5110, metadata !DIExpression()), !dbg !5242
  store ptr null, ptr %root, align 8, !dbg !5242
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #14, !dbg !5243
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !5111, metadata !DIExpression()), !dbg !5244
  store ptr null, ptr %v9ses, align 8, !dbg !5244
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #14, !dbg !5245
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !5167, metadata !DIExpression()), !dbg !5246
  store i16 1023, ptr %mode, align 2, !dbg !5246
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #14, !dbg !5247
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5168, metadata !DIExpression()), !dbg !5248
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #14, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5182, metadata !DIExpression()), !dbg !5250
  store i32 0, ptr %retval1, align 4, !dbg !5250
  store i32 0, ptr %tmp, align 4, !dbg !5251
  %0 = load i32, ptr %tmp, align 4, !dbg !5254
  %call = call noalias ptr @kzalloc(i64 noundef 120, i32 noundef 3264) #15, !dbg !5255
  store ptr %call, ptr %v9ses, align 8, !dbg !5256
  %1 = load ptr, ptr %v9ses, align 8, !dbg !5257
  %tobool = icmp ne ptr %1, null, !dbg !5257
  br i1 %tobool, label %if.end, label %if.then, !dbg !5259

if.then:                                          ; preds = %entry
  %call2 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !5260
  store ptr %call2, ptr %retval, align 8, !dbg !5261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5261

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %v9ses, align 8, !dbg !5262
  %3 = load ptr, ptr %dev_name.addr, align 8, !dbg !5263
  %4 = load ptr, ptr %data.addr, align 8, !dbg !5264
  %call3 = call ptr @v9fs_session_init(ptr noundef %2, ptr noundef %3, ptr noundef %4) #16, !dbg !5265
  store ptr %call3, ptr %fid, align 8, !dbg !5266
  %5 = load ptr, ptr %fid, align 8, !dbg !5267
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %5) #16, !dbg !5269
  br i1 %call4, label %if.then5, label %if.end7, !dbg !5270

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %fid, align 8, !dbg !5271
  %call6 = call i64 @PTR_ERR(ptr noundef %6) #16, !dbg !5273
  %conv = trunc i64 %call6 to i32, !dbg !5273
  store i32 %conv, ptr %retval1, align 4, !dbg !5274
  br label %free_session, !dbg !5275

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %fs_type.addr, align 8, !dbg !5276
  %8 = load i32, ptr %flags.addr, align 4, !dbg !5277
  %9 = load ptr, ptr %v9ses, align 8, !dbg !5278
  %call8 = call ptr @sget(ptr noundef %7, ptr noundef null, ptr noundef @v9fs_set_super, i32 noundef %8, ptr noundef %9) #16, !dbg !5279
  store ptr %call8, ptr %sb, align 8, !dbg !5280
  %10 = load ptr, ptr %sb, align 8, !dbg !5281
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %10) #16, !dbg !5283
  br i1 %call9, label %if.then10, label %if.end13, !dbg !5284

if.then10:                                        ; preds = %if.end7
  %11 = load ptr, ptr %sb, align 8, !dbg !5285
  %call11 = call i64 @PTR_ERR(ptr noundef %11) #16, !dbg !5287
  %conv12 = trunc i64 %call11 to i32, !dbg !5287
  store i32 %conv12, ptr %retval1, align 4, !dbg !5288
  br label %clunk_fid, !dbg !5289

if.end13:                                         ; preds = %if.end7
  %12 = load ptr, ptr %sb, align 8, !dbg !5290
  %13 = load ptr, ptr %v9ses, align 8, !dbg !5291
  %14 = load i32, ptr %flags.addr, align 4, !dbg !5292
  %call14 = call i32 @v9fs_fill_super(ptr noundef %12, ptr noundef %13, i32 noundef %14) #16, !dbg !5293
  store i32 %call14, ptr %retval1, align 4, !dbg !5294
  %15 = load i32, ptr %retval1, align 4, !dbg !5295
  %tobool15 = icmp ne i32 %15, 0, !dbg !5295
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5297

if.then16:                                        ; preds = %if.end13
  br label %release_sb, !dbg !5298

if.end17:                                         ; preds = %if.end13
  %16 = load ptr, ptr %v9ses, align 8, !dbg !5299
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %16, i32 0, i32 4, !dbg !5301
  %17 = load i32, ptr %cache, align 4, !dbg !5301
  %and = and i32 %17, 10, !dbg !5302
  %tobool18 = icmp ne i32 %and, 0, !dbg !5302
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !5303

if.then19:                                        ; preds = %if.end17
  %18 = load ptr, ptr %sb, align 8, !dbg !5304
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 40, !dbg !5305
  store ptr @v9fs_cached_dentry_operations, ptr %s_d_op, align 16, !dbg !5306
  br label %if.end21, !dbg !5304

if.else:                                          ; preds = %if.end17
  %19 = load ptr, ptr %sb, align 8, !dbg !5307
  %s_d_op20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 40, !dbg !5308
  store ptr @v9fs_dentry_operations, ptr %s_d_op20, align 16, !dbg !5309
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %20 = load ptr, ptr %sb, align 8, !dbg !5310
  %21 = load i16, ptr %mode, align 2, !dbg !5311
  %conv22 = zext i16 %21 to i32, !dbg !5311
  %or = or i32 16384, %conv22, !dbg !5312
  %conv23 = trunc i32 %or to i16, !dbg !5313
  %call24 = call ptr @v9fs_get_inode(ptr noundef %20, i16 noundef zeroext %conv23, i32 noundef 0) #16, !dbg !5314
  store ptr %call24, ptr %inode, align 8, !dbg !5315
  %22 = load ptr, ptr %inode, align 8, !dbg !5316
  %call25 = call zeroext i1 @IS_ERR(ptr noundef %22) #16, !dbg !5318
  br i1 %call25, label %if.then26, label %if.end29, !dbg !5319

if.then26:                                        ; preds = %if.end21
  %23 = load ptr, ptr %inode, align 8, !dbg !5320
  %call27 = call i64 @PTR_ERR(ptr noundef %23) #16, !dbg !5322
  %conv28 = trunc i64 %call27 to i32, !dbg !5322
  store i32 %conv28, ptr %retval1, align 4, !dbg !5323
  br label %release_sb, !dbg !5324

if.end29:                                         ; preds = %if.end21
  %24 = load ptr, ptr %inode, align 8, !dbg !5325
  %call30 = call ptr @d_make_root(ptr noundef %24) #16, !dbg !5326
  store ptr %call30, ptr %root, align 8, !dbg !5327
  %25 = load ptr, ptr %root, align 8, !dbg !5328
  %tobool31 = icmp ne ptr %25, null, !dbg !5328
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !5330

if.then32:                                        ; preds = %if.end29
  store i32 -12, ptr %retval1, align 4, !dbg !5331
  br label %release_sb, !dbg !5333

if.end33:                                         ; preds = %if.end29
  %26 = load ptr, ptr %root, align 8, !dbg !5334
  %27 = load ptr, ptr %sb, align 8, !dbg !5335
  %s_root = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 13, !dbg !5336
  store ptr %26, ptr %s_root, align 8, !dbg !5337
  %28 = load ptr, ptr %v9ses, align 8, !dbg !5338
  %call34 = call i32 @v9fs_proto_dotl(ptr noundef %28) #16, !dbg !5339
  %tobool35 = icmp ne i32 %call34, 0, !dbg !5339
  br i1 %tobool35, label %if.then36, label %if.else46, !dbg !5340

if.then36:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #14, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %st, metadata !5183, metadata !DIExpression()), !dbg !5342
  store ptr null, ptr %st, align 8, !dbg !5342
  %29 = load ptr, ptr %fid, align 8, !dbg !5343
  %call37 = call ptr @p9_client_getattr_dotl(ptr noundef %29, i64 noundef 2047) #16, !dbg !5344
  store ptr %call37, ptr %st, align 8, !dbg !5345
  %30 = load ptr, ptr %st, align 8, !dbg !5346
  %call38 = call zeroext i1 @IS_ERR(ptr noundef %30) #16, !dbg !5348
  br i1 %call38, label %if.then39, label %if.end42, !dbg !5349

if.then39:                                        ; preds = %if.then36
  %31 = load ptr, ptr %st, align 8, !dbg !5350
  %call40 = call i64 @PTR_ERR(ptr noundef %31) #16, !dbg !5352
  %conv41 = trunc i64 %call40 to i32, !dbg !5352
  store i32 %conv41, ptr %retval1, align 4, !dbg !5353
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5354

if.end42:                                         ; preds = %if.then36
  %32 = load ptr, ptr %st, align 8, !dbg !5355
  %qid = getelementptr inbounds %struct.p9_stat_dotl, ptr %32, i32 0, i32 1, !dbg !5356
  %call43 = call i64 @v9fs_qid2ino(ptr noundef %qid) #16, !dbg !5357
  %33 = load ptr, ptr %root, align 8, !dbg !5358
  %call44 = call ptr @d_inode(ptr noundef %33) #16, !dbg !5359
  %i_ino = getelementptr inbounds %struct.inode, ptr %call44, i32 0, i32 12, !dbg !5360
  store i64 %call43, ptr %i_ino, align 8, !dbg !5361
  %34 = load ptr, ptr %st, align 8, !dbg !5362
  %35 = load ptr, ptr %root, align 8, !dbg !5363
  %call45 = call ptr @d_inode(ptr noundef %35) #16, !dbg !5364
  call void @v9fs_stat2inode_dotl(ptr noundef %34, ptr noundef %call45, i32 noundef 0) #16, !dbg !5365
  %36 = load ptr, ptr %st, align 8, !dbg !5366
  call void @kfree(ptr noundef %36) #16, !dbg !5367
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5368
  br label %cleanup, !dbg !5368

cleanup:                                          ; preds = %if.then39, %if.end42
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #14, !dbg !5368
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup76 [
    i32 0, label %cleanup.cont
    i32 4, label %release_sb
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end62, !dbg !5369

if.else46:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 8, ptr %st47) #14, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %st47, metadata !5209, metadata !DIExpression()), !dbg !5371
  store ptr null, ptr %st47, align 8, !dbg !5371
  %37 = load ptr, ptr %fid, align 8, !dbg !5372
  %call48 = call ptr @p9_client_stat(ptr noundef %37) #16, !dbg !5373
  store ptr %call48, ptr %st47, align 8, !dbg !5374
  %38 = load ptr, ptr %st47, align 8, !dbg !5375
  %call49 = call zeroext i1 @IS_ERR(ptr noundef %38) #16, !dbg !5377
  br i1 %call49, label %if.then50, label %if.end53, !dbg !5378

if.then50:                                        ; preds = %if.else46
  %39 = load ptr, ptr %st47, align 8, !dbg !5379
  %call51 = call i64 @PTR_ERR(ptr noundef %39) #16, !dbg !5381
  %conv52 = trunc i64 %call51 to i32, !dbg !5381
  store i32 %conv52, ptr %retval1, align 4, !dbg !5382
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !5383

if.end53:                                         ; preds = %if.else46
  %40 = load ptr, ptr %st47, align 8, !dbg !5384
  %qid54 = getelementptr inbounds %struct.p9_wstat, ptr %40, i32 0, i32 3, !dbg !5385
  %call55 = call i64 @v9fs_qid2ino(ptr noundef %qid54) #16, !dbg !5386
  %41 = load ptr, ptr %root, align 8, !dbg !5387
  %call56 = call ptr @d_inode(ptr noundef %41) #16, !dbg !5388
  %i_ino57 = getelementptr inbounds %struct.inode, ptr %call56, i32 0, i32 12, !dbg !5389
  store i64 %call55, ptr %i_ino57, align 8, !dbg !5390
  %42 = load ptr, ptr %st47, align 8, !dbg !5391
  %43 = load ptr, ptr %root, align 8, !dbg !5392
  %call58 = call ptr @d_inode(ptr noundef %43) #16, !dbg !5393
  %44 = load ptr, ptr %sb, align 8, !dbg !5394
  call void @v9fs_stat2inode(ptr noundef %42, ptr noundef %call58, ptr noundef %44, i32 noundef 0) #16, !dbg !5395
  %45 = load ptr, ptr %st47, align 8, !dbg !5396
  call void @p9stat_free(ptr noundef %45) #16, !dbg !5397
  %46 = load ptr, ptr %st47, align 8, !dbg !5398
  call void @kfree(ptr noundef %46) #16, !dbg !5399
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5400
  br label %cleanup59, !dbg !5400

cleanup59:                                        ; preds = %if.then50, %if.end53
  call void @llvm.lifetime.end.p0(i64 8, ptr %st47) #14, !dbg !5400
  %cleanup.dest60 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest60, label %cleanup76 [
    i32 0, label %cleanup.cont61
    i32 4, label %release_sb
  ]

cleanup.cont61:                                   ; preds = %cleanup59
  br label %if.end62

if.end62:                                         ; preds = %cleanup.cont61, %cleanup.cont
  %47 = load ptr, ptr %inode, align 8, !dbg !5401
  %48 = load ptr, ptr %fid, align 8, !dbg !5402
  %call63 = call i32 @v9fs_get_acl(ptr noundef %47, ptr noundef %48) #16, !dbg !5403
  store i32 %call63, ptr %retval1, align 4, !dbg !5404
  %49 = load i32, ptr %retval1, align 4, !dbg !5405
  %tobool64 = icmp ne i32 %49, 0, !dbg !5405
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !5407

if.then65:                                        ; preds = %if.end62
  br label %release_sb, !dbg !5408

if.end66:                                         ; preds = %if.end62
  %50 = load ptr, ptr %root, align 8, !dbg !5409
  call void @v9fs_fid_add(ptr noundef %50, ptr noundef %fid) #16, !dbg !5410
  store i32 0, ptr %tmp67, align 4, !dbg !5411
  %51 = load i32, ptr %tmp67, align 4, !dbg !5414
  %52 = load ptr, ptr %sb, align 8, !dbg !5415
  %s_root68 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 13, !dbg !5416
  %53 = load ptr, ptr %s_root68, align 8, !dbg !5416
  %call69 = call ptr @dget(ptr noundef %53) #16, !dbg !5417
  store ptr %call69, ptr %retval, align 8, !dbg !5418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5418

clunk_fid:                                        ; preds = %if.then10
  call void @llvm.dbg.label(metadata !5230), !dbg !5419
  %54 = load ptr, ptr %fid, align 8, !dbg !5420
  %call70 = call i32 @p9_fid_put(ptr noundef %54) #16, !dbg !5421
  %55 = load ptr, ptr %v9ses, align 8, !dbg !5422
  call void @v9fs_session_close(ptr noundef %55) #16, !dbg !5423
  br label %free_session, !dbg !5423

free_session:                                     ; preds = %clunk_fid, %if.then5
  call void @llvm.dbg.label(metadata !5231), !dbg !5424
  %56 = load ptr, ptr %v9ses, align 8, !dbg !5425
  call void @kfree(ptr noundef %56) #16, !dbg !5426
  %57 = load i32, ptr %retval1, align 4, !dbg !5427
  %conv71 = sext i32 %57 to i64, !dbg !5427
  %call72 = call ptr @ERR_PTR(i64 noundef %conv71) #16, !dbg !5428
  store ptr %call72, ptr %retval, align 8, !dbg !5429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5429

release_sb:                                       ; preds = %cleanup59, %cleanup, %if.then65, %if.then32, %if.then26, %if.then16
  call void @llvm.dbg.label(metadata !5232), !dbg !5430
  %58 = load ptr, ptr %fid, align 8, !dbg !5431
  %call73 = call i32 @p9_fid_put(ptr noundef %58) #16, !dbg !5432
  %59 = load ptr, ptr %sb, align 8, !dbg !5433
  call void @deactivate_locked_super(ptr noundef %59) #16, !dbg !5434
  %60 = load i32, ptr %retval1, align 4, !dbg !5435
  %conv74 = sext i32 %60 to i64, !dbg !5435
  %call75 = call ptr @ERR_PTR(i64 noundef %conv74) #16, !dbg !5436
  store ptr %call75, ptr %retval, align 8, !dbg !5437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5437

cleanup76:                                        ; preds = %release_sb, %free_session, %if.end66, %cleanup59, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #14, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #14, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #14, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #14, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #14, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #14, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #14, !dbg !5438
  %61 = load ptr, ptr %retval, align 8, !dbg !5438
  ret ptr %61, !dbg !5438
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_kill_super(ptr noundef %s) #0 align 16 !dbg !5439 {
entry:
  %s.addr = alloca ptr, align 8
  %v9ses = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5441, metadata !DIExpression()), !dbg !5443
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #14, !dbg !5444
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !5442, metadata !DIExpression()), !dbg !5445
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5446
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5447
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5447
  store ptr %1, ptr %v9ses, align 8, !dbg !5445
  store i32 0, ptr %tmp, align 4, !dbg !5448
  %2 = load i32, ptr %tmp, align 4, !dbg !5451
  %3 = load ptr, ptr %s.addr, align 8, !dbg !5452
  call void @kill_anon_super(ptr noundef %3) #16, !dbg !5453
  %4 = load ptr, ptr %v9ses, align 8, !dbg !5454
  call void @v9fs_session_cancel(ptr noundef %4) #16, !dbg !5455
  %5 = load ptr, ptr %v9ses, align 8, !dbg !5456
  call void @v9fs_session_close(ptr noundef %5) #16, !dbg !5457
  %6 = load ptr, ptr %v9ses, align 8, !dbg !5458
  call void @kfree(ptr noundef %6) #16, !dbg !5459
  %7 = load ptr, ptr %s.addr, align 8, !dbg !5460
  %s_fs_info1 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 29, !dbg !5461
  store ptr null, ptr %s_fs_info1, align 32, !dbg !5462
  store i32 0, ptr %tmp2, align 4, !dbg !5463
  %8 = load i32, ptr %tmp2, align 4, !dbg !5466
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #14, !dbg !5467
  ret void, !dbg !5467
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5468 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5472, metadata !DIExpression()), !dbg !5474
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5473, metadata !DIExpression()), !dbg !5475
  %0 = load i64, ptr %size.addr, align 8, !dbg !5476
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5477
  %or = or i32 %1, 256, !dbg !5478
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !5479
  ret ptr %call, !dbg !5480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !5481 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  %0 = load i64, ptr %error.addr, align 8, !dbg !5488
  %1 = inttoptr i64 %0 to ptr, !dbg !5489
  ret ptr %1, !dbg !5490
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5491 dso_local ptr @v9fs_session_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5494 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5498, metadata !DIExpression()), !dbg !5499
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5500
  %1 = ptrtoint ptr %0 to i64, !dbg !5500
  %2 = inttoptr i64 %1 to ptr, !dbg !5500
  %3 = ptrtoint ptr %2 to i64, !dbg !5500
  %cmp = icmp uge i64 %3, -4095, !dbg !5500
  %lnot = xor i1 %cmp, true, !dbg !5500
  %lnot1 = xor i1 %lnot, true, !dbg !5500
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5500
  %conv = sext i32 %lnot.ext to i64, !dbg !5500
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5500
  %tobool = icmp ne i64 %expval, 0, !dbg !5500
  ret i1 %tobool, !dbg !5501
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !5502 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5508
  %1 = ptrtoint ptr %0 to i64, !dbg !5509
  ret i64 %1, !dbg !5510
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5511 dso_local ptr @sget(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_set_super(ptr noundef %s, ptr noundef %data) #0 align 16 !dbg !5517 {
entry:
  %s.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5519, metadata !DIExpression()), !dbg !5521
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5520, metadata !DIExpression()), !dbg !5522
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5523
  %1 = load ptr, ptr %s.addr, align 8, !dbg !5524
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !5525
  store ptr %0, ptr %s_fs_info, align 32, !dbg !5526
  %2 = load ptr, ptr %s.addr, align 8, !dbg !5527
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5528
  %call = call i32 @set_anon_super(ptr noundef %2, ptr noundef %3) #16, !dbg !5529
  ret i32 %call, !dbg !5530
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_fill_super(ptr noundef %sb, ptr noundef %v9ses, i32 noundef %flags) #0 align 16 !dbg !5531 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %v9ses.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5535, metadata !DIExpression()), !dbg !5539
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !5536, metadata !DIExpression()), !dbg !5540
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5537, metadata !DIExpression()), !dbg !5541
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5538, metadata !DIExpression()), !dbg !5543
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5544
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4, !dbg !5545
  store i64 9223372036854775807, ptr %s_maxbytes, align 32, !dbg !5546
  %1 = load ptr, ptr %v9ses.addr, align 8, !dbg !5547
  %maxdata = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 7, !dbg !5548
  %2 = load i32, ptr %maxdata, align 8, !dbg !5548
  %sub = sub i32 %2, 1, !dbg !5549
  %call = call i32 @fls(i32 noundef %sub) #16, !dbg !5550
  %conv = trunc i32 %call to i8, !dbg !5550
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !5551
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2, !dbg !5552
  store i8 %conv, ptr %s_blocksize_bits, align 4, !dbg !5553
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !5554
  %s_blocksize_bits1 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 2, !dbg !5555
  %5 = load i8, ptr %s_blocksize_bits1, align 4, !dbg !5555
  %conv2 = zext i8 %5 to i32, !dbg !5554
  %shl = shl i32 1, %conv2, !dbg !5556
  %conv3 = sext i32 %shl to i64, !dbg !5557
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !5558
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3, !dbg !5559
  store i64 %conv3, ptr %s_blocksize, align 8, !dbg !5560
  %7 = load ptr, ptr %sb.addr, align 8, !dbg !5561
  %s_magic = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 12, !dbg !5562
  store i64 16914839, ptr %s_magic, align 32, !dbg !5563
  %8 = load ptr, ptr %v9ses.addr, align 8, !dbg !5564
  %call4 = call i32 @v9fs_proto_dotl(ptr noundef %8) #16, !dbg !5566
  %tobool = icmp ne i32 %call4, 0, !dbg !5566
  br i1 %tobool, label %if.then, label %if.else, !dbg !5567

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %sb.addr, align 8, !dbg !5568
  %s_op = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 6, !dbg !5570
  store ptr @v9fs_super_ops_dotl, ptr %s_op, align 16, !dbg !5571
  %10 = load ptr, ptr %v9ses.addr, align 8, !dbg !5572
  %flags5 = getelementptr inbounds %struct.v9fs_session_info, ptr %10, i32 0, i32 0, !dbg !5574
  %11 = load i32, ptr %flags5, align 8, !dbg !5574
  %and = and i32 %11, 64, !dbg !5575
  %tobool6 = icmp ne i32 %and, 0, !dbg !5575
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !5576

if.then7:                                         ; preds = %if.then
  %12 = load ptr, ptr %sb.addr, align 8, !dbg !5577
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 18, !dbg !5578
  store ptr @v9fs_xattr_handlers, ptr %s_xattr, align 8, !dbg !5579
  br label %if.end, !dbg !5577

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end9, !dbg !5580

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %sb.addr, align 8, !dbg !5581
  %s_op8 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 6, !dbg !5583
  store ptr @v9fs_super_ops, ptr %s_op8, align 16, !dbg !5584
  %14 = load ptr, ptr %sb.addr, align 8, !dbg !5585
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 32, !dbg !5586
  store i64 4294967295, ptr %s_time_max, align 8, !dbg !5587
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %15 = load ptr, ptr %sb.addr, align 8, !dbg !5588
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 31, !dbg !5589
  store i64 0, ptr %s_time_min, align 16, !dbg !5590
  %16 = load ptr, ptr %sb.addr, align 8, !dbg !5591
  %call10 = call i32 @super_setup_bdi(ptr noundef %16) #16, !dbg !5592
  store i32 %call10, ptr %ret, align 4, !dbg !5593
  %17 = load i32, ptr %ret, align 4, !dbg !5594
  %tobool11 = icmp ne i32 %17, 0, !dbg !5594
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5596

if.then12:                                        ; preds = %if.end9
  %18 = load i32, ptr %ret, align 4, !dbg !5597
  store i32 %18, ptr %retval, align 4, !dbg !5598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5598

if.end13:                                         ; preds = %if.end9
  %19 = load ptr, ptr %v9ses.addr, align 8, !dbg !5599
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %19, i32 0, i32 4, !dbg !5601
  %20 = load i32, ptr %cache, align 4, !dbg !5601
  %tobool14 = icmp ne i32 %20, 0, !dbg !5599
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !5602

if.then15:                                        ; preds = %if.end13
  %21 = load ptr, ptr %sb.addr, align 8, !dbg !5603
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 23, !dbg !5605
  %22 = load ptr, ptr %s_bdi, align 8, !dbg !5605
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, ptr %22, i32 0, i32 3, !dbg !5606
  store i64 0, ptr %ra_pages, align 8, !dbg !5607
  %23 = load ptr, ptr %sb.addr, align 8, !dbg !5608
  %s_bdi16 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 23, !dbg !5609
  %24 = load ptr, ptr %s_bdi16, align 8, !dbg !5609
  %io_pages = getelementptr inbounds %struct.backing_dev_info, ptr %24, i32 0, i32 4, !dbg !5610
  store i64 0, ptr %io_pages, align 8, !dbg !5611
  br label %if.end27, !dbg !5612

if.else17:                                        ; preds = %if.end13
  %25 = load ptr, ptr %v9ses.addr, align 8, !dbg !5613
  %maxdata18 = getelementptr inbounds %struct.v9fs_session_info, ptr %25, i32 0, i32 7, !dbg !5615
  %26 = load i32, ptr %maxdata18, align 8, !dbg !5615
  %shr = lshr i32 %26, 12, !dbg !5616
  %conv19 = zext i32 %shr to i64, !dbg !5613
  %27 = load ptr, ptr %sb.addr, align 8, !dbg !5617
  %s_bdi20 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 23, !dbg !5618
  %28 = load ptr, ptr %s_bdi20, align 8, !dbg !5618
  %ra_pages21 = getelementptr inbounds %struct.backing_dev_info, ptr %28, i32 0, i32 3, !dbg !5619
  store i64 %conv19, ptr %ra_pages21, align 8, !dbg !5620
  %29 = load ptr, ptr %v9ses.addr, align 8, !dbg !5621
  %maxdata22 = getelementptr inbounds %struct.v9fs_session_info, ptr %29, i32 0, i32 7, !dbg !5622
  %30 = load i32, ptr %maxdata22, align 8, !dbg !5622
  %shr23 = lshr i32 %30, 12, !dbg !5623
  %conv24 = zext i32 %shr23 to i64, !dbg !5621
  %31 = load ptr, ptr %sb.addr, align 8, !dbg !5624
  %s_bdi25 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 23, !dbg !5625
  %32 = load ptr, ptr %s_bdi25, align 8, !dbg !5625
  %io_pages26 = getelementptr inbounds %struct.backing_dev_info, ptr %32, i32 0, i32 4, !dbg !5626
  store i64 %conv24, ptr %io_pages26, align 8, !dbg !5627
  br label %if.end27

if.end27:                                         ; preds = %if.else17, %if.then15
  %33 = load ptr, ptr %sb.addr, align 8, !dbg !5628
  %s_flags = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 10, !dbg !5629
  %34 = load i64, ptr %s_flags, align 16, !dbg !5630
  %or = or i64 %34, 1073741824, !dbg !5630
  store i64 %or, ptr %s_flags, align 16, !dbg !5630
  store i32 0, ptr %retval, align 4, !dbg !5631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5631

cleanup:                                          ; preds = %if.end27, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5632
  %35 = load i32, ptr %retval, align 4, !dbg !5632
  ret i32 %35, !dbg !5632
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5633 dso_local ptr @v9fs_get_inode(ptr noundef, i16 noundef zeroext, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5637 dso_local ptr @d_make_root(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_proto_dotl(ptr noundef %v9ses) #4 align 16 !dbg !5640 {
entry:
  %v9ses.addr = alloca ptr, align 8
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !5646
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 0, !dbg !5647
  %1 = load i32, ptr %flags, align 8, !dbg !5647
  %and = and i32 %1, 2, !dbg !5648
  ret i32 %and, !dbg !5649
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5650 dso_local ptr @p9_client_getattr_dotl(ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5653 dso_local i64 @v9fs_qid2ino(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #4 align 16 !dbg !5657 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5663
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5664
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5664
  ret ptr %1, !dbg !5665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5666 dso_local void @v9fs_stat2inode_dotl(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5669 dso_local void @kfree(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5672 dso_local ptr @p9_client_stat(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5675 dso_local void @v9fs_stat2inode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5678 dso_local void @p9stat_free(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_get_acl(ptr noundef %inode, ptr noundef %fid) #4 align 16 !dbg !5681 {
entry:
  %inode.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5686, metadata !DIExpression()), !dbg !5688
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5687, metadata !DIExpression()), !dbg !5689
  ret i32 0, !dbg !5690
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5691 dso_local void @v9fs_fid_add(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget(ptr noundef %dentry) #4 align 16 !dbg !5696 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5700, metadata !DIExpression()), !dbg !5701
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5702
  %tobool = icmp ne ptr %0, null, !dbg !5702
  br i1 %tobool, label %if.then, label %if.end, !dbg !5704

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5705
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !5706
  call void @lockref_get(ptr noundef %d_lockref) #16, !dbg !5707
  br label %if.end, !dbg !5707

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5708
  ret ptr %2, !dbg !5709
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p9_fid_put(ptr noundef %fid) #4 align 16 !dbg !5710 {
entry:
  %retval = alloca i32, align 4
  %fid.addr = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5714, metadata !DIExpression()), !dbg !5715
  %0 = load ptr, ptr %fid.addr, align 8, !dbg !5716
  %tobool = icmp ne ptr %0, null, !dbg !5716
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5718

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !5719
  %call = call zeroext i1 @IS_ERR(ptr noundef %1) #16, !dbg !5720
  br i1 %call, label %if.then, label %if.end, !dbg !5721

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5722
  br label %return, !dbg !5722

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_fid_ref, i32 0, i32 1)) #16, !dbg !5723
  br i1 %call1, label %if.then2, label %if.end3, !dbg !5725

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %fid.addr, align 8, !dbg !5726
  call void @do_trace_9p_fid_put(ptr noundef %2) #16, !dbg !5727
  br label %if.end3, !dbg !5727

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %fid.addr, align 8, !dbg !5728
  %count = getelementptr inbounds %struct.p9_fid, ptr %3, i32 0, i32 2, !dbg !5730
  %call4 = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #16, !dbg !5731
  br i1 %call4, label %if.end6, label %if.then5, !dbg !5732

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !5733
  br label %return, !dbg !5733

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %fid.addr, align 8, !dbg !5734
  %call7 = call i32 @p9_client_clunk(ptr noundef %4) #16, !dbg !5735
  store i32 %call7, ptr %retval, align 4, !dbg !5736
  br label %return, !dbg !5736

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5737
  ret i32 %5, !dbg !5737
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5738 dso_local void @v9fs_session_close(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5741 dso_local void @deactivate_locked_super(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5742 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5744, metadata !DIExpression()), !dbg !5749
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5745, metadata !DIExpression()), !dbg !5750
  %0 = load i64, ptr %size.addr, align 8, !dbg !5751
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5752
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5753

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5754
  %tobool = icmp ne i64 %2, 0, !dbg !5754
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5755

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !5756
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5746, metadata !DIExpression()), !dbg !5757
  %3 = load i64, ptr %size.addr, align 8, !dbg !5758
  %cmp = icmp ugt i64 %3, 8192, !dbg !5760
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5761

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5762
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5763
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !5764
  store ptr %call, ptr %retval, align 8, !dbg !5765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5765

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5766
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5766
  store i32 %call2, ptr %index, align 4, !dbg !5767
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5768
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5769
  %9 = ptrtoint ptr %8 to i64, !dbg !5769
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5770
  %idxprom = zext i32 %call3 to i64, !dbg !5771
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5771
  %10 = load i32, ptr %index, align 4, !dbg !5772
  %idxprom4 = zext i32 %10 to i64, !dbg !5771
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5771
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5771
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5773
  %13 = load i64, ptr %size.addr, align 8, !dbg !5774
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !5775
  store ptr %call6, ptr %retval, align 8, !dbg !5776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5776

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !5777
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5778
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5779
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !5780
  store ptr %call8, ptr %retval, align 8, !dbg !5781
  br label %return, !dbg !5781

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5782
  ret ptr %16, !dbg !5782
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5783 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !5784 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5788, metadata !DIExpression()), !dbg !5790
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5789, metadata !DIExpression()), !dbg !5791
  %0 = load i64, ptr %size.addr, align 8, !dbg !5792
  %tobool = icmp ne i64 %0, 0, !dbg !5792
  br i1 %tobool, label %if.end, label %if.then, !dbg !5794

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5795
  br label %return, !dbg !5795

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5796
  %cmp = icmp ule i64 %1, 8, !dbg !5798
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5799

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5800
  br label %return, !dbg !5800

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5801
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5803
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5804

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5805
  %cmp4 = icmp ule i64 %3, 96, !dbg !5806
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5807

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5808
  br label %return, !dbg !5808

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5809
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5811
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5812

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5813
  %cmp9 = icmp ule i64 %5, 192, !dbg !5814
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5815

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5816
  br label %return, !dbg !5816

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5817
  %cmp12 = icmp ule i64 %6, 8, !dbg !5819
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5820

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5821
  br label %return, !dbg !5821

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5822
  %cmp15 = icmp ule i64 %7, 16, !dbg !5824
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5825

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5826
  br label %return, !dbg !5826

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5827
  %cmp18 = icmp ule i64 %8, 32, !dbg !5829
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5830

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5831
  br label %return, !dbg !5831

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5832
  %cmp21 = icmp ule i64 %9, 64, !dbg !5834
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5835

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5836
  br label %return, !dbg !5836

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5837
  %cmp24 = icmp ule i64 %10, 128, !dbg !5839
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5840

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5841
  br label %return, !dbg !5841

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5842
  %cmp27 = icmp ule i64 %11, 256, !dbg !5844
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5845

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5846
  br label %return, !dbg !5846

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5847
  %cmp30 = icmp ule i64 %12, 512, !dbg !5849
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5850

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5851
  br label %return, !dbg !5851

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5852
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5854
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5855

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5856
  br label %return, !dbg !5856

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5857
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5859
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5860

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5861
  br label %return, !dbg !5861

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5862
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5864
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5865

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5866
  br label %return, !dbg !5866

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5867
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5869
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5870

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5871
  br label %return, !dbg !5871

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5872
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5874
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5875

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5876
  br label %return, !dbg !5876

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5877
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5879
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5880

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5881
  br label %return, !dbg !5881

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5882
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5884
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5885

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5886
  br label %return, !dbg !5886

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5887
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5889
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5890

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5891
  br label %return, !dbg !5891

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5892
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5894
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5895

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5896
  br label %return, !dbg !5896

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5897
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5899
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5900

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5901
  br label %return, !dbg !5901

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5902
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5904
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5905

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5906
  br label %return, !dbg !5906

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5907
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5909
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5910

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5911
  br label %return, !dbg !5911

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5912, !range !5914, !noundef !668
  %tobool69 = trunc i8 %25 to i1, !dbg !5912
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5915

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5916

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #18, !dbg !5917, !srcloc !5920
  unreachable, !dbg !5917

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5921

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5922

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5923

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5925

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5923

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #14, !dbg !5927, !srcloc !5929
  br label %do.end75, !dbg !5927

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5923

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5930
  br label %return, !dbg !5930

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5931
  ret i32 %26, !dbg !5931
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5932 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !5935 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5939, metadata !DIExpression()), !dbg !5941
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5940, metadata !DIExpression()), !dbg !5942
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5943
  %and = and i32 %0, 17, !dbg !5943
  %cmp = icmp eq i32 %and, 0, !dbg !5943
  %lnot = xor i1 %cmp, true, !dbg !5943
  %lnot1 = xor i1 %lnot, true, !dbg !5943
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5943
  %conv = sext i32 %lnot.ext to i64, !dbg !5943
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5943
  %tobool = icmp ne i64 %expval, 0, !dbg !5943
  br i1 %tobool, label %if.then, label %if.end, !dbg !5945

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5946
  br label %return, !dbg !5946

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5947
  %and2 = and i32 %1, 1, !dbg !5949
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5949
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5950

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5951
  br label %return, !dbg !5951

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5952
  br label %return, !dbg !5952

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5954
  ret i32 %2, !dbg !5954
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5955 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5956 dso_local void @__compiletime_assert_255() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5957 dso_local i32 @set_anon_super(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #9 align 16 !dbg !5958 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5963, metadata !DIExpression()), !dbg !5965
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #14, !dbg !5966
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5964, metadata !DIExpression()), !dbg !5967
  %0 = load i32, ptr %x.addr, align 4, !dbg !5968
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #19, !dbg !5969, !srcloc !5970
  store i32 %1, ptr %r, align 4, !dbg !5969
  %2 = load i32, ptr %r, align 4, !dbg !5971
  %add = add i32 %2, 1, !dbg !5972
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #14, !dbg !5973
  ret i32 %add, !dbg !5974
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5975 dso_local i32 @super_setup_bdi(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @v9fs_alloc_inode(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @v9fs_free_inode(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_write_inode_dotl(ptr noundef %inode, ptr noundef %wbc) #0 align 16 !dbg !5976 {
entry:
  %inode.addr = alloca ptr, align 8
  %wbc.addr = alloca ptr, align 8
  %v9inode = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5978, metadata !DIExpression()), !dbg !5981
  store ptr %wbc, ptr %wbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wbc.addr, metadata !5979, metadata !DIExpression()), !dbg !5982
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9inode) #14, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %v9inode, metadata !5980, metadata !DIExpression()), !dbg !5984
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5985
  %call = call ptr @V9FS_I(ptr noundef %0) #16, !dbg !5986
  store ptr %call, ptr %v9inode, align 8, !dbg !5987
  store i32 0, ptr %tmp, align 4, !dbg !5988
  %1 = load i32, ptr %tmp, align 4, !dbg !5991
  %2 = load ptr, ptr %wbc.addr, align 8, !dbg !5992
  %3 = load ptr, ptr %v9inode, align 8, !dbg !5993
  %call1 = call ptr @v9fs_inode_cookie(ptr noundef %3) #16, !dbg !5994
  call void @fscache_unpin_writeback(ptr noundef %2, ptr noundef %call1) #16, !dbg !5995
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9inode) #14, !dbg !5996
  ret i32 0, !dbg !5997
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_drop_inode(ptr noundef %inode) #0 align 16 !dbg !5998 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %v9ses = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6000, metadata !DIExpression()), !dbg !6002
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #14, !dbg !6003
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !6001, metadata !DIExpression()), !dbg !6004
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6005
  %call = call ptr @v9fs_inode2v9ses(ptr noundef %0) #16, !dbg !6006
  store ptr %call, ptr %v9ses, align 8, !dbg !6007
  %1 = load ptr, ptr %v9ses, align 8, !dbg !6008
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 4, !dbg !6010
  %2 = load i32, ptr %cache, align 4, !dbg !6010
  %and = and i32 %2, 10, !dbg !6011
  %tobool = icmp ne i32 %and, 0, !dbg !6011
  br i1 %tobool, label %if.then, label %if.end, !dbg !6012

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !6013
  %call1 = call i32 @generic_drop_inode(ptr noundef %3) #16, !dbg !6014
  store i32 %call1, ptr %retval, align 4, !dbg !6015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6015

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6016

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #14, !dbg !6017
  %4 = load i32, ptr %retval, align 4, !dbg !6017
  ret i32 %4, !dbg !6017
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @v9fs_evict_inode(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_statfs(ptr noundef %dentry, ptr noundef %buf) #0 align 16 !dbg !6018 {
entry:
  %dentry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %v9ses = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %rs = alloca %struct.p9_rstatfs, align 8
  %res = alloca i32, align 4
  %tmp = alloca %struct.__kernel_fsid_t, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6020, metadata !DIExpression()), !dbg !6038
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6021, metadata !DIExpression()), !dbg !6039
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #14, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !6022, metadata !DIExpression()), !dbg !6041
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #14, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !6023, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 64, ptr %rs) #14, !dbg !6044
  call void @llvm.dbg.declare(metadata ptr %rs, metadata !6024, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #14, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6036, metadata !DIExpression()), !dbg !6047
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6048
  %call = call ptr @v9fs_fid_lookup(ptr noundef %0) #16, !dbg !6049
  store ptr %call, ptr %fid, align 8, !dbg !6050
  %1 = load ptr, ptr %fid, align 8, !dbg !6051
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #16, !dbg !6053
  br i1 %call1, label %if.then, label %if.end, !dbg !6054

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fid, align 8, !dbg !6055
  %call2 = call i64 @PTR_ERR(ptr noundef %2) #16, !dbg !6057
  %conv = trunc i64 %call2 to i32, !dbg !6057
  store i32 %conv, ptr %res, align 4, !dbg !6058
  br label %done, !dbg !6059

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6060
  %call3 = call ptr @v9fs_dentry2v9ses(ptr noundef %3) #16, !dbg !6061
  store ptr %call3, ptr %v9ses, align 8, !dbg !6062
  %4 = load ptr, ptr %v9ses, align 8, !dbg !6063
  %call4 = call i32 @v9fs_proto_dotl(ptr noundef %4) #16, !dbg !6065
  %tobool = icmp ne i32 %call4, 0, !dbg !6065
  br i1 %tobool, label %if.then5, label %if.end18, !dbg !6066

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %fid, align 8, !dbg !6067
  %call6 = call i32 @p9_client_statfs(ptr noundef %5, ptr noundef %rs) #16, !dbg !6069
  store i32 %call6, ptr %res, align 4, !dbg !6070
  %6 = load i32, ptr %res, align 4, !dbg !6071
  %cmp = icmp eq i32 %6, 0, !dbg !6073
  br i1 %cmp, label %if.then8, label %if.end13, !dbg !6074

if.then8:                                         ; preds = %if.then5
  %type = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 0, !dbg !6075
  %7 = load i32, ptr %type, align 8, !dbg !6075
  %conv9 = zext i32 %7 to i64, !dbg !6077
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !6078
  %f_type = getelementptr inbounds %struct.kstatfs, ptr %8, i32 0, i32 0, !dbg !6079
  store i64 %conv9, ptr %f_type, align 8, !dbg !6080
  %bsize = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 1, !dbg !6081
  %9 = load i32, ptr %bsize, align 4, !dbg !6081
  %conv10 = zext i32 %9 to i64, !dbg !6082
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !6083
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %10, i32 0, i32 1, !dbg !6084
  store i64 %conv10, ptr %f_bsize, align 8, !dbg !6085
  %blocks = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 2, !dbg !6086
  %11 = load i64, ptr %blocks, align 8, !dbg !6086
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !6087
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %12, i32 0, i32 2, !dbg !6088
  store i64 %11, ptr %f_blocks, align 8, !dbg !6089
  %bfree = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 3, !dbg !6090
  %13 = load i64, ptr %bfree, align 8, !dbg !6090
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !6091
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %14, i32 0, i32 3, !dbg !6092
  store i64 %13, ptr %f_bfree, align 8, !dbg !6093
  %bavail = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 4, !dbg !6094
  %15 = load i64, ptr %bavail, align 8, !dbg !6094
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !6095
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %16, i32 0, i32 4, !dbg !6096
  store i64 %15, ptr %f_bavail, align 8, !dbg !6097
  %files = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 5, !dbg !6098
  %17 = load i64, ptr %files, align 8, !dbg !6098
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !6099
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %18, i32 0, i32 5, !dbg !6100
  store i64 %17, ptr %f_files, align 8, !dbg !6101
  %ffree = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 6, !dbg !6102
  %19 = load i64, ptr %ffree, align 8, !dbg !6102
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !6103
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %20, i32 0, i32 6, !dbg !6104
  store i64 %19, ptr %f_ffree, align 8, !dbg !6105
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !6106
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %21, i32 0, i32 7, !dbg !6107
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !6108
  %fsid = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 7, !dbg !6109
  %22 = load i64, ptr %fsid, align 8, !dbg !6109
  %call11 = call i64 @u64_to_fsid(i64 noundef %22) #16, !dbg !6108
  %coerce.dive = getelementptr inbounds %struct.__kernel_fsid_t, ptr %tmp, i32 0, i32 0, !dbg !6108
  store i64 %call11, ptr %coerce.dive, align 4, !dbg !6108
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %f_fsid, ptr align 4 %tmp, i64 8, i1 false), !dbg !6108
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !6108
  %namelen = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 8, !dbg !6110
  %23 = load i32, ptr %namelen, align 8, !dbg !6110
  %conv12 = zext i32 %23 to i64, !dbg !6111
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !6112
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %24, i32 0, i32 8, !dbg !6113
  store i64 %conv12, ptr %f_namelen, align 8, !dbg !6114
  br label %if.end13, !dbg !6115

if.end13:                                         ; preds = %if.then8, %if.then5
  %25 = load i32, ptr %res, align 4, !dbg !6116
  %cmp14 = icmp ne i32 %25, -38, !dbg !6118
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !6119

if.then16:                                        ; preds = %if.end13
  br label %done, !dbg !6120

if.end17:                                         ; preds = %if.end13
  br label %if.end18, !dbg !6121

if.end18:                                         ; preds = %if.end17, %if.end
  %26 = load ptr, ptr %dentry.addr, align 8, !dbg !6122
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !6123
  %call19 = call i32 @simple_statfs(ptr noundef %26, ptr noundef %27) #16, !dbg !6124
  store i32 %call19, ptr %res, align 4, !dbg !6125
  br label %done, !dbg !6126

done:                                             ; preds = %if.end18, %if.then16, %if.then
  call void @llvm.dbg.label(metadata !6037), !dbg !6127
  %28 = load ptr, ptr %fid, align 8, !dbg !6128
  %call20 = call i32 @p9_fid_put(ptr noundef %28) #16, !dbg !6129
  %29 = load i32, ptr %res, align 4, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #14, !dbg !6131
  call void @llvm.lifetime.end.p0(i64 64, ptr %rs) #14, !dbg !6131
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #14, !dbg !6131
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #14, !dbg !6131
  ret i32 %29, !dbg !6132
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_umount_begin(ptr noundef %sb) #0 align 16 !dbg !6133 {
entry:
  %sb.addr = alloca ptr, align 8
  %v9ses = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6135, metadata !DIExpression()), !dbg !6137
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #14, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !6136, metadata !DIExpression()), !dbg !6139
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6140
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !6141
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !6141
  store ptr %1, ptr %v9ses, align 8, !dbg !6142
  %2 = load ptr, ptr %v9ses, align 8, !dbg !6143
  call void @v9fs_session_begin_cancel(ptr noundef %2) #16, !dbg !6144
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #14, !dbg !6145
  ret void, !dbg !6145
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @v9fs_show_options(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @V9FS_I(ptr noundef %inode) #4 align 16 !dbg !6146 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6150, metadata !DIExpression()), !dbg !6153
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6154
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6151, metadata !DIExpression()), !dbg !6154
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6154
  store ptr %0, ptr %__mptr, align 8, !dbg !6154
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6154
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6154
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6154
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6155
  %2 = load ptr, ptr %tmp, align 8, !dbg !6154
  ret ptr %2, !dbg !6156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fscache_unpin_writeback(ptr noundef %wbc, ptr noundef %cookie) #4 align 16 !dbg !6157 {
entry:
  %wbc.addr = alloca ptr, align 8
  %cookie.addr = alloca ptr, align 8
  store ptr %wbc, ptr %wbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wbc.addr, metadata !6216, metadata !DIExpression()), !dbg !6218
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6217, metadata !DIExpression()), !dbg !6219
  %0 = load ptr, ptr %wbc.addr, align 8, !dbg !6220
  %unpinned_fscache_wb = getelementptr inbounds %struct.writeback_control, ptr %0, i32 0, i32 5, !dbg !6222
  %bf.load = load i8, ptr %unpinned_fscache_wb, align 4, !dbg !6222
  %bf.lshr = lshr i8 %bf.load, 6, !dbg !6222
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6222
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6222
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6220
  br i1 %tobool, label %if.then, label %if.end, !dbg !6223

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cookie.addr, align 8, !dbg !6224
  call void @fscache_unuse_cookie(ptr noundef %1, ptr noundef null, ptr noundef null) #16, !dbg !6225
  br label %if.end, !dbg !6225

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6226
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_inode_cookie(ptr noundef %v9inode) #4 align 16 !dbg !6227 {
entry:
  %v9inode.addr = alloca ptr, align 8
  store ptr %v9inode, ptr %v9inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9inode.addr, metadata !6231, metadata !DIExpression()), !dbg !6232
  ret ptr null, !dbg !6233
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fscache_unuse_cookie(ptr noundef %cookie, ptr noundef %aux_data, ptr noundef %object_size) #4 align 16 !dbg !6234 {
entry:
  %cookie.addr = alloca ptr, align 8
  %aux_data.addr = alloca ptr, align 8
  %object_size.addr = alloca ptr, align 8
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6240, metadata !DIExpression()), !dbg !6243
  store ptr %aux_data, ptr %aux_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aux_data.addr, metadata !6241, metadata !DIExpression()), !dbg !6244
  store ptr %object_size, ptr %object_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object_size.addr, metadata !6242, metadata !DIExpression()), !dbg !6245
  ret void, !dbg !6246
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_inode2v9ses(ptr noundef %inode) #4 align 16 !dbg !6247 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6251, metadata !DIExpression()), !dbg !6252
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6253
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !6254
  %1 = load ptr, ptr %i_sb, align 8, !dbg !6254
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !6255
  %2 = load ptr, ptr %s_fs_info, align 32, !dbg !6255
  ret ptr %2, !dbg !6256
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @generic_drop_inode(ptr noundef %inode) #4 align 16 !dbg !6257 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6259, metadata !DIExpression()), !dbg !6260
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6261
  %1 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13, !dbg !6262
  %2 = load i32, ptr %1, align 8, !dbg !6262
  %tobool = icmp ne i32 %2, 0, !dbg !6261
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !6263

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !6264
  %call = call i32 @inode_unhashed(ptr noundef %3) #16, !dbg !6265
  %tobool1 = icmp ne i32 %call, 0, !dbg !6263
  br label %lor.end, !dbg !6263

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !6263
  ret i32 %lor.ext, !dbg !6266
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inode_unhashed(ptr noundef %inode) #4 align 16 !dbg !6267 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6271
  %i_hash = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28, !dbg !6272
  %call = call i32 @hlist_unhashed(ptr noundef %i_hash) #16, !dbg !6273
  ret i32 %call, !dbg !6274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_unhashed(ptr noundef %h) #4 align 16 !dbg !6275 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6282, metadata !DIExpression()), !dbg !6283
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6284
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1, !dbg !6285
  %1 = load ptr, ptr %pprev, align 8, !dbg !6285
  %tobool = icmp ne ptr %1, null, !dbg !6286
  %lnot = xor i1 %tobool, true, !dbg !6286
  %lnot.ext = zext i1 %lnot to i32, !dbg !6286
  ret i32 %lnot.ext, !dbg !6287
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6288 dso_local ptr @v9fs_fid_lookup(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_dentry2v9ses(ptr noundef %dentry) #4 align 16 !dbg !6291 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6295, metadata !DIExpression()), !dbg !6296
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6297
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !6298
  %1 = load ptr, ptr %d_sb, align 8, !dbg !6298
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !6299
  %2 = load ptr, ptr %s_fs_info, align 32, !dbg !6299
  ret ptr %2, !dbg !6300
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6301 dso_local i32 @p9_client_statfs(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @u64_to_fsid(i64 noundef %v) #4 align 16 !dbg !6305 {
entry:
  %retval = alloca %struct.__kernel_fsid_t, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6309, metadata !DIExpression()), !dbg !6310
  %val = getelementptr inbounds %struct.__kernel_fsid_t, ptr %retval, i32 0, i32 0, !dbg !6311
  %arrayinit.begin = getelementptr inbounds [2 x i32], ptr %val, i64 0, i64 0, !dbg !6312
  %0 = load i64, ptr %v.addr, align 8, !dbg !6313
  %conv = trunc i64 %0 to i32, !dbg !6314
  store i32 %conv, ptr %arrayinit.begin, align 4, !dbg !6312
  %arrayinit.element = getelementptr inbounds i32, ptr %arrayinit.begin, i64 1, !dbg !6312
  %1 = load i64, ptr %v.addr, align 8, !dbg !6315
  %shr = lshr i64 %1, 32, !dbg !6316
  %conv1 = trunc i64 %shr to i32, !dbg !6317
  store i32 %conv1, ptr %arrayinit.element, align 4, !dbg !6312
  %coerce.dive = getelementptr inbounds %struct.__kernel_fsid_t, ptr %retval, i32 0, i32 0, !dbg !6318
  %2 = load i64, ptr %coerce.dive, align 4, !dbg !6318
  ret i64 %2, !dbg !6318
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6319 dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6320 dso_local void @v9fs_session_begin_cancel(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_write_inode(ptr noundef %inode, ptr noundef %wbc) #0 align 16 !dbg !6321 {
entry:
  %inode.addr = alloca ptr, align 8
  %wbc.addr = alloca ptr, align 8
  %v9inode = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6323, metadata !DIExpression()), !dbg !6326
  store ptr %wbc, ptr %wbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wbc.addr, metadata !6324, metadata !DIExpression()), !dbg !6327
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9inode) #14, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %v9inode, metadata !6325, metadata !DIExpression()), !dbg !6329
  store i32 0, ptr %tmp, align 4, !dbg !6330
  %0 = load i32, ptr %tmp, align 4, !dbg !6333
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6334
  %call = call ptr @V9FS_I(ptr noundef %1) #16, !dbg !6335
  store ptr %call, ptr %v9inode, align 8, !dbg !6336
  %2 = load ptr, ptr %wbc.addr, align 8, !dbg !6337
  %3 = load ptr, ptr %v9inode, align 8, !dbg !6338
  %call1 = call ptr @v9fs_inode_cookie(ptr noundef %3) #16, !dbg !6339
  call void @fscache_unpin_writeback(ptr noundef %2, ptr noundef %call1) #16, !dbg !6340
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9inode) #14, !dbg !6341
  ret i32 0, !dbg !6342
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6343 dso_local void @lockref_get(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #9 align 16 !dbg !6347 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6363, metadata !DIExpression()), !dbg !6364
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6365
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #16, !dbg !6366
  ret i1 %call, !dbg !6367
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6368 dso_local void @do_trace_9p_fid_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !6371 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6376, metadata !DIExpression()), !dbg !6377
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6378
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #16, !dbg !6379
  ret i1 %call, !dbg !6380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6381 dso_local i32 @p9_client_clunk(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #9 align 16 !dbg !6382 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6387, metadata !DIExpression()), !dbg !6390
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6388, metadata !DIExpression()), !dbg !6391
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6392
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6393, !range !5914, !noundef !668
  %tobool = trunc i8 %1 to i1, !dbg !6393
  %conv = zext i1 %tobool to i32, !dbg !6393
  %or = or i32 2, %conv, !dbg !6394
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !6395, !srcloc !6396

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6397
  br label %return, !dbg !6397

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6389), !dbg !6398
  store i1 true, ptr %retval, align 1, !dbg !6399
  br label %return, !dbg !6399

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6400
  ret i1 %2, !dbg !6400
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6401 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6405, metadata !DIExpression()), !dbg !6407
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6406, metadata !DIExpression()), !dbg !6408
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6409
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6410
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !6411
  ret i1 %call, !dbg !6412
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6413 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6417, metadata !DIExpression()), !dbg !6421
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6418, metadata !DIExpression()), !dbg !6422
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6419, metadata !DIExpression()), !dbg !6423
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6420, metadata !DIExpression()), !dbg !6425
  %0 = load i32, ptr %i.addr, align 4, !dbg !6426
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6427
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6428
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #16, !dbg !6429
  store i32 %call, ptr %old, align 4, !dbg !6425
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6430
  %tobool = icmp ne ptr %2, null, !dbg !6430
  br i1 %tobool, label %if.then, label %if.end, !dbg !6432

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6433
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6434
  store i32 %3, ptr %4, align 4, !dbg !6435
  br label %if.end, !dbg !6436

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6437
  %6 = load i32, ptr %i.addr, align 4, !dbg !6439
  %cmp = icmp eq i32 %5, %6, !dbg !6440
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6441

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6442

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6444

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6446

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6446

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6444

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6448

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6450

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6450

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6448, !srcloc !6452
  br label %do.cond7, !dbg !6448

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6448

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6444

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6444

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6453

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6454
  %cmp12 = icmp slt i32 %7, 0, !dbg !6454
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6454

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6454
  %9 = load i32, ptr %i.addr, align 4, !dbg !6454
  %sub = sub i32 %8, %9, !dbg !6454
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6454
  br label %lor.end, !dbg !6454

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6454
  %lnot14 = xor i1 %lnot, true, !dbg !6454
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6454
  %conv = sext i32 %lnot.ext to i64, !dbg !6454
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6454
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6454
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6456

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6457
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16, !dbg !6458
  br label %if.end17, !dbg !6458

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6459

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !6460
  %12 = load i1, ptr %retval, align 1, !dbg !6460
  ret i1 %12, !dbg !6460
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !6461 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6467, metadata !DIExpression()), !dbg !6469
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6468, metadata !DIExpression()), !dbg !6470
  br label %do.body, !dbg !6471

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6472

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6474
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !6475
  %1 = load i32, ptr %i.addr, align 4, !dbg !6476
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6477
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #16, !dbg !6478
  ret i32 %call, !dbg !6479
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6480 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !6483 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6491, metadata !DIExpression()), !dbg !6493
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6492, metadata !DIExpression()), !dbg !6494
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6495
  %1 = load i64, ptr %size.addr, align 8, !dbg !6496
  %conv = trunc i64 %1 to i32, !dbg !6496
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6497
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6498
  %3 = load i64, ptr %size.addr, align 8, !dbg !6498
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !6498
  ret void, !dbg !6499
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !6500 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6503, metadata !DIExpression()), !dbg !6505
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6504, metadata !DIExpression()), !dbg !6506
  %0 = load i32, ptr %i.addr, align 4, !dbg !6507
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6508
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #16, !dbg !6509
  ret i32 %call, !dbg !6510
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6511 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6516, metadata !DIExpression()), !dbg !6518
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6517, metadata !DIExpression()), !dbg !6519
  ret i1 true, !dbg !6520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6521 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6526, metadata !DIExpression()), !dbg !6529
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6527, metadata !DIExpression()), !dbg !6530
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6528, metadata !DIExpression()), !dbg !6531
  ret void, !dbg !6532
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !6533 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6536, metadata !DIExpression()), !dbg !6540
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6537, metadata !DIExpression()), !dbg !6541
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6538, metadata !DIExpression()), !dbg !6542
  %0 = load i32, ptr %i.addr, align 4, !dbg !6542
  %sub = sub i32 0, %0, !dbg !6542
  store i32 %sub, ptr %__ret, align 4, !dbg !6542
  %1 = load i32, ptr %__ret, align 4, !dbg !6542
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6542
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6542
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !6542, !srcloc !6543
  store i32 %3, ptr %__ret, align 4, !dbg !6542
  %4 = load i32, ptr %__ret, align 4, !dbg !6542
  store i32 %4, ptr %tmp, align 4, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !6544
  %5 = load i32, ptr %tmp, align 4, !dbg !6542
  ret i32 %5, !dbg !6545
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6546 dso_local void @kill_anon_super(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6547 dso_local void @v9fs_session_cancel(ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }
attributes #19 = { nounwind memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100}
!llvm.ident = !{!5101}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 342, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/9p/vfs_super.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "23f6449b5fb09d49bad05c6ff27ea77b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "v9fs_fs_type", scope: !9, file: !2, line: 341, type: !630, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/9p/.vfs_super.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/9p/9p\22 -D KBUILD_BASENAME=\22vfs_super\22 -D KBUILD_MODNAME=\229p\22 -D __KBUILD_MODNAME=kmod_9p -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/9p/vfs_super.ll fs/9p/vfs_super.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !340, globals: !5078, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !29, !35, !41, !48, !53, !61, !69, !75, !84, !89, !94, !100, !112, !120, !214, !222, !238, !244, !251, !258, !265, !274, !279, !289, !301, !307, !314, !319, !332}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !20, line: 32, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!23 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !25, line: 2052, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!28 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !30, line: 54, baseType: !13, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "USRQUOTA", value: 0)
!33 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!34 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !36, line: 45, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!39 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!40 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !42, line: 487, baseType: !13, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!45 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!46 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!47 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !49, line: 65, baseType: !13, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!52 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !54, line: 620, baseType: !13, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!57 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!58 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!59 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!60 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !54, line: 597, baseType: !62, size: 32, elements: !63)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !{!64, !65, !66, !67, !68}
!64 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!65 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!66 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!67 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!68 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !70, line: 26, baseType: !13, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!73 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!74 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !42, line: 547, baseType: !13, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83}
!77 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!78 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!79 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!80 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!81 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!82 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!83 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !42, line: 564, baseType: !13, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!87 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!88 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !42, line: 577, baseType: !13, size: 32, elements: !90)
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!92 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!93 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !42, line: 503, baseType: !13, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!97 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!98 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!99 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !101, line: 44, baseType: !13, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111}
!103 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!104 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!105 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!106 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!107 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!108 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!109 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!110 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!111 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !113, line: 9, baseType: !13, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!116 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!117 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!118 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!119 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !122, file: !121, line: 147, baseType: !13, size: 32, elements: !211)
!121 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !121, line: 135, size: 512, elements: !123)
!123 = !{!124, !127, !129, !130, !134, !135, !151, !209, !210}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !122, file: !121, line: 136, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !122, file: !121, line: 137, baseType: !128, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !122, file: !121, line: 138, baseType: !62, size: 32, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !122, file: !121, line: 139, baseType: !131, size: 16, offset: 160)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !132, line: 24, baseType: !133)
!132 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!133 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !121, line: 150, baseType: !120, size: 32, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !122, file: !121, line: 151, baseType: !136, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !121, line: 64, baseType: !138)
!138 = !DISubroutineType(types: !139)
!139 = !{!62, !140, !62, !128, !141, !147}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 61, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !144, line: 72, baseType: !145)
!144 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !144, line: 16, baseType: !146)
!146 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !132, line: 52, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !144, line: 88, baseType: !150)
!150 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !122, file: !121, line: 152, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !121, line: 117, size: 256, elements: !154)
!154 = !{!155, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !153, file: !121, line: 118, baseType: !156, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !132, line: 174, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 172, size: 32, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !157, file: !132, line: 173, baseType: !62, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !153, file: !121, line: 119, baseType: !161, size: 192, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !162, line: 41, baseType: !163)
!162 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !162, line: 37, size: 192, elements: !164)
!164 = !{!165, !203}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !163, file: !162, line: 38, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !167, line: 29, baseType: !168)
!167 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !167, line: 17, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !167, line: 18, baseType: !171, size: 32)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !167, line: 18, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !171, file: !167, line: 19, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !175, line: 14, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !174, file: !175, line: 15, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !179, line: 44, baseType: !180)
!179 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !179, line: 14, size: 32, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !179, line: 15, baseType: !183, size: 32)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !179, line: 15, size: 32, elements: !184)
!184 = !{!185, !186, !196}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !183, file: !179, line: 16, baseType: !156, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !179, line: 24, baseType: !187, size: 16)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !179, line: 24, size: 16, elements: !188)
!188 = !{!189, !195}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !187, file: !179, line: 25, baseType: !190, size: 8)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !191, line: 17, baseType: !192)
!191 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !193, line: 21, baseType: !194)
!193 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!194 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !187, file: !179, line: 26, baseType: !190, size: 8, offset: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !179, line: 28, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !179, line: 28, size: 32, elements: !198)
!198 = !{!199, !202}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !197, file: !179, line: 29, baseType: !200, size: 16)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !191, line: 19, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !193, line: 24, baseType: !133)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !197, file: !179, line: 30, baseType: !200, size: 16, offset: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !163, file: !162, line: 39, baseType: !204, size: 128, offset: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !132, line: 190, size: 128, elements: !205)
!205 = !{!206, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !132, line: 191, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !204, file: !132, line: 191, baseType: !207, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !122, file: !121, line: 153, baseType: !128, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !122, file: !121, line: 154, baseType: !128, size: 64, offset: 448)
!211 = !{!212, !213}
!212 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!213 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !215, line: 68, baseType: !13, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!216 = !{!217, !218, !219, !220, !221}
!217 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!218 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!219 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!220 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!221 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !223, line: 1325, baseType: !13, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!225 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!226 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!227 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!228 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!229 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!230 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!231 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!232 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!233 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!234 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!235 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!236 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!237 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !239, line: 16, baseType: !13, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!240 = !{!241, !242, !243}
!241 = !DIEnumerator(name: "TT_NONE", value: 0)
!242 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!243 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !245, line: 51, baseType: !13, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!246 = !{!247, !248, !249, !250}
!247 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!248 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!249 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!250 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !252, line: 15, baseType: !13, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!253 = !{!254, !255, !256, !257}
!254 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!255 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!256 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!257 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_trans_status", file: !259, line: 42, baseType: !13, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/net/9p/client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7a55fe24c3aa1cf602d2a8511dd3702")
!260 = !{!261, !262, !263, !264}
!261 = !DIEnumerator(name: "Connected", value: 0)
!262 = !DIEnumerator(name: "BeginDisconnect", value: 1)
!263 = !DIEnumerator(name: "Disconnected", value: 2)
!264 = !DIEnumerator(name: "Hung", value: 3)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_cache_bits", file: !266, line: 75, baseType: !13, size: 32, elements: !267)
!266 = !DIFile(filename: "fs/9p/v9fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "949eddcef83527ffb4cb04cde5bb993a")
!267 = !{!268, !269, !270, !271, !272, !273}
!268 = !DIEnumerator(name: "CACHE_NONE", value: 0)
!269 = !DIEnumerator(name: "CACHE_FILE", value: 1)
!270 = !DIEnumerator(name: "CACHE_META", value: 2)
!271 = !DIEnumerator(name: "CACHE_WRITEBACK", value: 4)
!272 = !DIEnumerator(name: "CACHE_LOOSE", value: 8)
!273 = !DIEnumerator(name: "CACHE_FSCACHE", value: 128)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !275, line: 10, baseType: !13, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!276 = !{!277, !278}
!277 = !DIEnumerator(name: "false", value: 0)
!278 = !DIEnumerator(name: "true", value: 1)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !280, line: 364, baseType: !13, size: 32, elements: !281)
!280 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!281 = !{!282, !283, !284, !285, !286, !287, !288}
!282 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!283 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!284 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!285 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!286 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!287 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!288 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_session_flags", file: !266, line: 33, baseType: !13, size: 32, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!291 = !DIEnumerator(name: "V9FS_PROTO_2000U", value: 1)
!292 = !DIEnumerator(name: "V9FS_PROTO_2000L", value: 2)
!293 = !DIEnumerator(name: "V9FS_ACCESS_SINGLE", value: 4)
!294 = !DIEnumerator(name: "V9FS_ACCESS_USER", value: 8)
!295 = !DIEnumerator(name: "V9FS_ACCESS_CLIENT", value: 16)
!296 = !DIEnumerator(name: "V9FS_POSIX_ACL", value: 32)
!297 = !DIEnumerator(name: "V9FS_NO_XATTR", value: 64)
!298 = !DIEnumerator(name: "V9FS_IGNORE_QV", value: 128)
!299 = !DIEnumerator(name: "V9FS_DIRECT_IO", value: 256)
!300 = !DIEnumerator(name: "V9FS_SYNC", value: 512)
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_read_from_hole", file: !302, line: 225, baseType: !13, size: 32, elements: !303)
!302 = !DIFile(filename: "./include/linux/netfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f990c1c7c591a5358345b001c6d554e")
!303 = !{!304, !305, !306}
!304 = !DIEnumerator(name: "NETFS_READ_HOLE_IGNORE", value: 0)
!305 = !DIEnumerator(name: "NETFS_READ_HOLE_CLEAR", value: 1)
!306 = !DIEnumerator(name: "NETFS_READ_HOLE_FAIL", value: 2)
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_source", file: !302, line: 112, baseType: !308, size: 8, elements: !309)
!308 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!309 = !{!310, !311, !312, !313}
!310 = !DIEnumerator(name: "NETFS_FILL_WITH_ZEROES", value: 0)
!311 = !DIEnumerator(name: "NETFS_DOWNLOAD_FROM_SERVER", value: 1)
!312 = !DIEnumerator(name: "NETFS_READ_FROM_CACHE", value: 2)
!313 = !DIEnumerator(name: "NETFS_INVALID_READ", value: 3)
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_origin", file: !302, line: 167, baseType: !308, size: 8, elements: !315)
!315 = !{!316, !317, !318}
!316 = !DIEnumerator(name: "NETFS_READAHEAD", value: 0)
!317 = !DIEnumerator(name: "NETFS_READPAGE", value: 1)
!318 = !DIEnumerator(name: "NETFS_READ_FOR_WRITE", value: 2)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fscache_cookie_state", file: !320, line: 55, baseType: !308, size: 8, elements: !321)
!320 = !DIFile(filename: "./include/linux/fscache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53840587b25f3340766108e9e782ab7f")
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!322 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_QUIESCENT", value: 0)
!323 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_LOOKING_UP", value: 1)
!324 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_CREATING", value: 2)
!325 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_ACTIVE", value: 3)
!326 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_INVALIDATING", value: 4)
!327 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_FAILED", value: 5)
!328 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_LRU_DISCARDING", value: 6)
!329 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_WITHDRAWING", value: 7)
!330 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_RELINQUISHING", value: 8)
!331 = !DIEnumerator(name: "FSCACHE_COOKIE_STATE_DROPPED", value: 9)
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !333, line: 119, baseType: !13, size: 32, elements: !334)
!333 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!334 = !{!335, !336, !337, !338, !339}
!335 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!336 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!337 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!338 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!339 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!340 = !{!341, !871, !146, !128, !428, !148, !150, !536, !4941}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !343)
!343 = !{!344, !345, !346, !350, !4625, !4651, !4652, !4653, !4654, !4658, !4661, !4662, !4663, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4729, !4733, !4751, !4768, !4769, !4770, !4771, !4780, !4803, !4804, !4807, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4821, !4822, !4901, !4909, !4910, !4911, !4913, !4917, !4918, !4922, !4923, !4924, !4925, !4927, !4928, !4929, !4936, !4937, !4938, !4940}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !342, file: !12, line: 403, baseType: !11, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !342, file: !12, line: 406, baseType: !204, size: 128, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !12, line: 409, baseType: !347, size: 448, offset: 192)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 56)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !342, file: !12, line: 417, baseType: !351, size: 768, offset: 640)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !352)
!352 = !{!353, !4619, !4620, !4621, !4624}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !351, file: !12, line: 46, baseType: !354, size: 512)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !355, line: 64, size: 512, elements: !356)
!355 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!356 = !{!357, !358, !359, !361, !406, !4510, !4613, !4614, !4615, !4616, !4617, !4618}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !355, line: 65, baseType: !125, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !354, file: !355, line: 66, baseType: !204, size: 128, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !354, file: !355, line: 67, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !354, file: !355, line: 68, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !355, line: 168, size: 768, elements: !364)
!364 = !{!365, !366, !367, !368}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !363, file: !355, line: 169, baseType: !204, size: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !363, file: !355, line: 170, baseType: !166, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !363, file: !355, line: 171, baseType: !354, size: 512, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !363, file: !355, line: 172, baseType: !369, size: 64, offset: 704)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !355, line: 133, size: 192, elements: !372)
!372 = !{!373, !380, !385}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !371, file: !355, line: 134, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!62, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !355, line: 135, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!125, !378}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !371, file: !355, line: 136, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!62, !378, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !355, line: 125, size: 20736, elements: !392)
!392 = !{!393, !396, !400, !401, !405}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !391, file: !355, line: 126, baseType: !394, size: 192)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 192, elements: !5)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !391, file: !355, line: 127, baseType: !397, size: 4096, offset: 192)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 4096, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !391, file: !355, line: 128, baseType: !62, size: 32, offset: 4288)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !391, file: !355, line: 129, baseType: !402, size: 16384, offset: 4320)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 2048)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !391, file: !355, line: 130, baseType: !62, size: 32, offset: 20704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !354, file: !355, line: 69, baseType: !407, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !355, line: 116, size: 384, elements: !410)
!410 = !{!411, !415, !438, !4498, !4502, !4506}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !409, file: !355, line: 117, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !360}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !409, file: !355, line: 118, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !419, line: 254, size: 128, elements: !420)
!419 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!420 = !{!421, !434}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !418, file: !419, line: 255, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!425, !360, !429, !395}
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !132, line: 66, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !144, line: 73, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !144, line: 15, baseType: !428)
!428 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !419, line: 30, size: 128, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !419, line: 31, baseType: !125, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !430, file: !419, line: 32, baseType: !131, size: 16, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !418, file: !419, line: 256, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!425, !360, !429, !125, !142}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !409, file: !355, line: 119, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !419, line: 84, size: 320, elements: !443)
!443 = !{!444, !445, !449, !4494, !4496}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !442, file: !419, line: 85, baseType: !125, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !442, file: !419, line: 86, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!131, !360, !429, !62}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !442, file: !419, line: 88, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!131, !360, !453, !62}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !419, line: 175, size: 512, elements: !455)
!455 = !{!456, !457, !458, !459, !4485, !4489, !4490}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !454, file: !419, line: 176, baseType: !430, size: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !454, file: !419, line: 177, baseType: !142, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !454, file: !419, line: 178, baseType: !128, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !454, file: !419, line: 179, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !25, line: 472, size: 1536, align: 64, elements: !465)
!465 = !{!466, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4479, !4480, !4481, !4482, !4483, !4484}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !464, file: !25, line: 473, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !25, line: 641, size: 4800, elements: !469)
!469 = !{!470, !471, !472, !480, !481, !488, !489, !492, !493, !4314, !4315, !4316, !4317, !4318, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4358, !4361, !4362, !4363, !4372, !4373, !4374, !4375}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !468, file: !25, line: 642, baseType: !131, size: 16)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !468, file: !25, line: 643, baseType: !133, size: 16, offset: 16)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !468, file: !25, line: 644, baseType: !473, size: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !474, line: 23, baseType: !475)
!474 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 21, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !475, file: !474, line: 22, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !132, line: 37, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !144, line: 49, baseType: !13)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !468, file: !25, line: 645, baseType: !204, size: 128, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !468, file: !25, line: 646, baseType: !482, size: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !474, line: 28, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 26, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !483, file: !474, line: 27, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !132, line: 38, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !144, line: 50, baseType: !13)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !468, file: !25, line: 647, baseType: !13, size: 32, offset: 224)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !468, file: !25, line: 650, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !25, line: 607, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !468, file: !25, line: 651, baseType: !490, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !468, file: !25, line: 654, baseType: !494, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !25, line: 1966, size: 2048, align: 512, elements: !497)
!497 = !{!498, !4148, !4158, !4162, !4166, !4170, !4174, !4178, !4182, !4186, !4190, !4191, !4195, !4199, !4236, !4265, !4269, !4275, !4279, !4283, !4287, !4291, !4295, !4301, !4305}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !496, file: !25, line: 1967, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !467, !502, !13}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !504, line: 82, size: 1536, elements: !505)
!504 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!505 = !{!506, !507, !517, !525, !526, !546, !547, !551, !564, !4131, !4132, !4133, !4134, !4140, !4141, !4142}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !503, file: !504, line: 84, baseType: !13, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !503, file: !504, line: 85, baseType: !508, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !509, line: 275, baseType: !510)
!509 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !509, line: 275, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !510, file: !509, line: 275, baseType: !513, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !509, line: 69, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !509, line: 64, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !514, file: !509, line: 65, baseType: !13, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !503, file: !504, line: 86, baseType: !518, size: 128, offset: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !519, line: 38, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!520 = !{!521, !523}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !519, line: 39, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !518, file: !519, line: 39, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !503, file: !504, line: 87, baseType: !502, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !503, file: !504, line: 88, baseType: !527, size: 128, offset: 256)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !504, line: 49, size: 128, elements: !528)
!528 = !{!529, !543}
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !504, line: 50, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !504, line: 50, size: 64, elements: !531)
!531 = !{!532, !539}
!532 = !DIDerivedType(tag: DW_TAG_member, scope: !530, file: !504, line: 51, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !530, file: !504, line: 51, size: 64, elements: !534)
!534 = !{!535, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !533, file: !504, line: 52, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !191, line: 21, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !193, line: 27, baseType: !13)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !533, file: !504, line: 52, baseType: !536, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !530, file: !504, line: 54, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !191, line: 23, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !193, line: 31, baseType: !542)
!542 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !527, file: !504, line: 56, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !503, file: !504, line: 89, baseType: !467, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !503, file: !504, line: 91, baseType: !548, size: 256, offset: 448)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !503, file: !504, line: 94, baseType: !552, size: 64, offset: 704)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !553, line: 25, size: 64, elements: !554)
!553 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !553, line: 26, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !553, line: 26, size: 64, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !556, file: !553, line: 28, baseType: !541, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !553, line: 30, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !553, line: 30, size: 64, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !553, line: 31, baseType: !166, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !560, file: !553, line: 32, baseType: !62, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !503, file: !504, line: 95, baseType: !565, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !504, line: 128, size: 1024, align: 512, elements: !568)
!568 = !{!569, !573, !574, !581, !587, !591, !595, !599, !600, !604, !608, !4121, !4125}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !567, file: !504, line: 129, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!62, !502, !13}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !567, file: !504, line: 130, baseType: !570, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !567, file: !504, line: 131, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!62, !578, !580}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !567, file: !504, line: 132, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!62, !578, !13, !125, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !567, file: !504, line: 134, baseType: !588, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!62, !578}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !567, file: !504, line: 135, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!62, !502}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !567, file: !504, line: 136, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !502}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !567, file: !504, line: 137, baseType: !596, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !567, file: !504, line: 138, baseType: !601, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !502, !467}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !567, file: !504, line: 139, baseType: !605, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!395, !502, !395, !62}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !567, file: !504, line: 140, baseType: !609, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!612, !4120}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !614, line: 70, size: 256, elements: !615)
!614 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!615 = !{!616, !617, !4118, !4119}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !613, file: !614, line: 71, baseType: !502, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !613, file: !614, line: 72, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !25, line: 1190, size: 10752, elements: !620)
!620 = !{!621, !622, !625, !626, !627, !628, !677, !880, !920, !1010, !1014, !1015, !1016, !1017, !1018, !1027, !1028, !1029, !1030, !1059, !1063, !1064, !1602, !1605, !1688, !1691, !1692, !1693, !1734, !4051, !4052, !4053, !4054, !4055, !4056, !4059, !4061, !4068, !4069, !4070, !4071, !4072, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !619, file: !25, line: 1191, baseType: !204, size: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !619, file: !25, line: 1192, baseType: !623, size: 32, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !132, line: 21, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !132, line: 18, baseType: !536)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !619, file: !25, line: 1193, baseType: !194, size: 8, offset: 160)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !619, file: !25, line: 1194, baseType: !146, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !619, file: !25, line: 1195, baseType: !148, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !619, file: !25, line: 1196, baseType: !629, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !25, line: 2366, size: 576, elements: !631)
!631 = !{!632, !633, !634, !641, !645, !649, !653, !654, !655, !665, !669, !670, !671, !673, !674, !675, !676}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !630, file: !25, line: 2367, baseType: !125, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !630, file: !25, line: 2368, baseType: !62, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !630, file: !25, line: 2376, baseType: !635, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!62, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !640, line: 32, flags: DIFlagFwdDecl)
!640 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!641 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !630, file: !25, line: 2377, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !25, line: 75, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !630, file: !25, line: 2378, baseType: !646, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!502, !629, !62, !125, !128}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !630, file: !25, line: 2380, baseType: !650, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !618}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !630, file: !25, line: 2381, baseType: !341, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !630, file: !25, line: 2382, baseType: !629, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !630, file: !25, line: 2383, baseType: !656, size: 64, offset: 512)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !132, line: 194, size: 64, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !656, file: !132, line: 195, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !132, line: 198, size: 128, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !132, line: 199, baseType: !659, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !660, file: !132, line: 199, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !630, file: !25, line: 2385, baseType: !666, offset: 576)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !667, line: 206, elements: !668)
!667 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!668 = !{}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !630, file: !25, line: 2386, baseType: !666, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !630, file: !25, line: 2387, baseType: !666, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !630, file: !25, line: 2388, baseType: !672, offset: 576)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, elements: !5)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !630, file: !25, line: 2390, baseType: !666, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !630, file: !25, line: 2391, baseType: !666, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !630, file: !25, line: 2392, baseType: !666, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !630, file: !25, line: 2393, baseType: !666, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !619, file: !25, line: 1197, baseType: !678, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !25, line: 2057, size: 1664, elements: !681)
!681 = !{!682, !686, !690, !691, !695, !719, !723, !724, !725, !729, !733, !737, !738, !739, !769, !774, !775, !782, !783, !784, !785, !789, !793, !862, !878, !879}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !680, file: !25, line: 2058, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!467, !618}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !680, file: !25, line: 2059, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !467}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !680, file: !25, line: 2060, baseType: !687, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !680, file: !25, line: 2062, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !467, !62}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !680, file: !25, line: 2063, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!62, !467, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 42, size: 384, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !700, file: !20, line: 43, baseType: !428, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !700, file: !20, line: 45, baseType: !428, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !700, file: !20, line: 52, baseType: !148, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !700, file: !20, line: 53, baseType: !148, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !700, file: !20, line: 55, baseType: !19, size: 32, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !700, file: !20, line: 57, baseType: !13, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !700, file: !20, line: 58, baseType: !13, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !700, file: !20, line: 59, baseType: !13, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !700, file: !20, line: 60, baseType: !13, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !700, file: !20, line: 61, baseType: !13, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !700, file: !20, line: 62, baseType: !13, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !700, file: !20, line: 63, baseType: !13, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !700, file: !20, line: 71, baseType: !13, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !700, file: !20, line: 78, baseType: !716, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !20, line: 78, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !680, file: !25, line: 2064, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!62, !467}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !680, file: !25, line: 2065, baseType: !687, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !680, file: !25, line: 2066, baseType: !650, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !680, file: !25, line: 2067, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!62, !618, !62}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !680, file: !25, line: 2068, baseType: !730, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!62, !618, !24}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !680, file: !25, line: 2069, baseType: !734, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!62, !618}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !680, file: !25, line: 2070, baseType: !730, size: 64, offset: 704)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !680, file: !25, line: 2071, baseType: !734, size: 64, offset: 768)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !680, file: !25, line: 2072, baseType: !740, size: 64, offset: 832)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!62, !502, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !745, line: 9, size: 960, elements: !746)
!745 = !DIFile(filename: "./include/linux/statfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "109fd6e5d352fa5dbe7866d2f488a201")
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !762, !763, !764, !765}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !744, file: !745, line: 10, baseType: !428, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !744, file: !745, line: 11, baseType: !428, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !744, file: !745, line: 12, baseType: !540, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !744, file: !745, line: 13, baseType: !540, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !744, file: !745, line: 14, baseType: !540, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !744, file: !745, line: 15, baseType: !540, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !744, file: !745, line: 16, baseType: !540, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !744, file: !745, line: 17, baseType: !755, size: 64, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !144, line: 81, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 79, size: 64, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !756, file: !144, line: 80, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 2)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !744, file: !745, line: 18, baseType: !428, size: 64, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !744, file: !745, line: 19, baseType: !428, size: 64, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !744, file: !745, line: 20, baseType: !428, size: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !744, file: !745, line: 21, baseType: !766, size: 256, offset: 704)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 256, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 4)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !680, file: !25, line: 2073, baseType: !770, size: 64, offset: 896)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!62, !618, !773, !395}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !680, file: !25, line: 2074, baseType: !650, size: 64, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !680, file: !25, line: 2076, baseType: !776, size: 64, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!62, !779, !502}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !781, line: 66, flags: DIFlagFwdDecl)
!781 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !680, file: !25, line: 2077, baseType: !776, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !680, file: !25, line: 2078, baseType: !776, size: 64, offset: 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !680, file: !25, line: 2079, baseType: !776, size: 64, offset: 1216)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !680, file: !25, line: 2081, baseType: !786, size: 64, offset: 1280)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!425, !618, !62, !395, !142, !148}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !680, file: !25, line: 2082, baseType: !790, size: 64, offset: 1344)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!425, !618, !62, !125, !142, !148}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !680, file: !25, line: 2083, baseType: !794, size: 64, offset: 1408)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!797, !467}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !30, line: 296, size: 1664, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !826, !827, !828, !829, !845, !846, !847}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !799, file: !30, line: 297, baseType: !660, size: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !799, file: !30, line: 298, baseType: !204, size: 128, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !799, file: !30, line: 299, baseType: !204, size: 128, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !799, file: !30, line: 300, baseType: !204, size: 128, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !799, file: !30, line: 301, baseType: !806, size: 256, offset: 512)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !807, line: 66, size: 256, elements: !808)
!807 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!808 = !{!809, !818, !820, !825}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !806, file: !807, line: 67, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !811, line: 13, baseType: !812)
!811 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !132, line: 181, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 179, size: 64, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !813, file: !132, line: 180, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !191, line: 22, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !193, line: 30, baseType: !150)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !806, file: !807, line: 68, baseType: !819, size: 32, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !175, line: 23, baseType: !174)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !806, file: !807, line: 70, baseType: !821, size: 32, offset: 96)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !822, line: 15, size: 32, elements: !823)
!822 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !821, file: !822, line: 20, baseType: !156, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !806, file: !807, line: 72, baseType: !204, size: 128, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !799, file: !30, line: 302, baseType: !166, size: 32, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !799, file: !30, line: 303, baseType: !156, size: 32, offset: 800)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !799, file: !30, line: 304, baseType: !618, size: 64, offset: 832)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !799, file: !30, line: 305, baseType: !830, size: 64, offset: 896)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !30, line: 68, size: 64, elements: !831)
!831 = !{!832, !844}
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !30, line: 69, baseType: !833, size: 32)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !30, line: 69, size: 32, elements: !834)
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !833, file: !30, line: 70, baseType: !473, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !833, file: !30, line: 71, baseType: !482, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !833, file: !30, line: 72, baseType: !838, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !839, line: 24, baseType: !840)
!839 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !839, line: 22, size: 32, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !840, file: !839, line: 23, baseType: !843, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !839, line: 20, baseType: !479)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !830, file: !30, line: 74, baseType: !29, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !799, file: !30, line: 306, baseType: !148, size: 64, offset: 960)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !799, file: !30, line: 307, baseType: !146, size: 64, offset: 1024)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !799, file: !30, line: 308, baseType: !848, size: 576, offset: 1088)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !30, line: 205, size: 576, elements: !849)
!849 = !{!850, !852, !853, !854, !855, !856, !857, !858, !861}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !848, file: !30, line: 206, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !30, line: 66, baseType: !150)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !848, file: !30, line: 207, baseType: !851, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !848, file: !30, line: 208, baseType: !851, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !848, file: !30, line: 209, baseType: !851, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !848, file: !30, line: 210, baseType: !851, size: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !848, file: !30, line: 211, baseType: !851, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !848, file: !30, line: 212, baseType: !851, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !848, file: !30, line: 213, baseType: !859, size: 64, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !860, line: 8, baseType: !817)
!860 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !848, file: !30, line: 214, baseType: !859, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !680, file: !25, line: 2085, baseType: !863, size: 64, offset: 1472)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!428, !618, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !868, line: 15, size: 256, elements: !869)
!868 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!869 = !{!870, !872, !873, !874, !875}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !867, file: !868, line: 16, baseType: !871, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !132, line: 154, baseType: !13)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !867, file: !868, line: 19, baseType: !62, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !867, file: !868, line: 26, baseType: !146, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !867, file: !868, line: 33, baseType: !146, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !867, file: !868, line: 36, baseType: !876, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !223, line: 33, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !680, file: !25, line: 2087, baseType: !863, size: 64, offset: 1536)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !680, file: !25, line: 2089, baseType: !650, size: 64, offset: 1600)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !619, file: !25, line: 1198, baseType: !881, size: 64, offset: 448)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !30, line: 324, size: 704, elements: !884)
!884 = !{!885, !889, !893, !897, !898, !899, !900, !901, !906, !911, !915}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !883, file: !30, line: 325, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!62, !798}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !883, file: !30, line: 326, baseType: !890, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!798, !618, !62}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !883, file: !30, line: 327, baseType: !894, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !798}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !883, file: !30, line: 328, baseType: !886, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !883, file: !30, line: 329, baseType: !886, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !883, file: !30, line: 330, baseType: !886, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !883, file: !30, line: 331, baseType: !726, size: 64, offset: 384)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !883, file: !30, line: 334, baseType: !902, size: 64, offset: 448)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!905, !467}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !883, file: !30, line: 335, baseType: !907, size: 64, offset: 512)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!62, !467, !910}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !883, file: !30, line: 337, baseType: !912, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!62, !467, !905}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !883, file: !30, line: 339, baseType: !916, size: 64, offset: 640)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!62, !618, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !619, file: !25, line: 1199, baseType: !921, size: 64, offset: 512)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !30, line: 430, size: 704, elements: !924)
!924 = !{!925, !936, !937, !941, !942, !943, !958, !981, !985, !986, !1009}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !923, file: !30, line: 431, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!62, !618, !62, !62, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !932, line: 8, size: 128, elements: !933)
!932 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !931, file: !932, line: 9, baseType: !612, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !931, file: !932, line: 10, baseType: !502, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !923, file: !30, line: 432, baseType: !726, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !923, file: !30, line: 433, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!62, !618, !13}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !923, file: !30, line: 434, baseType: !938, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !923, file: !30, line: 435, baseType: !726, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !923, file: !30, line: 436, baseType: !944, size: 64, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!62, !618, !62, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !30, line: 417, size: 256, elements: !949)
!949 = !{!950, !951, !952, !953, !954, !955, !956, !957}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !948, file: !30, line: 418, baseType: !62, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !948, file: !30, line: 419, baseType: !13, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !948, file: !30, line: 420, baseType: !13, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !948, file: !30, line: 422, baseType: !13, size: 32, offset: 96)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !948, file: !30, line: 423, baseType: !13, size: 32, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !948, file: !30, line: 424, baseType: !13, size: 32, offset: 160)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !948, file: !30, line: 425, baseType: !13, size: 32, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !948, file: !30, line: 426, baseType: !13, size: 32, offset: 224)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !923, file: !30, line: 437, baseType: !959, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!62, !618, !830, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !30, line: 345, size: 960, elements: !964)
!964 = !{!965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !963, file: !30, line: 346, baseType: !62, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !963, file: !30, line: 347, baseType: !540, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !963, file: !30, line: 348, baseType: !540, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !963, file: !30, line: 349, baseType: !540, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !963, file: !30, line: 350, baseType: !540, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !963, file: !30, line: 351, baseType: !540, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !963, file: !30, line: 352, baseType: !540, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !963, file: !30, line: 353, baseType: !816, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !963, file: !30, line: 355, baseType: !816, size: 64, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !963, file: !30, line: 356, baseType: !62, size: 32, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !963, file: !30, line: 357, baseType: !62, size: 32, offset: 608)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !963, file: !30, line: 358, baseType: !540, size: 64, offset: 640)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !963, file: !30, line: 359, baseType: !540, size: 64, offset: 704)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !963, file: !30, line: 360, baseType: !540, size: 64, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !963, file: !30, line: 361, baseType: !816, size: 64, offset: 832)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !963, file: !30, line: 362, baseType: !62, size: 32, offset: 896)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !923, file: !30, line: 438, baseType: !982, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!62, !618, !919, !962}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !923, file: !30, line: 440, baseType: !959, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !923, file: !30, line: 441, baseType: !987, size: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!62, !618, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !30, line: 411, size: 1408, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !991, file: !30, line: 412, baseType: !13, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !991, file: !30, line: 413, baseType: !995, size: 1344, offset: 64)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 1344, elements: !5)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !30, line: 397, size: 448, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1008}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !996, file: !30, line: 398, baseType: !13, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !996, file: !30, line: 399, baseType: !13, size: 32, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !996, file: !30, line: 401, baseType: !13, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !996, file: !30, line: 402, baseType: !13, size: 32, offset: 96)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !996, file: !30, line: 403, baseType: !13, size: 32, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !996, file: !30, line: 404, baseType: !13, size: 32, offset: 160)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !996, file: !30, line: 405, baseType: !13, size: 32, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !996, file: !30, line: 406, baseType: !542, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !996, file: !30, line: 407, baseType: !1007, size: 64, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !132, line: 132, baseType: !540)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !996, file: !30, line: 408, baseType: !1007, size: 64, offset: 384)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !923, file: !30, line: 442, baseType: !938, size: 64, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !619, file: !25, line: 1200, baseType: !1011, size: 64, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !25, line: 54, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !619, file: !25, line: 1201, baseType: !146, size: 64, offset: 640)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !619, file: !25, line: 1202, baseType: !146, size: 64, offset: 704)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !619, file: !25, line: 1203, baseType: !146, size: 64, offset: 768)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !619, file: !25, line: 1204, baseType: !502, size: 64, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !619, file: !25, line: 1205, baseType: !1019, size: 320, offset: 896)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1020, line: 48, size: 320, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1021 = !{!1022, !1023, !1024, !1025, !1026}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1019, file: !1020, line: 49, baseType: !810, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1019, file: !1020, line: 55, baseType: !810, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1019, file: !1020, line: 57, baseType: !821, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1019, file: !1020, line: 59, baseType: !819, size: 32, offset: 160)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1019, file: !1020, line: 60, baseType: !204, size: 128, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !619, file: !25, line: 1206, baseType: !62, size: 32, offset: 1216)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !619, file: !25, line: 1207, baseType: !156, size: 32, offset: 1248)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !619, file: !25, line: 1209, baseType: !128, size: 64, offset: 1280)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !619, file: !25, line: 1211, baseType: !1031, size: 64, offset: 1344)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !1035, line: 36, size: 384, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!1036 = !{!1037, !1038, !1039, !1040, !1046, !1050}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1034, file: !1035, line: 37, baseType: !125, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1034, file: !1035, line: 38, baseType: !125, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1034, file: !1035, line: 39, baseType: !62, size: 32, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1034, file: !1035, line: 40, baseType: !1041, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!1044, !502}
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !132, line: 35, baseType: !1045)
!1045 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1034, file: !1035, line: 41, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!62, !1032, !502, !467, !125, !128, !142}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1034, file: !1035, line: 44, baseType: !1051, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!62, !1032, !1054, !502, !467, !125, !1057, !142, !62}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1056, line: 42, flags: DIFlagFwdDecl)
!1056 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !619, file: !25, line: 1223, baseType: !1060, size: 64, offset: 1408)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !519, line: 34, size: 64, elements: !1061)
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1060, file: !519, line: 35, baseType: !522, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !619, file: !25, line: 1224, baseType: !204, size: 128, offset: 1472)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !619, file: !25, line: 1225, baseType: !1065, size: 64, offset: 1600)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1067, line: 40, size: 7424, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!1068 = !{!1069, !1071, !1072, !1075, !1079, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1106, !1107}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !1066, file: !1067, line: 41, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !132, line: 131, baseType: !540)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !1066, file: !1067, line: 42, baseType: !1070, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1066, file: !1067, line: 43, baseType: !1073, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !781, line: 1453, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !1066, file: !1067, line: 44, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1078, line: 74, flags: DIFlagFwdDecl)
!1078 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !1066, file: !1067, line: 45, baseType: !1080, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1067, line: 45, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !1066, file: !1067, line: 46, baseType: !146, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !1066, file: !1067, line: 47, baseType: !1044, size: 8, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1066, file: !1067, line: 48, baseType: !190, size: 8, offset: 392)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1066, file: !1067, line: 49, baseType: !1044, size: 8, offset: 400)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !1066, file: !1067, line: 50, baseType: !1044, size: 8, offset: 408)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1066, file: !1067, line: 51, baseType: !623, size: 32, offset: 416)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1066, file: !1067, line: 52, baseType: !156, size: 32, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1066, file: !1067, line: 53, baseType: !166, size: 32, offset: 480)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1066, file: !1067, line: 54, baseType: !467, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1066, file: !1067, line: 55, baseType: !128, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1066, file: !1067, line: 56, baseType: !128, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !1066, file: !1067, line: 57, baseType: !1094, size: 64, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1096)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !1067, line: 57, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !1066, file: !1067, line: 58, baseType: !806, size: 256, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1066, file: !1067, line: 60, baseType: !62, size: 32, offset: 1024)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1066, file: !1067, line: 61, baseType: !62, size: 32, offset: 1056)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !1066, file: !1067, line: 62, baseType: !360, size: 64, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1066, file: !1067, line: 65, baseType: !806, size: 256, offset: 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !1066, file: !1067, line: 66, baseType: !618, size: 64, offset: 1408)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !1066, file: !1067, line: 68, baseType: !1104, size: 64, offset: 1472)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1067, line: 68, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !1066, file: !1067, line: 72, baseType: !1044, size: 8, offset: 1536)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !1066, file: !1067, line: 77, baseType: !1108, size: 5824, offset: 1600)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !42, line: 705, size: 5824, elements: !1109)
!1109 = !{!1110, !1111, !1113, !1116, !1117, !1172, !1242, !1243, !1244, !1245, !1246, !1253, !1461, !1474, !1484, !1488, !1490, !1491, !1492, !1496, !1503, !1504, !1507, !1510, !1514, !1517, !1518, !1519, !1520, !1521, !1522, !1579, !1580, !1581, !1584, !1587, !1596, !1597, !1598, !1599, !1600, !1601}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1108, file: !42, line: 706, baseType: !354, size: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1108, file: !42, line: 707, baseType: !1112, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1108, file: !42, line: 709, baseType: !1114, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !42, line: 37, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1108, file: !42, line: 711, baseType: !125, size: 64, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1108, file: !42, line: 712, baseType: !1118, size: 64, offset: 704)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !42, line: 89, size: 384, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1130, !1137, !1141}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1120, file: !42, line: 90, baseType: !125, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1120, file: !42, line: 91, baseType: !439, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1120, file: !42, line: 92, baseType: !1125, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!62, !1128, !390}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1120, file: !42, line: 93, baseType: !1131, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!395, !1128, !1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1120, file: !42, line: 95, baseType: !1138, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !1112}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1120, file: !42, line: 97, baseType: !1142, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !54, line: 286, size: 1472, elements: !1145)
!1145 = !{!1146, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1144, file: !54, line: 287, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!62, !1112}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1144, file: !54, line: 288, baseType: !1138, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1144, file: !54, line: 289, baseType: !1147, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1144, file: !54, line: 290, baseType: !1147, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1144, file: !54, line: 291, baseType: !1147, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1144, file: !54, line: 292, baseType: !1147, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1144, file: !54, line: 293, baseType: !1147, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1144, file: !54, line: 294, baseType: !1147, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1144, file: !54, line: 295, baseType: !1147, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1144, file: !54, line: 296, baseType: !1147, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1144, file: !54, line: 297, baseType: !1147, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1144, file: !54, line: 298, baseType: !1147, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1144, file: !54, line: 299, baseType: !1147, size: 64, offset: 768)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1144, file: !54, line: 300, baseType: !1147, size: 64, offset: 832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1144, file: !54, line: 301, baseType: !1147, size: 64, offset: 896)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1144, file: !54, line: 302, baseType: !1147, size: 64, offset: 960)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1144, file: !54, line: 303, baseType: !1147, size: 64, offset: 1024)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1144, file: !54, line: 304, baseType: !1147, size: 64, offset: 1088)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1144, file: !54, line: 305, baseType: !1147, size: 64, offset: 1152)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1144, file: !54, line: 306, baseType: !1147, size: 64, offset: 1216)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1144, file: !54, line: 307, baseType: !1147, size: 64, offset: 1280)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1144, file: !54, line: 308, baseType: !1147, size: 64, offset: 1344)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1144, file: !54, line: 309, baseType: !1147, size: 64, offset: 1408)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1108, file: !42, line: 714, baseType: !1173, size: 64, offset: 768)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1176, line: 80, size: 1344, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1241}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1175, file: !1176, line: 81, baseType: !125, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1175, file: !1176, line: 82, baseType: !125, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1175, file: !1176, line: 83, baseType: !439, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1175, file: !1176, line: 84, baseType: !439, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1175, file: !1176, line: 85, baseType: !439, size: 64, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1175, file: !1176, line: 87, baseType: !1184, size: 64, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!62, !1112, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !36, line: 96, size: 1152, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1200, !1204, !1205, !1206, !1207, !1208, !1216, !1217, !1218, !1219, !1220, !1221}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1188, file: !36, line: 97, baseType: !125, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1188, file: !36, line: 98, baseType: !1173, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1188, file: !36, line: 100, baseType: !341, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1188, file: !36, line: 101, baseType: !125, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1188, file: !36, line: 103, baseType: !1044, size: 8, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1188, file: !36, line: 104, baseType: !35, size: 32, offset: 288)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1188, file: !36, line: 106, baseType: !1197, size: 64, offset: 320)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !36, line: 106, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1188, file: !36, line: 107, baseType: !1201, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !36, line: 107, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1188, file: !36, line: 109, baseType: !1147, size: 64, offset: 448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1188, file: !36, line: 110, baseType: !1138, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1188, file: !36, line: 111, baseType: !1147, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1188, file: !36, line: 112, baseType: !1138, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1188, file: !36, line: 113, baseType: !1209, size: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!62, !1112, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !54, line: 60, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !54, line: 58, size: 32, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1213, file: !54, line: 59, baseType: !62, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1188, file: !36, line: 114, baseType: !1147, size: 64, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1188, file: !36, line: 115, baseType: !439, size: 64, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1188, file: !36, line: 116, baseType: !439, size: 64, offset: 896)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1188, file: !36, line: 118, baseType: !1142, size: 64, offset: 960)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1188, file: !36, line: 119, baseType: !1138, size: 64, offset: 1024)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1188, file: !36, line: 121, baseType: !1222, size: 64, offset: 1088)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !36, line: 121, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1175, file: !1176, line: 88, baseType: !1125, size: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1175, file: !1176, line: 89, baseType: !1147, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1175, file: !1176, line: 90, baseType: !1138, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1175, file: !1176, line: 91, baseType: !1138, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1175, file: !1176, line: 92, baseType: !1138, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1175, file: !1176, line: 94, baseType: !1147, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1175, file: !1176, line: 95, baseType: !1147, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1175, file: !1176, line: 97, baseType: !1209, size: 64, offset: 832)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1175, file: !1176, line: 98, baseType: !1147, size: 64, offset: 896)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1175, file: !1176, line: 100, baseType: !1147, size: 64, offset: 960)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1175, file: !1176, line: 102, baseType: !1147, size: 64, offset: 1024)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1175, file: !1176, line: 103, baseType: !1138, size: 64, offset: 1088)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1175, file: !1176, line: 105, baseType: !1142, size: 64, offset: 1152)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1175, file: !1176, line: 107, baseType: !1238, size: 64, offset: 1216)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1176, line: 107, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1175, file: !1176, line: 109, baseType: !1044, size: 8, offset: 1280)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1108, file: !42, line: 715, baseType: !1187, size: 64, offset: 832)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1108, file: !42, line: 717, baseType: !128, size: 64, offset: 896)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1108, file: !42, line: 719, baseType: !128, size: 64, offset: 960)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1108, file: !42, line: 721, baseType: !806, size: 256, offset: 1024)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1108, file: !42, line: 725, baseType: !1247, size: 448, offset: 1280)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !42, line: 517, size: 448, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1247, file: !42, line: 518, baseType: !204, size: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1247, file: !42, line: 519, baseType: !204, size: 128, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1247, file: !42, line: 520, baseType: !204, size: 128, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1247, file: !42, line: 521, baseType: !41, size: 32, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1108, file: !42, line: 726, baseType: !1254, size: 2496, offset: 1728)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !54, line: 663, size: 2496, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1281, !1321, !1322, !1323, !1324, !1325, !1326, !1407, !1408, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1452, !1458}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1254, file: !54, line: 664, baseType: !1212, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1254, file: !54, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1254, file: !54, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1254, file: !54, line: 667, baseType: !1044, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1254, file: !54, line: 668, baseType: !1044, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1254, file: !54, line: 669, baseType: !1044, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1254, file: !54, line: 670, baseType: !1044, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1254, file: !54, line: 671, baseType: !1044, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1254, file: !54, line: 672, baseType: !1044, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1254, file: !54, line: 673, baseType: !1044, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1254, file: !54, line: 674, baseType: !1044, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1254, file: !54, line: 675, baseType: !536, size: 32, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1254, file: !54, line: 676, baseType: !166, size: 32, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1254, file: !54, line: 678, baseType: !204, size: 128, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1254, file: !54, line: 679, baseType: !1271, size: 256, offset: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1272, line: 26, size: 256, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1271, file: !1272, line: 27, baseType: !13, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1271, file: !1272, line: 28, baseType: !1276, size: 192, offset: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1277, line: 43, size: 192, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1276, file: !1277, line: 44, baseType: !819, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1276, file: !1277, line: 45, baseType: !204, size: 128, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1254, file: !54, line: 680, baseType: !1282, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1284, line: 43, size: 1536, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1293, !1305, !1306, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1283, file: !1284, line: 44, baseType: !125, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1283, file: !1284, line: 45, baseType: !62, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1283, file: !1284, line: 46, baseType: !204, size: 128, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1283, file: !1284, line: 47, baseType: !166, size: 32, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1283, file: !1284, line: 48, baseType: !1291, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !54, line: 629, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1283, file: !1284, line: 49, baseType: !1294, size: 320, offset: 384)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1295, line: 11, size: 320, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1296 = !{!1297, !1298, !1299, !1304}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1294, file: !1295, line: 16, baseType: !660, size: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1294, file: !1295, line: 17, baseType: !146, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1294, file: !1295, line: 18, baseType: !1300, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !1295, line: 19, baseType: !536, size: 32, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1283, file: !1284, line: 50, baseType: !146, size: 64, offset: 704)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1283, file: !1284, line: 51, baseType: !1307, size: 64, offset: 768)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1308, line: 29, baseType: !816)
!1308 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1283, file: !1284, line: 52, baseType: !1307, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1283, file: !1284, line: 53, baseType: !1307, size: 64, offset: 896)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1283, file: !1284, line: 54, baseType: !1307, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1283, file: !1284, line: 55, baseType: !1307, size: 64, offset: 1024)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1283, file: !1284, line: 56, baseType: !146, size: 64, offset: 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1283, file: !1284, line: 57, baseType: !146, size: 64, offset: 1152)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1283, file: !1284, line: 58, baseType: !146, size: 64, offset: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1283, file: !1284, line: 59, baseType: !146, size: 64, offset: 1280)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1283, file: !1284, line: 60, baseType: !146, size: 64, offset: 1344)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1283, file: !1284, line: 61, baseType: !1112, size: 64, offset: 1408)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1283, file: !1284, line: 62, baseType: !1044, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1283, file: !1284, line: 63, baseType: !1044, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1254, file: !54, line: 681, baseType: !1044, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1254, file: !54, line: 682, baseType: !1044, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1254, file: !54, line: 683, baseType: !1044, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1254, file: !54, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1254, file: !54, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1254, file: !54, line: 690, baseType: !1327, size: 512, offset: 640)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !49, line: 118, size: 512, elements: !1328)
!1328 = !{!1329, !1342, !1343, !1348, !1403, !1404, !1405, !1406}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1327, file: !49, line: 119, baseType: !1330, size: 256)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1331, line: 9, size: 256, elements: !1332)
!1331 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1332 = !{!1333, !1341}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1330, file: !1331, line: 10, baseType: !1334, size: 192, align: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1335, line: 5, size: 192, align: 64, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1336 = !{!1337, !1338, !1340}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1334, file: !1335, line: 6, baseType: !146, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1334, file: !1335, line: 7, baseType: !1339, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1334, file: !1335, line: 8, baseType: !1339, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1330, file: !1331, line: 11, baseType: !1307, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1327, file: !49, line: 120, baseType: !1307, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1327, file: !49, line: 121, baseType: !1344, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!48, !1347}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1327, file: !49, line: 122, baseType: !1349, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !49, line: 159, size: 512, align: 512, elements: !1351)
!1351 = !{!1352, !1377, !1378, !1381, !1386, !1387, !1398, !1402}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1350, file: !49, line: 160, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !49, line: 215, size: 4608, align: 512, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1354, file: !49, line: 216, baseType: !819, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1354, file: !49, line: 217, baseType: !13, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1354, file: !49, line: 218, baseType: !13, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1354, file: !49, line: 219, baseType: !13, size: 32, offset: 96)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1354, file: !49, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1354, file: !49, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1354, file: !49, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1354, file: !49, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1354, file: !49, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1354, file: !49, line: 226, baseType: !13, size: 32, offset: 160)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1354, file: !49, line: 227, baseType: !133, size: 16, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1354, file: !49, line: 228, baseType: !133, size: 16, offset: 208)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1354, file: !49, line: 229, baseType: !13, size: 32, offset: 224)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1354, file: !49, line: 235, baseType: !1307, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1354, file: !49, line: 236, baseType: !1347, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1354, file: !49, line: 237, baseType: !1307, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1354, file: !49, line: 238, baseType: !1347, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1354, file: !49, line: 239, baseType: !1374, size: 4096, align: 512, offset: 512)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1350, size: 4096, align: 512, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 8)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1350, file: !49, line: 161, baseType: !13, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1350, file: !49, line: 162, baseType: !1379, size: 32, offset: 96)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !132, line: 32, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !144, line: 96, baseType: !62)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1350, file: !49, line: 163, baseType: !1382, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !509, line: 274, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !509, line: 274, size: 32, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1383, file: !509, line: 274, baseType: !513, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1350, file: !49, line: 164, baseType: !1347, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1350, file: !49, line: 165, baseType: !1388, size: 128, offset: 256)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1331, line: 14, size: 128, elements: !1389)
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1388, file: !1331, line: 15, baseType: !1391, size: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1335, line: 26, size: 128, elements: !1392)
!1392 = !{!1393, !1397}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1391, file: !1335, line: 27, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1335, line: 12, size: 64, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1394, file: !1335, line: 13, baseType: !1339, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1391, file: !1335, line: 28, baseType: !1339, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1350, file: !49, line: 166, baseType: !1399, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1307}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1350, file: !49, line: 167, baseType: !1307, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1327, file: !49, line: 123, baseType: !190, size: 8, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1327, file: !49, line: 124, baseType: !190, size: 8, offset: 456)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1327, file: !49, line: 125, baseType: !190, size: 8, offset: 464)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1327, file: !49, line: 126, baseType: !190, size: 8, offset: 472)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1254, file: !54, line: 691, baseType: !540, size: 64, offset: 1152)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1254, file: !54, line: 692, baseType: !1409, size: 256, offset: 1216)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1410, line: 98, size: 256, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1409, file: !1410, line: 99, baseType: !810, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1409, file: !1410, line: 100, baseType: !204, size: 128, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1409, file: !1410, line: 101, baseType: !1415, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1410, line: 21, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1254, file: !54, line: 693, baseType: !161, size: 192, offset: 1472)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1254, file: !54, line: 694, baseType: !1291, size: 64, offset: 1664)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1254, file: !54, line: 695, baseType: !156, size: 32, offset: 1728)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1254, file: !54, line: 696, baseType: !156, size: 32, offset: 1760)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1254, file: !54, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1254, file: !54, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1254, file: !54, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1254, file: !54, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1254, file: !54, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1254, file: !54, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1254, file: !54, line: 703, baseType: !1044, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1254, file: !54, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1254, file: !54, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1254, file: !54, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1254, file: !54, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1254, file: !54, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1254, file: !54, line: 709, baseType: !13, size: 32, offset: 1824)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1254, file: !54, line: 710, baseType: !53, size: 32, offset: 1856)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1254, file: !54, line: 711, baseType: !61, size: 32, offset: 1888)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1254, file: !54, line: 712, baseType: !61, size: 32, offset: 1920)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1254, file: !54, line: 713, baseType: !62, size: 32, offset: 1952)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1254, file: !54, line: 714, baseType: !62, size: 32, offset: 1984)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1254, file: !54, line: 715, baseType: !540, size: 64, offset: 2048)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1254, file: !54, line: 716, baseType: !540, size: 64, offset: 2112)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1254, file: !54, line: 717, baseType: !540, size: 64, offset: 2176)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1254, file: !54, line: 718, baseType: !540, size: 64, offset: 2240)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1254, file: !54, line: 720, baseType: !1447, size: 64, offset: 2304)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !54, line: 632, size: 64, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1448, file: !54, line: 633, baseType: !166, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1448, file: !54, line: 634, baseType: !13, size: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1254, file: !54, line: 721, baseType: !1453, size: 64, offset: 2368)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !1112, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !191, line: 20, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !193, line: 26, baseType: !62)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1254, file: !54, line: 722, baseType: !1459, size: 64, offset: 2432)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 722, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1108, file: !42, line: 727, baseType: !1462, size: 64, offset: 4224)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !54, line: 742, size: 1792, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1471, !1472, !1473}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1463, file: !54, line: 743, baseType: !1144, size: 1472)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1463, file: !54, line: 744, baseType: !1147, size: 64, offset: 1472)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1463, file: !54, line: 745, baseType: !1468, size: 64, offset: 1536)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !1112, !1044}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1463, file: !54, line: 746, baseType: !1147, size: 64, offset: 1600)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1463, file: !54, line: 747, baseType: !1138, size: 64, offset: 1664)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1463, file: !54, line: 748, baseType: !1138, size: 64, offset: 1728)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1108, file: !42, line: 736, baseType: !1475, size: 128, offset: 4288)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !42, line: 529, size: 128, elements: !1476)
!1476 = !{!1477, !1481}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1475, file: !42, line: 531, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1480, line: 13, flags: DIFlagFwdDecl)
!1480 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1475, file: !42, line: 532, baseType: !1482, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !42, line: 49, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1108, file: !42, line: 738, baseType: !1485, size: 64, offset: 4416)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !42, line: 738, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1108, file: !42, line: 740, baseType: !1489, size: 64, offset: 4480)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1108, file: !42, line: 741, baseType: !540, size: 64, offset: 4544)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1108, file: !42, line: 746, baseType: !540, size: 64, offset: 4608)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1108, file: !42, line: 747, baseType: !1493, size: 64, offset: 4672)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1495)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !42, line: 747, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1108, file: !42, line: 749, baseType: !1497, size: 64, offset: 4736)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !42, line: 428, size: 128, elements: !1499)
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1498, file: !42, line: 433, baseType: !13, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1498, file: !42, line: 434, baseType: !13, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1498, file: !42, line: 435, baseType: !146, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1108, file: !42, line: 751, baseType: !204, size: 128, offset: 4800)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1108, file: !42, line: 762, baseType: !1505, size: 64, offset: 4928)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !42, line: 762, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1108, file: !42, line: 770, baseType: !1508, offset: 4992)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1509, line: 5, elements: !668)
!1509 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1108, file: !42, line: 772, baseType: !1511, size: 64, offset: 4992)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1513, line: 18, flags: DIFlagFwdDecl)
!1513 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1108, file: !42, line: 773, baseType: !1515, size: 64, offset: 5056)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1176, line: 22, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1108, file: !42, line: 776, baseType: !62, size: 32, offset: 5120)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1108, file: !42, line: 778, baseType: !623, size: 32, offset: 5152)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1108, file: !42, line: 779, baseType: !536, size: 32, offset: 5184)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1108, file: !42, line: 781, baseType: !166, size: 32, offset: 5216)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1108, file: !42, line: 782, baseType: !204, size: 128, offset: 5248)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1108, file: !42, line: 784, baseType: !1523, size: 64, offset: 5376)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1526, line: 52, size: 768, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1536, !1540, !1541, !1542, !1570, !1574, !1578}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1525, file: !1526, line: 53, baseType: !125, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1525, file: !1526, line: 55, baseType: !439, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1525, file: !1526, line: 56, baseType: !439, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1525, file: !1526, line: 58, baseType: !1125, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1525, file: !1526, line: 59, baseType: !1533, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!395, !1128, !1134}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1525, file: !1526, line: 61, baseType: !1537, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !1523}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1525, file: !1526, line: 62, baseType: !1138, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1525, file: !1526, line: 64, baseType: !1147, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1525, file: !1526, line: 66, baseType: !1543, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !70, line: 39, size: 384, elements: !1546)
!1546 = !{!1547, !1548, !1552, !1556, !1562, !1566}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1545, file: !70, line: 40, baseType: !69, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1545, file: !70, line: 41, baseType: !1549, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!1044}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1545, file: !70, line: 42, baseType: !1553, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!128}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1545, file: !70, line: 43, baseType: !1557, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1057, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !70, line: 19, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1545, file: !70, line: 44, baseType: !1563, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!1057}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1545, file: !70, line: 45, baseType: !1567, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !128}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1525, file: !1526, line: 67, baseType: !1571, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1057, !1128}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1525, file: !1526, line: 69, baseType: !1575, size: 64, offset: 640)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1128, !1135, !1136}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1525, file: !1526, line: 71, baseType: !1142, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1108, file: !42, line: 785, baseType: !439, size: 64, offset: 5440)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1108, file: !42, line: 787, baseType: !1138, size: 64, offset: 5504)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1108, file: !42, line: 788, baseType: !1582, size: 64, offset: 5568)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !42, line: 46, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1108, file: !42, line: 789, baseType: !1585, size: 64, offset: 5632)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !42, line: 48, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1108, file: !42, line: 791, baseType: !1588, size: 64, offset: 5696)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !42, line: 597, size: 128, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594, !1595}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1589, file: !42, line: 598, baseType: !75, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1589, file: !42, line: 599, baseType: !84, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1589, file: !42, line: 600, baseType: !89, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1589, file: !42, line: 601, baseType: !1044, size: 8, offset: 96)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1589, file: !42, line: 602, baseType: !1044, size: 8, offset: 104)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1108, file: !42, line: 793, baseType: !94, size: 32, offset: 5760)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1108, file: !42, line: 795, baseType: !1044, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1108, file: !42, line: 796, baseType: !1044, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1108, file: !42, line: 797, baseType: !1044, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1108, file: !42, line: 798, baseType: !1044, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1108, file: !42, line: 799, baseType: !1044, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !619, file: !25, line: 1226, baseType: !1603, size: 64, offset: 1664)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !25, line: 1226, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !619, file: !25, line: 1227, baseType: !1606, size: 64, offset: 1728)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !101, line: 163, size: 6848, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1680, !1681, !1682, !1683, !1685, !1686, !1687}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1607, file: !101, line: 164, baseType: !540, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1607, file: !101, line: 165, baseType: !1334, size: 192, align: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !1607, file: !101, line: 166, baseType: !204, size: 128, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1607, file: !101, line: 167, baseType: !146, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !1607, file: !101, line: 168, baseType: !146, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1607, file: !101, line: 170, baseType: !1615, size: 32, offset: 512)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1616, line: 19, size: 32, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1615, file: !1616, line: 20, baseType: !1619, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !333, line: 113, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !333, line: 111, size: 32, elements: !1621)
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1620, file: !333, line: 112, baseType: !156, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1607, file: !101, line: 171, baseType: !13, size: 32, offset: 544)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !1607, file: !101, line: 172, baseType: !13, size: 32, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !1607, file: !101, line: 173, baseType: !13, size: 32, offset: 608)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !1607, file: !101, line: 173, baseType: !13, size: 32, offset: 640)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !1607, file: !101, line: 179, baseType: !810, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !1607, file: !101, line: 184, baseType: !146, size: 64, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !1607, file: !101, line: 186, baseType: !1630, size: 4672, offset: 832)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !101, line: 105, size: 4672, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1665, !1666, !1667, !1668, !1669, !1678, !1679}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1630, file: !101, line: 106, baseType: !1606, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1630, file: !101, line: 108, baseType: !146, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !1630, file: !101, line: 109, baseType: !146, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !1630, file: !101, line: 111, baseType: !204, size: 128, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !1630, file: !101, line: 112, baseType: !204, size: 128, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !1630, file: !101, line: 113, baseType: !204, size: 128, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !1630, file: !101, line: 114, baseType: !204, size: 128, offset: 576)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1630, file: !101, line: 115, baseType: !166, size: 32, offset: 704)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !1630, file: !101, line: 117, baseType: !156, size: 32, offset: 736)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1630, file: !101, line: 118, baseType: !1642, size: 1280, offset: 768)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, size: 1280, elements: !767)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1644, line: 22, size: 320, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1645 = !{!1646, !1647, !1648, !1649}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1643, file: !1644, line: 23, baseType: !819, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1643, file: !1644, line: 24, baseType: !816, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1643, file: !1644, line: 26, baseType: !204, size: 128, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1643, file: !1644, line: 28, baseType: !1650, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !1630, file: !101, line: 120, baseType: !146, size: 64, offset: 2048)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !1630, file: !101, line: 121, baseType: !146, size: 64, offset: 2112)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !1630, file: !101, line: 122, baseType: !146, size: 64, offset: 2176)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !1630, file: !101, line: 123, baseType: !146, size: 64, offset: 2240)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !1630, file: !101, line: 124, baseType: !146, size: 64, offset: 2304)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !1630, file: !101, line: 132, baseType: !146, size: 64, offset: 2368)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !1630, file: !101, line: 133, baseType: !146, size: 64, offset: 2432)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !1630, file: !101, line: 135, baseType: !1659, size: 384, offset: 2496)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !1660, line: 76, size: 384, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!1661 = !{!1662, !1663, !1664}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1659, file: !1660, line: 78, baseType: !1643, size: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !1659, file: !1660, line: 80, baseType: !13, size: 32, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1659, file: !1660, line: 81, baseType: !819, size: 32, offset: 352)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !1630, file: !101, line: 136, baseType: !62, size: 32, offset: 2880)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !1630, file: !101, line: 137, baseType: !100, size: 32, offset: 2912)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !1630, file: !101, line: 139, baseType: !166, size: 32, offset: 2944)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !1630, file: !101, line: 140, baseType: !204, size: 128, offset: 3008)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !1630, file: !101, line: 141, baseType: !1670, size: 704, offset: 3136)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1410, line: 111, size: 704, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1677}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1670, file: !1410, line: 112, baseType: !1409, size: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1670, file: !1410, line: 113, baseType: !1294, size: 320, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1670, file: !1410, line: 116, baseType: !1675, size: 64, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1410, line: 18, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1670, file: !1410, line: 117, baseType: !62, size: 32, offset: 640)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !1630, file: !101, line: 142, baseType: !1670, size: 704, offset: 3840)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !1630, file: !101, line: 144, baseType: !204, size: 128, offset: 4544)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !1607, file: !101, line: 187, baseType: !204, size: 128, offset: 5504)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !1607, file: !101, line: 193, baseType: !161, size: 192, offset: 5632)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1607, file: !101, line: 195, baseType: !1112, size: 64, offset: 5824)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1607, file: !101, line: 196, baseType: !1684, size: 512, offset: 5888)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !398)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1607, file: !101, line: 197, baseType: !1112, size: 64, offset: 6400)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !1607, file: !101, line: 199, baseType: !1294, size: 320, offset: 6464)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !1607, file: !101, line: 202, baseType: !502, size: 64, offset: 6784)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !619, file: !25, line: 1228, baseType: !1689, size: 64, offset: 1792)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !25, line: 1228, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !619, file: !25, line: 1229, baseType: !660, size: 128, offset: 1856)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !619, file: !25, line: 1230, baseType: !13, size: 32, offset: 1984)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !619, file: !25, line: 1231, baseType: !1694, size: 2496, offset: 2048)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !30, line: 521, size: 2496, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1700, !1732}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1694, file: !30, line: 522, baseType: !13, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1694, file: !30, line: 523, baseType: !1019, size: 320, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1694, file: !30, line: 524, baseType: !1699, size: 192, offset: 384)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 192, elements: !5)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1694, file: !30, line: 525, baseType: !1701, size: 1728, offset: 576)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1702, size: 1728, elements: !5)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !30, line: 222, size: 576, elements: !1703)
!1703 = !{!1704, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1702, file: !30, line: 223, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !30, line: 445, size: 256, elements: !1707)
!1707 = !{!1708, !1709, !1722, !1723}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1706, file: !30, line: 446, baseType: !62, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1706, file: !30, line: 447, baseType: !1710, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !30, line: 312, size: 512, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1712, file: !30, line: 313, baseType: !726, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1712, file: !30, line: 314, baseType: !726, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1712, file: !30, line: 315, baseType: !726, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1712, file: !30, line: 316, baseType: !726, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1712, file: !30, line: 317, baseType: !886, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1712, file: !30, line: 318, baseType: !886, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1712, file: !30, line: 319, baseType: !886, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1712, file: !30, line: 320, baseType: !916, size: 64, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1706, file: !30, line: 448, baseType: !341, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1706, file: !30, line: 449, baseType: !1705, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1702, file: !30, line: 224, baseType: !62, size: 32, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1702, file: !30, line: 226, baseType: !204, size: 128, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1702, file: !30, line: 227, baseType: !146, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1702, file: !30, line: 228, baseType: !13, size: 32, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1702, file: !30, line: 229, baseType: !13, size: 32, offset: 352)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1702, file: !30, line: 230, baseType: !851, size: 64, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1702, file: !30, line: 231, baseType: !851, size: 64, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1702, file: !30, line: 232, baseType: !128, size: 64, offset: 512)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1694, file: !30, line: 526, baseType: !1733, size: 192, offset: 2304)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1710, size: 192, elements: !5)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !619, file: !25, line: 1233, baseType: !1735, size: 2368, offset: 4544)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !25, line: 1184, size: 2368, elements: !1736)
!1736 = !{!1737, !1738, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1735, file: !25, line: 1185, baseType: !133, size: 16)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1735, file: !25, line: 1186, baseType: !133, size: 16, offset: 16)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1735, file: !25, line: 1187, baseType: !1740, size: 2304, offset: 64)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1741, size: 2304, elements: !5)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1742, line: 12, size: 768, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1743 = !{!1744, !1760, !1762, !4049, !4050}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1741, file: !1742, line: 13, baseType: !1745, size: 384)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1746, line: 17, size: 384, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1747 = !{!1748, !1749, !1750, !1751}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1745, file: !1746, line: 18, baseType: !62, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1745, file: !1746, line: 19, baseType: !62, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1745, file: !1746, line: 20, baseType: !161, size: 192, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1745, file: !1746, line: 22, baseType: !1752, size: 128, align: 64, offset: 256)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !132, line: 232, size: 128, align: 64, elements: !1753)
!1753 = !{!1754, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1752, file: !132, line: 233, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1752, file: !132, line: 234, baseType: !1757, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !1755}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1741, file: !1742, line: 14, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1741, file: !1742, line: 15, baseType: !1763, size: 64, offset: 448)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1764, line: 16, size: 64, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1763, file: !1764, line: 17, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !781, line: 746, size: 58368, elements: !1769)
!1769 = !{!1770, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1855, !1866, !1886, !1890, !1893, !1924, !1925, !1926, !1927, !1938, !1940, !1941, !1942, !1943, !1944, !1945, !1956, !1957, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1974, !1975, !1982, !1983, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3195, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3243, !3249, !3250, !3251, !3252, !3253, !3257, !3260, !3267, !3272, !3275, !3278, !3281, !3325, !3464, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3504, !3505, !3506, !3515, !3523, !3524, !3525, !3526, !3527, !3532, !3533, !3534, !3537, !3538, !3541, !3544, !3547, !3554, !3557, !3558, !3644, !3645, !3646, !3647, !3648, !3654, !3655, !3656, !3657, !3660, !3661, !3664, !3667, !3668, !3671, !3672, !3673, !3676, !3677, !3678, !3679, !3680, !3681, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3713, !3714, !3720, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3802, !3804, !3805, !3806, !3807, !3808, !3809, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3826, !3827, !3828}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1768, file: !781, line: 752, baseType: !1771, size: 192)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1772, line: 56, size: 192, elements: !1773)
!1772 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1773 = !{!1774, !1775, !1776, !1777}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !1772, line: 57, baseType: !146, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1771, file: !1772, line: 58, baseType: !146, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1771, file: !1772, line: 59, baseType: !536, size: 32, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1771, file: !1772, line: 61, baseType: !536, size: 32, offset: 160)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1768, file: !781, line: 754, baseType: !13, size: 32, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1768, file: !781, line: 767, baseType: !128, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1768, file: !781, line: 768, baseType: !1619, size: 32, offset: 320)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1768, file: !781, line: 770, baseType: !13, size: 32, offset: 352)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1768, file: !781, line: 771, baseType: !13, size: 32, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1768, file: !781, line: 774, baseType: !62, size: 32, offset: 416)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1768, file: !781, line: 775, baseType: !1785, size: 128, offset: 448)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1786, line: 58, size: 128, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1787 = !{!1788, !1794, !1799, !1800}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1785, file: !1786, line: 59, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1790, line: 60, size: 64, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1789, file: !1790, line: 61, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1786, line: 60, baseType: !1795, size: 32, offset: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1785, file: !1786, line: 60, size: 32, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1795, file: !1786, line: 61, baseType: !13, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1795, file: !1786, line: 62, baseType: !156, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1785, file: !1786, line: 65, baseType: !200, size: 16, offset: 96)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1785, file: !1786, line: 65, baseType: !200, size: 16, offset: 112)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1768, file: !781, line: 776, baseType: !13, size: 32, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1768, file: !781, line: 777, baseType: !146, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1768, file: !781, line: 778, baseType: !1767, size: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1768, file: !781, line: 787, baseType: !62, size: 32, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1768, file: !781, line: 788, baseType: !62, size: 32, offset: 800)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1768, file: !781, line: 790, baseType: !62, size: 32, offset: 832)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1768, file: !781, line: 792, baseType: !62, size: 32, offset: 864)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1768, file: !781, line: 793, baseType: !62, size: 32, offset: 896)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1768, file: !781, line: 794, baseType: !62, size: 32, offset: 928)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1768, file: !781, line: 795, baseType: !13, size: 32, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1768, file: !781, line: 797, baseType: !1812, size: 2048, offset: 1024)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !781, line: 551, size: 2048, elements: !1813)
!1813 = !{!1814, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1834, !1837, !1838, !1839}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1812, file: !781, line: 553, baseType: !1815, size: 128)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !781, line: 411, size: 128, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1815, file: !781, line: 412, baseType: !146, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1815, file: !781, line: 413, baseType: !536, size: 32, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1812, file: !781, line: 554, baseType: !1334, size: 192, align: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1812, file: !781, line: 555, baseType: !540, size: 64, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1812, file: !781, line: 556, baseType: !540, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1812, file: !781, line: 558, baseType: !204, size: 128, offset: 448)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1812, file: !781, line: 559, baseType: !13, size: 32, offset: 576)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1812, file: !781, line: 561, baseType: !540, size: 64, offset: 640)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1812, file: !781, line: 562, baseType: !540, size: 64, offset: 704)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1812, file: !781, line: 563, baseType: !540, size: 64, offset: 768)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1812, file: !781, line: 564, baseType: !540, size: 64, offset: 832)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1812, file: !781, line: 565, baseType: !816, size: 64, offset: 896)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1812, file: !781, line: 566, baseType: !540, size: 64, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1812, file: !781, line: 568, baseType: !540, size: 64, offset: 1024)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1812, file: !781, line: 571, baseType: !62, size: 32, offset: 1088)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1812, file: !781, line: 572, baseType: !1833, size: 64, offset: 1152)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1812, file: !781, line: 574, baseType: !1835, size: 64, offset: 1216)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !781, line: 49, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1812, file: !781, line: 576, baseType: !1835, size: 64, offset: 1280)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1812, file: !781, line: 578, baseType: !146, size: 64, offset: 1344)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1812, file: !781, line: 588, baseType: !1840, size: 512, align: 512, offset: 1536)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !781, line: 497, size: 512, align: 512, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1840, file: !781, line: 498, baseType: !540, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1840, file: !781, line: 499, baseType: !540, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1840, file: !781, line: 500, baseType: !540, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1840, file: !781, line: 501, baseType: !536, size: 32, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1840, file: !781, line: 502, baseType: !536, size: 32, offset: 224)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1840, file: !781, line: 503, baseType: !146, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1840, file: !781, line: 504, baseType: !146, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1840, file: !781, line: 505, baseType: !146, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1840, file: !781, line: 506, baseType: !1851, size: 64, align: 64, offset: 448)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !781, line: 445, size: 64, align: 64, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1851, file: !781, line: 446, baseType: !13, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1851, file: !781, line: 447, baseType: !13, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1768, file: !781, line: 798, baseType: !1856, size: 384, offset: 3072)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !781, line: 592, size: 384, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1856, file: !781, line: 593, baseType: !204, size: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1856, file: !781, line: 594, baseType: !146, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1856, file: !781, line: 595, baseType: !146, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1856, file: !781, line: 596, baseType: !13, size: 32, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1856, file: !781, line: 597, baseType: !133, size: 16, offset: 288)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1856, file: !781, line: 598, baseType: !133, size: 16, offset: 304)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1856, file: !781, line: 600, baseType: !1865, size: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1768, file: !781, line: 799, baseType: !1867, size: 1792, offset: 3456)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !781, line: 610, size: 1792, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1867, file: !781, line: 611, baseType: !1334, size: 192, align: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1867, file: !781, line: 618, baseType: !540, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1867, file: !781, line: 619, baseType: !540, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1867, file: !781, line: 620, baseType: !540, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1867, file: !781, line: 621, baseType: !540, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1867, file: !781, line: 622, baseType: !540, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1867, file: !781, line: 629, baseType: !816, size: 64, offset: 512)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1867, file: !781, line: 630, baseType: !540, size: 64, offset: 576)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1867, file: !781, line: 631, baseType: !13, size: 32, offset: 640)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1867, file: !781, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1867, file: !781, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1867, file: !781, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1867, file: !781, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1867, file: !781, line: 662, baseType: !1327, size: 512, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1867, file: !781, line: 671, baseType: !1327, size: 512, offset: 1216)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1867, file: !781, line: 679, baseType: !1885, size: 64, offset: 1728)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1768, file: !781, line: 800, baseType: !1887, size: 64, offset: 5248)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !781, line: 800, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1768, file: !781, line: 809, baseType: !1891, size: 64, offset: 5312)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !781, line: 70, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1768, file: !781, line: 825, baseType: !1894, size: 2048, align: 512, offset: 5632)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !781, line: 509, size: 2048, align: 512, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1894, file: !781, line: 511, baseType: !540, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1894, file: !781, line: 512, baseType: !540, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1894, file: !781, line: 513, baseType: !540, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1894, file: !781, line: 514, baseType: !540, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1894, file: !781, line: 515, baseType: !540, size: 64, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1894, file: !781, line: 516, baseType: !540, size: 64, offset: 320)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1894, file: !781, line: 518, baseType: !540, size: 64, offset: 384)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1894, file: !781, line: 519, baseType: !540, size: 64, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1894, file: !781, line: 520, baseType: !816, size: 64, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1894, file: !781, line: 522, baseType: !540, size: 64, offset: 576)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1894, file: !781, line: 523, baseType: !540, size: 64, offset: 640)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1894, file: !781, line: 524, baseType: !816, size: 64, offset: 704)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1894, file: !781, line: 526, baseType: !816, size: 64, offset: 768)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1894, file: !781, line: 527, baseType: !540, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1894, file: !781, line: 529, baseType: !540, size: 64, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1894, file: !781, line: 530, baseType: !540, size: 64, offset: 960)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1894, file: !781, line: 531, baseType: !540, size: 64, offset: 1024)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1894, file: !781, line: 532, baseType: !540, size: 64, offset: 1088)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1894, file: !781, line: 533, baseType: !540, size: 64, offset: 1152)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1894, file: !781, line: 535, baseType: !540, size: 64, offset: 1216)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1894, file: !781, line: 536, baseType: !540, size: 64, offset: 1280)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1894, file: !781, line: 537, baseType: !540, size: 64, offset: 1344)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1894, file: !781, line: 538, baseType: !540, size: 64, offset: 1408)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1894, file: !781, line: 539, baseType: !540, size: 64, offset: 1472)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1894, file: !781, line: 540, baseType: !540, size: 64, offset: 1536)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1894, file: !781, line: 541, baseType: !540, size: 64, offset: 1600)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1894, file: !781, line: 542, baseType: !540, size: 64, offset: 1664)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1894, file: !781, line: 543, baseType: !540, size: 64, offset: 1728)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1768, file: !781, line: 833, baseType: !13, size: 32, offset: 7680)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1768, file: !781, line: 836, baseType: !13, size: 32, offset: 7712)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1768, file: !781, line: 837, baseType: !62, size: 32, offset: 7744)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1768, file: !781, line: 838, baseType: !1928, size: 64, offset: 7808)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1930)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1931, line: 19, baseType: !1932)
!1931 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1931, line: 19, size: 64, elements: !1933)
!1933 = !{!1934}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1932, file: !1931, line: 19, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !1936)
!1936 = !{!1937}
!1937 = !DISubrange(count: 1)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1768, file: !781, line: 839, baseType: !1939, size: 64, offset: 7872)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1768, file: !781, line: 840, baseType: !1930, size: 64, offset: 7936)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1768, file: !781, line: 841, baseType: !128, size: 64, offset: 8000)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1768, file: !781, line: 843, baseType: !133, size: 16, offset: 8064)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1768, file: !781, line: 845, baseType: !133, size: 16, offset: 8080)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1768, file: !781, line: 848, baseType: !62, size: 32, offset: 8096)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1768, file: !781, line: 849, baseType: !1946, size: 32, offset: 8128)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !781, line: 718, size: 32, elements: !1947)
!1947 = !{!1948, !1955}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1946, file: !781, line: 724, baseType: !1949, size: 32)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !781, line: 719, size: 32, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1949, file: !781, line: 720, baseType: !190, size: 8)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1949, file: !781, line: 721, baseType: !190, size: 8, offset: 8)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1949, file: !781, line: 722, baseType: !190, size: 8, offset: 16)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1949, file: !781, line: 723, baseType: !190, size: 8, offset: 24)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1946, file: !781, line: 725, baseType: !536, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1768, file: !781, line: 850, baseType: !204, size: 128, offset: 8192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1768, file: !781, line: 851, baseType: !1958, size: 64, offset: 8320)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !781, line: 60, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1768, file: !781, line: 855, baseType: !146, size: 64, offset: 8384)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1768, file: !781, line: 856, baseType: !190, size: 8, offset: 8448)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1768, file: !781, line: 857, baseType: !190, size: 8, offset: 8456)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1768, file: !781, line: 858, baseType: !62, size: 32, offset: 8480)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1768, file: !781, line: 859, baseType: !204, size: 128, offset: 8512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1768, file: !781, line: 860, baseType: !62, size: 32, offset: 8640)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1768, file: !781, line: 861, baseType: !204, size: 128, offset: 8704)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1768, file: !781, line: 873, baseType: !1968, size: 256, offset: 8832)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !781, line: 376, size: 256, elements: !1969)
!1969 = !{!1970, !1971, !1972, !1973}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1968, file: !781, line: 381, baseType: !146, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1968, file: !781, line: 384, baseType: !542, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1968, file: !781, line: 389, baseType: !542, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1968, file: !781, line: 392, baseType: !542, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1768, file: !781, line: 875, baseType: !204, size: 128, offset: 9088)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1768, file: !781, line: 877, baseType: !1976, size: 320, offset: 9216)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1977, line: 86, size: 320, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1978 = !{!1979, !1980, !1981}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1976, file: !1977, line: 87, baseType: !62, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1976, file: !1977, line: 88, baseType: !204, size: 128, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1976, file: !1977, line: 89, baseType: !204, size: 128, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1768, file: !781, line: 878, baseType: !1334, size: 192, align: 64, offset: 9536)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1768, file: !781, line: 881, baseType: !1984, size: 64, offset: 9728)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !223, line: 733, size: 10240, elements: !1986)
!1986 = !{!1987, !3114}
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !223, line: 734, baseType: !1988, size: 10240)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !223, line: 734, size: 10240, elements: !1989)
!1989 = !{!1990, !1994, !2007, !2992, !2993, !2994, !2995, !2996, !2997, !3004, !3005, !3006, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3045, !3046, !3049, !3094, !3095, !3096, !3099, !3100, !3101, !3104, !3105, !3106, !3112, !3113}
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !223, line: 739, baseType: !1991, size: 512, align: 512)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !223, line: 739, size: 512, align: 512, elements: !1992)
!1992 = !{!1993}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1991, file: !223, line: 747, baseType: !156, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1988, file: !223, line: 750, baseType: !1995, size: 128, offset: 512)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1996, line: 218, size: 128, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1997 = !{!1998, !2005, !2006}
!1998 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1996, line: 219, baseType: !1999, size: 32)
!1999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !1996, line: 219, size: 32, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1999, file: !1996, line: 220, baseType: !166, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1999, file: !1996, line: 221, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1996, line: 197, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1996, line: 197, elements: !668)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1995, file: !1996, line: 223, baseType: !13, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1995, file: !1996, line: 224, baseType: !128, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1988, file: !223, line: 752, baseType: !2008, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!146, !2011, !146, !146, !146, !146}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !25, line: 994, size: 1856, align: 64, elements: !2013)
!2013 = !{!2014, !2020, !2021, !2023, !2024, !2025, !2026, !2027, !2077, !2379, !2388, !2389, !2390, !2982, !2983, !2984, !2985, !2987, !2988, !2991}
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !25, line: 995, baseType: !2015, size: 128)
!2015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !25, line: 995, size: 128, elements: !2016)
!2016 = !{!2017, !2018, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !2015, file: !25, line: 996, baseType: !1789, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !2015, file: !25, line: 997, baseType: !1752, size: 128, align: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !2015, file: !25, line: 998, baseType: !13, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !2012, file: !25, line: 1005, baseType: !166, size: 32, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !2012, file: !25, line: 1006, baseType: !2022, size: 32, offset: 160)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !132, line: 156, baseType: !13)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !2012, file: !25, line: 1007, baseType: !810, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !2012, file: !25, line: 1008, baseType: !806, size: 256, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !2012, file: !25, line: 1009, baseType: !148, size: 64, offset: 512)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !2012, file: !25, line: 1010, baseType: !13, size: 32, offset: 576)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !2012, file: !25, line: 1011, baseType: !2028, size: 256, offset: 640)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !25, line: 948, size: 256, elements: !2029)
!2029 = !{!2030, !2051, !2073, !2074, !2075, !2076}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2028, file: !25, line: 949, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2032, line: 34, baseType: !2033)
!2032 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2032, line: 25, size: 64, elements: !2034)
!2034 = !{!2035}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2033, file: !2032, line: 26, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !2037, line: 27, baseType: !2038)
!2037 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !2037, line: 13, size: 64, elements: !2039)
!2039 = !{!2040, !2050}
!2040 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !2037, line: 14, baseType: !2041, size: 32)
!2041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2038, file: !2037, line: 14, size: 32, elements: !2042)
!2042 = !{!2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !2041, file: !2037, line: 15, baseType: !156, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2041, file: !2037, line: 16, baseType: !2045, size: 32)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2041, file: !2037, line: 16, size: 32, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !2045, file: !2037, line: 18, baseType: !190, size: 8)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !2045, file: !2037, line: 19, baseType: !2049, size: 24, offset: 8)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 24, elements: !5)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2038, file: !2037, line: 26, baseType: !178, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2028, file: !25, line: 950, baseType: !2052, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !113, line: 59, size: 768, elements: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2060, !2061, !2062, !2063}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2053, file: !113, line: 61, baseType: !1619, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2053, file: !113, line: 62, baseType: !13, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2053, file: !113, line: 63, baseType: !166, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2053, file: !113, line: 65, baseType: !2059, size: 256, offset: 128)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 256, elements: !767)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2053, file: !113, line: 66, baseType: !656, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2053, file: !113, line: 68, baseType: !161, size: 192, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2053, file: !113, line: 69, baseType: !1752, size: 128, align: 64, offset: 640)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2053, file: !113, line: 70, baseType: !2064, offset: 768)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2065, elements: !2071)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !113, line: 54, size: 128, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2065, file: !113, line: 55, baseType: !62, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2065, file: !113, line: 56, baseType: !2069, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !113, line: 56, flags: DIFlagFwdDecl)
!2071 = !{!2072}
!2072 = !DISubrange(count: -1)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2028, file: !25, line: 951, baseType: !112, size: 32, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2028, file: !25, line: 952, baseType: !473, size: 32, offset: 160)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2028, file: !25, line: 952, baseType: !473, size: 32, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2028, file: !25, line: 953, baseType: !62, size: 32, offset: 224)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !2012, file: !25, line: 1012, baseType: !2078, size: 64, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2080)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2081, line: 110, size: 1472, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2098, !2099, !2100, !2101, !2102, !2103, !2212, !2213, !2214, !2215, !2216, !2239, !2365, !2366, !2374}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2080, file: !2081, line: 111, baseType: !810, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2080, file: !2081, line: 112, baseType: !473, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2080, file: !2081, line: 113, baseType: !482, size: 32, offset: 96)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2080, file: !2081, line: 114, baseType: !473, size: 32, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2080, file: !2081, line: 115, baseType: !482, size: 32, offset: 160)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2080, file: !2081, line: 116, baseType: !473, size: 32, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2080, file: !2081, line: 117, baseType: !482, size: 32, offset: 224)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2080, file: !2081, line: 118, baseType: !473, size: 32, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2080, file: !2081, line: 119, baseType: !482, size: 32, offset: 288)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2080, file: !2081, line: 120, baseType: !13, size: 32, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2080, file: !2081, line: 121, baseType: !2094, size: 64, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1056, line: 24, baseType: !2095)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1056, line: 24, size: 64, elements: !2096)
!2096 = !{!2097}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2095, file: !1056, line: 24, baseType: !540, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2080, file: !2081, line: 122, baseType: !2094, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2080, file: !2081, line: 123, baseType: !2094, size: 64, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2080, file: !2081, line: 124, baseType: !2094, size: 64, offset: 576)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2080, file: !2081, line: 125, baseType: !2094, size: 64, offset: 640)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2080, file: !2081, line: 127, baseType: !194, size: 8, offset: 704)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2080, file: !2081, line: 129, baseType: !2104, size: 64, offset: 768)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2106, line: 195, size: 1728, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2107 = !{!2108, !2109, !2112, !2117, !2118, !2121, !2122, !2127, !2128, !2129, !2130, !2133, !2134, !2135, !2137, !2138, !2176, !2197}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2105, file: !2106, line: 196, baseType: !1619, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2105, file: !2106, line: 197, baseType: !2110, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2106, line: 28, baseType: !2111)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !132, line: 104, baseType: !1456)
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !2106, line: 198, baseType: !2113, size: 192, offset: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2106, line: 198, size: 192, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2113, file: !2106, line: 199, baseType: !204, size: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2113, file: !2106, line: 200, baseType: !1334, size: 192, align: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2105, file: !2106, line: 205, baseType: !1019, size: 320, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2105, file: !2106, line: 206, baseType: !2119, size: 64, offset: 576)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2106, line: 206, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2105, file: !2106, line: 207, baseType: !128, size: 64, offset: 640)
!2122 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !2106, line: 208, baseType: !2123, size: 64, offset: 704)
!2123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2106, line: 208, size: 64, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2123, file: !2106, line: 209, baseType: !859, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2123, file: !2106, line: 210, baseType: !859, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2105, file: !2106, line: 212, baseType: !859, size: 64, offset: 768)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2105, file: !2106, line: 213, baseType: !473, size: 32, offset: 832)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2105, file: !2106, line: 214, baseType: !482, size: 32, offset: 864)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2105, file: !2106, line: 215, baseType: !2131, size: 32, offset: 896)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2106, line: 31, baseType: !2132)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !132, line: 110, baseType: !536)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2105, file: !2106, line: 216, baseType: !133, size: 16, offset: 928)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2105, file: !2106, line: 217, baseType: !133, size: 16, offset: 944)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2105, file: !2106, line: 221, baseType: !2136, size: 16, offset: 960)
!2136 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2105, file: !2106, line: 228, baseType: !146, size: 64, offset: 1024)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !2106, line: 245, baseType: !2139, size: 320, offset: 1088)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2106, line: 245, size: 320, elements: !2140)
!2140 = !{!2141, !2168}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2139, file: !2106, line: 246, baseType: !2142, size: 320)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2106, line: 114, size: 320, elements: !2143)
!2143 = !{!2144, !2145, !2157, !2160, !2167}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2142, file: !2106, line: 116, baseType: !146, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !2106, line: 117, baseType: !2146, size: 64, offset: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2142, file: !2106, line: 117, size: 64, elements: !2147)
!2147 = !{!2148, !2156}
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2146, file: !2106, line: 118, baseType: !2149, size: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2146, file: !2106, line: 118, size: 64, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2149, file: !2106, line: 120, baseType: !200, size: 16)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2149, file: !2106, line: 121, baseType: !2153, size: 48, offset: 16)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !2154)
!2154 = !{!2155}
!2155 = !DISubrange(count: 6)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2146, file: !2106, line: 127, baseType: !146, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2142, file: !2106, line: 129, baseType: !2158, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2106, line: 102, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2142, file: !2106, line: 130, baseType: !2161, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2106, line: 108, size: 192, elements: !2163)
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2162, file: !2106, line: 109, baseType: !1752, size: 128, align: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2162, file: !2106, line: 110, baseType: !1619, size: 32, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2162, file: !2106, line: 111, baseType: !1044, size: 8, offset: 160)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2142, file: !2106, line: 131, baseType: !125, size: 64, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !2106, line: 247, baseType: !2169, size: 320)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2106, line: 247, size: 320, elements: !2170)
!2170 = !{!2171, !2172, !2173, !2174, !2175}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2169, file: !2106, line: 248, baseType: !146, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2169, file: !2106, line: 249, baseType: !146, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2169, file: !2106, line: 250, baseType: !2158, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2169, file: !2106, line: 251, baseType: !2161, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2169, file: !2106, line: 252, baseType: !395, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !2106, line: 260, baseType: !2177, size: 256, offset: 1408)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2106, line: 260, size: 256, elements: !2178)
!2178 = !{!2179, !2185}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2177, file: !2106, line: 261, baseType: !2180, size: 256)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2106, line: 134, size: 256, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2180, file: !2106, line: 135, baseType: !128, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2180, file: !2106, line: 136, baseType: !2184, size: 256)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !767)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !2106, line: 262, baseType: !2186, size: 256)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2177, file: !2106, line: 262, size: 256, elements: !2187)
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2186, file: !2106, line: 264, baseType: !204, size: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2186, file: !2106, line: 265, baseType: !2190, size: 128, offset: 128)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2191, line: 22, size: 128, elements: !2192)
!2191 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2192 = !{!2193, !2196}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2190, file: !2191, line: 23, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2191, line: 23, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2190, file: !2191, line: 24, baseType: !146, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2105, file: !2106, line: 280, baseType: !2198, size: 64, offset: 1664)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2106, line: 176, size: 192, elements: !2200)
!2200 = !{!2201, !2210, !2211}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2199, file: !2106, line: 177, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2106, line: 171, baseType: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!62, !2104, !2206, !2208, !2104}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2159)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2199, file: !2106, line: 178, baseType: !2104, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2199, file: !2106, line: 179, baseType: !2158, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2080, file: !2081, line: 130, baseType: !2104, size: 64, offset: 832)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2080, file: !2081, line: 131, baseType: !2104, size: 64, offset: 896)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2080, file: !2081, line: 132, baseType: !2104, size: 64, offset: 960)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2080, file: !2081, line: 135, baseType: !128, size: 64, offset: 1024)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2080, file: !2081, line: 137, baseType: !2217, size: 64, offset: 1088)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2219, line: 14, size: 1088, elements: !2220)
!2219 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2218, file: !2219, line: 15, baseType: !1619, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2218, file: !2219, line: 17, baseType: !1643, size: 320, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2218, file: !2219, line: 19, baseType: !146, size: 64, offset: 384)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2218, file: !2219, line: 20, baseType: !810, size: 64, offset: 448)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2218, file: !2219, line: 23, baseType: !660, size: 128, offset: 512)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2218, file: !2219, line: 24, baseType: !473, size: 32, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2218, file: !2219, line: 29, baseType: !810, size: 64, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2218, file: !2219, line: 36, baseType: !2229, size: 320, offset: 768)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2230, line: 15, size: 320, elements: !2231)
!2230 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2229, file: !2230, line: 16, baseType: !819, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2229, file: !2230, line: 18, baseType: !62, size: 32, offset: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2229, file: !2230, line: 19, baseType: !62, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2229, file: !2230, line: 20, baseType: !62, size: 32, offset: 96)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2229, file: !2230, line: 21, baseType: !62, size: 32, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2229, file: !2230, line: 22, baseType: !146, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2229, file: !2230, line: 23, baseType: !146, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2080, file: !2081, line: 138, baseType: !2240, size: 64, offset: 1152)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2242, line: 68, size: 4800, elements: !2243)
!2242 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!2243 = !{!2244, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2347, !2348, !2362, !2364}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !2241, file: !2242, line: 69, baseType: !2245, size: 576)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !2242, line: 23, size: 576, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !2245, file: !2242, line: 24, baseType: !536, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2245, file: !2242, line: 25, baseType: !2249, size: 512, offset: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2245, file: !2242, line: 25, size: 512, elements: !2250)
!2250 = !{!2251, !2260}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !2249, file: !2242, line: 26, baseType: !2252, size: 480)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2253, size: 480, elements: !2258)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !2242, line: 17, size: 96, elements: !2254)
!2254 = !{!2255, !2256, !2257}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2253, file: !2242, line: 18, baseType: !536, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !2253, file: !2242, line: 19, baseType: !536, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2253, file: !2242, line: 20, baseType: !536, size: 32, offset: 64)
!2258 = !{!2259}
!2259 = !DISubrange(count: 5)
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !2242, line: 27, baseType: !2261, size: 128)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2249, file: !2242, line: 27, size: 128, elements: !2262)
!2262 = !{!2263, !2265}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2261, file: !2242, line: 28, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !2261, file: !2242, line: 29, baseType: !2264, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !2241, file: !2242, line: 70, baseType: !2245, size: 576, offset: 576)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !2241, file: !2242, line: 71, baseType: !2245, size: 576, offset: 1152)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2241, file: !2242, line: 72, baseType: !2240, size: 64, offset: 1728)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2241, file: !2242, line: 73, baseType: !62, size: 32, offset: 1792)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2241, file: !2242, line: 74, baseType: !473, size: 32, offset: 1824)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2241, file: !2242, line: 75, baseType: !482, size: 32, offset: 1856)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2241, file: !2242, line: 76, baseType: !2273, size: 192, offset: 1920)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2274, line: 9, size: 192, elements: !2275)
!2274 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2275 = !{!2276, !2277, !2281, !2282}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2273, file: !2274, line: 10, baseType: !810, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2273, file: !2274, line: 11, baseType: !2278, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2274, line: 7, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2273, file: !2274, line: 12, baseType: !13, size: 32, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2273, file: !2274, line: 13, baseType: !1619, size: 32, offset: 160)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2241, file: !2242, line: 77, baseType: !146, size: 64, offset: 2112)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !2241, file: !2242, line: 80, baseType: !1044, size: 8, offset: 2176)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !2241, file: !2242, line: 88, baseType: !204, size: 128, offset: 2240)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !2241, file: !2242, line: 89, baseType: !2104, size: 64, offset: 2368)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !2241, file: !2242, line: 90, baseType: !1019, size: 320, offset: 2432)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2241, file: !2242, line: 97, baseType: !1409, size: 256, offset: 2752)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2241, file: !2242, line: 99, baseType: !2290, size: 768, offset: 3008)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !121, line: 199, size: 768, elements: !2291)
!2291 = !{!2292, !2297}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2290, file: !121, line: 200, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!62, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2290, file: !121, line: 201, baseType: !2298, size: 704, offset: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !121, line: 193, size: 704, elements: !2299)
!2299 = !{!2300, !2346}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2298, file: !121, line: 195, baseType: !2301, size: 640)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !121, line: 173, size: 640, elements: !2302)
!2302 = !{!2303, !2315, !2317, !2318, !2336, !2337, !2339, !2345}
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2301, file: !121, line: 174, baseType: !2304, size: 192)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2301, file: !121, line: 174, size: 192, elements: !2305)
!2305 = !{!2306, !2314}
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2304, file: !121, line: 175, baseType: !2307, size: 192)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2304, file: !121, line: 175, size: 192, elements: !2308)
!2308 = !{!2309, !2310, !2311, !2312, !2313}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2307, file: !121, line: 176, baseType: !140, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !2307, file: !121, line: 177, baseType: !62, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2307, file: !121, line: 178, baseType: !62, size: 32, offset: 96)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2307, file: !121, line: 179, baseType: !62, size: 32, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2307, file: !121, line: 180, baseType: !62, size: 32, offset: 160)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2304, file: !121, line: 182, baseType: !1752, size: 128, align: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2301, file: !121, line: 184, baseType: !2316, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2301, file: !121, line: 185, baseType: !140, size: 64, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2301, file: !121, line: 186, baseType: !2319, size: 64, offset: 320)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !121, line: 204, size: 960, elements: !2321)
!2321 = !{!2322, !2323, !2327, !2332}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2320, file: !121, line: 205, baseType: !2290, size: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2320, file: !121, line: 206, baseType: !2324, size: 64, offset: 768)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!2296, !2319}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2320, file: !121, line: 207, baseType: !2328, size: 64, offset: 832)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !2331, !1135, !1136}
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2320, file: !121, line: 209, baseType: !2333, size: 64, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!62, !2331, !140}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2301, file: !121, line: 187, baseType: !2296, size: 64, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2301, file: !121, line: 188, baseType: !2338, size: 64, offset: 448)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2301, file: !121, line: 189, baseType: !2340, size: 64, offset: 512)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !121, line: 157, size: 256, elements: !2342)
!2342 = !{!2343, !2344}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2341, file: !121, line: 158, baseType: !1334, size: 192, align: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2341, file: !121, line: 159, baseType: !2331, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2301, file: !121, line: 190, baseType: !656, size: 64, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2298, file: !121, line: 196, baseType: !1394, size: 64, offset: 640)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !2241, file: !2242, line: 100, baseType: !2331, size: 64, offset: 3776)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2241, file: !2242, line: 102, baseType: !2349, size: 64, offset: 3840)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2242, line: 107, size: 1152, elements: !2351)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2360}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2350, file: !2242, line: 108, baseType: !660, size: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2350, file: !2242, line: 109, baseType: !2240, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2350, file: !2242, line: 110, baseType: !473, size: 32, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2350, file: !2242, line: 111, baseType: !156, size: 32, offset: 224)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2350, file: !2242, line: 112, baseType: !2357, size: 640, offset: 256)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 640, elements: !2358)
!2358 = !{!2359}
!2359 = !DISubrange(count: 10)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !2350, file: !2242, line: 113, baseType: !2361, size: 256, offset: 896)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 256, elements: !767)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !2241, file: !2242, line: 103, baseType: !2363, size: 640, offset: 3904)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 640, elements: !2358)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !2241, file: !2242, line: 104, baseType: !766, size: 256, offset: 4544)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2080, file: !2081, line: 139, baseType: !2349, size: 64, offset: 1216)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2080, file: !2081, line: 140, baseType: !2367, size: 64, offset: 1280)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2081, line: 25, size: 64, elements: !2369)
!2369 = !{!2370, !2371, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2368, file: !2081, line: 26, baseType: !156, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2368, file: !2081, line: 27, baseType: !62, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2368, file: !2081, line: 28, baseType: !2373, offset: 64)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, elements: !2071)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2081, line: 142, baseType: !2375, size: 128, offset: 1344)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !2081, line: 142, size: 128, elements: !2376)
!2376 = !{!2377, !2378}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2375, file: !2081, line: 143, baseType: !62, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2375, file: !2081, line: 144, baseType: !1752, size: 128, align: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !2012, file: !25, line: 1013, baseType: !2380, size: 256, offset: 960)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !25, line: 970, size: 256, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2380, file: !25, line: 971, baseType: !146, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2380, file: !25, line: 972, baseType: !13, size: 32, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2380, file: !25, line: 973, baseType: !13, size: 32, offset: 96)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2380, file: !25, line: 974, baseType: !13, size: 32, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2380, file: !25, line: 975, baseType: !13, size: 32, offset: 160)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2380, file: !25, line: 976, baseType: !148, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !2012, file: !25, line: 1014, baseType: !931, size: 128, offset: 1216)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !2012, file: !25, line: 1015, baseType: !467, size: 64, offset: 1344)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !2012, file: !25, line: 1016, baseType: !2391, size: 64, offset: 1408)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2393)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !25, line: 1914, size: 2112, elements: !2394)
!2394 = !{!2395, !2396, !2400, !2404, !2408, !2867, !2868, !2874, !2887, !2895, !2899, !2900, !2904, !2905, !2909, !2914, !2915, !2919, !2923, !2929, !2930, !2934, !2935, !2941, !2945, !2949, !2955, !2959, !2963, !2967, !2971, !2972, !2978}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2393, file: !25, line: 1915, baseType: !341, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2393, file: !25, line: 1916, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!148, !2011, !148, !62}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2393, file: !25, line: 1917, baseType: !2401, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!425, !2011, !395, !142, !147}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2393, file: !25, line: 1918, baseType: !2405, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!425, !2011, !125, !142, !147}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2393, file: !25, line: 1919, baseType: !2409, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!425, !2412, !2804}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !25, line: 373, size: 384, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2421, !2422, !2423, !2424}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2413, file: !25, line: 374, baseType: !2011, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2413, file: !25, line: 375, baseType: !148, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2413, file: !25, line: 376, baseType: !2418, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !2412, !428}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2413, file: !25, line: 377, baseType: !128, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2413, file: !25, line: 378, baseType: !62, size: 32, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2413, file: !25, line: 379, baseType: !200, size: 16, offset: 288)
!2424 = !DIDerivedType(tag: DW_TAG_member, scope: !2413, file: !25, line: 380, baseType: !2425, size: 64, offset: 320)
!2425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2413, file: !25, line: 380, size: 64, elements: !2426)
!2426 = !{!2427, !2800}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2425, file: !25, line: 386, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !2430, line: 998, size: 448, elements: !2431)
!2430 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!2431 = !{!2432, !2786, !2787}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2429, file: !2430, line: 999, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !223, line: 293, size: 1536, elements: !2435)
!2435 = !{!2436, !2753, !2767}
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2434, file: !223, line: 295, baseType: !2437, size: 512)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2434, file: !223, line: 295, size: 512, elements: !2438)
!2438 = !{!2439, !2465}
!2439 = !DIDerivedType(tag: DW_TAG_member, scope: !2437, file: !223, line: 296, baseType: !2440, size: 448)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !223, line: 296, size: 448, elements: !2441)
!2441 = !{!2442, !2443, !2452, !2453, !2454, !2463, !2464}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2440, file: !223, line: 298, baseType: !146, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, scope: !2440, file: !223, line: 299, baseType: !2444, size: 128, offset: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2440, file: !223, line: 299, size: 128, elements: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2444, file: !223, line: 300, baseType: !204, size: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, scope: !2444, file: !223, line: 302, baseType: !2448, size: 128)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2444, file: !223, line: 302, size: 128, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2448, file: !223, line: 303, baseType: !128, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2448, file: !223, line: 305, baseType: !13, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2440, file: !223, line: 310, baseType: !463, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2440, file: !223, line: 311, baseType: !146, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, scope: !2440, file: !223, line: 312, baseType: !2455, size: 64, offset: 320)
!2455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2440, file: !223, line: 312, size: 64, elements: !2456)
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2455, file: !223, line: 313, baseType: !128, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2455, file: !223, line: 314, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !223, line: 257, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !223, line: 255, size: 64, elements: !2461)
!2461 = !{!2462}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2460, file: !223, line: 256, baseType: !146, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2440, file: !223, line: 316, baseType: !156, size: 32, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2440, file: !223, line: 317, baseType: !156, size: 32, offset: 416)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2437, file: !223, line: 323, baseType: !2466, size: 512, align: 128)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !223, line: 74, size: 512, align: 128, elements: !2467)
!2467 = !{!2468, !2469, !2747, !2752}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2466, file: !223, line: 75, baseType: !146, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, scope: !2466, file: !223, line: 83, baseType: !2470, size: 320, offset: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2466, file: !223, line: 83, size: 320, elements: !2471)
!2471 = !{!2472, !2493, !2507, !2511, !2746}
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !223, line: 84, baseType: !2473, size: 320)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !223, line: 84, size: 320, elements: !2474)
!2474 = !{!2475, !2486, !2487, !2492}
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !2473, file: !223, line: 90, baseType: !2476, size: 128)
!2476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2473, file: !223, line: 90, size: 128, elements: !2477)
!2477 = !{!2478, !2479, !2484, !2485}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2476, file: !223, line: 91, baseType: !204, size: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, scope: !2476, file: !223, line: 94, baseType: !2480, size: 128)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !223, line: 94, size: 128, elements: !2481)
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2480, file: !223, line: 96, baseType: !128, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2480, file: !223, line: 98, baseType: !13, size: 32, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2476, file: !223, line: 102, baseType: !204, size: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2476, file: !223, line: 103, baseType: !204, size: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2473, file: !223, line: 106, baseType: !463, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, scope: !2473, file: !223, line: 107, baseType: !2488, size: 64, offset: 192)
!2488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2473, file: !223, line: 107, size: 64, elements: !2489)
!2489 = !{!2490, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2488, file: !223, line: 108, baseType: !146, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2488, file: !223, line: 109, baseType: !146, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2473, file: !223, line: 117, baseType: !146, size: 64, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !223, line: 119, baseType: !2494, size: 320)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !223, line: 119, size: 320, elements: !2495)
!2495 = !{!2496, !2497, !2500, !2501, !2502}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2494, file: !223, line: 124, baseType: !146, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2494, file: !223, line: 125, baseType: !2498, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !223, line: 125, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2494, file: !223, line: 126, baseType: !146, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2494, file: !223, line: 127, baseType: !146, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, scope: !2494, file: !223, line: 128, baseType: !2503, size: 64, offset: 256)
!2503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2494, file: !223, line: 128, size: 64, elements: !2504)
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2503, file: !223, line: 133, baseType: !146, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2503, file: !223, line: 138, baseType: !810, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !223, line: 141, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !223, line: 141, size: 64, elements: !2509)
!2509 = !{!2510}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2508, file: !223, line: 142, baseType: !146, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !223, line: 144, baseType: !2512, size: 128)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !223, line: 144, size: 128, elements: !2513)
!2513 = !{!2514, !2745}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2512, file: !223, line: 146, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !215, line: 126, size: 1216, elements: !2517)
!2517 = !{!2518, !2528, !2549, !2550, !2551, !2552, !2553, !2727, !2728, !2729}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2516, file: !215, line: 127, baseType: !2519, size: 384)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !215, line: 21, size: 384, elements: !2520)
!2520 = !{!2521, !2522, !2524, !2525, !2526, !2527}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2519, file: !215, line: 22, baseType: !146, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2519, file: !215, line: 23, baseType: !2523, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2519, file: !215, line: 24, baseType: !2523, size: 64, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2519, file: !215, line: 25, baseType: !146, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2519, file: !215, line: 26, baseType: !146, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2519, file: !215, line: 27, baseType: !146, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2516, file: !215, line: 128, baseType: !2529, size: 128, offset: 384)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2530, line: 105, size: 128, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2529, file: !2530, line: 110, baseType: !146, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2529, file: !2530, line: 118, baseType: !2534, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2530, line: 95, size: 448, elements: !2536)
!2536 = !{!2537, !2538, !2544, !2545, !2546, !2547, !2548}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2535, file: !2530, line: 96, baseType: !810, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2535, file: !2530, line: 97, baseType: !2539, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2530, line: 60, baseType: !2541)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2535, file: !2530, line: 98, baseType: !2539, size: 64, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2535, file: !2530, line: 99, baseType: !1044, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2535, file: !2530, line: 100, baseType: !1044, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2535, file: !2530, line: 101, baseType: !1752, size: 128, align: 64, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2535, file: !2530, line: 102, baseType: !2543, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2516, file: !215, line: 129, baseType: !1271, size: 256, offset: 512)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2516, file: !215, line: 130, baseType: !214, size: 32, offset: 768)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2516, file: !215, line: 131, baseType: !13, size: 32, offset: 800)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2516, file: !215, line: 132, baseType: !146, size: 64, offset: 832)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2516, file: !215, line: 133, baseType: !2554, size: 64, offset: 896)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2556)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !215, line: 77, size: 192, elements: !2557)
!2557 = !{!2558, !2563, !2723}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2556, file: !215, line: 83, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2556, file: !215, line: 89, baseType: !2564, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!2567, !2568}
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !223, line: 1184, baseType: !13)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2570, line: 512, size: 896, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2571 = !{!2572, !2690, !2691, !2698, !2705, !2715, !2716, !2717, !2719, !2721}
!2572 = !DIDerivedType(tag: DW_TAG_member, scope: !2569, file: !2570, line: 513, baseType: !2573, size: 320)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2569, file: !2570, line: 513, size: 320, elements: !2574)
!2574 = !{!2575, !2686, !2687, !2688, !2689}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2573, file: !2570, line: 514, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !223, line: 625, size: 1344, elements: !2578)
!2578 = !{!2579, !2588, !2589, !2597, !2604, !2605, !2610, !2611, !2616, !2617, !2620, !2679, !2680, !2681, !2682, !2683, !2684}
!2579 = !DIDerivedType(tag: DW_TAG_member, scope: !2577, file: !223, line: 628, baseType: !2580, size: 128)
!2580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2577, file: !223, line: 628, size: 128, elements: !2581)
!2581 = !{!2582, !2587}
!2582 = !DIDerivedType(tag: DW_TAG_member, scope: !2580, file: !223, line: 629, baseType: !2583, size: 128)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2580, file: !223, line: 629, size: 128, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2583, file: !223, line: 631, baseType: !146, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2583, file: !223, line: 632, baseType: !146, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2580, file: !223, line: 635, baseType: !1752, size: 128, align: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2577, file: !223, line: 639, baseType: !1984, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2577, file: !223, line: 640, baseType: !2590, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2591, line: 297, baseType: !2592)
!2591 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2591, line: 297, size: 64, elements: !2593)
!2593 = !{!2594}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2592, file: !2591, line: 297, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2596, line: 19, baseType: !146)
!2596 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2597 = !DIDerivedType(tag: DW_TAG_member, scope: !2577, file: !223, line: 646, baseType: !2598, size: 64, offset: 256)
!2598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2577, file: !223, line: 646, size: 64, elements: !2599)
!2599 = !{!2600, !2603}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2598, file: !223, line: 647, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !223, line: 542, baseType: !146)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2598, file: !223, line: 648, baseType: !2602, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2577, file: !223, line: 666, baseType: !62, size: 32, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2577, file: !223, line: 667, baseType: !2606, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !223, line: 579, size: 320, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2607, file: !223, line: 580, baseType: !1019, size: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2577, file: !223, line: 670, baseType: !1044, size: 8, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2577, file: !223, line: 681, baseType: !2612, size: 256, offset: 512)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2577, file: !223, line: 678, size: 256, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2612, file: !223, line: 679, baseType: !1334, size: 192, align: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2612, file: !223, line: 680, baseType: !146, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2577, file: !223, line: 689, baseType: !204, size: 128, offset: 768)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2577, file: !223, line: 691, baseType: !2618, size: 64, offset: 896)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !223, line: 691, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2577, file: !223, line: 694, baseType: !2621, size: 64, offset: 960)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2623)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2570, line: 563, size: 1024, elements: !2624)
!2624 = !{!2625, !2629, !2630, !2634, !2638, !2642, !2643, !2647, !2651, !2655, !2656, !2657, !2661, !2665, !2671, !2675}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2623, file: !2570, line: 564, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !2576}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2623, file: !2570, line: 569, baseType: !2626, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2623, file: !2570, line: 571, baseType: !2631, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!62, !2576, !146}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2623, file: !2570, line: 572, baseType: !2635, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!62, !2576}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2623, file: !2570, line: 578, baseType: !2639, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!62, !2576, !146, !146, !146}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2623, file: !2570, line: 580, baseType: !2564, size: 64, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2623, file: !2570, line: 581, baseType: !2644, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!2567, !2568, !13}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2623, file: !2570, line: 582, baseType: !2648, size: 64, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!2567, !2568, !146, !146}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2623, file: !2570, line: 584, baseType: !2652, size: 64, offset: 512)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!146, !2576}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2623, file: !2570, line: 588, baseType: !2564, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2623, file: !2570, line: 591, baseType: !2564, size: 64, offset: 640)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2623, file: !2570, line: 597, baseType: !2658, size: 64, offset: 704)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!62, !2576, !146, !128, !62, !62}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2623, file: !2570, line: 603, baseType: !2662, size: 64, offset: 768)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!125, !2576}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2623, file: !2570, line: 613, baseType: !2666, size: 64, offset: 832)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!62, !2576, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !223, line: 717, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2623, file: !2570, line: 625, baseType: !2672, size: 64, offset: 896)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!2669, !2576, !146}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2623, file: !2570, line: 633, baseType: !2676, size: 64, offset: 960)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!2562, !2576, !146}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2577, file: !223, line: 697, baseType: !146, size: 64, offset: 1024)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2577, file: !223, line: 699, baseType: !2011, size: 64, offset: 1088)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2577, file: !223, line: 700, baseType: !128, size: 64, offset: 1152)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2577, file: !223, line: 711, baseType: !810, size: 64, offset: 1216)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2577, file: !223, line: 717, baseType: !2669, size: 64, offset: 1280)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2577, file: !223, line: 722, baseType: !2685, offset: 1344)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !223, line: 570, elements: !668)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2573, file: !2570, line: 515, baseType: !871, size: 32, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2573, file: !2570, line: 516, baseType: !146, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2573, file: !2570, line: 517, baseType: !146, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2573, file: !2570, line: 518, baseType: !146, size: 64, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2569, file: !2570, line: 520, baseType: !222, size: 32, offset: 320)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2569, file: !2570, line: 522, baseType: !2692, size: 64, offset: 384)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2596, line: 22, baseType: !2694)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2596, line: 22, size: 64, elements: !2695)
!2695 = !{!2696}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2694, file: !2596, line: 22, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2596, line: 15, baseType: !146)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2569, file: !2570, line: 524, baseType: !2699, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2591, line: 372, baseType: !2701)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2591, line: 372, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2701, file: !2591, line: 372, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2596, line: 16, baseType: !146)
!2705 = !DIDerivedType(tag: DW_TAG_member, scope: !2569, file: !2570, line: 527, baseType: !2706, size: 64, offset: 512)
!2706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2569, file: !2570, line: 527, size: 64, elements: !2707)
!2707 = !{!2708, !2714}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2706, file: !2570, line: 528, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2596, line: 21, baseType: !2710)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2596, line: 21, size: 64, elements: !2711)
!2711 = !{!2712}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2710, file: !2596, line: 21, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2596, line: 14, baseType: !146)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2706, file: !2570, line: 529, baseType: !2693, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2569, file: !2570, line: 534, baseType: !2562, size: 64, offset: 576)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2569, file: !2570, line: 535, baseType: !2562, size: 64, offset: 640)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2569, file: !2570, line: 541, baseType: !2718, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2569, file: !2570, line: 545, baseType: !2720, size: 64, offset: 768)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2569, file: !2570, line: 549, baseType: !2722, size: 64, offset: 832)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2591, line: 520, baseType: !2562)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2556, file: !215, line: 100, baseType: !2724, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!62, !2515, !146, !146, !62}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2516, file: !215, line: 134, baseType: !128, size: 64, offset: 960)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2516, file: !215, line: 135, baseType: !62, size: 32, offset: 1024)
!2729 = !DIDerivedType(tag: DW_TAG_member, scope: !2516, file: !215, line: 136, baseType: !2730, size: 128, offset: 1088)
!2730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2516, file: !215, line: 136, size: 128, elements: !2731)
!2731 = !{!2732, !2738}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2730, file: !215, line: 137, baseType: !2733, size: 128)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2734, line: 6, size: 128, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2735 = !{!2736, !2737}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2733, file: !2734, line: 7, baseType: !540, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2733, file: !2734, line: 8, baseType: !540, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, scope: !2730, file: !215, line: 138, baseType: !2739)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2730, file: !215, line: 138, elements: !2740)
!2740 = !{!2741, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2739, file: !215, line: 138, baseType: !2742)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2739, file: !215, line: 138, elements: !668)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2739, file: !215, line: 138, baseType: !2744)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2733, elements: !2071)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2512, file: !223, line: 147, baseType: !128, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2470, file: !223, line: 161, baseType: !1752, size: 128, align: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, scope: !2466, file: !223, line: 164, baseType: !2748, size: 32, offset: 384)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2466, file: !223, line: 164, size: 32, elements: !2749)
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2748, file: !223, line: 169, baseType: !156, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2748, file: !223, line: 177, baseType: !13, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2466, file: !223, line: 181, baseType: !156, size: 32, offset: 416)
!2753 = !DIDerivedType(tag: DW_TAG_member, scope: !2434, file: !223, line: 325, baseType: !2754, size: 512, offset: 512)
!2754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2434, file: !223, line: 325, size: 512, elements: !2755)
!2755 = !{!2756, !2766}
!2756 = !DIDerivedType(tag: DW_TAG_member, scope: !2754, file: !223, line: 326, baseType: !2757, size: 320)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2754, file: !223, line: 326, size: 320, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2757, file: !223, line: 327, baseType: !146, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2757, file: !223, line: 328, baseType: !146, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2757, file: !223, line: 329, baseType: !146, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2757, file: !223, line: 331, baseType: !156, size: 32, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2757, file: !223, line: 332, baseType: !156, size: 32, offset: 224)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2757, file: !223, line: 333, baseType: !156, size: 32, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2757, file: !223, line: 335, baseType: !13, size: 32, offset: 288)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2754, file: !223, line: 339, baseType: !2466, size: 512, align: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, scope: !2434, file: !223, line: 341, baseType: !2768, size: 512, offset: 1024)
!2768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2434, file: !223, line: 341, size: 512, elements: !2769)
!2769 = !{!2770, !2779, !2785}
!2770 = !DIDerivedType(tag: DW_TAG_member, scope: !2768, file: !223, line: 342, baseType: !2771, size: 384)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2768, file: !223, line: 342, size: 384, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2771, file: !223, line: 343, baseType: !146, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2771, file: !223, line: 344, baseType: !146, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2771, file: !223, line: 346, baseType: !128, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2771, file: !223, line: 347, baseType: !128, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2771, file: !223, line: 348, baseType: !128, size: 64, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2771, file: !223, line: 349, baseType: !128, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, scope: !2768, file: !223, line: 352, baseType: !2780, size: 256)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2768, file: !223, line: 352, size: 256, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2780, file: !223, line: 353, baseType: !146, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2780, file: !223, line: 354, baseType: !146, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2780, file: !223, line: 356, baseType: !204, size: 128, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2768, file: !223, line: 359, baseType: !2466, size: 512, align: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2429, file: !2430, line: 1000, baseType: !62, size: 32, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2429, file: !2430, line: 1001, baseType: !2788, size: 320, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !162, line: 14, baseType: !2789)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !162, line: 30, size: 320, elements: !2790)
!2790 = !{!2791, !2792, !2793, !2799}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2789, file: !162, line: 31, baseType: !13, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2789, file: !162, line: 32, baseType: !128, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2789, file: !162, line: 33, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !162, line: 16, baseType: !2795)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!62, !2798, !13, !62, !128}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2789, file: !162, line: 34, baseType: !204, size: 128, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2425, file: !25, line: 395, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!425, !128}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2806, line: 41, size: 320, elements: !2807)
!2806 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2807 = !{!2808, !2809, !2810, !2811, !2812, !2813, !2818, !2862}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2805, file: !2806, line: 42, baseType: !190, size: 8)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2805, file: !2806, line: 43, baseType: !1044, size: 8, offset: 8)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2805, file: !2806, line: 44, baseType: !1044, size: 8, offset: 16)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2805, file: !2806, line: 45, baseType: !1044, size: 8, offset: 24)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2805, file: !2806, line: 46, baseType: !1044, size: 8, offset: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, scope: !2805, file: !2806, line: 47, baseType: !2814, size: 64, offset: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2805, file: !2806, line: 47, size: 64, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2814, file: !2806, line: 48, baseType: !142, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2814, file: !2806, line: 49, baseType: !62, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !2805, file: !2806, line: 61, baseType: !2819, size: 128, offset: 128)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2805, file: !2806, line: 61, size: 128, elements: !2820)
!2820 = !{!2821, !2827}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2819, file: !2806, line: 67, baseType: !2822, size: 128)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2823, line: 17, size: 128, elements: !2824)
!2823 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2824 = !{!2825, !2826}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2822, file: !2823, line: 19, baseType: !128, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2822, file: !2823, line: 20, baseType: !143, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2819, file: !2806, line: 68, baseType: !2828, size: 128)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2819, file: !2806, line: 68, size: 128, elements: !2829)
!2829 = !{!2830, !2861}
!2830 = !DIDerivedType(tag: DW_TAG_member, scope: !2828, file: !2806, line: 69, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2828, file: !2806, line: 69, size: 64, elements: !2832)
!2832 = !{!2833, !2836, !2843, !2852, !2860}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2831, file: !2806, line: 71, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2822)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2831, file: !2806, line: 72, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2839)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2806, line: 17, size: 128, elements: !2840)
!2840 = !{!2841, !2842}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2839, file: !2806, line: 18, baseType: !128, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2839, file: !2806, line: 19, baseType: !142, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2831, file: !2806, line: 73, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2846)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2847, line: 31, size: 128, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2848 = !{!2849, !2850, !2851}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2846, file: !2847, line: 32, baseType: !2562, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2846, file: !2847, line: 33, baseType: !13, size: 32, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2846, file: !2847, line: 34, baseType: !13, size: 32, offset: 96)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2831, file: !2806, line: 74, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2855, line: 296, size: 128, elements: !2856)
!2855 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2856 = !{!2857, !2858, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2854, file: !2855, line: 297, baseType: !166, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2854, file: !2855, line: 299, baseType: !871, size: 32, offset: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2854, file: !2855, line: 300, baseType: !128, size: 64, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2831, file: !2806, line: 75, baseType: !128, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2828, file: !2806, line: 77, baseType: !142, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, scope: !2805, file: !2806, line: 80, baseType: !2863, size: 64, offset: 256)
!2863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2805, file: !2806, line: 80, size: 64, elements: !2864)
!2864 = !{!2865, !2866}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2863, file: !2806, line: 81, baseType: !146, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2863, file: !2806, line: 82, baseType: !148, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2393, file: !25, line: 1920, baseType: !2409, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2393, file: !25, line: 1921, baseType: !2869, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!62, !2412, !2872, !13}
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !25, line: 53, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2393, file: !25, line: 1923, baseType: !2875, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!62, !2011, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !25, line: 1858, size: 128, elements: !2880)
!2880 = !{!2881, !2886}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2879, file: !25, line: 1859, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !25, line: 1855, baseType: !2883)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!1044, !2878, !125, !62, !148, !540, !13}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2879, file: !25, line: 1860, baseType: !148, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2393, file: !25, line: 1924, baseType: !2888, size: 64, offset: 512)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!2891, !2011, !2893}
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2892, line: 59, baseType: !13)
!2892 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !640, line: 31, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2393, file: !25, line: 1925, baseType: !2896, size: 64, offset: 576)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!428, !2011, !13, !146}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2393, file: !25, line: 1926, baseType: !2896, size: 64, offset: 640)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2393, file: !25, line: 1927, baseType: !2901, size: 64, offset: 704)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!62, !2011, !2576}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2393, file: !25, line: 1928, baseType: !146, size: 64, offset: 768)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2393, file: !25, line: 1929, baseType: !2906, size: 64, offset: 832)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!62, !467, !2011}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2393, file: !25, line: 1930, baseType: !2910, size: 64, offset: 896)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!62, !2011, !2913}
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !25, line: 1061, baseType: !128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2393, file: !25, line: 1931, baseType: !2906, size: 64, offset: 960)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2393, file: !25, line: 1932, baseType: !2916, size: 64, offset: 1024)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!62, !2011, !148, !148, !62}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2393, file: !25, line: 1933, baseType: !2920, size: 64, offset: 1088)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!62, !62, !2011, !62}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2393, file: !25, line: 1934, baseType: !2924, size: 64, offset: 1152)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!62, !2011, !62, !2927}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !25, line: 1063, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2393, file: !25, line: 1935, baseType: !2008, size: 64, offset: 1216)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2393, file: !25, line: 1936, baseType: !2931, size: 64, offset: 1280)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!62, !62}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2393, file: !25, line: 1937, baseType: !2924, size: 64, offset: 1344)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2393, file: !25, line: 1938, baseType: !2936, size: 64, offset: 1408)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!425, !2939, !2011, !147, !142, !13}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !781, line: 59, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2393, file: !25, line: 1939, baseType: !2942, size: 64, offset: 1472)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!425, !2011, !147, !2939, !142, !13}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2393, file: !25, line: 1940, baseType: !2946, size: 64, offset: 1536)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !2011}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2393, file: !25, line: 1941, baseType: !2950, size: 64, offset: 1600)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!62, !2011, !62, !2953, !2954}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2393, file: !25, line: 1942, baseType: !2956, size: 64, offset: 1664)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!428, !2011, !62, !148, !148}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2393, file: !25, line: 1944, baseType: !2960, size: 64, offset: 1728)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !779, !2011}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2393, file: !25, line: 1948, baseType: !2964, size: 64, offset: 1792)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!425, !2011, !148, !2011, !148, !142, !13}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2393, file: !25, line: 1950, baseType: !2968, size: 64, offset: 1856)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!148, !2011, !148, !2011, !148, !148, !13}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2393, file: !25, line: 1953, baseType: !2916, size: 64, offset: 1920)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2393, file: !25, line: 1954, baseType: !2973, size: 64, offset: 1984)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!62, !2976, !13}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !25, line: 1911, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2393, file: !25, line: 1955, baseType: !2979, size: 64, offset: 2048)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!62, !2976, !2872, !13}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !2012, file: !25, line: 1018, baseType: !540, size: 64, offset: 1472)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !2012, file: !25, line: 1020, baseType: !128, size: 64, offset: 1536)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2012, file: !25, line: 1023, baseType: !128, size: 64, offset: 1600)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !2012, file: !25, line: 1027, baseType: !2986, size: 64, offset: 1664)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2012, file: !25, line: 1029, baseType: !463, size: 64, offset: 1728)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !2012, file: !25, line: 1030, baseType: !2989, size: 32, offset: 1792)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2990, line: 8, baseType: !536)
!2990 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !2012, file: !25, line: 1031, baseType: !2989, size: 32, offset: 1824)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1988, file: !223, line: 756, baseType: !146, size: 64, offset: 704)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1988, file: !223, line: 757, baseType: !146, size: 64, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1988, file: !223, line: 760, baseType: !146, size: 64, offset: 832)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1988, file: !223, line: 761, baseType: !146, size: 64, offset: 896)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1988, file: !223, line: 763, baseType: !146, size: 64, offset: 960)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1988, file: !223, line: 764, baseType: !2998, size: 64, offset: 1024)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2591, line: 299, baseType: !3000)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2591, line: 299, size: 64, elements: !3001)
!3001 = !{!3002}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3000, file: !2591, line: 299, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2596, line: 18, baseType: !146)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1988, file: !223, line: 773, baseType: !156, size: 32, offset: 1088)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1988, file: !223, line: 785, baseType: !156, size: 32, offset: 1120)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1988, file: !223, line: 795, baseType: !3007, size: 64, offset: 1152)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !223, line: 726, size: 128, elements: !3009)
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3008, file: !223, line: 727, baseType: !540, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3008, file: !223, line: 728, baseType: !62, size: 32, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1988, file: !223, line: 801, baseType: !146, size: 64, offset: 1216)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1988, file: !223, line: 804, baseType: !810, size: 64, offset: 1280)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1988, file: !223, line: 806, baseType: !62, size: 32, offset: 1344)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1988, file: !223, line: 808, baseType: !166, size: 32, offset: 1376)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1988, file: !223, line: 823, baseType: !1019, size: 320, offset: 1408)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1988, file: !223, line: 825, baseType: !204, size: 128, offset: 1728)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1988, file: !223, line: 845, baseType: !62, size: 32, offset: 1856)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1988, file: !223, line: 849, baseType: !146, size: 64, offset: 1920)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1988, file: !223, line: 850, baseType: !146, size: 64, offset: 1984)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1988, file: !223, line: 852, baseType: !146, size: 64, offset: 2048)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1988, file: !223, line: 853, baseType: !146, size: 64, offset: 2112)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1988, file: !223, line: 854, baseType: !812, size: 64, offset: 2176)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1988, file: !223, line: 855, baseType: !146, size: 64, offset: 2240)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1988, file: !223, line: 856, baseType: !146, size: 64, offset: 2304)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1988, file: !223, line: 857, baseType: !146, size: 64, offset: 2368)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1988, file: !223, line: 858, baseType: !146, size: 64, offset: 2432)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1988, file: !223, line: 865, baseType: !513, size: 32, offset: 2496)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1988, file: !223, line: 867, baseType: !166, size: 32, offset: 2528)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1988, file: !223, line: 869, baseType: !146, size: 64, offset: 2560)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1988, file: !223, line: 869, baseType: !146, size: 64, offset: 2624)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1988, file: !223, line: 869, baseType: !146, size: 64, offset: 2688)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1988, file: !223, line: 869, baseType: !146, size: 64, offset: 2752)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1988, file: !223, line: 870, baseType: !146, size: 64, offset: 2816)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1988, file: !223, line: 870, baseType: !146, size: 64, offset: 2880)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1988, file: !223, line: 870, baseType: !146, size: 64, offset: 2944)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1988, file: !223, line: 871, baseType: !146, size: 64, offset: 3008)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1988, file: !223, line: 871, baseType: !146, size: 64, offset: 3072)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1988, file: !223, line: 871, baseType: !146, size: 64, offset: 3136)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1988, file: !223, line: 871, baseType: !146, size: 64, offset: 3200)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1988, file: !223, line: 873, baseType: !3042, size: 3328, offset: 3264)
!3042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 3328, elements: !3043)
!3043 = !{!3044}
!3044 = !DISubrange(count: 52)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1988, file: !223, line: 875, baseType: !1642, size: 1280, offset: 6592)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1988, file: !223, line: 877, baseType: !3047, size: 64, offset: 7872)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !223, line: 877, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1988, file: !223, line: 880, baseType: !3050, size: 1088, offset: 7936)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3051, line: 72, baseType: !3052)
!3051 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3051, line: 23, size: 1088, elements: !3053)
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3061, !3062, !3063, !3064, !3089, !3090, !3091}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3052, file: !3051, line: 28, baseType: !540, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3052, file: !3051, line: 38, baseType: !812, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3052, file: !3051, line: 40, baseType: !146, size: 64, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3052, file: !3051, line: 43, baseType: !1019, size: 320, offset: 192)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3052, file: !3051, line: 44, baseType: !3059, size: 64, offset: 512)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3051, line: 44, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3052, file: !3051, line: 48, baseType: !146, size: 64, offset: 576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3052, file: !3051, line: 59, baseType: !806, size: 256, offset: 640)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3052, file: !3051, line: 60, baseType: !128, size: 64, offset: 896)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3052, file: !3051, line: 61, baseType: !3065, size: 64, offset: 960)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3067)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3068, line: 13, size: 1216, elements: !3069)
!3068 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3067, file: !3068, line: 14, baseType: !128, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3067, file: !3068, line: 15, baseType: !146, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3067, file: !3068, line: 17, baseType: !146, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3067, file: !3068, line: 17, baseType: !146, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3067, file: !3068, line: 18, baseType: !146, size: 64, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3067, file: !3068, line: 18, baseType: !146, size: 64, offset: 320)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3067, file: !3068, line: 19, baseType: !1057, size: 64, offset: 384)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3067, file: !3068, line: 21, baseType: !428, size: 64, offset: 448)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3067, file: !3068, line: 23, baseType: !428, size: 64, offset: 512)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3067, file: !3068, line: 24, baseType: !428, size: 64, offset: 576)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3067, file: !3068, line: 25, baseType: !428, size: 64, offset: 640)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3067, file: !3068, line: 26, baseType: !428, size: 64, offset: 704)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3067, file: !3068, line: 27, baseType: !428, size: 64, offset: 768)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3067, file: !3068, line: 28, baseType: !428, size: 64, offset: 832)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3067, file: !3068, line: 29, baseType: !428, size: 64, offset: 896)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3067, file: !3068, line: 30, baseType: !428, size: 64, offset: 960)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3067, file: !3068, line: 31, baseType: !428, size: 64, offset: 1024)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3067, file: !3068, line: 32, baseType: !428, size: 64, offset: 1088)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3067, file: !3068, line: 33, baseType: !428, size: 64, offset: 1152)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3052, file: !3051, line: 63, baseType: !156, size: 32, offset: 1024)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3052, file: !3051, line: 69, baseType: !200, size: 16, offset: 1056)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3052, file: !3051, line: 70, baseType: !3092, size: 16, offset: 1072)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !191, line: 18, baseType: !3093)
!3093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !193, line: 23, baseType: !2136)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1988, file: !223, line: 882, baseType: !146, size: 64, offset: 9024)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1988, file: !223, line: 885, baseType: !166, size: 32, offset: 9088)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1988, file: !223, line: 886, baseType: !3097, size: 64, offset: 9152)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !223, line: 732, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1988, file: !223, line: 901, baseType: !2240, size: 64, offset: 9216)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1988, file: !223, line: 904, baseType: !2011, size: 64, offset: 9280)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1988, file: !223, line: 906, baseType: !3102, size: 64, offset: 9344)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !223, line: 906, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1988, file: !223, line: 930, baseType: !156, size: 32, offset: 9408)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1988, file: !223, line: 933, baseType: !156, size: 32, offset: 9440)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1988, file: !223, line: 935, baseType: !3107, size: 64, offset: 9472)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !245, line: 103, size: 64, elements: !3108)
!3108 = !{!3109}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3107, file: !245, line: 104, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !245, line: 101, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1988, file: !223, line: 940, baseType: !810, size: 64, offset: 9536)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1988, file: !223, line: 942, baseType: !1409, size: 256, offset: 9600)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1985, file: !223, line: 986, baseType: !3115, offset: 10240)
!3115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, elements: !2071)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1768, file: !781, line: 882, baseType: !1984, size: 64, offset: 9792)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1768, file: !781, line: 884, baseType: !62, size: 32, offset: 9856)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1768, file: !781, line: 885, baseType: !62, size: 32, offset: 9888)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1768, file: !781, line: 886, baseType: !62, size: 32, offset: 9920)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1768, file: !781, line: 888, baseType: !62, size: 32, offset: 9952)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1768, file: !781, line: 890, baseType: !146, size: 64, offset: 9984)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1768, file: !781, line: 893, baseType: !13, size: 32, offset: 10048)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1768, file: !781, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1768, file: !781, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1768, file: !781, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1768, file: !781, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1768, file: !781, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1768, file: !781, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1768, file: !781, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1768, file: !781, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1768, file: !781, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1768, file: !781, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1768, file: !781, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1768, file: !781, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1768, file: !781, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1768, file: !781, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1768, file: !781, line: 969, baseType: !146, size: 64, offset: 10176)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1768, file: !781, line: 971, baseType: !3139, size: 448, offset: 10240)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !239, line: 25, size: 448, elements: !3140)
!3140 = !{!3141, !3142, !3147}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3139, file: !239, line: 26, baseType: !146, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3139, file: !239, line: 27, baseType: !3143, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!428, !3146}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3139, file: !239, line: 28, baseType: !3148, size: 320, offset: 128)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3139, file: !239, line: 28, size: 320, elements: !3149)
!3149 = !{!3150, !3160, !3185}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3148, file: !239, line: 37, baseType: !3151, size: 320)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3148, file: !239, line: 30, size: 320, elements: !3152)
!3152 = !{!3153, !3155, !3156, !3157, !3158, !3159}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3151, file: !239, line: 31, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3151, file: !239, line: 32, baseType: !536, size: 32, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3151, file: !239, line: 33, baseType: !536, size: 32, offset: 96)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3151, file: !239, line: 34, baseType: !536, size: 32, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3151, file: !239, line: 35, baseType: !540, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3151, file: !239, line: 36, baseType: !3154, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3148, file: !239, line: 47, baseType: !3161, size: 192)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3148, file: !239, line: 39, size: 192, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3184}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3161, file: !239, line: 40, baseType: !1379, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3161, file: !239, line: 41, baseType: !238, size: 32, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !239, line: 42, baseType: !3166, size: 64, offset: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3161, file: !239, line: 42, size: 64, elements: !3167)
!3167 = !{!3168, !3176}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3166, file: !239, line: 43, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3171, line: 7, size: 128, elements: !3172)
!3171 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3172 = !{!3173, !3175}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3170, file: !3171, line: 8, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !144, line: 93, baseType: !150)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3170, file: !3171, line: 9, baseType: !150, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3166, file: !239, line: 44, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3179, line: 7, size: 64, elements: !3180)
!3179 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3180 = !{!3181, !3183}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3178, file: !3179, line: 8, baseType: !3182, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3179, line: 5, baseType: !1456)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3178, file: !3179, line: 9, baseType: !1456, size: 32, offset: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3161, file: !239, line: 46, baseType: !540, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3148, file: !239, line: 55, baseType: !3186, size: 256)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3148, file: !239, line: 49, size: 256, elements: !3187)
!3187 = !{!3188, !3191, !3192, !3193, !3194}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3186, file: !239, line: 50, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !239, line: 14, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3186, file: !239, line: 51, baseType: !62, size: 32, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3186, file: !239, line: 52, baseType: !62, size: 32, offset: 96)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3186, file: !239, line: 53, baseType: !146, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3186, file: !239, line: 54, baseType: !146, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1768, file: !781, line: 973, baseType: !3196, size: 32, offset: 10688)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !132, line: 27, baseType: !3197)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !144, line: 28, baseType: !62)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1768, file: !781, line: 974, baseType: !3196, size: 32, offset: 10720)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1768, file: !781, line: 978, baseType: !146, size: 64, offset: 10752)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1768, file: !781, line: 987, baseType: !1767, size: 64, offset: 10816)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1768, file: !781, line: 990, baseType: !1767, size: 64, offset: 10880)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1768, file: !781, line: 995, baseType: !204, size: 128, offset: 10944)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1768, file: !781, line: 996, baseType: !204, size: 128, offset: 11072)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1768, file: !781, line: 997, baseType: !1767, size: 64, offset: 11200)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1768, file: !781, line: 1005, baseType: !204, size: 128, offset: 11264)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1768, file: !781, line: 1006, baseType: !204, size: 128, offset: 11392)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1768, file: !781, line: 1009, baseType: !2052, size: 64, offset: 11520)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1768, file: !781, line: 1010, baseType: !3209, size: 512, offset: 11584)
!3209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 512, elements: !767)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1768, file: !781, line: 1011, baseType: !204, size: 128, offset: 12096)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1768, file: !781, line: 1012, baseType: !204, size: 128, offset: 12224)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1768, file: !781, line: 1014, baseType: !2316, size: 64, offset: 12352)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1768, file: !781, line: 1017, baseType: !773, size: 64, offset: 12416)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1768, file: !781, line: 1020, baseType: !773, size: 64, offset: 12480)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1768, file: !781, line: 1023, baseType: !128, size: 64, offset: 12544)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1768, file: !781, line: 1025, baseType: !540, size: 64, offset: 12608)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1768, file: !781, line: 1026, baseType: !540, size: 64, offset: 12672)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1768, file: !781, line: 1031, baseType: !540, size: 64, offset: 12736)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1768, file: !781, line: 1032, baseType: !3220, size: 192, offset: 12800)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !781, line: 324, size: 192, elements: !3221)
!3221 = !{!3222, !3223, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3220, file: !781, line: 326, baseType: !540, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3220, file: !781, line: 327, baseType: !540, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3220, file: !781, line: 328, baseType: !819, size: 32, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1768, file: !781, line: 1041, baseType: !146, size: 64, offset: 12992)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1768, file: !781, line: 1042, baseType: !146, size: 64, offset: 13056)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1768, file: !781, line: 1045, baseType: !540, size: 64, offset: 13120)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1768, file: !781, line: 1048, baseType: !540, size: 64, offset: 13184)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1768, file: !781, line: 1051, baseType: !146, size: 64, offset: 13248)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1768, file: !781, line: 1052, baseType: !146, size: 64, offset: 13312)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1768, file: !781, line: 1055, baseType: !3232, size: 640, offset: 13376)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3233, line: 132, size: 640, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3234 = !{!3235, !3241, !3242}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3232, file: !3233, line: 133, baseType: !3236, size: 576)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3237, size: 576, elements: !5)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3233, line: 117, size: 192, elements: !3238)
!3238 = !{!3239, !3240}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3237, file: !3233, line: 118, baseType: !540, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3237, file: !3233, line: 119, baseType: !1388, size: 128, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3232, file: !3233, line: 134, baseType: !13, size: 32, offset: 576)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3232, file: !3233, line: 135, baseType: !13, size: 32, offset: 608)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1768, file: !781, line: 1058, baseType: !3244, size: 448, offset: 14016)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3233, line: 144, size: 448, elements: !3245)
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3244, file: !3233, line: 145, baseType: !1752, size: 128, align: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3244, file: !3233, line: 146, baseType: !806, size: 256, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3244, file: !3233, line: 147, baseType: !13, size: 32, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1768, file: !781, line: 1064, baseType: !2078, size: 64, offset: 14464)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1768, file: !781, line: 1067, baseType: !2078, size: 64, offset: 14528)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1768, file: !781, line: 1070, baseType: !2078, size: 64, offset: 14592)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1768, file: !781, line: 1074, baseType: !2104, size: 64, offset: 14656)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1768, file: !781, line: 1084, baseType: !3254, size: 128, offset: 14720)
!3254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3255)
!3255 = !{!3256}
!3256 = !DISubrange(count: 16)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1768, file: !781, line: 1086, baseType: !3258, size: 64, offset: 14848)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !781, line: 55, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1768, file: !781, line: 1089, baseType: !3261, size: 64, offset: 14912)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3262, line: 12, size: 64, elements: !3263)
!3262 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3263 = !{!3264}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3261, file: !3262, line: 13, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3262, line: 8, flags: DIFlagFwdDecl)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1768, file: !781, line: 1090, baseType: !3268, size: 128, offset: 14976)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3269, line: 13, size: 128, elements: !3270)
!3269 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3270 = !{!3271}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3268, file: !3269, line: 14, baseType: !204, size: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1768, file: !781, line: 1097, baseType: !3273, size: 64, offset: 15104)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !781, line: 50, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1768, file: !781, line: 1100, baseType: !3276, size: 64, offset: 15168)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !781, line: 1100, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1768, file: !781, line: 1103, baseType: !3279, size: 64, offset: 15232)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !781, line: 53, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1768, file: !781, line: 1107, baseType: !3282, size: 64, offset: 15296)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3284, line: 31, size: 576, elements: !3285)
!3284 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3285 = !{!3286, !3287, !3308, !3311, !3314, !3315, !3318, !3321, !3322}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3283, file: !3284, line: 32, baseType: !1619, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3283, file: !3284, line: 33, baseType: !3288, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3290, line: 24, size: 3456, elements: !3291)
!3290 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!3291 = !{!3292, !3305, !3306, !3307}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3289, file: !3290, line: 25, baseType: !3293, size: 3120)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !3294, line: 25, size: 3120, elements: !3295)
!3294 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!3295 = !{!3296, !3300, !3301, !3302, !3303, !3304}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !3293, file: !3294, line: 26, baseType: !3297, size: 520)
!3297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !3298)
!3298 = !{!3299}
!3299 = !DISubrange(count: 65)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3293, file: !3294, line: 27, baseType: !3297, size: 520, offset: 520)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3293, file: !3294, line: 28, baseType: !3297, size: 520, offset: 1040)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3293, file: !3294, line: 29, baseType: !3297, size: 520, offset: 1560)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !3293, file: !3294, line: 30, baseType: !3297, size: 520, offset: 2080)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !3293, file: !3294, line: 31, baseType: !3297, size: 520, offset: 2600)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3289, file: !3290, line: 26, baseType: !2240, size: 64, offset: 3136)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3289, file: !3290, line: 27, baseType: !2349, size: 64, offset: 3200)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3289, file: !3290, line: 28, baseType: !2273, size: 192, offset: 3264)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3283, file: !3284, line: 34, baseType: !3309, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3284, line: 10, flags: DIFlagFwdDecl)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3283, file: !3284, line: 35, baseType: !3312, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3284, line: 8, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3283, file: !3284, line: 36, baseType: !2069, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3283, file: !3284, line: 37, baseType: !3316, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2106, line: 34, flags: DIFlagFwdDecl)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3283, file: !3284, line: 38, baseType: !3319, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3284, line: 38, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3283, file: !3284, line: 39, baseType: !3319, size: 64, offset: 448)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3283, file: !3284, line: 40, baseType: !3323, size: 64, offset: 512)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3284, line: 12, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1768, file: !781, line: 1110, baseType: !3326, size: 64, offset: 15360)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3328, line: 93, size: 8768, elements: !3329)
!3328 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3378, !3387, !3388, !3390, !3391, !3392, !3395, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3433, !3434, !3441, !3451, !3454, !3455, !3458, !3459, !3460, !3461, !3462, !3463}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3327, file: !3328, line: 94, baseType: !1619, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3327, file: !3328, line: 95, baseType: !156, size: 32, offset: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3327, file: !3328, line: 96, baseType: !62, size: 32, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3327, file: !3328, line: 97, baseType: !62, size: 32, offset: 96)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3327, file: !3328, line: 98, baseType: !204, size: 128, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3327, file: !3328, line: 100, baseType: !161, size: 192, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3327, file: !3328, line: 103, baseType: !1767, size: 64, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3327, file: !3328, line: 106, baseType: !3338, size: 192, offset: 512)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3339, line: 32, size: 192, elements: !3340)
!3339 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3340 = !{!3341, !3342}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3338, file: !3339, line: 33, baseType: !204, size: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3338, file: !3339, line: 34, baseType: !3343, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3344, line: 25, baseType: !3345)
!3344 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3344, line: 23, size: 64, elements: !3346)
!3346 = !{!3347}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3345, file: !3344, line: 24, baseType: !1935, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3327, file: !3328, line: 109, baseType: !656, size: 64, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3327, file: !3328, line: 112, baseType: !62, size: 32, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3327, file: !3328, line: 114, baseType: !62, size: 32, offset: 800)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3327, file: !3328, line: 115, baseType: !1767, size: 64, offset: 832)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3327, file: !3328, line: 118, baseType: !62, size: 32, offset: 896)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3327, file: !3328, line: 119, baseType: !13, size: 32, offset: 928)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3327, file: !3328, line: 121, baseType: !3355, size: 64, offset: 960)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3328, line: 80, size: 448, elements: !3357)
!3357 = !{!3358, !3359, !3365}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3356, file: !3328, line: 81, baseType: !156, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3356, file: !3328, line: 82, baseType: !3360, size: 128, offset: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3328, line: 75, size: 128, elements: !3361)
!3361 = !{!3362, !3363}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3360, file: !3328, line: 76, baseType: !1767, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3360, file: !3328, line: 77, baseType: !3364, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3356, file: !3328, line: 83, baseType: !1271, size: 256, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3327, file: !3328, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3327, file: !3328, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3327, file: !3328, line: 138, baseType: !13, size: 32, offset: 1056)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3327, file: !3328, line: 139, baseType: !204, size: 128, offset: 1088)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3327, file: !3328, line: 142, baseType: !1327, size: 512, offset: 1216)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3327, file: !3328, line: 143, baseType: !1307, size: 64, offset: 1728)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3327, file: !3328, line: 150, baseType: !3373, size: 256, offset: 1792)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3374, size: 256, elements: !760)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3328, line: 38, size: 128, elements: !3375)
!3375 = !{!3376, !3377}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3374, file: !3328, line: 39, baseType: !540, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3374, file: !3328, line: 40, baseType: !540, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3327, file: !3328, line: 156, baseType: !3379, size: 192, offset: 2048)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3328, line: 66, size: 192, elements: !3380)
!3380 = !{!3381}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3379, file: !3328, line: 67, baseType: !3382, size: 192)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3328, line: 47, size: 192, elements: !3383)
!3383 = !{!3384, !3385, !3386}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3382, file: !3328, line: 48, baseType: !812, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3382, file: !3328, line: 49, baseType: !812, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3382, file: !3328, line: 50, baseType: !812, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3327, file: !3328, line: 160, baseType: !3232, size: 640, offset: 2240)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3327, file: !3328, line: 163, baseType: !3389, size: 256, offset: 2880)
!3389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2052, size: 256, elements: !767)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3327, file: !3328, line: 169, baseType: !2052, size: 64, offset: 3136)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3327, file: !3328, line: 172, baseType: !62, size: 32, offset: 3200)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3327, file: !3328, line: 174, baseType: !3393, size: 64, offset: 3264)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3328, line: 174, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3327, file: !3328, line: 185, baseType: !3396, size: 64, offset: 3328)
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !509, line: 860, baseType: !3397)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 853, size: 64, elements: !3398)
!3398 = !{!3399, !3400}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3397, file: !509, line: 858, baseType: !508, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3397, file: !509, line: 859, baseType: !166, size: 32, offset: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3327, file: !3328, line: 186, baseType: !540, size: 64, offset: 3392)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3327, file: !3328, line: 186, baseType: !540, size: 64, offset: 3456)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3327, file: !3328, line: 186, baseType: !540, size: 64, offset: 3520)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3327, file: !3328, line: 186, baseType: !540, size: 64, offset: 3584)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3327, file: !3328, line: 187, baseType: !540, size: 64, offset: 3648)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3327, file: !3328, line: 188, baseType: !540, size: 64, offset: 3712)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3327, file: !3328, line: 189, baseType: !3220, size: 192, offset: 3776)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3327, file: !3328, line: 190, baseType: !146, size: 64, offset: 3968)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3327, file: !3328, line: 190, baseType: !146, size: 64, offset: 4032)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3327, file: !3328, line: 190, baseType: !146, size: 64, offset: 4096)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3327, file: !3328, line: 190, baseType: !146, size: 64, offset: 4160)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3327, file: !3328, line: 191, baseType: !146, size: 64, offset: 4224)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3327, file: !3328, line: 191, baseType: !146, size: 64, offset: 4288)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3327, file: !3328, line: 191, baseType: !146, size: 64, offset: 4352)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3327, file: !3328, line: 191, baseType: !146, size: 64, offset: 4416)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3327, file: !3328, line: 192, baseType: !146, size: 64, offset: 4480)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3327, file: !3328, line: 192, baseType: !146, size: 64, offset: 4544)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3327, file: !3328, line: 192, baseType: !146, size: 64, offset: 4608)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3327, file: !3328, line: 192, baseType: !146, size: 64, offset: 4672)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3327, file: !3328, line: 193, baseType: !146, size: 64, offset: 4736)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3327, file: !3328, line: 193, baseType: !146, size: 64, offset: 4800)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3327, file: !3328, line: 194, baseType: !3423, size: 448, offset: 4864)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3424, line: 12, size: 448, elements: !3425)
!3424 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3431, !3432}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3423, file: !3424, line: 15, baseType: !540, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3423, file: !3424, line: 17, baseType: !540, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3423, file: !3424, line: 19, baseType: !540, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3423, file: !3424, line: 21, baseType: !540, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3423, file: !3424, line: 29, baseType: !540, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3423, file: !3424, line: 35, baseType: !540, size: 64, offset: 320)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3423, file: !3424, line: 44, baseType: !540, size: 64, offset: 384)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3327, file: !3328, line: 202, baseType: !542, size: 64, offset: 5312)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3327, file: !3328, line: 213, baseType: !3435, size: 2048, offset: 5376)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3436, size: 2048, elements: !3255)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3437, line: 43, size: 128, elements: !3438)
!3437 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3438 = !{!3439, !3440}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3436, file: !3437, line: 44, baseType: !145, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3436, file: !3437, line: 45, baseType: !145, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3327, file: !3328, line: 216, baseType: !3442, size: 448, offset: 7424)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3328, line: 30, size: 448, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3442, file: !3328, line: 31, baseType: !62, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3442, file: !3328, line: 32, baseType: !428, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3442, file: !3328, line: 33, baseType: !146, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3442, file: !3328, line: 34, baseType: !540, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3442, file: !3328, line: 34, baseType: !540, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3442, file: !3328, line: 35, baseType: !146, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3442, file: !3328, line: 35, baseType: !146, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3327, file: !3328, line: 219, baseType: !3452, size: 64, offset: 7872)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3328, line: 219, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3327, file: !3328, line: 222, baseType: !13, size: 32, offset: 7936)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3327, file: !3328, line: 223, baseType: !3456, size: 64, offset: 8000)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3328, line: 223, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3327, file: !3328, line: 230, baseType: !1044, size: 8, offset: 8064)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3327, file: !3328, line: 231, baseType: !2136, size: 16, offset: 8080)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3327, file: !3328, line: 232, baseType: !2136, size: 16, offset: 8096)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3327, file: !3328, line: 234, baseType: !1984, size: 64, offset: 8128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3327, file: !3328, line: 237, baseType: !806, size: 256, offset: 8192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3327, file: !3328, line: 243, baseType: !1019, size: 320, offset: 8448)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1768, file: !781, line: 1111, baseType: !3465, size: 64, offset: 15424)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3328, line: 20, size: 16640, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3466, file: !3328, line: 21, baseType: !166, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3466, file: !3328, line: 22, baseType: !1619, size: 32, offset: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3466, file: !3328, line: 23, baseType: !161, size: 192, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3466, file: !3328, line: 24, baseType: !3472, size: 16384, offset: 256)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3473, size: 16384, elements: !398)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3339, line: 51, size: 256, elements: !3474)
!3474 = !{!3475}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3473, file: !3339, line: 52, baseType: !3476, size: 256)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3339, line: 37, size: 256, elements: !3477)
!3477 = !{!3478, !3485, !3486, !3492}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3476, file: !3339, line: 39, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3480, line: 83, baseType: !3481)
!3480 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3480, line: 82, baseType: !3483)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !62}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3476, file: !3339, line: 40, baseType: !146, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3476, file: !3339, line: 46, baseType: !3487, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3480, line: 86, baseType: !3488)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3480, line: 85, baseType: !3490)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{null}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3476, file: !3339, line: 48, baseType: !3343, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1768, file: !781, line: 1112, baseType: !3343, size: 64, offset: 15488)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1768, file: !781, line: 1113, baseType: !3343, size: 64, offset: 15552)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1768, file: !781, line: 1115, baseType: !3343, size: 64, offset: 15616)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1768, file: !781, line: 1116, baseType: !3338, size: 192, offset: 15680)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1768, file: !781, line: 1117, baseType: !146, size: 64, offset: 15872)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1768, file: !781, line: 1118, baseType: !142, size: 64, offset: 15936)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1768, file: !781, line: 1119, baseType: !13, size: 32, offset: 16000)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1768, file: !781, line: 1121, baseType: !1755, size: 64, offset: 16064)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1768, file: !781, line: 1125, baseType: !3502, size: 64, offset: 16128)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !781, line: 43, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1768, file: !781, line: 1127, baseType: !473, size: 32, offset: 16192)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1768, file: !781, line: 1128, baseType: !13, size: 32, offset: 16224)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1768, file: !781, line: 1130, baseType: !3507, size: 128, offset: 16256)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3508, line: 37, size: 128, elements: !3509)
!3508 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3507, file: !3508, line: 38, baseType: !62, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3507, file: !3508, line: 39, baseType: !156, size: 32, offset: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3507, file: !3508, line: 40, baseType: !3513, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3508, line: 24, flags: DIFlagFwdDecl)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1768, file: !781, line: 1131, baseType: !3516, size: 256, offset: 16384)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3517, line: 12, size: 256, elements: !3518)
!3517 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3518 = !{!3519, !3520, !3521, !3522}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3516, file: !3517, line: 13, baseType: !395, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3516, file: !3517, line: 14, baseType: !146, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3516, file: !3517, line: 15, baseType: !146, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3516, file: !3517, line: 16, baseType: !1044, size: 8, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1768, file: !781, line: 1134, baseType: !540, size: 64, offset: 16640)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1768, file: !781, line: 1135, baseType: !540, size: 64, offset: 16704)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1768, file: !781, line: 1138, baseType: !166, size: 32, offset: 16768)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1768, file: !781, line: 1141, baseType: !819, size: 32, offset: 16800)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1768, file: !781, line: 1143, baseType: !3528, size: 64, offset: 16832)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !781, line: 735, size: 64, elements: !3529)
!3529 = !{!3530}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3528, file: !781, line: 736, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1768, file: !781, line: 1147, baseType: !1391, size: 128, offset: 16896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1768, file: !781, line: 1149, baseType: !1767, size: 64, offset: 17024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1768, file: !781, line: 1151, baseType: !3535, size: 64, offset: 17088)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !781, line: 1151, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1768, file: !781, line: 1188, baseType: !128, size: 64, offset: 17152)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1768, file: !781, line: 1191, baseType: !3539, size: 64, offset: 17216)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !781, line: 44, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1768, file: !781, line: 1194, baseType: !3542, size: 64, offset: 17280)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !781, line: 45, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1768, file: !781, line: 1197, baseType: !3545, size: 64, offset: 17344)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !781, line: 61, flags: DIFlagFwdDecl)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1768, file: !781, line: 1199, baseType: !3548, size: 64, offset: 17408)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1078, line: 99, size: 128, elements: !3550)
!3550 = !{!3551, !3552, !3553}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3549, file: !1078, line: 100, baseType: !810, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3549, file: !1078, line: 101, baseType: !156, size: 32, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3549, file: !1078, line: 103, baseType: !133, size: 16, offset: 96)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1768, file: !781, line: 1202, baseType: !3555, size: 64, offset: 17472)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !781, line: 48, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1768, file: !781, line: 1205, baseType: !146, size: 64, offset: 17536)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1768, file: !781, line: 1206, baseType: !3559, size: 64, offset: 17600)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3339, line: 14, baseType: !3561)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3339, line: 12, size: 384, elements: !3562)
!3562 = !{!3563}
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3561, file: !3339, line: 13, baseType: !3564, size: 384)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3561, file: !3339, line: 13, size: 384, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3564, file: !3339, line: 13, baseType: !62, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3564, file: !3339, line: 13, baseType: !62, size: 32, offset: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3564, file: !3339, line: 13, baseType: !62, size: 32, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3564, file: !3339, line: 13, baseType: !3570, size: 256, offset: 128)
!3570 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3571, line: 37, size: 256, elements: !3572)
!3571 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3572 = !{!3573, !3578, !3591, !3597, !3606, !3633, !3638}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3570, file: !3571, line: 42, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3571, line: 39, size: 64, elements: !3575)
!3575 = !{!3576, !3577}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3574, file: !3571, line: 40, baseType: !3197, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3574, file: !3571, line: 41, baseType: !479, size: 32, offset: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3570, file: !3571, line: 50, baseType: !3579, size: 192)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3571, line: 45, size: 192, elements: !3580)
!3580 = !{!3581, !3583, !3584, !3590}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3579, file: !3571, line: 46, baseType: !3582, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !144, line: 95, baseType: !62)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3579, file: !3571, line: 47, baseType: !62, size: 32, offset: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3579, file: !3571, line: 48, baseType: !3585, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3571, line: 11, baseType: !3586)
!3586 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3571, line: 8, size: 64, elements: !3587)
!3587 = !{!3588, !3589}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3586, file: !3571, line: 9, baseType: !62, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3586, file: !3571, line: 10, baseType: !128, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3579, file: !3571, line: 49, baseType: !62, size: 32, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3570, file: !3571, line: 57, baseType: !3592, size: 128)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3571, line: 53, size: 128, elements: !3593)
!3593 = !{!3594, !3595, !3596}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3592, file: !3571, line: 54, baseType: !3197, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3592, file: !3571, line: 55, baseType: !479, size: 32, offset: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3592, file: !3571, line: 56, baseType: !3585, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3570, file: !3571, line: 66, baseType: !3598, size: 256)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3571, line: 60, size: 256, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3603, !3605}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3598, file: !3571, line: 61, baseType: !3197, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3598, file: !3571, line: 62, baseType: !479, size: 32, offset: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3598, file: !3571, line: 63, baseType: !62, size: 32, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3598, file: !3571, line: 64, baseType: !3604, size: 64, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !144, line: 94, baseType: !427)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3598, file: !3571, line: 65, baseType: !3604, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3570, file: !3571, line: 105, baseType: !3607, size: 256)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3571, line: 69, size: 256, elements: !3608)
!3608 = !{!3609, !3610}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3607, file: !3571, line: 70, baseType: !128, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !3607, file: !3571, line: 79, baseType: !3611, size: 192, offset: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3607, file: !3571, line: 79, size: 192, elements: !3612)
!3612 = !{!3613, !3614, !3615, !3622, !3627}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3611, file: !3571, line: 81, baseType: !62, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3611, file: !3571, line: 86, baseType: !2136, size: 16)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3611, file: !3571, line: 92, baseType: !3616, size: 192)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3611, file: !3571, line: 88, size: 192, elements: !3617)
!3617 = !{!3618, !3620, !3621}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3616, file: !3571, line: 89, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1375)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3616, file: !3571, line: 90, baseType: !128, size: 64, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3616, file: !3571, line: 91, baseType: !128, size: 64, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3611, file: !3571, line: 97, baseType: !3623, size: 96)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3611, file: !3571, line: 94, size: 96, elements: !3624)
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3623, file: !3571, line: 95, baseType: !3619, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3623, file: !3571, line: 96, baseType: !537, size: 32, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3611, file: !3571, line: 103, baseType: !3628, size: 128)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3611, file: !3571, line: 99, size: 128, elements: !3629)
!3629 = !{!3630, !3631, !3632}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3628, file: !3571, line: 100, baseType: !146, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3628, file: !3571, line: 101, baseType: !537, size: 32, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3628, file: !3571, line: 102, baseType: !537, size: 32, offset: 96)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3570, file: !3571, line: 111, baseType: !3634, size: 128)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3571, line: 108, size: 128, elements: !3635)
!3635 = !{!3636, !3637}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3634, file: !3571, line: 109, baseType: !428, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3634, file: !3571, line: 110, baseType: !62, size: 32, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3570, file: !3571, line: 118, baseType: !3639, size: 128)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3570, file: !3571, line: 114, size: 128, elements: !3640)
!3640 = !{!3641, !3642, !3643}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3639, file: !3571, line: 115, baseType: !128, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3639, file: !3571, line: 116, baseType: !62, size: 32, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3639, file: !3571, line: 117, baseType: !13, size: 32, offset: 96)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1768, file: !781, line: 1208, baseType: !3423, size: 448, offset: 17664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1768, file: !781, line: 1215, baseType: !540, size: 64, offset: 18112)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1768, file: !781, line: 1217, baseType: !540, size: 64, offset: 18176)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1768, file: !781, line: 1219, baseType: !540, size: 64, offset: 18240)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1768, file: !781, line: 1223, baseType: !3649, size: 64, offset: 18304)
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3650, line: 99, baseType: !3651)
!3650 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3650, line: 99, size: 64, elements: !3652)
!3652 = !{!3653}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3651, file: !3650, line: 99, baseType: !1935, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1768, file: !781, line: 1225, baseType: !508, size: 32, offset: 18368)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1768, file: !781, line: 1226, baseType: !62, size: 32, offset: 18400)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1768, file: !781, line: 1227, baseType: !62, size: 32, offset: 18432)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1768, file: !781, line: 1231, baseType: !3658, size: 64, offset: 18496)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !781, line: 1231, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1768, file: !781, line: 1233, baseType: !204, size: 128, offset: 18560)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1768, file: !781, line: 1240, baseType: !3662, size: 64, offset: 18688)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !781, line: 62, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1768, file: !781, line: 1242, baseType: !3665, size: 64, offset: 18752)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !781, line: 1242, flags: DIFlagFwdDecl)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1768, file: !781, line: 1244, baseType: !204, size: 128, offset: 18816)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1768, file: !781, line: 1245, baseType: !3669, size: 64, offset: 18944)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !781, line: 51, flags: DIFlagFwdDecl)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1768, file: !781, line: 1246, baseType: !806, size: 256, offset: 19008)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1768, file: !781, line: 1247, baseType: !13, size: 32, offset: 19264)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1768, file: !781, line: 1250, baseType: !3674, size: 64, offset: 19328)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !781, line: 57, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1768, file: !781, line: 1251, baseType: !806, size: 256, offset: 19392)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1768, file: !781, line: 1252, baseType: !204, size: 128, offset: 19648)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1768, file: !781, line: 1259, baseType: !2669, size: 64, offset: 19776)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1768, file: !781, line: 1260, baseType: !2136, size: 16, offset: 19840)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1768, file: !781, line: 1261, baseType: !2136, size: 16, offset: 19856)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1768, file: !781, line: 1314, baseType: !3682, size: 64, offset: 19904)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3684, line: 62, size: 256, align: 256, elements: !3685)
!3684 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3683, file: !3684, line: 75, baseType: !537, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3683, file: !3684, line: 90, baseType: !537, size: 32, offset: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3683, file: !3684, line: 112, baseType: !541, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3683, file: !3684, line: 132, baseType: !537, size: 32, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3683, file: !3684, line: 140, baseType: !537, size: 32, offset: 160)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3683, file: !3684, line: 149, baseType: !537, size: 32, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3683, file: !3684, line: 154, baseType: !3693, offset: 224)
!3693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !2071)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1768, file: !781, line: 1315, baseType: !536, size: 32, offset: 19968)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1768, file: !781, line: 1316, baseType: !536, size: 32, offset: 20000)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1768, file: !781, line: 1321, baseType: !146, size: 64, offset: 20032)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1768, file: !781, line: 1325, baseType: !62, size: 32, offset: 20096)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1768, file: !781, line: 1326, baseType: !62, size: 32, offset: 20128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1768, file: !781, line: 1327, baseType: !62, size: 32, offset: 20160)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1768, file: !781, line: 1328, baseType: !62, size: 32, offset: 20192)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1768, file: !781, line: 1329, baseType: !1752, size: 128, align: 64, offset: 20224)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1768, file: !781, line: 1332, baseType: !3703, size: 128, offset: 20352)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3704, line: 51, size: 128, elements: !3705)
!3704 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3705 = !{!3706, !3711, !3712}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3703, file: !3704, line: 60, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3708, line: 7, size: 64, elements: !3709)
!3708 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3709 = !{!3710}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3707, file: !3708, line: 12, baseType: !1932, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3703, file: !3704, line: 63, baseType: !1044, size: 8, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3703, file: !3704, line: 70, baseType: !1044, size: 8, offset: 72)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1768, file: !781, line: 1335, baseType: !2939, size: 64, offset: 20480)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1768, file: !781, line: 1337, baseType: !3715, size: 128, offset: 20544)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3704, line: 39, size: 128, elements: !3716)
!3716 = !{!3717, !3718, !3719}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3715, file: !3704, line: 40, baseType: !2562, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3715, file: !3704, line: 42, baseType: !537, size: 32, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3715, file: !3704, line: 43, baseType: !537, size: 32, offset: 96)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1768, file: !781, line: 1340, baseType: !3721, size: 64, offset: 20672)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !781, line: 69, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1768, file: !781, line: 1351, baseType: !62, size: 32, offset: 20736)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1768, file: !781, line: 1352, baseType: !62, size: 32, offset: 20768)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1768, file: !781, line: 1354, baseType: !146, size: 64, offset: 20800)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1768, file: !781, line: 1364, baseType: !540, size: 64, offset: 20864)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1768, file: !781, line: 1365, baseType: !540, size: 64, offset: 20928)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1768, file: !781, line: 1412, baseType: !146, size: 64, offset: 20992)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1768, file: !781, line: 1453, baseType: !1073, size: 64, offset: 21056)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1768, file: !781, line: 1457, baseType: !3731, size: 64, offset: 21120)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !245, line: 61, size: 576, elements: !3733)
!3733 = !{!3734, !3735, !3754, !3757, !3758, !3791, !3801}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3732, file: !245, line: 62, baseType: !244, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, scope: !3732, file: !245, line: 64, baseType: !3736, size: 192, offset: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3732, file: !245, line: 64, size: 192, elements: !3737)
!3737 = !{!3738, !3749}
!3738 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !245, line: 65, baseType: !3739, size: 192)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3736, file: !245, line: 65, size: 192, elements: !3740)
!3740 = !{!3741, !3748}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3739, file: !245, line: 66, baseType: !3742, size: 128)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3743, line: 50, size: 128, elements: !3744)
!3743 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3744 = !{!3745, !3746, !3747}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3742, file: !3743, line: 52, baseType: !146, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3742, file: !3743, line: 54, baseType: !13, size: 32, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3742, file: !3743, line: 55, baseType: !13, size: 32, offset: 96)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3739, file: !245, line: 67, baseType: !146, size: 64, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !245, line: 70, baseType: !3750, size: 192)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3736, file: !245, line: 70, size: 192, elements: !3751)
!3751 = !{!3752, !3753}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3750, file: !245, line: 71, baseType: !1752, size: 128, align: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3750, file: !245, line: 72, baseType: !146, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3732, file: !245, line: 76, baseType: !3755, size: 64, offset: 256)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !245, line: 76, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3732, file: !245, line: 77, baseType: !146, size: 64, offset: 320)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3732, file: !245, line: 79, baseType: !3759, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3743, line: 25, size: 256, elements: !3761)
!3761 = !{!3762, !3768, !3772}
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !3760, file: !3743, line: 26, baseType: !3763, size: 128)
!3763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3760, file: !3743, line: 26, size: 128, elements: !3764)
!3764 = !{!3765, !3767}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3763, file: !3743, line: 27, baseType: !3766, size: 128)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 128, elements: !3255)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3763, file: !3743, line: 28, baseType: !3766, size: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3760, file: !3743, line: 31, baseType: !3769, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3771)
!3771 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3743, line: 23, flags: DIFlagFwdDecl)
!3772 = !DIDerivedType(tag: DW_TAG_member, scope: !3760, file: !3743, line: 33, baseType: !3773, size: 64, offset: 192)
!3773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3760, file: !3743, line: 33, size: 64, elements: !3774)
!3774 = !{!3775, !3781, !3786}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3773, file: !3743, line: 38, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3773, file: !3743, line: 34, size: 64, elements: !3777)
!3777 = !{!3778, !3779, !3780}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3776, file: !3743, line: 35, baseType: !1456, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3776, file: !3743, line: 36, baseType: !190, size: 8, offset: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3776, file: !3743, line: 37, baseType: !190, size: 8, offset: 40)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3773, file: !3743, line: 42, baseType: !3782, size: 16)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3773, file: !3743, line: 39, size: 16, elements: !3783)
!3783 = !{!3784, !3785}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3782, file: !3743, line: 40, baseType: !190, size: 8)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3782, file: !3743, line: 41, baseType: !190, size: 8, offset: 8)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3773, file: !3743, line: 46, baseType: !3787, size: 16)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3773, file: !3743, line: 43, size: 16, elements: !3788)
!3788 = !{!3789, !3790}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3787, file: !3743, line: 44, baseType: !190, size: 8)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3787, file: !3743, line: 45, baseType: !190, size: 8, offset: 8)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3732, file: !245, line: 81, baseType: !3792, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !245, line: 85, size: 384, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3793, file: !245, line: 86, baseType: !3755, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3793, file: !245, line: 87, baseType: !146, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3793, file: !245, line: 88, baseType: !146, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3793, file: !245, line: 89, baseType: !146, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3793, file: !245, line: 90, baseType: !1044, size: 8, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3793, file: !245, line: 92, baseType: !3792, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3732, file: !245, line: 82, baseType: !13, size: 32, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1768, file: !781, line: 1463, baseType: !3803, offset: 21184)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !781, line: 739, elements: !668)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1768, file: !781, line: 1470, baseType: !1752, size: 128, align: 64, offset: 21184)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1768, file: !781, line: 1471, baseType: !1619, size: 32, offset: 21312)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1768, file: !781, line: 1472, baseType: !62, size: 32, offset: 21344)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1768, file: !781, line: 1474, baseType: !1767, size: 64, offset: 21376)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1768, file: !781, line: 1475, baseType: !1294, size: 320, offset: 21440)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1768, file: !781, line: 1478, baseType: !3810, size: 64, offset: 21760)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !781, line: 1478, flags: DIFlagFwdDecl)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1768, file: !781, line: 1482, baseType: !1619, size: 32, offset: 21824)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1768, file: !781, line: 1489, baseType: !128, size: 64, offset: 21888)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1768, file: !781, line: 1504, baseType: !128, size: 64, offset: 21952)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1768, file: !781, line: 1505, baseType: !541, size: 64, offset: 22016)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1768, file: !781, line: 1506, baseType: !540, size: 64, offset: 22080)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1768, file: !781, line: 1507, baseType: !541, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1768, file: !781, line: 1508, baseType: !541, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1768, file: !781, line: 1509, baseType: !541, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1768, file: !781, line: 1510, baseType: !1752, size: 128, align: 64, offset: 22208)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1768, file: !781, line: 1511, baseType: !62, size: 32, offset: 22336)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1768, file: !781, line: 1515, baseType: !3823, size: 64, offset: 22400)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1790, line: 56, size: 64, elements: !3824)
!3824 = !{!3825}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3823, file: !1790, line: 57, baseType: !1793, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1768, file: !781, line: 1518, baseType: !3823, size: 64, offset: 22464)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1768, file: !781, line: 1528, baseType: !1752, size: 128, align: 64, offset: 22528)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1768, file: !781, line: 1552, baseType: !3829, size: 35328, offset: 23040)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3830, line: 430, size: 35328, elements: !3831)
!3830 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3831 = !{!3832, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3861, !3862, !3863, !3864, !3865, !3866, !3869, !3870, !3871, !3872}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3829, file: !3830, line: 432, baseType: !3833, size: 192)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3834, size: 192, elements: !5)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3835, line: 16, size: 64, elements: !3836)
!3835 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3834, file: !3835, line: 17, baseType: !200, size: 16)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3834, file: !3835, line: 18, baseType: !200, size: 16, offset: 16)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3834, file: !3835, line: 19, baseType: !200, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3834, file: !3835, line: 19, baseType: !200, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3834, file: !3835, line: 19, baseType: !200, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3834, file: !3835, line: 19, baseType: !200, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3834, file: !3835, line: 19, baseType: !200, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3834, file: !3835, line: 20, baseType: !200, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3834, file: !3835, line: 20, baseType: !200, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3834, file: !3835, line: 20, baseType: !200, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3834, file: !3835, line: 20, baseType: !200, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3834, file: !3835, line: 20, baseType: !200, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3834, file: !3835, line: 20, baseType: !200, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3829, file: !3830, line: 436, baseType: !146, size: 64, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3829, file: !3830, line: 440, baseType: !133, size: 16, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3829, file: !3830, line: 441, baseType: !133, size: 16, offset: 272)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3829, file: !3830, line: 442, baseType: !133, size: 16, offset: 288)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3829, file: !3830, line: 443, baseType: !133, size: 16, offset: 304)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3829, file: !3830, line: 447, baseType: !146, size: 64, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3829, file: !3830, line: 448, baseType: !146, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3829, file: !3830, line: 459, baseType: !3858, size: 256, offset: 448)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3859, size: 256, elements: !767)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3830, line: 428, flags: DIFlagFwdDecl)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3829, file: !3830, line: 461, baseType: !146, size: 64, offset: 704)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3829, file: !3830, line: 463, baseType: !146, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3829, file: !3830, line: 465, baseType: !146, size: 64, offset: 832)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3829, file: !3830, line: 466, baseType: !146, size: 64, offset: 896)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3829, file: !3830, line: 467, baseType: !146, size: 64, offset: 960)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3829, file: !3830, line: 473, baseType: !3867, size: 64, offset: 1024)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3830, line: 10, flags: DIFlagFwdDecl)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3829, file: !3830, line: 480, baseType: !146, size: 64, offset: 1088)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3829, file: !3830, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3829, file: !3830, line: 491, baseType: !536, size: 32, offset: 1184)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3829, file: !3830, line: 501, baseType: !3873, size: 33792, offset: 1536)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3874, line: 448, size: 33792, elements: !3875)
!3874 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3875 = !{!3876, !3877, !3878, !4040, !4041, !4047, !4048}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3873, file: !3874, line: 461, baseType: !13, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3873, file: !3874, line: 468, baseType: !146, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3873, file: !3874, line: 476, baseType: !3879, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3874, line: 356, size: 33280, align: 512, elements: !3881)
!3881 = !{!3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3880, file: !3874, line: 358, baseType: !13, size: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3880, file: !3874, line: 361, baseType: !13, size: 32, offset: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3880, file: !3874, line: 364, baseType: !540, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3880, file: !3874, line: 367, baseType: !540, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3880, file: !3874, line: 370, baseType: !540, size: 64, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3880, file: !3874, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3880, file: !3874, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3880, file: !3874, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3880, file: !3874, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3880, file: !3874, line: 397, baseType: !3892, size: 32768, offset: 512)
!3892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3874, line: 348, size: 32768, elements: !3893)
!3893 = !{!3894, !3909, !3946, !4023, !4036}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3892, file: !3874, line: 349, baseType: !3895, size: 896)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3874, line: 12, size: 896, elements: !3896)
!3896 = !{!3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3908}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3895, file: !3874, line: 13, baseType: !536, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3895, file: !3874, line: 14, baseType: !536, size: 32, offset: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3895, file: !3874, line: 15, baseType: !536, size: 32, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3895, file: !3874, line: 16, baseType: !536, size: 32, offset: 96)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3895, file: !3874, line: 17, baseType: !536, size: 32, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3895, file: !3874, line: 18, baseType: !536, size: 32, offset: 160)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3895, file: !3874, line: 19, baseType: !536, size: 32, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3895, file: !3874, line: 22, baseType: !3905, size: 640, offset: 224)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 640, elements: !3906)
!3906 = !{!3907}
!3907 = !DISubrange(count: 20)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3895, file: !3874, line: 25, baseType: !536, size: 32, offset: 864)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3892, file: !3874, line: 350, baseType: !3910, size: 4096, align: 128)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3874, line: 34, size: 4096, align: 128, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3931, !3932, !3933, !3935, !3937, !3941}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3910, file: !3874, line: 35, baseType: !200, size: 16)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3910, file: !3874, line: 36, baseType: !200, size: 16, offset: 16)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3910, file: !3874, line: 37, baseType: !200, size: 16, offset: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3910, file: !3874, line: 38, baseType: !200, size: 16, offset: 48)
!3916 = !DIDerivedType(tag: DW_TAG_member, scope: !3910, file: !3874, line: 39, baseType: !3917, size: 128, offset: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3910, file: !3874, line: 39, size: 128, elements: !3918)
!3918 = !{!3919, !3924}
!3919 = !DIDerivedType(tag: DW_TAG_member, scope: !3917, file: !3874, line: 40, baseType: !3920, size: 128)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3917, file: !3874, line: 40, size: 128, elements: !3921)
!3921 = !{!3922, !3923}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3920, file: !3874, line: 41, baseType: !540, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3920, file: !3874, line: 42, baseType: !540, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !3917, file: !3874, line: 44, baseType: !3925, size: 128)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3917, file: !3874, line: 44, size: 128, elements: !3926)
!3926 = !{!3927, !3928, !3929, !3930}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3925, file: !3874, line: 45, baseType: !536, size: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3925, file: !3874, line: 46, baseType: !536, size: 32, offset: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3925, file: !3874, line: 47, baseType: !536, size: 32, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3925, file: !3874, line: 48, baseType: !536, size: 32, offset: 96)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3910, file: !3874, line: 51, baseType: !536, size: 32, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3910, file: !3874, line: 52, baseType: !536, size: 32, offset: 224)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3910, file: !3874, line: 55, baseType: !3934, size: 1024, offset: 256)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 1024, elements: !549)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3910, file: !3874, line: 58, baseType: !3936, size: 2048, offset: 1280)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 2048, elements: !398)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3910, file: !3874, line: 60, baseType: !3938, size: 384, offset: 3328)
!3938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 384, elements: !3939)
!3939 = !{!3940}
!3940 = !DISubrange(count: 12)
!3941 = !DIDerivedType(tag: DW_TAG_member, scope: !3910, file: !3874, line: 62, baseType: !3942, size: 384, offset: 3712)
!3942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3910, file: !3874, line: 62, size: 384, elements: !3943)
!3943 = !{!3944, !3945}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3942, file: !3874, line: 63, baseType: !3938, size: 384)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3942, file: !3874, line: 64, baseType: !3938, size: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3892, file: !3874, line: 351, baseType: !3947, size: 1088)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3874, line: 79, size: 1088, elements: !3948)
!3948 = !{!3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !4022}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3947, file: !3874, line: 80, baseType: !536, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3947, file: !3874, line: 81, baseType: !536, size: 32, offset: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3947, file: !3874, line: 82, baseType: !536, size: 32, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3947, file: !3874, line: 83, baseType: !536, size: 32, offset: 96)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3947, file: !3874, line: 84, baseType: !536, size: 32, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3947, file: !3874, line: 85, baseType: !536, size: 32, offset: 160)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3947, file: !3874, line: 86, baseType: !536, size: 32, offset: 192)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3947, file: !3874, line: 88, baseType: !3905, size: 640, offset: 224)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3947, file: !3874, line: 89, baseType: !190, size: 8, offset: 864)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3947, file: !3874, line: 90, baseType: !190, size: 8, offset: 872)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3947, file: !3874, line: 91, baseType: !190, size: 8, offset: 880)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3947, file: !3874, line: 92, baseType: !190, size: 8, offset: 888)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3947, file: !3874, line: 93, baseType: !190, size: 8, offset: 896)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3947, file: !3874, line: 94, baseType: !190, size: 8, offset: 904)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3947, file: !3874, line: 95, baseType: !3964, size: 64, offset: 960)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3966, line: 11, size: 128, elements: !3967)
!3966 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3967 = !{!3968, !3969}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3965, file: !3966, line: 12, baseType: !428, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3965, file: !3966, line: 13, baseType: !3970, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3972, line: 103, size: 1344, elements: !3973)
!3972 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !4002, !4003, !4004}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3971, file: !3972, line: 109, baseType: !146, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3971, file: !3972, line: 110, baseType: !146, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3971, file: !3972, line: 111, baseType: !146, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3971, file: !3972, line: 112, baseType: !146, size: 64, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3971, file: !3972, line: 113, baseType: !146, size: 64, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3971, file: !3972, line: 114, baseType: !146, size: 64, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3971, file: !3972, line: 117, baseType: !146, size: 64, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3971, file: !3972, line: 118, baseType: !146, size: 64, offset: 448)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3971, file: !3972, line: 119, baseType: !146, size: 64, offset: 512)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3971, file: !3972, line: 120, baseType: !146, size: 64, offset: 576)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3971, file: !3972, line: 121, baseType: !146, size: 64, offset: 640)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3971, file: !3972, line: 122, baseType: !146, size: 64, offset: 704)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3971, file: !3972, line: 123, baseType: !146, size: 64, offset: 768)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3971, file: !3972, line: 124, baseType: !146, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3971, file: !3972, line: 125, baseType: !146, size: 64, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3971, file: !3972, line: 139, baseType: !146, size: 64, offset: 960)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3971, file: !3972, line: 142, baseType: !146, size: 64, offset: 1024)
!3991 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !3972, line: 144, baseType: !3992, size: 64, offset: 1088)
!3992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3971, file: !3972, line: 144, size: 64, elements: !3993)
!3993 = !{!3994, !3995, !3996}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3992, file: !3972, line: 146, baseType: !200, size: 16)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3992, file: !3972, line: 148, baseType: !540, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3992, file: !3972, line: 150, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3972, line: 59, size: 64, elements: !3998)
!3998 = !{!3999, !4000, !4001}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3997, file: !3972, line: 61, baseType: !540, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3997, file: !3972, line: 63, baseType: !540, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3997, file: !3972, line: 65, baseType: !540, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3971, file: !3972, line: 153, baseType: !146, size: 64, offset: 1152)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3971, file: !3972, line: 154, baseType: !146, size: 64, offset: 1216)
!4004 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !3972, line: 156, baseType: !4005, size: 64, offset: 1280)
!4005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3971, file: !3972, line: 156, size: 64, elements: !4006)
!4006 = !{!4007, !4008, !4009}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4005, file: !3972, line: 158, baseType: !200, size: 16)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4005, file: !3972, line: 160, baseType: !540, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4005, file: !3972, line: 162, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3972, line: 69, size: 64, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4010, file: !3972, line: 71, baseType: !540, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4010, file: !3972, line: 73, baseType: !540, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4010, file: !3972, line: 75, baseType: !540, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4010, file: !3972, line: 77, baseType: !540, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4010, file: !3972, line: 80, baseType: !540, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4010, file: !3972, line: 83, baseType: !540, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4010, file: !3972, line: 86, baseType: !540, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4010, file: !3972, line: 88, baseType: !540, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4010, file: !3972, line: 93, baseType: !540, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4010, file: !3972, line: 100, baseType: !540, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3947, file: !3874, line: 96, baseType: !536, size: 32, offset: 1024)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3892, file: !3874, line: 352, baseType: !4024, size: 4608, align: 512)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3874, line: 333, size: 4608, align: 512, elements: !4025)
!4025 = !{!4026, !4027, !4034}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4024, file: !3874, line: 334, baseType: !3910, size: 4096, align: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4024, file: !3874, line: 335, baseType: !4028, size: 512, offset: 4096)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3874, line: 312, size: 512, elements: !4029)
!4029 = !{!4030, !4031, !4032}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4028, file: !3874, line: 313, baseType: !540, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4028, file: !3874, line: 314, baseType: !540, size: 64, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4028, file: !3874, line: 315, baseType: !4033, size: 384, offset: 128)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 384, elements: !2154)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4024, file: !3874, line: 336, baseType: !4035, offset: 4608)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !2071)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3892, file: !3874, line: 353, baseType: !4037, size: 32768)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 32768, elements: !4038)
!4038 = !{!4039}
!4039 = !DISubrange(count: 4096)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3873, file: !3874, line: 484, baseType: !3879, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3873, file: !3874, line: 491, baseType: !4042, size: 128, offset: 256)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3874, line: 404, size: 128, elements: !4043)
!4043 = !{!4044, !4045, !4046}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4042, file: !3874, line: 424, baseType: !540, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4042, file: !3874, line: 432, baseType: !13, size: 32, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4042, file: !3874, line: 440, baseType: !13, size: 32, offset: 96)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3873, file: !3874, line: 498, baseType: !4042, size: 128, offset: 384)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3873, file: !3874, line: 508, baseType: !3880, size: 33280, align: 512, offset: 512)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1741, file: !1742, line: 16, baseType: !161, size: 192, offset: 512)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1741, file: !1742, line: 17, baseType: !156, size: 32, offset: 704)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !619, file: !25, line: 1240, baseType: !128, size: 64, offset: 6912)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !619, file: !25, line: 1243, baseType: !536, size: 32, offset: 6976)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !619, file: !25, line: 1245, baseType: !859, size: 64, offset: 7040)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !619, file: !25, line: 1246, baseType: !859, size: 64, offset: 7104)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !619, file: !25, line: 1248, baseType: !537, size: 32, offset: 7168)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !619, file: !25, line: 1249, baseType: !4057, size: 64, offset: 7232)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !25, line: 634, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !619, file: !25, line: 1252, baseType: !4060, size: 256, offset: 7296)
!4060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !549)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !619, file: !25, line: 1253, baseType: !4062, size: 128, offset: 7552)
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4063, line: 21, baseType: !4064)
!4063 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4063, line: 19, size: 128, elements: !4065)
!4065 = !{!4066}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4064, file: !4063, line: 20, baseType: !4067, size: 128)
!4067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 128, elements: !3255)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !619, file: !25, line: 1255, baseType: !13, size: 32, offset: 7680)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !619, file: !25, line: 1261, baseType: !806, size: 256, offset: 7744)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !619, file: !25, line: 1267, baseType: !125, size: 64, offset: 8000)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !619, file: !25, line: 1269, baseType: !565, size: 64, offset: 8064)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !619, file: !25, line: 1271, baseType: !4073, size: 448, offset: 8128)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !868, line: 63, size: 448, elements: !4074)
!4074 = !{!4075, !4080, !4081, !4082, !4083, !4084, !4085}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4073, file: !868, line: 64, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!146, !4079, !866}
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4073, file: !868, line: 66, baseType: !4076, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4073, file: !868, line: 69, baseType: !428, size: 64, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4073, file: !868, line: 70, baseType: !62, size: 32, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4073, file: !868, line: 71, baseType: !13, size: 32, offset: 224)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4073, file: !868, line: 74, baseType: !204, size: 128, offset: 256)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4073, file: !868, line: 85, baseType: !4086, size: 64, offset: 384)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !619, file: !25, line: 1274, baseType: !810, size: 64, offset: 8576)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !619, file: !25, line: 1280, baseType: !810, size: 64, offset: 8640)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !619, file: !25, line: 1283, baseType: !62, size: 32, offset: 8704)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !619, file: !25, line: 1286, baseType: !2989, size: 32, offset: 8736)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !619, file: !25, line: 1289, baseType: !1675, size: 64, offset: 8768)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !619, file: !25, line: 1290, baseType: !656, size: 64, offset: 8832)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !619, file: !25, line: 1297, baseType: !2240, size: 64, offset: 8896)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !619, file: !25, line: 1304, baseType: !4095, size: 64, offset: 8960)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4096, line: 49, size: 64, elements: !4097)
!4096 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4097 = !{!4098}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4095, file: !4096, line: 50, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4096, line: 41, size: 512, align: 512, elements: !4101)
!4101 = !{!4102, !4103, !4108}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4100, file: !4096, line: 43, baseType: !166, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4100, file: !4096, line: 45, baseType: !4104, size: 192, offset: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4096, line: 29, size: 192, elements: !4105)
!4105 = !{!4106, !4107}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4104, file: !4096, line: 30, baseType: !204, size: 128)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4104, file: !4096, line: 32, baseType: !428, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4100, file: !4096, line: 46, baseType: !428, size: 64, offset: 256)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !619, file: !25, line: 1305, baseType: !4095, size: 64, offset: 9024)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !619, file: !25, line: 1306, baseType: !1752, size: 128, align: 64, offset: 9088)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !619, file: !25, line: 1307, baseType: !1409, size: 256, offset: 9216)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !619, file: !25, line: 1309, baseType: !806, size: 256, offset: 9472)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !619, file: !25, line: 1314, baseType: !62, size: 32, offset: 9728)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !619, file: !25, line: 1317, baseType: !166, size: 32, align: 512, offset: 10240)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !619, file: !25, line: 1318, baseType: !204, size: 128, offset: 10304)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !619, file: !25, line: 1320, baseType: !166, size: 32, offset: 10432)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !619, file: !25, line: 1321, baseType: !204, size: 128, offset: 10496)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !613, file: !614, line: 73, baseType: !62, size: 32, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !613, file: !614, line: 74, baseType: !1054, size: 64, offset: 192)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !567, file: !504, line: 141, baseType: !4122, size: 64, offset: 704)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!62, !929, !1044}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !567, file: !504, line: 142, baseType: !4126, size: 64, offset: 768)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!502, !502, !4129}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !503, file: !504, line: 96, baseType: !618, size: 64, offset: 832)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !503, file: !504, line: 97, baseType: !146, size: 64, offset: 896)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !503, file: !504, line: 98, baseType: !128, size: 64, offset: 960)
!4134 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !504, line: 100, baseType: !4135, size: 128, offset: 1024)
!4135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !504, line: 100, size: 128, elements: !4136)
!4136 = !{!4137, !4138}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4135, file: !504, line: 101, baseType: !204, size: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4135, file: !504, line: 102, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !503, file: !504, line: 104, baseType: !204, size: 128, offset: 1152)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !503, file: !504, line: 105, baseType: !204, size: 128, offset: 1280)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !503, file: !504, line: 113, baseType: !4143, size: 128, offset: 1408)
!4143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !504, line: 109, size: 128, elements: !4144)
!4144 = !{!4145, !4146, !4147}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4143, file: !504, line: 110, baseType: !660, size: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4143, file: !504, line: 111, baseType: !518, size: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4143, file: !504, line: 112, baseType: !1752, size: 128, align: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !496, file: !25, line: 1968, baseType: !4149, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!125, !502, !467, !4152}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4154, line: 10, size: 128, elements: !4155)
!4154 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4155 = !{!4156, !4157}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4153, file: !4154, line: 11, baseType: !1567, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4153, file: !4154, line: 12, baseType: !128, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !496, file: !25, line: 1969, baseType: !4159, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!62, !1054, !467, !62}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !496, file: !25, line: 1970, baseType: !4163, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!490, !467, !62, !1044}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !496, file: !25, line: 1972, baseType: !4167, size: 64, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!62, !502, !395, !62}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !496, file: !25, line: 1974, baseType: !4171, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!62, !1054, !467, !502, !131, !1044}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !496, file: !25, line: 1976, baseType: !4175, size: 64, offset: 384)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!62, !502, !467, !502}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !496, file: !25, line: 1977, baseType: !4179, size: 64, offset: 448)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!62, !467, !502}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !496, file: !25, line: 1978, baseType: !4183, size: 64, offset: 512)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!62, !1054, !467, !502, !125}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !496, file: !25, line: 1980, baseType: !4187, size: 64, offset: 576)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!62, !1054, !467, !502, !131}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !496, file: !25, line: 1982, baseType: !4179, size: 64, offset: 640)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !496, file: !25, line: 1983, baseType: !4192, size: 64, offset: 704)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!62, !1054, !467, !502, !131, !623}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !496, file: !25, line: 1985, baseType: !4196, size: 64, offset: 768)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!62, !1054, !467, !502, !467, !502, !13}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !496, file: !25, line: 1987, baseType: !4200, size: 64, offset: 832)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!62, !1054, !502, !4203}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !25, line: 226, size: 640, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4218, !4227, !4228, !4233, !4234, !4235}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4204, file: !25, line: 227, baseType: !13, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4204, file: !25, line: 228, baseType: !131, size: 16, offset: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, scope: !4204, file: !25, line: 241, baseType: !4209, size: 32, offset: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !25, line: 241, size: 32, elements: !4210)
!4210 = !{!4211, !4212}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4209, file: !25, line: 242, baseType: !473, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4209, file: !25, line: 243, baseType: !4213, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4214, line: 16, baseType: !4215)
!4214 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4214, line: 14, size: 32, elements: !4216)
!4216 = !{!4217}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4215, file: !4214, line: 15, baseType: !478, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, scope: !4204, file: !25, line: 245, baseType: !4219, size: 32, offset: 96)
!4219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !25, line: 245, size: 32, elements: !4220)
!4220 = !{!4221, !4222}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4219, file: !25, line: 246, baseType: !482, size: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4219, file: !25, line: 247, baseType: !4223, size: 32)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4214, line: 20, baseType: !4224)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4214, line: 18, size: 32, elements: !4225)
!4225 = !{!4226}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4224, file: !4214, line: 19, baseType: !486, size: 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4204, file: !25, line: 249, baseType: !148, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4204, file: !25, line: 250, baseType: !4229, size: 128, offset: 192)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !860, line: 13, size: 128, elements: !4230)
!4230 = !{!4231, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4229, file: !860, line: 14, baseType: !859, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4229, file: !860, line: 15, baseType: !428, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4204, file: !25, line: 251, baseType: !4229, size: 128, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4204, file: !25, line: 252, baseType: !4229, size: 128, offset: 448)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4204, file: !25, line: 259, baseType: !2011, size: 64, offset: 576)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !496, file: !25, line: 1988, baseType: !4237, size: 64, offset: 896)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!62, !1054, !929, !4240, !536, !13}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4242, line: 22, size: 1280, elements: !4243)
!4242 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4243 = !{!4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4241, file: !4242, line: 23, baseType: !536, size: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4241, file: !4242, line: 24, baseType: !131, size: 16, offset: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4241, file: !4242, line: 25, baseType: !13, size: 32, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4241, file: !4242, line: 26, baseType: !2132, size: 32, offset: 96)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4241, file: !4242, line: 27, baseType: !540, size: 64, offset: 128)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4241, file: !4242, line: 28, baseType: !540, size: 64, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4241, file: !4242, line: 41, baseType: !540, size: 64, offset: 256)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4241, file: !4242, line: 42, baseType: !623, size: 32, offset: 320)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4241, file: !4242, line: 43, baseType: !623, size: 32, offset: 352)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4241, file: !4242, line: 44, baseType: !473, size: 32, offset: 384)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4241, file: !4242, line: 45, baseType: !482, size: 32, offset: 416)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4241, file: !4242, line: 46, baseType: !148, size: 64, offset: 448)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4241, file: !4242, line: 47, baseType: !4229, size: 128, offset: 512)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4241, file: !4242, line: 48, baseType: !4229, size: 128, offset: 640)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4241, file: !4242, line: 49, baseType: !4229, size: 128, offset: 768)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4241, file: !4242, line: 50, baseType: !4229, size: 128, offset: 896)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4241, file: !4242, line: 51, baseType: !540, size: 64, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4241, file: !4242, line: 52, baseType: !540, size: 64, offset: 1088)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4241, file: !4242, line: 53, baseType: !536, size: 32, offset: 1152)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4241, file: !4242, line: 54, baseType: !536, size: 32, offset: 1184)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4241, file: !4242, line: 55, baseType: !540, size: 64, offset: 1216)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !496, file: !25, line: 1990, baseType: !4266, size: 64, offset: 960)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!425, !502, !395, !142}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !496, file: !25, line: 1991, baseType: !4270, size: 64, offset: 1024)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!62, !467, !4273, !540, !540}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !25, line: 55, flags: DIFlagFwdDecl)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !496, file: !25, line: 1993, baseType: !4276, size: 64, offset: 1088)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!62, !467, !62}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !496, file: !25, line: 1994, baseType: !4280, size: 64, offset: 1152)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!62, !467, !502, !2011, !13, !131}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !496, file: !25, line: 1997, baseType: !4284, size: 64, offset: 1216)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!62, !1054, !467, !2011, !131}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !496, file: !25, line: 1999, baseType: !4288, size: 64, offset: 1280)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!490, !1054, !502, !62}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !496, file: !25, line: 2001, baseType: !4292, size: 64, offset: 1344)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!62, !1054, !502, !490, !62}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !496, file: !25, line: 2003, baseType: !4296, size: 64, offset: 1408)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!62, !1054, !502, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !25, line: 76, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !496, file: !25, line: 2005, baseType: !4302, size: 64, offset: 1472)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!62, !502, !4299}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !496, file: !25, line: 2006, baseType: !4306, size: 64, offset: 1536)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!4309, !467}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !25, line: 3192, size: 192, elements: !4311)
!4311 = !{!4312, !4313}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4310, file: !25, line: 3193, baseType: !2854, size: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4310, file: !25, line: 3194, baseType: !536, size: 32, offset: 128)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !468, file: !25, line: 655, baseType: !618, size: 64, offset: 448)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !468, file: !25, line: 656, baseType: !463, size: 64, offset: 512)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !468, file: !25, line: 659, baseType: !128, size: 64, offset: 576)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !468, file: !25, line: 663, baseType: !146, size: 64, offset: 640)
!4318 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !25, line: 671, baseType: !4319, size: 32, offset: 704)
!4319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !25, line: 671, size: 32, elements: !4320)
!4320 = !{!4321, !4323}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4319, file: !25, line: 672, baseType: !4322, size: 32)
!4322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4319, file: !25, line: 673, baseType: !13, size: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !468, file: !25, line: 675, baseType: !623, size: 32, offset: 736)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !468, file: !25, line: 676, baseType: !148, size: 64, offset: 768)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !468, file: !25, line: 677, baseType: !4229, size: 128, offset: 832)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !468, file: !25, line: 678, baseType: !4229, size: 128, offset: 960)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !468, file: !25, line: 679, baseType: !4229, size: 128, offset: 1088)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !468, file: !25, line: 680, baseType: !166, size: 32, offset: 1216)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !468, file: !25, line: 681, baseType: !133, size: 16, offset: 1248)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !468, file: !25, line: 682, baseType: !190, size: 8, offset: 1264)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !468, file: !25, line: 683, baseType: !190, size: 8, offset: 1272)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !468, file: !25, line: 684, baseType: !1007, size: 64, offset: 1280)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !468, file: !25, line: 691, baseType: !146, size: 64, offset: 1344)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !468, file: !25, line: 692, baseType: !1019, size: 320, offset: 1408)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !468, file: !25, line: 694, baseType: !146, size: 64, offset: 1728)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !468, file: !25, line: 695, baseType: !146, size: 64, offset: 1792)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !468, file: !25, line: 697, baseType: !660, size: 128, offset: 1856)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !468, file: !25, line: 698, baseType: !204, size: 128, offset: 1984)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !468, file: !25, line: 707, baseType: !204, size: 128, offset: 2112)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !468, file: !25, line: 708, baseType: !204, size: 128, offset: 2240)
!4342 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !25, line: 709, baseType: !4343, size: 128, offset: 2368)
!4343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !25, line: 709, size: 128, elements: !4344)
!4344 = !{!4345, !4346}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4343, file: !25, line: 710, baseType: !656, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4343, file: !25, line: 711, baseType: !1752, size: 128, align: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !468, file: !25, line: 713, baseType: !812, size: 64, offset: 2496)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !468, file: !25, line: 714, baseType: !812, size: 64, offset: 2560)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !468, file: !25, line: 715, baseType: !156, size: 32, offset: 2624)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !468, file: !25, line: 716, baseType: !156, size: 32, offset: 2656)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !468, file: !25, line: 717, baseType: !156, size: 32, offset: 2688)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !468, file: !25, line: 719, baseType: !156, size: 32, offset: 2720)
!4353 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !25, line: 721, baseType: !4354, size: 64, offset: 2752)
!4354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !25, line: 721, size: 64, elements: !4355)
!4355 = !{!4356, !4357}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4354, file: !25, line: 722, baseType: !2391, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4354, file: !25, line: 723, baseType: !687, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !468, file: !25, line: 725, baseType: !4359, size: 64, offset: 2816)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !25, line: 725, flags: DIFlagFwdDecl)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !468, file: !25, line: 726, baseType: !464, size: 1536, align: 64, offset: 2880)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !468, file: !25, line: 727, baseType: !204, size: 128, offset: 4416)
!4363 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !25, line: 728, baseType: !4364, size: 64, offset: 4544)
!4364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !25, line: 728, size: 64, elements: !4365)
!4365 = !{!4366, !4367, !4370, !4371}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4364, file: !25, line: 729, baseType: !2939, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4364, file: !25, line: 730, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !25, line: 730, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4364, file: !25, line: 731, baseType: !395, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4364, file: !25, line: 732, baseType: !13, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !468, file: !25, line: 735, baseType: !537, size: 32, offset: 4608)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !468, file: !25, line: 738, baseType: !537, size: 32, offset: 4640)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !468, file: !25, line: 739, baseType: !4057, size: 64, offset: 4672)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !468, file: !25, line: 750, baseType: !128, size: 64, offset: 4736)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !464, file: !25, line: 474, baseType: !2854, size: 128, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !464, file: !25, line: 475, baseType: !1019, size: 320, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !464, file: !25, line: 476, baseType: !871, size: 32, offset: 512)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !464, file: !25, line: 477, baseType: !156, size: 32, offset: 544)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !464, file: !25, line: 482, baseType: !1391, size: 128, offset: 576)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !464, file: !25, line: 483, baseType: !146, size: 64, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !464, file: !25, line: 484, baseType: !146, size: 64, offset: 768)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !464, file: !25, line: 485, baseType: !4384, size: 64, offset: 832)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4386)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !25, line: 404, size: 1280, elements: !4387)
!4387 = !{!4388, !4392, !4396, !4400, !4404, !4420, !4425, !4429, !4433, !4437, !4441, !4445, !4446, !4450, !4454, !4458, !4463, !4467, !4474, !4475}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4386, file: !25, line: 405, baseType: !4389, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!62, !2562, !699}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4386, file: !25, line: 406, baseType: !4393, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!62, !2011, !2433}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4386, file: !25, line: 409, baseType: !4397, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!62, !463, !699}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4386, file: !25, line: 412, baseType: !4401, size: 64, offset: 192)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!1044, !463, !2433}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4386, file: !25, line: 414, baseType: !4405, size: 64, offset: 256)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{null, !4408}
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !2430, line: 1276, size: 448, elements: !4410)
!4410 = !{!4411, !4412, !4413, !4415, !4416, !4417, !4418, !4419}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4409, file: !2430, line: 1277, baseType: !2011, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4409, file: !2430, line: 1278, baseType: !463, size: 64, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4409, file: !2430, line: 1279, baseType: !4414, size: 64, offset: 128)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4409, file: !2430, line: 1281, baseType: !146, size: 64, offset: 192)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4409, file: !2430, line: 1282, baseType: !13, size: 32, offset: 256)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4409, file: !2430, line: 1283, baseType: !13, size: 32, offset: 288)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4409, file: !2430, line: 1284, baseType: !1044, size: 8, offset: 320)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4409, file: !2430, line: 1285, baseType: !146, size: 64, offset: 384)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4386, file: !25, line: 416, baseType: !4421, size: 64, offset: 320)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!62, !2011, !463, !148, !13, !4424, !2954}
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4386, file: !25, line: 419, baseType: !4426, size: 64, offset: 384)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!62, !2011, !463, !148, !13, !13, !2562, !128}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4386, file: !25, line: 424, baseType: !4430, size: 64, offset: 448)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!1070, !463, !1070}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4386, file: !25, line: 425, baseType: !4434, size: 64, offset: 512)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !2433, !142, !142}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4386, file: !25, line: 426, baseType: !4438, size: 64, offset: 576)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!1044, !2433, !871}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4386, file: !25, line: 427, baseType: !4442, size: 64, offset: 640)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !2433}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4386, file: !25, line: 428, baseType: !2409, size: 64, offset: 704)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4386, file: !25, line: 433, baseType: !4447, size: 64, offset: 768)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!62, !463, !2433, !2433, !251}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4386, file: !25, line: 435, baseType: !4451, size: 64, offset: 832)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!62, !2433}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4386, file: !25, line: 436, baseType: !4455, size: 64, offset: 896)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!1044, !2433, !142, !142}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4386, file: !25, line: 438, baseType: !4459, size: 64, offset: 960)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{null, !2433, !4462, !4462}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4386, file: !25, line: 439, baseType: !4464, size: 64, offset: 1024)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!62, !463, !2562}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4386, file: !25, line: 442, baseType: !4468, size: 64, offset: 1088)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!62, !4471, !2011, !4473}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !25, line: 66, flags: DIFlagFwdDecl)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4386, file: !25, line: 444, baseType: !2946, size: 64, offset: 1152)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4386, file: !25, line: 445, baseType: !4476, size: 64, offset: 1216)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!62, !2412, !2804}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !25, line: 486, baseType: !146, size: 64, offset: 896)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !464, file: !25, line: 487, baseType: !1019, size: 320, offset: 960)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !464, file: !25, line: 488, baseType: !2989, size: 32, offset: 1280)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !464, file: !25, line: 489, baseType: !166, size: 32, offset: 1312)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !464, file: !25, line: 490, baseType: !204, size: 128, offset: 1344)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !464, file: !25, line: 491, baseType: !128, size: 64, offset: 1472)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !454, file: !419, line: 180, baseType: !4486, size: 64, offset: 320)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!425, !2011, !360, !453, !395, !148, !142}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !454, file: !419, line: 182, baseType: !4486, size: 64, offset: 384)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !454, file: !419, line: 184, baseType: !4491, size: 64, offset: 448)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!62, !2011, !360, !453, !2576}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !442, file: !419, line: 90, baseType: !4495, size: 64, offset: 192)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !442, file: !419, line: 91, baseType: !4497, size: 64, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !409, file: !355, line: 120, baseType: !4499, size: 64, offset: 192)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!1543, !378}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !409, file: !355, line: 121, baseType: !4503, size: 64, offset: 256)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!1057, !378}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !409, file: !355, line: 122, baseType: !4507, size: 64, offset: 320)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{null, !378, !1135, !1136}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !354, file: !355, line: 70, baseType: !4511, size: 64, offset: 384)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !640, line: 190, size: 1152, elements: !4513)
!4513 = !{!4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4605, !4606, !4607, !4608, !4609, !4612}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4512, file: !640, line: 191, baseType: !156, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4512, file: !640, line: 192, baseType: !156, size: 32, offset: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4512, file: !640, line: 202, baseType: !4511, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4512, file: !640, line: 203, baseType: !125, size: 64, offset: 128)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4512, file: !640, line: 205, baseType: !1334, size: 192, align: 64, offset: 192)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4512, file: !640, line: 207, baseType: !1057, size: 64, offset: 384)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4512, file: !640, line: 208, baseType: !13, size: 32, offset: 448)
!4521 = !DIDerivedType(tag: DW_TAG_member, scope: !4512, file: !640, line: 209, baseType: !4522, size: 256, offset: 512)
!4522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4512, file: !640, line: 209, size: 256, elements: !4523)
!4523 = !{!4524, !4533, !4537}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4522, file: !640, line: 210, baseType: !4525, size: 256)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !640, line: 153, size: 256, elements: !4526)
!4526 = !{!4527, !4528, !4529, !4532}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4525, file: !640, line: 154, baseType: !146, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4525, file: !640, line: 156, baseType: !1394, size: 64, offset: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4525, file: !640, line: 162, baseType: !4530, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !640, line: 162, flags: DIFlagFwdDecl)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4525, file: !640, line: 167, baseType: !146, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4522, file: !640, line: 211, baseType: !4534, size: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !640, line: 170, size: 64, elements: !4535)
!4535 = !{!4536}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4534, file: !640, line: 171, baseType: !4511, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4522, file: !640, line: 212, baseType: !4538, size: 256)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !640, line: 174, size: 256, elements: !4539)
!4539 = !{!4540, !4600, !4603, !4604}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4538, file: !640, line: 175, baseType: !4541, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !640, line: 271, size: 768, elements: !4544)
!4544 = !{!4545, !4565, !4569, !4573, !4577, !4581, !4585, !4589, !4590, !4591, !4592, !4596}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4543, file: !640, line: 276, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!62, !4549}
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !640, line: 251, size: 1216, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4550, file: !640, line: 253, baseType: !4511, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4550, file: !640, line: 254, baseType: !2011, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4550, file: !640, line: 255, baseType: !779, size: 64, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4550, file: !640, line: 256, baseType: !128, size: 64, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4550, file: !640, line: 259, baseType: !806, size: 256, offset: 256)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4550, file: !640, line: 260, baseType: !806, size: 256, offset: 512)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4550, file: !640, line: 261, baseType: !62, size: 32, offset: 768)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4550, file: !640, line: 262, baseType: !204, size: 128, offset: 832)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4550, file: !640, line: 263, baseType: !395, size: 64, offset: 960)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4550, file: !640, line: 265, baseType: !142, size: 64, offset: 1024)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4550, file: !640, line: 266, baseType: !1044, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4550, file: !640, line: 267, baseType: !1044, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4550, file: !640, line: 268, baseType: !2621, size: 64, offset: 1152)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4543, file: !640, line: 277, baseType: !4566, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{null, !4549}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4543, file: !640, line: 290, baseType: !4570, size: 64, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!62, !779, !128}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4543, file: !640, line: 292, baseType: !4574, size: 64, offset: 192)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!128, !779, !147}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4543, file: !640, line: 293, baseType: !4578, size: 64, offset: 256)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!128, !779, !128, !147}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4543, file: !640, line: 294, baseType: !4582, size: 64, offset: 320)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{null, !779, !128}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4543, file: !640, line: 296, baseType: !4586, size: 64, offset: 384)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!425, !4549, !395, !142, !148}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4543, file: !640, line: 306, baseType: !142, size: 64, offset: 448)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4543, file: !640, line: 313, baseType: !1044, size: 8, offset: 512)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4543, file: !640, line: 314, baseType: !4586, size: 64, offset: 576)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4543, file: !640, line: 317, baseType: !4593, size: 64, offset: 640)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!2891, !4549, !2893}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4543, file: !640, line: 320, baseType: !4597, size: 64, offset: 704)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!62, !4549, !2576}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4538, file: !640, line: 176, baseType: !4601, size: 64, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !640, line: 35, flags: DIFlagFwdDecl)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4538, file: !640, line: 177, baseType: !148, size: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4538, file: !640, line: 178, baseType: !4511, size: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4512, file: !640, line: 215, baseType: !128, size: 64, offset: 768)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4512, file: !640, line: 221, baseType: !540, size: 64, offset: 832)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4512, file: !640, line: 223, baseType: !133, size: 16, offset: 896)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4512, file: !640, line: 224, baseType: !131, size: 16, offset: 912)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4512, file: !640, line: 225, baseType: !4610, size: 64, offset: 960)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !640, line: 36, flags: DIFlagFwdDecl)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4512, file: !640, line: 227, baseType: !1752, size: 128, align: 64, offset: 1024)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !354, file: !355, line: 71, baseType: !1615, size: 32, offset: 448)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !354, file: !355, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !354, file: !355, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !354, file: !355, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !354, file: !355, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !354, file: !355, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !351, file: !12, line: 47, baseType: !341, size: 64, offset: 512)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !351, file: !12, line: 48, baseType: !360, size: 64, offset: 576)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !351, file: !12, line: 49, baseType: !4622, size: 64, offset: 640)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !351, file: !12, line: 50, baseType: !2316, size: 64, offset: 704)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !342, file: !12, line: 418, baseType: !4626, size: 64, offset: 1408)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !4628)
!4628 = !{!4629, !4630, !4635, !4639, !4643, !4647}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4627, file: !12, line: 54, baseType: !430, size: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4627, file: !12, line: 55, baseType: !4631, size: 64, offset: 128)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!425, !4626, !4634, !395}
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4627, file: !12, line: 57, baseType: !4636, size: 64, offset: 192)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!425, !4626, !4634, !125, !142}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4627, file: !12, line: 59, baseType: !4640, size: 64, offset: 256)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{null, !341, !125}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4627, file: !12, line: 60, baseType: !4644, size: 64, offset: 320)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!62, !341}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4627, file: !12, line: 61, baseType: !4648, size: 64, offset: 384)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !341}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !342, file: !12, line: 419, baseType: !125, size: 64, offset: 1472)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !342, file: !12, line: 420, baseType: !125, size: 64, offset: 1536)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !342, file: !12, line: 421, baseType: !360, size: 64, offset: 1600)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !342, file: !12, line: 424, baseType: !4655, size: 64, offset: 1664)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4657)
!4657 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !342, file: !12, line: 425, baseType: !4659, size: 64, offset: 1728)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !342, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !342, file: !12, line: 435, baseType: !806, size: 256, offset: 1856)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !342, file: !12, line: 437, baseType: !4664, size: 64, offset: 2112)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4666, line: 69, size: 320, elements: !4667)
!4666 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4667 = !{!4668, !4669, !4670, !4687, !4689, !4692, !4693}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4665, file: !4666, line: 70, baseType: !125, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4665, file: !4666, line: 71, baseType: !341, size: 64, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4665, file: !4666, line: 72, baseType: !4671, size: 64, offset: 128)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4673)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4666, line: 47, size: 256, elements: !4674)
!4674 = !{!4675, !4676, !4682, !4686}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4673, file: !4666, line: 49, baseType: !13, size: 32)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4673, file: !4666, line: 51, baseType: !4677, size: 64, offset: 64)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!62, !125, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4665)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4673, file: !4666, line: 53, baseType: !4683, size: 64, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!62, !395, !4680}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4673, file: !4666, line: 55, baseType: !1567, size: 64, offset: 192)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4665, file: !4666, line: 73, baseType: !4688, size: 16, offset: 192)
!4688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4665, file: !4666, line: 74, baseType: !4690, size: 8, offset: 208)
!4690 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !191, line: 16, baseType: !4691)
!4691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !193, line: 20, baseType: !308)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4665, file: !4666, line: 75, baseType: !190, size: 8, offset: 216)
!4693 = !DIDerivedType(tag: DW_TAG_member, scope: !4665, file: !4666, line: 76, baseType: !4694, size: 64, offset: 256)
!4694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4665, file: !4666, line: 76, size: 64, elements: !4695)
!4695 = !{!4696, !4697, !4704}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4694, file: !4666, line: 77, baseType: !128, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4694, file: !4666, line: 78, baseType: !4698, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4700)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4666, line: 86, size: 128, elements: !4701)
!4701 = !{!4702, !4703}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4700, file: !4666, line: 87, baseType: !13, size: 32)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4700, file: !4666, line: 88, baseType: !395, size: 64, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4694, file: !4666, line: 79, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4707)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4666, line: 92, size: 256, elements: !4708)
!4708 = !{!4709, !4710, !4711, !4712, !4713}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4707, file: !4666, line: 94, baseType: !13, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4707, file: !4666, line: 95, baseType: !13, size: 32, offset: 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4707, file: !4666, line: 96, baseType: !1761, size: 64, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4707, file: !4666, line: 97, baseType: !4671, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4707, file: !4666, line: 98, baseType: !128, size: 64, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !342, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !342, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !342, file: !12, line: 442, baseType: !4655, size: 64, offset: 2240)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !342, file: !12, line: 443, baseType: !4659, size: 64, offset: 2304)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !342, file: !12, line: 444, baseType: !1044, size: 8, offset: 2368)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !342, file: !12, line: 451, baseType: !1044, size: 8, offset: 2376)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !342, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !342, file: !12, line: 455, baseType: !4722, size: 64, offset: 2432)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4724, line: 23, size: 96, elements: !4725)
!4724 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4725 = !{!4726, !4727, !4728}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4723, file: !4724, line: 24, baseType: !62, size: 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4723, file: !4724, line: 24, baseType: !62, size: 32, offset: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4723, file: !4724, line: 24, baseType: !62, size: 32, offset: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !342, file: !12, line: 458, baseType: !4730, size: 64, offset: 2496)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!62}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !342, file: !12, line: 460, baseType: !4734, size: 4032, align: 512, offset: 2560)
!4734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4735, size: 4032, elements: !4749)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !4736)
!4736 = !{!4737, !4738, !4739}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4735, file: !12, line: 363, baseType: !128, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4735, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4735, file: !12, line: 367, baseType: !4740, size: 448, offset: 128)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !4741)
!4741 = !{!4742, !4743}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4740, file: !12, line: 320, baseType: !341, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4740, file: !12, line: 321, baseType: !4744, size: 384, offset: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4745, line: 40, size: 384, elements: !4746)
!4745 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4746 = !{!4747}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4744, file: !4745, line: 41, baseType: !4748, size: 384, align: 64)
!4748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1334, size: 384, align: 64, elements: !760)
!4749 = !{!4750}
!4750 = !DISubrange(count: 7)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !342, file: !12, line: 463, baseType: !4752, size: 192, offset: 6592)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4753, line: 8, size: 192, elements: !4754)
!4753 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4754 = !{!4755, !4756, !4757}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4752, file: !4753, line: 10, baseType: !13, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4752, file: !4753, line: 11, baseType: !773, size: 64, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4752, file: !4753, line: 12, baseType: !4758, size: 64, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4760, line: 59, size: 48, elements: !4761)
!4760 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4761 = !{!4762, !4763, !4764, !4765, !4766, !4767}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4759, file: !4760, line: 60, baseType: !3092, size: 16)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4759, file: !4760, line: 61, baseType: !3092, size: 16, offset: 16)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4759, file: !4760, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4759, file: !4760, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4759, file: !4760, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4759, file: !4760, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !342, file: !12, line: 465, baseType: !146, size: 64, offset: 6784)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !342, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !342, file: !12, line: 470, baseType: !204, size: 128, offset: 6912)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !342, file: !12, line: 471, baseType: !4772, size: 64, offset: 7040)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4774, line: 33, size: 96, elements: !4775)
!4774 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4775 = !{!4776, !4777, !4778, !4779}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4773, file: !4774, line: 37, baseType: !62, size: 32)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4773, file: !4774, line: 43, baseType: !62, size: 32, offset: 32)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4773, file: !4774, line: 45, baseType: !133, size: 16, offset: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4773, file: !4774, line: 47, baseType: !133, size: 16, offset: 80)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !342, file: !12, line: 476, baseType: !4781, size: 64, offset: 7104)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !4783)
!4783 = !{!4784, !4800, !4801, !4802}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4782, file: !12, line: 379, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4787, line: 204, baseType: !4788)
!4787 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4787, line: 197, size: 192, elements: !4789)
!4789 = !{!4790, !4792, !4793, !4794, !4796, !4798}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4788, file: !4787, line: 198, baseType: !4791, size: 32)
!4791 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4787, line: 21, baseType: !537)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4788, file: !4787, line: 199, baseType: !194, size: 8, offset: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4788, file: !4787, line: 200, baseType: !194, size: 8, offset: 40)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4788, file: !4787, line: 201, baseType: !4795, size: 16, offset: 48)
!4795 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4787, line: 17, baseType: !201)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4788, file: !4787, line: 202, baseType: !4797, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4787, line: 16, baseType: !541)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4788, file: !4787, line: 203, baseType: !4799, size: 64, offset: 128)
!4799 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4787, line: 22, baseType: !541)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4782, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4782, file: !12, line: 381, baseType: !395, size: 64, offset: 128)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4782, file: !12, line: 382, baseType: !395, size: 64, offset: 192)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !342, file: !12, line: 477, baseType: !4782, size: 256, offset: 7168)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !342, file: !12, line: 480, baseType: !4805, size: 64, offset: 7424)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !342, file: !12, line: 483, baseType: !4808, size: 64, offset: 7488)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !342, file: !12, line: 488, baseType: !395, size: 64, offset: 7552)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !342, file: !12, line: 492, baseType: !128, size: 64, offset: 7616)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !342, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !342, file: !12, line: 495, baseType: !128, size: 64, offset: 7744)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !342, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !342, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !342, file: !12, line: 500, baseType: !4817, size: 64, offset: 7872)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4819, line: 45, baseType: !4820)
!4819 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !342, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !342, file: !12, line: 504, baseType: !4823, size: 64, offset: 8000)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4826, line: 96, size: 192, elements: !4827)
!4826 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4827 = !{!4828, !4829, !4871, !4873}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4825, file: !4826, line: 97, baseType: !13, size: 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4825, file: !4826, line: 98, baseType: !4830, size: 64, offset: 64)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4826, line: 24, size: 3072, elements: !4832)
!4832 = !{!4833, !4835, !4836, !4837, !4838, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4868, !4869, !4870}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4831, file: !4826, line: 26, baseType: !4834, size: 128)
!4834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 128, elements: !760)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4831, file: !4826, line: 27, baseType: !4834, size: 128, offset: 128)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4831, file: !4826, line: 28, baseType: !62, size: 32, offset: 256)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4831, file: !4826, line: 31, baseType: !166, size: 32, align: 512, offset: 512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4831, file: !4826, line: 32, baseType: !4839, size: 960, offset: 576)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4840, line: 206, size: 960, elements: !4841)
!4840 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4841 = !{!4842, !4843, !4846, !4848, !4849, !4850}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4839, file: !4840, line: 207, baseType: !1755, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4839, file: !4840, line: 208, baseType: !4844, size: 256, offset: 64)
!4844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4845, size: 256, elements: !767)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4839, file: !4840, line: 209, baseType: !4847, size: 256, offset: 320)
!4847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !767)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4839, file: !4840, line: 213, baseType: !428, size: 64, offset: 576)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4839, file: !4840, line: 215, baseType: !766, size: 256, offset: 640)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4839, file: !4840, line: 216, baseType: !190, size: 8, offset: 896)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4831, file: !4826, line: 33, baseType: !146, size: 64, offset: 1536)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4831, file: !4826, line: 34, baseType: !146, size: 64, offset: 1600)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4831, file: !4826, line: 35, baseType: !1044, size: 8, offset: 1664)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4831, file: !4826, line: 36, baseType: !1294, size: 320, offset: 1728)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4831, file: !4826, line: 37, baseType: !1409, size: 256, offset: 2048)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4831, file: !4826, line: 38, baseType: !1752, size: 128, align: 64, offset: 2304)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4831, file: !4826, line: 39, baseType: !4858, size: 64, offset: 2432)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4826, line: 49, size: 768, elements: !4860)
!4860 = !{!4861, !4862, !4863, !4864, !4865, !4866, !4867}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4859, file: !4826, line: 50, baseType: !166, size: 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4859, file: !4826, line: 51, baseType: !4847, size: 256, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4859, file: !4826, line: 53, baseType: !4847, size: 256, offset: 320)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4859, file: !4826, line: 54, baseType: !146, size: 64, offset: 576)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4859, file: !4826, line: 55, baseType: !4858, size: 64, offset: 640)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4859, file: !4826, line: 56, baseType: !62, size: 32, offset: 704)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4859, file: !4826, line: 57, baseType: !62, size: 32, offset: 736)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4831, file: !4826, line: 40, baseType: !146, size: 64, offset: 2496)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4831, file: !4826, line: 42, baseType: !62, size: 32, offset: 2560)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4831, file: !4826, line: 43, baseType: !4824, size: 64, offset: 2624)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4825, file: !4826, line: 99, baseType: !4872, offset: 128)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !667, line: 211, elements: !668)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4825, file: !4826, line: 100, baseType: !4874, size: 64, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4826, line: 63, size: 3008, elements: !4876)
!4876 = !{!4877, !4878, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4875, file: !4826, line: 64, baseType: !4858, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4875, file: !4826, line: 65, baseType: !4879, size: 192, offset: 64)
!4879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4858, size: 192, elements: !5)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4875, file: !4826, line: 67, baseType: !62, size: 32, offset: 256)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4875, file: !4826, line: 68, baseType: !806, size: 256, offset: 320)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4875, file: !4826, line: 69, baseType: !166, size: 32, offset: 576)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4875, file: !4826, line: 70, baseType: !806, size: 256, offset: 640)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4875, file: !4826, line: 71, baseType: !146, size: 64, offset: 896)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4875, file: !4826, line: 72, baseType: !146, size: 64, offset: 960)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4875, file: !4826, line: 73, baseType: !146, size: 64, offset: 1024)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4875, file: !4826, line: 74, baseType: !146, size: 64, offset: 1088)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4875, file: !4826, line: 75, baseType: !146, size: 64, offset: 1152)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4875, file: !4826, line: 76, baseType: !146, size: 64, offset: 1216)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4875, file: !4826, line: 77, baseType: !146, size: 64, offset: 1280)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4875, file: !4826, line: 78, baseType: !146, size: 64, offset: 1344)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4875, file: !4826, line: 79, baseType: !1044, size: 8, offset: 1408)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4875, file: !4826, line: 80, baseType: !146, size: 64, offset: 1472)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4875, file: !4826, line: 81, baseType: !806, size: 256, offset: 1536)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4875, file: !4826, line: 82, baseType: !1271, size: 256, offset: 1792)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4875, file: !4826, line: 84, baseType: !156, size: 32, offset: 2048)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4875, file: !4826, line: 87, baseType: !146, size: 64, offset: 2112)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4875, file: !4826, line: 88, baseType: !146, size: 64, offset: 2176)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4875, file: !4826, line: 89, baseType: !1670, size: 704, offset: 2240)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4875, file: !4826, line: 90, baseType: !4824, size: 64, offset: 2944)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !342, file: !12, line: 515, baseType: !4902, size: 64, offset: 8064)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4904, line: 117, size: 128, elements: !4905)
!4904 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4905 = !{!4906, !4907, !4908}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4903, file: !4904, line: 118, baseType: !1456, size: 32)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4903, file: !4904, line: 119, baseType: !1456, size: 32, offset: 32)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4903, file: !4904, line: 120, baseType: !428, size: 64, offset: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !342, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !342, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !342, file: !12, line: 520, baseType: !4912, size: 64, offset: 8192)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !342, file: !12, line: 523, baseType: !4914, size: 64, offset: 8256)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !342, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !342, file: !12, line: 525, baseType: !4919, size: 64, offset: 8384)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !342, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !342, file: !12, line: 533, baseType: !128, size: 64, offset: 8512)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !342, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !342, file: !12, line: 535, baseType: !4926, size: 64, offset: 8640)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !342, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !342, file: !12, line: 539, baseType: !62, size: 32, offset: 8736)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !342, file: !12, line: 540, baseType: !4930, size: 64, offset: 8768)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4932, line: 32, size: 64, elements: !4933)
!4932 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4933 = !{!4934, !4935}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4931, file: !4932, line: 33, baseType: !1456, size: 32)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4931, file: !4932, line: 34, baseType: !1456, size: 32, offset: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !342, file: !12, line: 563, baseType: !204, size: 128, offset: 8832)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !342, file: !12, line: 565, baseType: !204, size: 128, offset: 8960)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !342, file: !12, line: 568, baseType: !4939, size: 64, offset: 9088)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !342, file: !12, line: 570, baseType: !156, size: 32, offset: 9152)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v9fs_inode", file: !266, line: 136, size: 5376, elements: !4943)
!4943 = !{!4944, !5069, !5076, !5077}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "netfs", scope: !4942, file: !266, line: 137, baseType: !4945, size: 4928)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_inode", file: !302, line: 125, size: 4928, elements: !4946)
!4946 = !{!4947, !4948, !5068}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !4945, file: !302, line: 126, baseType: !468, size: 4800)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4945, file: !302, line: 127, baseType: !4949, size: 64, offset: 4800)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4951)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_request_ops", file: !302, line: 208, size: 576, elements: !4952)
!4952 = !{!4953, !5041, !5045, !5049, !5050, !5054, !5058, !5062, !5067}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !4951, file: !302, line: 209, baseType: !4954, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!62, !4957, !2011}
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_request", file: !302, line: 177, size: 1536, elements: !4959)
!4959 = !{!4960, !4961, !4962, !4963, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4958, file: !302, line: 178, baseType: !1409, size: 256)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !4958, file: !302, line: 179, baseType: !467, size: 64, offset: 256)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4958, file: !302, line: 180, baseType: !463, size: 64, offset: 320)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "cache_resources", scope: !4958, file: !302, line: 181, baseType: !4964, size: 256, offset: 384)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_resources", file: !302, line: 137, size: 256, elements: !4965)
!4965 = !{!4966, !5022, !5023, !5024, !5025}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4964, file: !302, line: 138, baseType: !4967, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4969)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_ops", file: !302, line: 235, size: 512, elements: !4970)
!4970 = !{!4971, !4976, !4984, !4988, !4992, !5009, !5013, !5018}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "end_operation", scope: !4969, file: !302, line: 237, baseType: !4972, size: 64)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !4975}
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4969, file: !302, line: 240, baseType: !4977, size: 64, offset: 64)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!62, !4975, !148, !2804, !301, !4980, !128}
!4980 = !DIDerivedType(tag: DW_TAG_typedef, name: "netfs_io_terminated_t", file: !302, line: 119, baseType: !4981)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !128, !425, !1044}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4969, file: !302, line: 248, baseType: !4985, size: 64, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!62, !4975, !148, !2804, !4980, !128}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !4969, file: !302, line: 255, baseType: !4989, size: 64, offset: 192)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{null, !4975, !147, !141, !148}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_read", scope: !4969, file: !302, line: 261, baseType: !4993, size: 64, offset: 256)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!307, !4996, !148}
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_subrequest", file: !302, line: 148, size: 576, elements: !4998)
!4998 = !{!4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "rreq", scope: !4997, file: !302, line: 149, baseType: !4957, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "rreq_link", scope: !4997, file: !302, line: 150, baseType: !204, size: 128, offset: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4997, file: !302, line: 151, baseType: !148, size: 64, offset: 192)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4997, file: !302, line: 152, baseType: !142, size: 64, offset: 256)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "transferred", scope: !4997, file: !302, line: 153, baseType: !142, size: 64, offset: 320)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4997, file: !302, line: 154, baseType: !1619, size: 32, offset: 384)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4997, file: !302, line: 155, baseType: !2136, size: 16, offset: 416)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "debug_index", scope: !4997, file: !302, line: 156, baseType: !133, size: 16, offset: 432)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4997, file: !302, line: 157, baseType: !307, size: 8, offset: 448)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4997, file: !302, line: 158, baseType: !146, size: 64, offset: 512)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_write", scope: !4969, file: !302, line: 267, baseType: !5010, size: 64, offset: 320)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!62, !4975, !147, !141, !148, !1044}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_ondemand_read", scope: !4969, file: !302, line: 274, baseType: !5014, size: 64, offset: 384)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!307, !4975, !148, !141, !148, !4926, !5017}
!5017 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !132, line: 22, baseType: !145)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "query_occupancy", scope: !4969, file: !302, line: 282, baseType: !5019, size: 64, offset: 448)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!62, !4975, !148, !142, !142, !147, !141}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv", scope: !4964, file: !302, line: 139, baseType: !128, size: 64, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv2", scope: !4964, file: !302, line: 140, baseType: !128, size: 64, offset: 128)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4964, file: !302, line: 141, baseType: !13, size: 32, offset: 192)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "inval_counter", scope: !4964, file: !302, line: 142, baseType: !13, size: 32, offset: 224)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !4958, file: !302, line: 182, baseType: !204, size: 128, offset: 640)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_priv", scope: !4958, file: !302, line: 183, baseType: !128, size: 64, offset: 768)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4958, file: !302, line: 184, baseType: !13, size: 32, offset: 832)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "nr_outstanding", scope: !4958, file: !302, line: 185, baseType: !156, size: 32, offset: 864)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_copy_ops", scope: !4958, file: !302, line: 186, baseType: !156, size: 32, offset: 896)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "submitted", scope: !4958, file: !302, line: 187, baseType: !142, size: 64, offset: 960)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4958, file: !302, line: 188, baseType: !142, size: 64, offset: 1024)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4958, file: !302, line: 189, baseType: !2136, size: 16, offset: 1088)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !4958, file: !302, line: 190, baseType: !314, size: 8, offset: 1104)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !4958, file: !302, line: 191, baseType: !148, size: 64, offset: 1152)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4958, file: !302, line: 192, baseType: !148, size: 64, offset: 1216)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "no_unlock_folio", scope: !4958, file: !302, line: 193, baseType: !146, size: 64, offset: 1280)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4958, file: !302, line: 194, baseType: !1619, size: 32, offset: 1344)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4958, file: !302, line: 195, baseType: !146, size: 64, offset: 1408)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_ops", scope: !4958, file: !302, line: 202, baseType: !4949, size: 64, offset: 1472)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "free_request", scope: !4951, file: !302, line: 210, baseType: !5042, size: 64, offset: 64)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{null, !4957}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cache_operation", scope: !4951, file: !302, line: 211, baseType: !5046, size: 64, offset: 128)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!62, !4957}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !4951, file: !302, line: 213, baseType: !5042, size: 64, offset: 192)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "clamp_length", scope: !4951, file: !302, line: 214, baseType: !5051, size: 64, offset: 256)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!1044, !4996}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "issue_read", scope: !4951, file: !302, line: 215, baseType: !5055, size: 64, offset: 320)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{null, !4996}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "is_still_valid", scope: !4951, file: !302, line: 216, baseType: !5059, size: 64, offset: 384)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!1044, !4957}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "check_write_begin", scope: !4951, file: !302, line: 217, baseType: !5063, size: 64, offset: 448)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!62, !2011, !148, !13, !5066, !2954}
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4951, file: !302, line: 219, baseType: !5042, size: 64, offset: 512)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "remote_i_size", scope: !4945, file: !302, line: 131, baseType: !148, size: 64, offset: 4864)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !4942, file: !266, line: 138, baseType: !5070, size: 128, offset: 4928)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_qid", file: !5071, line: 363, size: 128, elements: !5072)
!5071 = !DIFile(filename: "./include/net/9p/9p.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8be44a6cf5e6d0f53abc0540cde0ebd0")
!5072 = !{!5073, !5074, !5075}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5070, file: !5071, line: 364, baseType: !190, size: 8)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5070, file: !5071, line: 365, baseType: !536, size: 32, offset: 32)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !5070, file: !5071, line: 366, baseType: !540, size: 64, offset: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "cache_validity", scope: !4942, file: !266, line: 139, baseType: !13, size: 32, offset: 5056)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "v_mutex", scope: !4942, file: !266, line: 140, baseType: !806, size: 256, offset: 5120)
!5078 = !{!0, !7, !5079, !5084, !5089, !5091}
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias321", scope: !9, file: !2, line: 348, type: !5081, isLocal: true, isDefinition: true, align: 8)
!5081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 120, elements: !5082)
!5082 = !{!5083}
!5083 = !DISubrange(count: 15)
!5084 = !DIGlobalVariableExpression(var: !5085, expr: !DIExpression())
!5085 = distinct !DIGlobalVariable(scope: null, file: !280, line: 480, type: !5086, isLocal: true, isDefinition: true)
!5086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5087)
!5087 = !{!5088}
!5088 = !DISubrange(count: 21)
!5089 = !DIGlobalVariableExpression(var: !5090, expr: !DIExpression())
!5090 = distinct !DIGlobalVariable(name: "v9fs_super_ops_dotl", scope: !9, file: !2, line: 330, type: !679, isLocal: true, isDefinition: true)
!5091 = !DIGlobalVariableExpression(var: !5092, expr: !DIExpression())
!5092 = distinct !DIGlobalVariable(name: "v9fs_super_ops", scope: !9, file: !2, line: 319, type: !679, isLocal: true, isDefinition: true)
!5093 = !{i32 7, !"Dwarf Version", i32 5}
!5094 = !{i32 2, !"Debug Info Version", i32 3}
!5095 = !{i32 1, !"wchar_size", i32 2}
!5096 = !{i32 8, !"cf-protection-branch", i32 1}
!5097 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5098 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5099 = !{i32 1, !"Code Model", i32 2}
!5100 = !{i32 1, !"override-stack-alignment", i32 8}
!5101 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5102 = distinct !DISubprogram(name: "v9fs_mount", scope: !2, file: !2, line: 106, type: !647, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5103)
!5103 = !{!5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5167, !5168, !5182, !5183, !5209, !5230, !5231, !5232}
!5104 = !DILocalVariable(name: "fs_type", arg: 1, scope: !5102, file: !2, line: 106, type: !629)
!5105 = !DILocalVariable(name: "flags", arg: 2, scope: !5102, file: !2, line: 106, type: !62)
!5106 = !DILocalVariable(name: "dev_name", arg: 3, scope: !5102, file: !2, line: 107, type: !125)
!5107 = !DILocalVariable(name: "data", arg: 4, scope: !5102, file: !2, line: 107, type: !128)
!5108 = !DILocalVariable(name: "sb", scope: !5102, file: !2, line: 109, type: !618)
!5109 = !DILocalVariable(name: "inode", scope: !5102, file: !2, line: 110, type: !467)
!5110 = !DILocalVariable(name: "root", scope: !5102, file: !2, line: 111, type: !502)
!5111 = !DILocalVariable(name: "v9ses", scope: !5102, file: !2, line: 112, type: !5112)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v9fs_session_info", file: !266, line: 109, size: 960, elements: !5114)
!5114 = !{!5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5164, !5165, !5166}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5113, file: !266, line: 111, baseType: !13, size: 32)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "nodev", scope: !5113, file: !266, line: 112, baseType: !194, size: 8, offset: 32)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !5113, file: !266, line: 113, baseType: !133, size: 16, offset: 48)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "afid", scope: !5113, file: !266, line: 114, baseType: !13, size: 32, offset: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !5113, file: !266, line: 115, baseType: !13, size: 32, offset: 96)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !5113, file: !266, line: 121, baseType: !395, size: 64, offset: 128)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !5113, file: !266, line: 122, baseType: !395, size: 64, offset: 192)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !5113, file: !266, line: 123, baseType: !13, size: 32, offset: 256)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "dfltuid", scope: !5113, file: !266, line: 124, baseType: !473, size: 32, offset: 288)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "dfltgid", scope: !5113, file: !266, line: 125, baseType: !482, size: 32, offset: 320)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5113, file: !266, line: 126, baseType: !473, size: 32, offset: 352)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !5113, file: !266, line: 127, baseType: !5127, size: 64, offset: 384)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_client", file: !259, line: 102, size: 1408, elements: !5129)
!5129 = !{!5130, !5131, !5132, !5133, !5136, !5137, !5138, !5142, !5155, !5162, !5163}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5128, file: !259, line: 103, baseType: !166, size: 32)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "msize", scope: !5128, file: !259, line: 104, baseType: !13, size: 32, offset: 32)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !5128, file: !259, line: 105, baseType: !194, size: 8, offset: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "trans_mod", scope: !5128, file: !259, line: 106, baseType: !5134, size: 64, offset: 128)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DICompositeType(tag: DW_TAG_structure_type, name: "p9_trans_module", file: !259, line: 106, flags: DIFlagFwdDecl)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5128, file: !259, line: 107, baseType: !258, size: 32, offset: 192)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "trans", scope: !5128, file: !259, line: 108, baseType: !128, size: 64, offset: 256)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "fcall_cache", scope: !5128, file: !259, line: 109, baseType: !5139, size: 64, offset: 320)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5141, line: 325, flags: DIFlagFwdDecl)
!5141 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "trans_opts", scope: !5128, file: !259, line: 121, baseType: !5143, size: 64, offset: 384)
!5143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5128, file: !259, line: 111, size: 64, elements: !5144)
!5144 = !{!5145, !5150}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5143, file: !259, line: 115, baseType: !5146, size: 64)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5143, file: !259, line: 112, size: 64, elements: !5147)
!5147 = !{!5148, !5149}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "rfd", scope: !5146, file: !259, line: 113, baseType: !62, size: 32)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !5146, file: !259, line: 114, baseType: !62, size: 32, offset: 32)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !5143, file: !259, line: 120, baseType: !5151, size: 32)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5143, file: !259, line: 116, size: 32, elements: !5152)
!5152 = !{!5153, !5154}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5151, file: !259, line: 117, baseType: !200, size: 16)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "privport", scope: !5151, file: !259, line: 118, baseType: !1044, size: 8, offset: 16)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "fids", scope: !5128, file: !259, line: 123, baseType: !5156, size: 192, offset: 448)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !5157, line: 19, size: 192, elements: !5158)
!5157 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!5158 = !{!5159, !5160, !5161}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !5156, file: !5157, line: 20, baseType: !2854, size: 128)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !5156, file: !5157, line: 21, baseType: !13, size: 32, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !5156, file: !5157, line: 22, baseType: !13, size: 32, offset: 160)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !5128, file: !259, line: 124, baseType: !5156, size: 192, offset: 640)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5128, file: !259, line: 126, baseType: !3297, size: 520, offset: 832)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "slist", scope: !5113, file: !266, line: 128, baseType: !204, size: 128, offset: 448)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "rename_sem", scope: !5113, file: !266, line: 129, baseType: !1019, size: 320, offset: 576)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "session_lock_timeout", scope: !5113, file: !266, line: 130, baseType: !428, size: 64, offset: 896)
!5167 = !DILocalVariable(name: "mode", scope: !5102, file: !2, line: 113, type: !131)
!5168 = !DILocalVariable(name: "fid", scope: !5102, file: !2, line: 114, type: !5169)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_fid", file: !259, line: 148, size: 704, elements: !5171)
!5171 = !{!5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !5170, file: !259, line: 149, baseType: !5127, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !5170, file: !259, line: 150, baseType: !536, size: 32, offset: 64)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5170, file: !259, line: 151, baseType: !1619, size: 32, offset: 96)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5170, file: !259, line: 152, baseType: !62, size: 32, offset: 128)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !5170, file: !259, line: 153, baseType: !5070, size: 128, offset: 192)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "iounit", scope: !5170, file: !259, line: 154, baseType: !536, size: 32, offset: 320)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5170, file: !259, line: 155, baseType: !473, size: 32, offset: 352)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "rdir", scope: !5170, file: !259, line: 157, baseType: !128, size: 64, offset: 384)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "dlist", scope: !5170, file: !259, line: 159, baseType: !660, size: 128, offset: 448)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "ilist", scope: !5170, file: !259, line: 160, baseType: !660, size: 128, offset: 576)
!5182 = !DILocalVariable(name: "retval", scope: !5102, file: !2, line: 115, type: !62)
!5183 = !DILocalVariable(name: "st", scope: !5184, file: !2, line: 156, type: !5186)
!5184 = distinct !DILexicalBlock(scope: !5185, file: !2, line: 155, column: 30)
!5185 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 155, column: 6)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_stat_dotl", file: !5071, line: 410, size: 1280, elements: !5188)
!5188 = !{!5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "st_result_mask", scope: !5187, file: !5071, line: 411, baseType: !540, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !5187, file: !5071, line: 412, baseType: !5070, size: 128, offset: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5187, file: !5071, line: 413, baseType: !536, size: 32, offset: 192)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5187, file: !5071, line: 414, baseType: !473, size: 32, offset: 224)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5187, file: !5071, line: 415, baseType: !482, size: 32, offset: 256)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5187, file: !5071, line: 416, baseType: !540, size: 64, offset: 320)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5187, file: !5071, line: 417, baseType: !540, size: 64, offset: 384)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5187, file: !5071, line: 418, baseType: !540, size: 64, offset: 448)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5187, file: !5071, line: 419, baseType: !540, size: 64, offset: 512)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5187, file: !5071, line: 420, baseType: !540, size: 64, offset: 576)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime_sec", scope: !5187, file: !5071, line: 421, baseType: !540, size: 64, offset: 640)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime_nsec", scope: !5187, file: !5071, line: 422, baseType: !540, size: 64, offset: 704)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime_sec", scope: !5187, file: !5071, line: 423, baseType: !540, size: 64, offset: 768)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime_nsec", scope: !5187, file: !5071, line: 424, baseType: !540, size: 64, offset: 832)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime_sec", scope: !5187, file: !5071, line: 425, baseType: !540, size: 64, offset: 896)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime_nsec", scope: !5187, file: !5071, line: 426, baseType: !540, size: 64, offset: 960)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "st_btime_sec", scope: !5187, file: !5071, line: 427, baseType: !540, size: 64, offset: 1024)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "st_btime_nsec", scope: !5187, file: !5071, line: 428, baseType: !540, size: 64, offset: 1088)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !5187, file: !5071, line: 429, baseType: !540, size: 64, offset: 1152)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "st_data_version", scope: !5187, file: !5071, line: 430, baseType: !540, size: 64, offset: 1216)
!5209 = !DILocalVariable(name: "st", scope: !5210, file: !2, line: 167, type: !5211)
!5210 = distinct !DILexicalBlock(scope: !5185, file: !2, line: 166, column: 9)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_wstat", file: !5071, line: 391, size: 832, elements: !5213)
!5213 = !{!5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5212, file: !5071, line: 392, baseType: !200, size: 16)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5212, file: !5071, line: 393, baseType: !200, size: 16, offset: 16)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5212, file: !5071, line: 394, baseType: !536, size: 32, offset: 32)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !5212, file: !5071, line: 395, baseType: !5070, size: 128, offset: 64)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5212, file: !5071, line: 396, baseType: !536, size: 32, offset: 192)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5212, file: !5071, line: 397, baseType: !536, size: 32, offset: 224)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5212, file: !5071, line: 398, baseType: !536, size: 32, offset: 256)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5212, file: !5071, line: 399, baseType: !540, size: 64, offset: 320)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5212, file: !5071, line: 400, baseType: !125, size: 64, offset: 384)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5212, file: !5071, line: 401, baseType: !125, size: 64, offset: 448)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5212, file: !5071, line: 402, baseType: !125, size: 64, offset: 512)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "muid", scope: !5212, file: !5071, line: 403, baseType: !125, size: 64, offset: 576)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !5212, file: !5071, line: 404, baseType: !395, size: 64, offset: 640)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "n_uid", scope: !5212, file: !5071, line: 405, baseType: !473, size: 32, offset: 704)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "n_gid", scope: !5212, file: !5071, line: 406, baseType: !482, size: 32, offset: 736)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "n_muid", scope: !5212, file: !5071, line: 407, baseType: !473, size: 32, offset: 768)
!5230 = !DILabel(scope: !5102, name: "clunk_fid", file: !2, line: 189)
!5231 = !DILabel(scope: !5102, name: "free_session", file: !2, line: 192)
!5232 = !DILabel(scope: !5102, name: "release_sb", file: !2, line: 196)
!5233 = !DILocation(line: 106, column: 59, scope: !5102)
!5234 = !DILocation(line: 106, column: 72, scope: !5102)
!5235 = !DILocation(line: 107, column: 22, scope: !5102)
!5236 = !DILocation(line: 107, column: 38, scope: !5102)
!5237 = !DILocation(line: 109, column: 2, scope: !5102)
!5238 = !DILocation(line: 109, column: 22, scope: !5102)
!5239 = !DILocation(line: 110, column: 2, scope: !5102)
!5240 = !DILocation(line: 110, column: 16, scope: !5102)
!5241 = !DILocation(line: 111, column: 2, scope: !5102)
!5242 = !DILocation(line: 111, column: 17, scope: !5102)
!5243 = !DILocation(line: 112, column: 2, scope: !5102)
!5244 = !DILocation(line: 112, column: 28, scope: !5102)
!5245 = !DILocation(line: 113, column: 2, scope: !5102)
!5246 = !DILocation(line: 113, column: 10, scope: !5102)
!5247 = !DILocation(line: 114, column: 2, scope: !5102)
!5248 = !DILocation(line: 114, column: 17, scope: !5102)
!5249 = !DILocation(line: 115, column: 2, scope: !5102)
!5250 = !DILocation(line: 115, column: 6, scope: !5102)
!5251 = !DILocation(line: 117, column: 2, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 117, column: 2)
!5253 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 117, column: 2)
!5254 = !DILocation(line: 117, column: 2, scope: !5253)
!5255 = !DILocation(line: 119, column: 10, scope: !5102)
!5256 = !DILocation(line: 119, column: 8, scope: !5102)
!5257 = !DILocation(line: 120, column: 7, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 120, column: 6)
!5259 = !DILocation(line: 120, column: 6, scope: !5102)
!5260 = !DILocation(line: 121, column: 10, scope: !5258)
!5261 = !DILocation(line: 121, column: 3, scope: !5258)
!5262 = !DILocation(line: 123, column: 26, scope: !5102)
!5263 = !DILocation(line: 123, column: 33, scope: !5102)
!5264 = !DILocation(line: 123, column: 43, scope: !5102)
!5265 = !DILocation(line: 123, column: 8, scope: !5102)
!5266 = !DILocation(line: 123, column: 6, scope: !5102)
!5267 = !DILocation(line: 124, column: 13, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 124, column: 6)
!5269 = !DILocation(line: 124, column: 6, scope: !5268)
!5270 = !DILocation(line: 124, column: 6, scope: !5102)
!5271 = !DILocation(line: 125, column: 20, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5268, file: !2, line: 124, column: 19)
!5273 = !DILocation(line: 125, column: 12, scope: !5272)
!5274 = !DILocation(line: 125, column: 10, scope: !5272)
!5275 = !DILocation(line: 126, column: 3, scope: !5272)
!5276 = !DILocation(line: 129, column: 12, scope: !5102)
!5277 = !DILocation(line: 129, column: 43, scope: !5102)
!5278 = !DILocation(line: 129, column: 50, scope: !5102)
!5279 = !DILocation(line: 129, column: 7, scope: !5102)
!5280 = !DILocation(line: 129, column: 5, scope: !5102)
!5281 = !DILocation(line: 130, column: 13, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 130, column: 6)
!5283 = !DILocation(line: 130, column: 6, scope: !5282)
!5284 = !DILocation(line: 130, column: 6, scope: !5102)
!5285 = !DILocation(line: 131, column: 20, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5282, file: !2, line: 130, column: 18)
!5287 = !DILocation(line: 131, column: 12, scope: !5286)
!5288 = !DILocation(line: 131, column: 10, scope: !5286)
!5289 = !DILocation(line: 132, column: 3, scope: !5286)
!5290 = !DILocation(line: 134, column: 27, scope: !5102)
!5291 = !DILocation(line: 134, column: 31, scope: !5102)
!5292 = !DILocation(line: 134, column: 38, scope: !5102)
!5293 = !DILocation(line: 134, column: 11, scope: !5102)
!5294 = !DILocation(line: 134, column: 9, scope: !5102)
!5295 = !DILocation(line: 135, column: 6, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 135, column: 6)
!5297 = !DILocation(line: 135, column: 6, scope: !5102)
!5298 = !DILocation(line: 136, column: 3, scope: !5296)
!5299 = !DILocation(line: 138, column: 6, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 138, column: 6)
!5301 = !DILocation(line: 138, column: 13, scope: !5300)
!5302 = !DILocation(line: 138, column: 19, scope: !5300)
!5303 = !DILocation(line: 138, column: 6, scope: !5102)
!5304 = !DILocation(line: 139, column: 3, scope: !5300)
!5305 = !DILocation(line: 139, column: 7, scope: !5300)
!5306 = !DILocation(line: 139, column: 14, scope: !5300)
!5307 = !DILocation(line: 141, column: 3, scope: !5300)
!5308 = !DILocation(line: 141, column: 7, scope: !5300)
!5309 = !DILocation(line: 141, column: 14, scope: !5300)
!5310 = !DILocation(line: 143, column: 25, scope: !5102)
!5311 = !DILocation(line: 143, column: 39, scope: !5102)
!5312 = !DILocation(line: 143, column: 37, scope: !5102)
!5313 = !DILocation(line: 143, column: 29, scope: !5102)
!5314 = !DILocation(line: 143, column: 10, scope: !5102)
!5315 = !DILocation(line: 143, column: 8, scope: !5102)
!5316 = !DILocation(line: 144, column: 13, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 144, column: 6)
!5318 = !DILocation(line: 144, column: 6, scope: !5317)
!5319 = !DILocation(line: 144, column: 6, scope: !5102)
!5320 = !DILocation(line: 145, column: 20, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5317, file: !2, line: 144, column: 21)
!5322 = !DILocation(line: 145, column: 12, scope: !5321)
!5323 = !DILocation(line: 145, column: 10, scope: !5321)
!5324 = !DILocation(line: 146, column: 3, scope: !5321)
!5325 = !DILocation(line: 149, column: 21, scope: !5102)
!5326 = !DILocation(line: 149, column: 9, scope: !5102)
!5327 = !DILocation(line: 149, column: 7, scope: !5102)
!5328 = !DILocation(line: 150, column: 7, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 150, column: 6)
!5330 = !DILocation(line: 150, column: 6, scope: !5102)
!5331 = !DILocation(line: 151, column: 10, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 150, column: 13)
!5333 = !DILocation(line: 152, column: 3, scope: !5332)
!5334 = !DILocation(line: 154, column: 15, scope: !5102)
!5335 = !DILocation(line: 154, column: 2, scope: !5102)
!5336 = !DILocation(line: 154, column: 6, scope: !5102)
!5337 = !DILocation(line: 154, column: 13, scope: !5102)
!5338 = !DILocation(line: 155, column: 22, scope: !5185)
!5339 = !DILocation(line: 155, column: 6, scope: !5185)
!5340 = !DILocation(line: 155, column: 6, scope: !5102)
!5341 = !DILocation(line: 156, column: 3, scope: !5184)
!5342 = !DILocation(line: 156, column: 24, scope: !5184)
!5343 = !DILocation(line: 158, column: 31, scope: !5184)
!5344 = !DILocation(line: 158, column: 8, scope: !5184)
!5345 = !DILocation(line: 158, column: 6, scope: !5184)
!5346 = !DILocation(line: 159, column: 14, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5184, file: !2, line: 159, column: 7)
!5348 = !DILocation(line: 159, column: 7, scope: !5347)
!5349 = !DILocation(line: 159, column: 7, scope: !5184)
!5350 = !DILocation(line: 160, column: 21, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5347, file: !2, line: 159, column: 19)
!5352 = !DILocation(line: 160, column: 13, scope: !5351)
!5353 = !DILocation(line: 160, column: 11, scope: !5351)
!5354 = !DILocation(line: 161, column: 4, scope: !5351)
!5355 = !DILocation(line: 163, column: 40, scope: !5184)
!5356 = !DILocation(line: 163, column: 44, scope: !5184)
!5357 = !DILocation(line: 163, column: 26, scope: !5184)
!5358 = !DILocation(line: 163, column: 11, scope: !5184)
!5359 = !DILocation(line: 163, column: 3, scope: !5184)
!5360 = !DILocation(line: 163, column: 18, scope: !5184)
!5361 = !DILocation(line: 163, column: 24, scope: !5184)
!5362 = !DILocation(line: 164, column: 24, scope: !5184)
!5363 = !DILocation(line: 164, column: 36, scope: !5184)
!5364 = !DILocation(line: 164, column: 28, scope: !5184)
!5365 = !DILocation(line: 164, column: 3, scope: !5184)
!5366 = !DILocation(line: 165, column: 9, scope: !5184)
!5367 = !DILocation(line: 165, column: 3, scope: !5184)
!5368 = !DILocation(line: 166, column: 2, scope: !5185)
!5369 = !DILocation(line: 166, column: 2, scope: !5184)
!5370 = !DILocation(line: 167, column: 3, scope: !5210)
!5371 = !DILocation(line: 167, column: 20, scope: !5210)
!5372 = !DILocation(line: 169, column: 23, scope: !5210)
!5373 = !DILocation(line: 169, column: 8, scope: !5210)
!5374 = !DILocation(line: 169, column: 6, scope: !5210)
!5375 = !DILocation(line: 170, column: 14, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5210, file: !2, line: 170, column: 7)
!5377 = !DILocation(line: 170, column: 7, scope: !5376)
!5378 = !DILocation(line: 170, column: 7, scope: !5210)
!5379 = !DILocation(line: 171, column: 21, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5376, file: !2, line: 170, column: 19)
!5381 = !DILocation(line: 171, column: 13, scope: !5380)
!5382 = !DILocation(line: 171, column: 11, scope: !5380)
!5383 = !DILocation(line: 172, column: 4, scope: !5380)
!5384 = !DILocation(line: 175, column: 40, scope: !5210)
!5385 = !DILocation(line: 175, column: 44, scope: !5210)
!5386 = !DILocation(line: 175, column: 26, scope: !5210)
!5387 = !DILocation(line: 175, column: 11, scope: !5210)
!5388 = !DILocation(line: 175, column: 3, scope: !5210)
!5389 = !DILocation(line: 175, column: 18, scope: !5210)
!5390 = !DILocation(line: 175, column: 24, scope: !5210)
!5391 = !DILocation(line: 176, column: 19, scope: !5210)
!5392 = !DILocation(line: 176, column: 31, scope: !5210)
!5393 = !DILocation(line: 176, column: 23, scope: !5210)
!5394 = !DILocation(line: 176, column: 38, scope: !5210)
!5395 = !DILocation(line: 176, column: 3, scope: !5210)
!5396 = !DILocation(line: 178, column: 15, scope: !5210)
!5397 = !DILocation(line: 178, column: 3, scope: !5210)
!5398 = !DILocation(line: 179, column: 9, scope: !5210)
!5399 = !DILocation(line: 179, column: 3, scope: !5210)
!5400 = !DILocation(line: 180, column: 2, scope: !5185)
!5401 = !DILocation(line: 181, column: 24, scope: !5102)
!5402 = !DILocation(line: 181, column: 31, scope: !5102)
!5403 = !DILocation(line: 181, column: 11, scope: !5102)
!5404 = !DILocation(line: 181, column: 9, scope: !5102)
!5405 = !DILocation(line: 182, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 182, column: 6)
!5407 = !DILocation(line: 182, column: 6, scope: !5102)
!5408 = !DILocation(line: 183, column: 3, scope: !5406)
!5409 = !DILocation(line: 184, column: 15, scope: !5102)
!5410 = !DILocation(line: 184, column: 2, scope: !5102)
!5411 = !DILocation(line: 186, column: 2, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5413, file: !2, line: 186, column: 2)
!5413 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 186, column: 2)
!5414 = !DILocation(line: 186, column: 2, scope: !5413)
!5415 = !DILocation(line: 187, column: 14, scope: !5102)
!5416 = !DILocation(line: 187, column: 18, scope: !5102)
!5417 = !DILocation(line: 187, column: 9, scope: !5102)
!5418 = !DILocation(line: 187, column: 2, scope: !5102)
!5419 = !DILocation(line: 189, column: 1, scope: !5102)
!5420 = !DILocation(line: 190, column: 13, scope: !5102)
!5421 = !DILocation(line: 190, column: 2, scope: !5102)
!5422 = !DILocation(line: 191, column: 21, scope: !5102)
!5423 = !DILocation(line: 191, column: 2, scope: !5102)
!5424 = !DILocation(line: 192, column: 1, scope: !5102)
!5425 = !DILocation(line: 193, column: 8, scope: !5102)
!5426 = !DILocation(line: 193, column: 2, scope: !5102)
!5427 = !DILocation(line: 194, column: 17, scope: !5102)
!5428 = !DILocation(line: 194, column: 9, scope: !5102)
!5429 = !DILocation(line: 194, column: 2, scope: !5102)
!5430 = !DILocation(line: 196, column: 1, scope: !5102)
!5431 = !DILocation(line: 203, column: 13, scope: !5102)
!5432 = !DILocation(line: 203, column: 2, scope: !5102)
!5433 = !DILocation(line: 204, column: 26, scope: !5102)
!5434 = !DILocation(line: 204, column: 2, scope: !5102)
!5435 = !DILocation(line: 205, column: 17, scope: !5102)
!5436 = !DILocation(line: 205, column: 9, scope: !5102)
!5437 = !DILocation(line: 205, column: 2, scope: !5102)
!5438 = !DILocation(line: 206, column: 1, scope: !5102)
!5439 = distinct !DISubprogram(name: "v9fs_kill_super", scope: !2, file: !2, line: 214, type: !651, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5440)
!5440 = !{!5441, !5442}
!5441 = !DILocalVariable(name: "s", arg: 1, scope: !5439, file: !2, line: 214, type: !618)
!5442 = !DILocalVariable(name: "v9ses", scope: !5439, file: !2, line: 216, type: !5112)
!5443 = !DILocation(line: 214, column: 49, scope: !5439)
!5444 = !DILocation(line: 216, column: 2, scope: !5439)
!5445 = !DILocation(line: 216, column: 28, scope: !5439)
!5446 = !DILocation(line: 216, column: 36, scope: !5439)
!5447 = !DILocation(line: 216, column: 39, scope: !5439)
!5448 = !DILocation(line: 218, column: 2, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !2, line: 218, column: 2)
!5450 = distinct !DILexicalBlock(scope: !5439, file: !2, line: 218, column: 2)
!5451 = !DILocation(line: 218, column: 2, scope: !5450)
!5452 = !DILocation(line: 220, column: 18, scope: !5439)
!5453 = !DILocation(line: 220, column: 2, scope: !5439)
!5454 = !DILocation(line: 222, column: 22, scope: !5439)
!5455 = !DILocation(line: 222, column: 2, scope: !5439)
!5456 = !DILocation(line: 223, column: 21, scope: !5439)
!5457 = !DILocation(line: 223, column: 2, scope: !5439)
!5458 = !DILocation(line: 224, column: 8, scope: !5439)
!5459 = !DILocation(line: 224, column: 2, scope: !5439)
!5460 = !DILocation(line: 225, column: 2, scope: !5439)
!5461 = !DILocation(line: 225, column: 5, scope: !5439)
!5462 = !DILocation(line: 225, column: 15, scope: !5439)
!5463 = !DILocation(line: 226, column: 2, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !2, line: 226, column: 2)
!5465 = distinct !DILexicalBlock(scope: !5439, file: !2, line: 226, column: 2)
!5466 = !DILocation(line: 226, column: 2, scope: !5465)
!5467 = !DILocation(line: 227, column: 1, scope: !5439)
!5468 = distinct !DISubprogram(name: "kzalloc", scope: !280, file: !280, line: 719, type: !5469, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5471)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!128, !142, !871}
!5471 = !{!5472, !5473}
!5472 = !DILocalVariable(name: "size", arg: 1, scope: !5468, file: !280, line: 719, type: !142)
!5473 = !DILocalVariable(name: "flags", arg: 2, scope: !5468, file: !280, line: 719, type: !871)
!5474 = !DILocation(line: 719, column: 52, scope: !5468)
!5475 = !DILocation(line: 719, column: 64, scope: !5468)
!5476 = !DILocation(line: 721, column: 17, scope: !5468)
!5477 = !DILocation(line: 721, column: 23, scope: !5468)
!5478 = !DILocation(line: 721, column: 29, scope: !5468)
!5479 = !DILocation(line: 721, column: 9, scope: !5468)
!5480 = !DILocation(line: 721, column: 2, scope: !5468)
!5481 = distinct !DISubprogram(name: "ERR_PTR", scope: !5482, file: !5482, line: 39, type: !5483, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5485)
!5482 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!128, !428}
!5485 = !{!5486}
!5486 = !DILocalVariable(name: "error", arg: 1, scope: !5481, file: !5482, line: 39, type: !428)
!5487 = !DILocation(line: 39, column: 48, scope: !5481)
!5488 = !DILocation(line: 41, column: 18, scope: !5481)
!5489 = !DILocation(line: 41, column: 9, scope: !5481)
!5490 = !DILocation(line: 41, column: 2, scope: !5481)
!5491 = !DISubprogram(name: "v9fs_session_init", scope: !266, file: !266, line: 169, type: !5492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!5169, !5112, !125, !395}
!5494 = distinct !DISubprogram(name: "IS_ERR", scope: !5482, file: !5482, line: 59, type: !5495, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5497)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!1044, !1057}
!5497 = !{!5498}
!5498 = !DILocalVariable(name: "ptr", arg: 1, scope: !5494, file: !5482, line: 59, type: !1057)
!5499 = !DILocation(line: 59, column: 60, scope: !5494)
!5500 = !DILocation(line: 61, column: 9, scope: !5494)
!5501 = !DILocation(line: 61, column: 2, scope: !5494)
!5502 = distinct !DISubprogram(name: "PTR_ERR", scope: !5482, file: !5482, line: 49, type: !5503, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5505)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!428, !1057}
!5505 = !{!5506}
!5506 = !DILocalVariable(name: "ptr", arg: 1, scope: !5502, file: !5482, line: 49, type: !1057)
!5507 = !DILocation(line: 49, column: 61, scope: !5502)
!5508 = !DILocation(line: 51, column: 16, scope: !5502)
!5509 = !DILocation(line: 51, column: 9, scope: !5502)
!5510 = !DILocation(line: 51, column: 2, scope: !5502)
!5511 = !DISubprogram(name: "sget", scope: !25, file: !25, line: 2422, type: !5512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{!618, !629, !5514, !5514, !62, !128}
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!62, !618, !128}
!5517 = distinct !DISubprogram(name: "v9fs_set_super", scope: !2, file: !2, line: 40, type: !5515, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5518)
!5518 = !{!5519, !5520}
!5519 = !DILocalVariable(name: "s", arg: 1, scope: !5517, file: !2, line: 40, type: !618)
!5520 = !DILocalVariable(name: "data", arg: 2, scope: !5517, file: !2, line: 40, type: !128)
!5521 = !DILocation(line: 40, column: 47, scope: !5517)
!5522 = !DILocation(line: 40, column: 56, scope: !5517)
!5523 = !DILocation(line: 42, column: 17, scope: !5517)
!5524 = !DILocation(line: 42, column: 2, scope: !5517)
!5525 = !DILocation(line: 42, column: 5, scope: !5517)
!5526 = !DILocation(line: 42, column: 15, scope: !5517)
!5527 = !DILocation(line: 43, column: 24, scope: !5517)
!5528 = !DILocation(line: 43, column: 27, scope: !5517)
!5529 = !DILocation(line: 43, column: 9, scope: !5517)
!5530 = !DILocation(line: 43, column: 2, scope: !5517)
!5531 = distinct !DISubprogram(name: "v9fs_fill_super", scope: !2, file: !2, line: 55, type: !5532, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5534)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{!62, !618, !5112, !62}
!5534 = !{!5535, !5536, !5537, !5538}
!5535 = !DILocalVariable(name: "sb", arg: 1, scope: !5531, file: !2, line: 55, type: !618)
!5536 = !DILocalVariable(name: "v9ses", arg: 2, scope: !5531, file: !2, line: 55, type: !5112)
!5537 = !DILocalVariable(name: "flags", arg: 3, scope: !5531, file: !2, line: 56, type: !62)
!5538 = !DILocalVariable(name: "ret", scope: !5531, file: !2, line: 58, type: !62)
!5539 = !DILocation(line: 55, column: 37, scope: !5531)
!5540 = !DILocation(line: 55, column: 67, scope: !5531)
!5541 = !DILocation(line: 56, column: 7, scope: !5531)
!5542 = !DILocation(line: 58, column: 2, scope: !5531)
!5543 = !DILocation(line: 58, column: 6, scope: !5531)
!5544 = !DILocation(line: 60, column: 2, scope: !5531)
!5545 = !DILocation(line: 60, column: 6, scope: !5531)
!5546 = !DILocation(line: 60, column: 17, scope: !5531)
!5547 = !DILocation(line: 61, column: 29, scope: !5531)
!5548 = !DILocation(line: 61, column: 36, scope: !5531)
!5549 = !DILocation(line: 61, column: 44, scope: !5531)
!5550 = !DILocation(line: 61, column: 25, scope: !5531)
!5551 = !DILocation(line: 61, column: 2, scope: !5531)
!5552 = !DILocation(line: 61, column: 6, scope: !5531)
!5553 = !DILocation(line: 61, column: 23, scope: !5531)
!5554 = !DILocation(line: 62, column: 25, scope: !5531)
!5555 = !DILocation(line: 62, column: 29, scope: !5531)
!5556 = !DILocation(line: 62, column: 22, scope: !5531)
!5557 = !DILocation(line: 62, column: 20, scope: !5531)
!5558 = !DILocation(line: 62, column: 2, scope: !5531)
!5559 = !DILocation(line: 62, column: 6, scope: !5531)
!5560 = !DILocation(line: 62, column: 18, scope: !5531)
!5561 = !DILocation(line: 63, column: 2, scope: !5531)
!5562 = !DILocation(line: 63, column: 6, scope: !5531)
!5563 = !DILocation(line: 63, column: 14, scope: !5531)
!5564 = !DILocation(line: 64, column: 22, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5531, file: !2, line: 64, column: 6)
!5566 = !DILocation(line: 64, column: 6, scope: !5565)
!5567 = !DILocation(line: 64, column: 6, scope: !5531)
!5568 = !DILocation(line: 65, column: 3, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 64, column: 30)
!5570 = !DILocation(line: 65, column: 7, scope: !5569)
!5571 = !DILocation(line: 65, column: 12, scope: !5569)
!5572 = !DILocation(line: 66, column: 9, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5569, file: !2, line: 66, column: 7)
!5574 = !DILocation(line: 66, column: 16, scope: !5573)
!5575 = !DILocation(line: 66, column: 22, scope: !5573)
!5576 = !DILocation(line: 66, column: 7, scope: !5569)
!5577 = !DILocation(line: 67, column: 4, scope: !5573)
!5578 = !DILocation(line: 67, column: 8, scope: !5573)
!5579 = !DILocation(line: 67, column: 16, scope: !5573)
!5580 = !DILocation(line: 68, column: 2, scope: !5569)
!5581 = !DILocation(line: 69, column: 3, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 68, column: 9)
!5583 = !DILocation(line: 69, column: 7, scope: !5582)
!5584 = !DILocation(line: 69, column: 12, scope: !5582)
!5585 = !DILocation(line: 70, column: 3, scope: !5582)
!5586 = !DILocation(line: 70, column: 7, scope: !5582)
!5587 = !DILocation(line: 70, column: 18, scope: !5582)
!5588 = !DILocation(line: 73, column: 2, scope: !5531)
!5589 = !DILocation(line: 73, column: 6, scope: !5531)
!5590 = !DILocation(line: 73, column: 17, scope: !5531)
!5591 = !DILocation(line: 75, column: 24, scope: !5531)
!5592 = !DILocation(line: 75, column: 8, scope: !5531)
!5593 = !DILocation(line: 75, column: 6, scope: !5531)
!5594 = !DILocation(line: 76, column: 6, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5531, file: !2, line: 76, column: 6)
!5596 = !DILocation(line: 76, column: 6, scope: !5531)
!5597 = !DILocation(line: 77, column: 10, scope: !5595)
!5598 = !DILocation(line: 77, column: 3, scope: !5595)
!5599 = !DILocation(line: 79, column: 7, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5531, file: !2, line: 79, column: 6)
!5601 = !DILocation(line: 79, column: 14, scope: !5600)
!5602 = !DILocation(line: 79, column: 6, scope: !5531)
!5603 = !DILocation(line: 80, column: 3, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5600, file: !2, line: 79, column: 21)
!5605 = !DILocation(line: 80, column: 7, scope: !5604)
!5606 = !DILocation(line: 80, column: 14, scope: !5604)
!5607 = !DILocation(line: 80, column: 23, scope: !5604)
!5608 = !DILocation(line: 81, column: 3, scope: !5604)
!5609 = !DILocation(line: 81, column: 7, scope: !5604)
!5610 = !DILocation(line: 81, column: 14, scope: !5604)
!5611 = !DILocation(line: 81, column: 23, scope: !5604)
!5612 = !DILocation(line: 82, column: 2, scope: !5604)
!5613 = !DILocation(line: 83, column: 25, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5600, file: !2, line: 82, column: 9)
!5615 = !DILocation(line: 83, column: 32, scope: !5614)
!5616 = !DILocation(line: 83, column: 40, scope: !5614)
!5617 = !DILocation(line: 83, column: 3, scope: !5614)
!5618 = !DILocation(line: 83, column: 7, scope: !5614)
!5619 = !DILocation(line: 83, column: 14, scope: !5614)
!5620 = !DILocation(line: 83, column: 23, scope: !5614)
!5621 = !DILocation(line: 84, column: 25, scope: !5614)
!5622 = !DILocation(line: 84, column: 32, scope: !5614)
!5623 = !DILocation(line: 84, column: 40, scope: !5614)
!5624 = !DILocation(line: 84, column: 3, scope: !5614)
!5625 = !DILocation(line: 84, column: 7, scope: !5614)
!5626 = !DILocation(line: 84, column: 14, scope: !5614)
!5627 = !DILocation(line: 84, column: 23, scope: !5614)
!5628 = !DILocation(line: 87, column: 2, scope: !5531)
!5629 = !DILocation(line: 87, column: 6, scope: !5531)
!5630 = !DILocation(line: 87, column: 14, scope: !5531)
!5631 = !DILocation(line: 94, column: 2, scope: !5531)
!5632 = !DILocation(line: 95, column: 1, scope: !5531)
!5633 = !DISubprogram(name: "v9fs_get_inode", scope: !5634, file: !5634, line: 43, type: !5635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5634 = !DIFile(filename: "fs/9p/v9fs_vfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bbf97b2e768068e259cd64f8af0c9d7b")
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!467, !618, !131, !623}
!5637 = !DISubprogram(name: "d_make_root", scope: !504, file: !504, line: 249, type: !5638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!502, !467}
!5640 = distinct !DISubprogram(name: "v9fs_proto_dotl", scope: !266, file: !266, line: 215, type: !5641, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5643)
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!62, !5112}
!5643 = !{!5644}
!5644 = !DILocalVariable(name: "v9ses", arg: 1, scope: !5640, file: !266, line: 215, type: !5112)
!5645 = !DILocation(line: 215, column: 61, scope: !5640)
!5646 = !DILocation(line: 217, column: 9, scope: !5640)
!5647 = !DILocation(line: 217, column: 16, scope: !5640)
!5648 = !DILocation(line: 217, column: 22, scope: !5640)
!5649 = !DILocation(line: 217, column: 2, scope: !5640)
!5650 = !DISubprogram(name: "p9_client_getattr_dotl", scope: !259, file: !259, line: 217, type: !5651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{!5186, !5169, !540}
!5653 = !DISubprogram(name: "v9fs_qid2ino", scope: !5634, file: !5634, line: 49, type: !5654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!5017, !5656}
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5657 = distinct !DISubprogram(name: "d_inode", scope: !504, file: !504, line: 514, type: !5658, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5660)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!467, !578}
!5660 = !{!5661}
!5661 = !DILocalVariable(name: "dentry", arg: 1, scope: !5657, file: !504, line: 514, type: !578)
!5662 = !DILocation(line: 514, column: 58, scope: !5657)
!5663 = !DILocation(line: 516, column: 9, scope: !5657)
!5664 = !DILocation(line: 516, column: 17, scope: !5657)
!5665 = !DILocation(line: 516, column: 2, scope: !5657)
!5666 = !DISubprogram(name: "v9fs_stat2inode_dotl", scope: !5634, file: !5634, line: 52, type: !5667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5667 = !DISubroutineType(types: !5668)
!5668 = !{null, !5186, !467, !13}
!5669 = !DISubprogram(name: "kfree", scope: !280, file: !280, line: 227, type: !5670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{null, !1057}
!5672 = !DISubprogram(name: "p9_client_stat", scope: !259, file: !259, line: 213, type: !5673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!5211, !5169}
!5675 = !DISubprogram(name: "v9fs_stat2inode", scope: !5634, file: !5634, line: 50, type: !5676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{null, !5211, !467, !618, !13}
!5678 = !DISubprogram(name: "p9stat_free", scope: !259, file: !259, line: 287, type: !5679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{null, !5211}
!5681 = distinct !DISubprogram(name: "v9fs_get_acl", scope: !5682, file: !5682, line: 27, type: !5683, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5685)
!5682 = !DIFile(filename: "fs/9p/acl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "741be0077b665efef984a8fd10c76432")
!5683 = !DISubroutineType(types: !5684)
!5684 = !{!62, !467, !5169}
!5685 = !{!5686, !5687}
!5686 = !DILocalVariable(name: "inode", arg: 1, scope: !5681, file: !5682, line: 27, type: !467)
!5687 = !DILocalVariable(name: "fid", arg: 2, scope: !5681, file: !5682, line: 27, type: !5169)
!5688 = !DILocation(line: 27, column: 46, scope: !5681)
!5689 = !DILocation(line: 27, column: 68, scope: !5681)
!5690 = !DILocation(line: 29, column: 2, scope: !5681)
!5691 = !DISubprogram(name: "v9fs_fid_add", scope: !5692, file: !5692, line: 19, type: !5693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5692 = !DIFile(filename: "fs/9p/fid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f18f8acac323ff9afd8e62a50848073")
!5693 = !DISubroutineType(types: !5694)
!5694 = !{null, !502, !5695}
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5696 = distinct !DISubprogram(name: "dget", scope: !504, file: !504, line: 317, type: !5697, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5699)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!502, !502}
!5699 = !{!5700}
!5700 = !DILocalVariable(name: "dentry", arg: 1, scope: !5696, file: !504, line: 317, type: !502)
!5701 = !DILocation(line: 317, column: 50, scope: !5696)
!5702 = !DILocation(line: 319, column: 6, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5696, file: !504, line: 319, column: 6)
!5704 = !DILocation(line: 319, column: 6, scope: !5696)
!5705 = !DILocation(line: 320, column: 16, scope: !5703)
!5706 = !DILocation(line: 320, column: 24, scope: !5703)
!5707 = !DILocation(line: 320, column: 3, scope: !5703)
!5708 = !DILocation(line: 321, column: 9, scope: !5696)
!5709 = !DILocation(line: 321, column: 2, scope: !5696)
!5710 = distinct !DISubprogram(name: "p9_fid_put", scope: !259, file: !259, line: 267, type: !5711, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5713)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{!62, !5169}
!5713 = !{!5714}
!5714 = !DILocalVariable(name: "fid", arg: 1, scope: !5710, file: !259, line: 267, type: !5169)
!5715 = !DILocation(line: 267, column: 45, scope: !5710)
!5716 = !DILocation(line: 269, column: 7, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5710, file: !259, line: 269, column: 6)
!5718 = !DILocation(line: 269, column: 11, scope: !5717)
!5719 = !DILocation(line: 269, column: 21, scope: !5717)
!5720 = !DILocation(line: 269, column: 14, scope: !5717)
!5721 = !DILocation(line: 269, column: 6, scope: !5710)
!5722 = !DILocation(line: 270, column: 3, scope: !5717)
!5723 = !DILocation(line: 272, column: 6, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5710, file: !259, line: 272, column: 6)
!5725 = !DILocation(line: 272, column: 6, scope: !5710)
!5726 = !DILocation(line: 273, column: 23, scope: !5724)
!5727 = !DILocation(line: 273, column: 3, scope: !5724)
!5728 = !DILocation(line: 275, column: 30, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5710, file: !259, line: 275, column: 6)
!5730 = !DILocation(line: 275, column: 35, scope: !5729)
!5731 = !DILocation(line: 275, column: 7, scope: !5729)
!5732 = !DILocation(line: 275, column: 6, scope: !5710)
!5733 = !DILocation(line: 276, column: 3, scope: !5729)
!5734 = !DILocation(line: 278, column: 25, scope: !5710)
!5735 = !DILocation(line: 278, column: 9, scope: !5710)
!5736 = !DILocation(line: 278, column: 2, scope: !5710)
!5737 = !DILocation(line: 279, column: 1, scope: !5710)
!5738 = !DISubprogram(name: "v9fs_session_close", scope: !266, file: !266, line: 171, type: !5739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5739 = !DISubroutineType(types: !5740)
!5740 = !{null, !5112}
!5741 = !DISubprogram(name: "deactivate_locked_super", scope: !25, file: !25, line: 2414, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5742 = distinct !DISubprogram(name: "kmalloc", scope: !280, file: !280, line: 591, type: !5469, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5743)
!5743 = !{!5744, !5745, !5746}
!5744 = !DILocalVariable(name: "size", arg: 1, scope: !5742, file: !280, line: 591, type: !142)
!5745 = !DILocalVariable(name: "flags", arg: 2, scope: !5742, file: !280, line: 591, type: !871)
!5746 = !DILocalVariable(name: "index", scope: !5747, file: !280, line: 594, type: !13)
!5747 = distinct !DILexicalBlock(scope: !5748, file: !280, line: 593, column: 42)
!5748 = distinct !DILexicalBlock(scope: !5742, file: !280, line: 593, column: 6)
!5749 = !DILocation(line: 591, column: 61, scope: !5742)
!5750 = !DILocation(line: 591, column: 73, scope: !5742)
!5751 = !DILocation(line: 593, column: 27, scope: !5748)
!5752 = !DILocation(line: 593, column: 6, scope: !5748)
!5753 = !DILocation(line: 593, column: 33, scope: !5748)
!5754 = !DILocation(line: 593, column: 36, scope: !5748)
!5755 = !DILocation(line: 593, column: 6, scope: !5742)
!5756 = !DILocation(line: 594, column: 3, scope: !5747)
!5757 = !DILocation(line: 594, column: 16, scope: !5747)
!5758 = !DILocation(line: 596, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5747, file: !280, line: 596, column: 7)
!5760 = !DILocation(line: 596, column: 12, scope: !5759)
!5761 = !DILocation(line: 596, column: 7, scope: !5747)
!5762 = !DILocation(line: 597, column: 25, scope: !5759)
!5763 = !DILocation(line: 597, column: 31, scope: !5759)
!5764 = !DILocation(line: 597, column: 11, scope: !5759)
!5765 = !DILocation(line: 597, column: 4, scope: !5759)
!5766 = !DILocation(line: 599, column: 11, scope: !5747)
!5767 = !DILocation(line: 599, column: 9, scope: !5747)
!5768 = !DILocation(line: 601, column: 33, scope: !5747)
!5769 = !DILocation(line: 601, column: 40, scope: !5747)
!5770 = !DILocation(line: 601, column: 20, scope: !5747)
!5771 = !DILocation(line: 601, column: 5, scope: !5747)
!5772 = !DILocation(line: 601, column: 51, scope: !5747)
!5773 = !DILocation(line: 602, column: 5, scope: !5747)
!5774 = !DILocation(line: 602, column: 12, scope: !5747)
!5775 = !DILocation(line: 600, column: 10, scope: !5747)
!5776 = !DILocation(line: 600, column: 3, scope: !5747)
!5777 = !DILocation(line: 603, column: 2, scope: !5748)
!5778 = !DILocation(line: 604, column: 19, scope: !5742)
!5779 = !DILocation(line: 604, column: 25, scope: !5742)
!5780 = !DILocation(line: 604, column: 9, scope: !5742)
!5781 = !DILocation(line: 604, column: 2, scope: !5742)
!5782 = !DILocation(line: 605, column: 1, scope: !5742)
!5783 = !DISubprogram(name: "kmalloc_large", scope: !280, file: !280, line: 531, type: !5469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5784 = distinct !DISubprogram(name: "__kmalloc_index", scope: !280, file: !280, line: 444, type: !5785, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5787)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{!13, !142, !1044}
!5787 = !{!5788, !5789}
!5788 = !DILocalVariable(name: "size", arg: 1, scope: !5784, file: !280, line: 444, type: !142)
!5789 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5784, file: !280, line: 445, type: !1044)
!5790 = !DILocation(line: 444, column: 60, scope: !5784)
!5791 = !DILocation(line: 445, column: 16, scope: !5784)
!5792 = !DILocation(line: 447, column: 7, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 447, column: 6)
!5794 = !DILocation(line: 447, column: 6, scope: !5784)
!5795 = !DILocation(line: 448, column: 3, scope: !5793)
!5796 = !DILocation(line: 450, column: 6, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 450, column: 6)
!5798 = !DILocation(line: 450, column: 11, scope: !5797)
!5799 = !DILocation(line: 450, column: 6, scope: !5784)
!5800 = !DILocation(line: 451, column: 3, scope: !5797)
!5801 = !DILocation(line: 453, column: 32, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 453, column: 6)
!5803 = !DILocation(line: 453, column: 37, scope: !5802)
!5804 = !DILocation(line: 453, column: 42, scope: !5802)
!5805 = !DILocation(line: 453, column: 45, scope: !5802)
!5806 = !DILocation(line: 453, column: 50, scope: !5802)
!5807 = !DILocation(line: 453, column: 6, scope: !5784)
!5808 = !DILocation(line: 454, column: 3, scope: !5802)
!5809 = !DILocation(line: 455, column: 32, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 455, column: 6)
!5811 = !DILocation(line: 455, column: 37, scope: !5810)
!5812 = !DILocation(line: 455, column: 43, scope: !5810)
!5813 = !DILocation(line: 455, column: 46, scope: !5810)
!5814 = !DILocation(line: 455, column: 51, scope: !5810)
!5815 = !DILocation(line: 455, column: 6, scope: !5784)
!5816 = !DILocation(line: 456, column: 3, scope: !5810)
!5817 = !DILocation(line: 457, column: 6, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 457, column: 6)
!5819 = !DILocation(line: 457, column: 11, scope: !5818)
!5820 = !DILocation(line: 457, column: 6, scope: !5784)
!5821 = !DILocation(line: 457, column: 26, scope: !5818)
!5822 = !DILocation(line: 458, column: 6, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 458, column: 6)
!5824 = !DILocation(line: 458, column: 11, scope: !5823)
!5825 = !DILocation(line: 458, column: 6, scope: !5784)
!5826 = !DILocation(line: 458, column: 26, scope: !5823)
!5827 = !DILocation(line: 459, column: 6, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 459, column: 6)
!5829 = !DILocation(line: 459, column: 11, scope: !5828)
!5830 = !DILocation(line: 459, column: 6, scope: !5784)
!5831 = !DILocation(line: 459, column: 26, scope: !5828)
!5832 = !DILocation(line: 460, column: 6, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 460, column: 6)
!5834 = !DILocation(line: 460, column: 11, scope: !5833)
!5835 = !DILocation(line: 460, column: 6, scope: !5784)
!5836 = !DILocation(line: 460, column: 26, scope: !5833)
!5837 = !DILocation(line: 461, column: 6, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 461, column: 6)
!5839 = !DILocation(line: 461, column: 11, scope: !5838)
!5840 = !DILocation(line: 461, column: 6, scope: !5784)
!5841 = !DILocation(line: 461, column: 26, scope: !5838)
!5842 = !DILocation(line: 462, column: 6, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 462, column: 6)
!5844 = !DILocation(line: 462, column: 11, scope: !5843)
!5845 = !DILocation(line: 462, column: 6, scope: !5784)
!5846 = !DILocation(line: 462, column: 26, scope: !5843)
!5847 = !DILocation(line: 463, column: 6, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 463, column: 6)
!5849 = !DILocation(line: 463, column: 11, scope: !5848)
!5850 = !DILocation(line: 463, column: 6, scope: !5784)
!5851 = !DILocation(line: 463, column: 26, scope: !5848)
!5852 = !DILocation(line: 464, column: 6, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 464, column: 6)
!5854 = !DILocation(line: 464, column: 11, scope: !5853)
!5855 = !DILocation(line: 464, column: 6, scope: !5784)
!5856 = !DILocation(line: 464, column: 26, scope: !5853)
!5857 = !DILocation(line: 465, column: 6, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 465, column: 6)
!5859 = !DILocation(line: 465, column: 11, scope: !5858)
!5860 = !DILocation(line: 465, column: 6, scope: !5784)
!5861 = !DILocation(line: 465, column: 26, scope: !5858)
!5862 = !DILocation(line: 466, column: 6, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 466, column: 6)
!5864 = !DILocation(line: 466, column: 11, scope: !5863)
!5865 = !DILocation(line: 466, column: 6, scope: !5784)
!5866 = !DILocation(line: 466, column: 26, scope: !5863)
!5867 = !DILocation(line: 467, column: 6, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 467, column: 6)
!5869 = !DILocation(line: 467, column: 11, scope: !5868)
!5870 = !DILocation(line: 467, column: 6, scope: !5784)
!5871 = !DILocation(line: 467, column: 26, scope: !5868)
!5872 = !DILocation(line: 468, column: 6, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 468, column: 6)
!5874 = !DILocation(line: 468, column: 11, scope: !5873)
!5875 = !DILocation(line: 468, column: 6, scope: !5784)
!5876 = !DILocation(line: 468, column: 26, scope: !5873)
!5877 = !DILocation(line: 469, column: 6, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 469, column: 6)
!5879 = !DILocation(line: 469, column: 11, scope: !5878)
!5880 = !DILocation(line: 469, column: 6, scope: !5784)
!5881 = !DILocation(line: 469, column: 26, scope: !5878)
!5882 = !DILocation(line: 470, column: 6, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 470, column: 6)
!5884 = !DILocation(line: 470, column: 11, scope: !5883)
!5885 = !DILocation(line: 470, column: 6, scope: !5784)
!5886 = !DILocation(line: 470, column: 26, scope: !5883)
!5887 = !DILocation(line: 471, column: 6, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 471, column: 6)
!5889 = !DILocation(line: 471, column: 11, scope: !5888)
!5890 = !DILocation(line: 471, column: 6, scope: !5784)
!5891 = !DILocation(line: 471, column: 26, scope: !5888)
!5892 = !DILocation(line: 472, column: 6, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 472, column: 6)
!5894 = !DILocation(line: 472, column: 11, scope: !5893)
!5895 = !DILocation(line: 472, column: 6, scope: !5784)
!5896 = !DILocation(line: 472, column: 26, scope: !5893)
!5897 = !DILocation(line: 473, column: 6, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 473, column: 6)
!5899 = !DILocation(line: 473, column: 11, scope: !5898)
!5900 = !DILocation(line: 473, column: 6, scope: !5784)
!5901 = !DILocation(line: 473, column: 26, scope: !5898)
!5902 = !DILocation(line: 474, column: 6, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 474, column: 6)
!5904 = !DILocation(line: 474, column: 11, scope: !5903)
!5905 = !DILocation(line: 474, column: 6, scope: !5784)
!5906 = !DILocation(line: 474, column: 27, scope: !5903)
!5907 = !DILocation(line: 475, column: 6, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 475, column: 6)
!5909 = !DILocation(line: 475, column: 11, scope: !5908)
!5910 = !DILocation(line: 475, column: 6, scope: !5784)
!5911 = !DILocation(line: 475, column: 32, scope: !5908)
!5912 = !DILocation(line: 477, column: 50, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5784, file: !280, line: 477, column: 6)
!5914 = !{i8 0, i8 2}
!5915 = !DILocation(line: 477, column: 6, scope: !5784)
!5916 = !DILocation(line: 478, column: 3, scope: !5913)
!5917 = !DILocation(line: 478, column: 3, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5919, file: !280, line: 478, column: 3)
!5919 = distinct !DILexicalBlock(scope: !5913, file: !280, line: 478, column: 3)
!5920 = !{i32 -2141475386}
!5921 = !DILocation(line: 478, column: 3, scope: !5919)
!5922 = !DILocation(line: 480, column: 3, scope: !5913)
!5923 = !DILocation(line: 480, column: 3, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5913, file: !280, line: 480, column: 3)
!5925 = !DILocation(line: 480, column: 3, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5924, file: !280, line: 480, column: 3)
!5927 = !DILocation(line: 480, column: 3, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5924, file: !280, line: 480, column: 3)
!5929 = !{i64 2153492113, i64 2153492142, i64 2153492188, i64 2153492246, i64 2153492300, i64 2153492354, i64 2153492409, i64 2153492440}
!5930 = !DILocation(line: 483, column: 2, scope: !5784)
!5931 = !DILocation(line: 484, column: 1, scope: !5784)
!5932 = !DISubprogram(name: "kmalloc_trace", scope: !280, file: !280, line: 525, type: !5933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{!128, !5139, !871, !142}
!5935 = distinct !DISubprogram(name: "kmalloc_type", scope: !280, file: !280, line: 401, type: !5936, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5938)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!279, !871, !146}
!5938 = !{!5939, !5940}
!5939 = !DILocalVariable(name: "flags", arg: 1, scope: !5935, file: !280, line: 401, type: !871)
!5940 = !DILocalVariable(name: "caller", arg: 2, scope: !5935, file: !280, line: 401, type: !146)
!5941 = !DILocation(line: 401, column: 67, scope: !5935)
!5942 = !DILocation(line: 401, column: 88, scope: !5935)
!5943 = !DILocation(line: 407, column: 6, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5935, file: !280, line: 407, column: 6)
!5945 = !DILocation(line: 407, column: 6, scope: !5935)
!5946 = !DILocation(line: 413, column: 3, scope: !5944)
!5947 = !DILocation(line: 423, column: 38, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5935, file: !280, line: 423, column: 6)
!5949 = !DILocation(line: 423, column: 44, scope: !5948)
!5950 = !DILocation(line: 423, column: 6, scope: !5935)
!5951 = !DILocation(line: 424, column: 3, scope: !5948)
!5952 = !DILocation(line: 426, column: 3, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5935, file: !280, line: 425, column: 6)
!5954 = !DILocation(line: 429, column: 1, scope: !5935)
!5955 = !DISubprogram(name: "__kmalloc", scope: !280, file: !280, line: 488, type: !5469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5956 = !DISubprogram(name: "__compiletime_assert_255", scope: !280, file: !280, line: 478, type: !3490, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5957 = !DISubprogram(name: "set_anon_super", scope: !25, file: !25, line: 2415, type: !5515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5958 = distinct !DISubprogram(name: "fls", scope: !5959, file: !5959, line: 359, type: !5960, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5962)
!5959 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5960 = !DISubroutineType(types: !5961)
!5961 = !{!62, !13}
!5962 = !{!5963, !5964}
!5963 = !DILocalVariable(name: "x", arg: 1, scope: !5958, file: !5959, line: 359, type: !13)
!5964 = !DILocalVariable(name: "r", scope: !5958, file: !5959, line: 361, type: !62)
!5965 = !DILocation(line: 359, column: 45, scope: !5958)
!5966 = !DILocation(line: 361, column: 2, scope: !5958)
!5967 = !DILocation(line: 361, column: 6, scope: !5958)
!5968 = !DILocation(line: 375, column: 14, scope: !5958)
!5969 = !DILocation(line: 373, column: 2, scope: !5958)
!5970 = !{i64 303698}
!5971 = !DILocation(line: 386, column: 9, scope: !5958)
!5972 = !DILocation(line: 386, column: 11, scope: !5958)
!5973 = !DILocation(line: 387, column: 1, scope: !5958)
!5974 = !DILocation(line: 386, column: 2, scope: !5958)
!5975 = !DISubprogram(name: "super_setup_bdi", scope: !25, file: !25, line: 2454, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5976 = distinct !DISubprogram(name: "v9fs_write_inode_dotl", scope: !2, file: !2, line: 306, type: !697, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5977)
!5977 = !{!5978, !5979, !5980}
!5978 = !DILocalVariable(name: "inode", arg: 1, scope: !5976, file: !2, line: 306, type: !467)
!5979 = !DILocalVariable(name: "wbc", arg: 2, scope: !5976, file: !2, line: 307, type: !699)
!5980 = !DILocalVariable(name: "v9inode", scope: !5976, file: !2, line: 309, type: !4941)
!5981 = !DILocation(line: 306, column: 48, scope: !5976)
!5982 = !DILocation(line: 307, column: 32, scope: !5976)
!5983 = !DILocation(line: 309, column: 2, scope: !5976)
!5984 = !DILocation(line: 309, column: 21, scope: !5976)
!5985 = !DILocation(line: 311, column: 19, scope: !5976)
!5986 = !DILocation(line: 311, column: 12, scope: !5976)
!5987 = !DILocation(line: 311, column: 10, scope: !5976)
!5988 = !DILocation(line: 312, column: 2, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5990, file: !2, line: 312, column: 2)
!5990 = distinct !DILexicalBlock(scope: !5976, file: !2, line: 312, column: 2)
!5991 = !DILocation(line: 312, column: 2, scope: !5990)
!5992 = !DILocation(line: 314, column: 26, scope: !5976)
!5993 = !DILocation(line: 314, column: 49, scope: !5976)
!5994 = !DILocation(line: 314, column: 31, scope: !5976)
!5995 = !DILocation(line: 314, column: 2, scope: !5976)
!5996 = !DILocation(line: 317, column: 1, scope: !5976)
!5997 = !DILocation(line: 316, column: 2, scope: !5976)
!5998 = distinct !DISubprogram(name: "v9fs_drop_inode", scope: !2, file: !2, line: 274, type: !721, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5999)
!5999 = !{!6000, !6001}
!6000 = !DILocalVariable(name: "inode", arg: 1, scope: !5998, file: !2, line: 274, type: !467)
!6001 = !DILocalVariable(name: "v9ses", scope: !5998, file: !2, line: 276, type: !5112)
!6002 = !DILocation(line: 274, column: 42, scope: !5998)
!6003 = !DILocation(line: 276, column: 2, scope: !5998)
!6004 = !DILocation(line: 276, column: 28, scope: !5998)
!6005 = !DILocation(line: 278, column: 27, scope: !5998)
!6006 = !DILocation(line: 278, column: 10, scope: !5998)
!6007 = !DILocation(line: 278, column: 8, scope: !5998)
!6008 = !DILocation(line: 279, column: 6, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5998, file: !2, line: 279, column: 6)
!6010 = !DILocation(line: 279, column: 13, scope: !6009)
!6011 = !DILocation(line: 279, column: 19, scope: !6009)
!6012 = !DILocation(line: 279, column: 6, scope: !5998)
!6013 = !DILocation(line: 280, column: 29, scope: !6009)
!6014 = !DILocation(line: 280, column: 10, scope: !6009)
!6015 = !DILocation(line: 280, column: 3, scope: !6009)
!6016 = !DILocation(line: 286, column: 2, scope: !5998)
!6017 = !DILocation(line: 287, column: 1, scope: !5998)
!6018 = distinct !DISubprogram(name: "v9fs_statfs", scope: !2, file: !2, line: 238, type: !741, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6019)
!6019 = !{!6020, !6021, !6022, !6023, !6024, !6036, !6037}
!6020 = !DILocalVariable(name: "dentry", arg: 1, scope: !6018, file: !2, line: 238, type: !502)
!6021 = !DILocalVariable(name: "buf", arg: 2, scope: !6018, file: !2, line: 238, type: !743)
!6022 = !DILocalVariable(name: "v9ses", scope: !6018, file: !2, line: 240, type: !5112)
!6023 = !DILocalVariable(name: "fid", scope: !6018, file: !2, line: 241, type: !5169)
!6024 = !DILocalVariable(name: "rs", scope: !6018, file: !2, line: 242, type: !6025)
!6025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_rstatfs", file: !5071, line: 520, size: 512, elements: !6026)
!6026 = !{!6027, !6028, !6029, !6030, !6031, !6032, !6033, !6034, !6035}
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6025, file: !5071, line: 521, baseType: !536, size: 32)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !6025, file: !5071, line: 522, baseType: !536, size: 32, offset: 32)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !6025, file: !5071, line: 523, baseType: !540, size: 64, offset: 64)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "bfree", scope: !6025, file: !5071, line: 524, baseType: !540, size: 64, offset: 128)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "bavail", scope: !6025, file: !5071, line: 525, baseType: !540, size: 64, offset: 192)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !6025, file: !5071, line: 526, baseType: !540, size: 64, offset: 256)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "ffree", scope: !6025, file: !5071, line: 527, baseType: !540, size: 64, offset: 320)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !6025, file: !5071, line: 528, baseType: !540, size: 64, offset: 384)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !6025, file: !5071, line: 529, baseType: !536, size: 32, offset: 448)
!6036 = !DILocalVariable(name: "res", scope: !6018, file: !2, line: 243, type: !62)
!6037 = !DILabel(scope: !6018, name: "done", file: !2, line: 269)
!6038 = !DILocation(line: 238, column: 39, scope: !6018)
!6039 = !DILocation(line: 238, column: 63, scope: !6018)
!6040 = !DILocation(line: 240, column: 2, scope: !6018)
!6041 = !DILocation(line: 240, column: 28, scope: !6018)
!6042 = !DILocation(line: 241, column: 2, scope: !6018)
!6043 = !DILocation(line: 241, column: 17, scope: !6018)
!6044 = !DILocation(line: 242, column: 2, scope: !6018)
!6045 = !DILocation(line: 242, column: 20, scope: !6018)
!6046 = !DILocation(line: 243, column: 2, scope: !6018)
!6047 = !DILocation(line: 243, column: 6, scope: !6018)
!6048 = !DILocation(line: 245, column: 24, scope: !6018)
!6049 = !DILocation(line: 245, column: 8, scope: !6018)
!6050 = !DILocation(line: 245, column: 6, scope: !6018)
!6051 = !DILocation(line: 246, column: 13, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6018, file: !2, line: 246, column: 6)
!6053 = !DILocation(line: 246, column: 6, scope: !6052)
!6054 = !DILocation(line: 246, column: 6, scope: !6018)
!6055 = !DILocation(line: 247, column: 17, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 246, column: 19)
!6057 = !DILocation(line: 247, column: 9, scope: !6056)
!6058 = !DILocation(line: 247, column: 7, scope: !6056)
!6059 = !DILocation(line: 248, column: 3, scope: !6056)
!6060 = !DILocation(line: 251, column: 28, scope: !6018)
!6061 = !DILocation(line: 251, column: 10, scope: !6018)
!6062 = !DILocation(line: 251, column: 8, scope: !6018)
!6063 = !DILocation(line: 252, column: 22, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6018, file: !2, line: 252, column: 6)
!6065 = !DILocation(line: 252, column: 6, scope: !6064)
!6066 = !DILocation(line: 252, column: 6, scope: !6018)
!6067 = !DILocation(line: 253, column: 26, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6064, file: !2, line: 252, column: 30)
!6069 = !DILocation(line: 253, column: 9, scope: !6068)
!6070 = !DILocation(line: 253, column: 7, scope: !6068)
!6071 = !DILocation(line: 254, column: 7, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6068, file: !2, line: 254, column: 7)
!6073 = !DILocation(line: 254, column: 11, scope: !6072)
!6074 = !DILocation(line: 254, column: 7, scope: !6068)
!6075 = !DILocation(line: 255, column: 21, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6072, file: !2, line: 254, column: 17)
!6077 = !DILocation(line: 255, column: 18, scope: !6076)
!6078 = !DILocation(line: 255, column: 4, scope: !6076)
!6079 = !DILocation(line: 255, column: 9, scope: !6076)
!6080 = !DILocation(line: 255, column: 16, scope: !6076)
!6081 = !DILocation(line: 256, column: 22, scope: !6076)
!6082 = !DILocation(line: 256, column: 19, scope: !6076)
!6083 = !DILocation(line: 256, column: 4, scope: !6076)
!6084 = !DILocation(line: 256, column: 9, scope: !6076)
!6085 = !DILocation(line: 256, column: 17, scope: !6076)
!6086 = !DILocation(line: 257, column: 23, scope: !6076)
!6087 = !DILocation(line: 257, column: 4, scope: !6076)
!6088 = !DILocation(line: 257, column: 9, scope: !6076)
!6089 = !DILocation(line: 257, column: 18, scope: !6076)
!6090 = !DILocation(line: 258, column: 22, scope: !6076)
!6091 = !DILocation(line: 258, column: 4, scope: !6076)
!6092 = !DILocation(line: 258, column: 9, scope: !6076)
!6093 = !DILocation(line: 258, column: 17, scope: !6076)
!6094 = !DILocation(line: 259, column: 23, scope: !6076)
!6095 = !DILocation(line: 259, column: 4, scope: !6076)
!6096 = !DILocation(line: 259, column: 9, scope: !6076)
!6097 = !DILocation(line: 259, column: 18, scope: !6076)
!6098 = !DILocation(line: 260, column: 22, scope: !6076)
!6099 = !DILocation(line: 260, column: 4, scope: !6076)
!6100 = !DILocation(line: 260, column: 9, scope: !6076)
!6101 = !DILocation(line: 260, column: 17, scope: !6076)
!6102 = !DILocation(line: 261, column: 22, scope: !6076)
!6103 = !DILocation(line: 261, column: 4, scope: !6076)
!6104 = !DILocation(line: 261, column: 9, scope: !6076)
!6105 = !DILocation(line: 261, column: 17, scope: !6076)
!6106 = !DILocation(line: 262, column: 4, scope: !6076)
!6107 = !DILocation(line: 262, column: 9, scope: !6076)
!6108 = !DILocation(line: 262, column: 18, scope: !6076)
!6109 = !DILocation(line: 262, column: 33, scope: !6076)
!6110 = !DILocation(line: 263, column: 24, scope: !6076)
!6111 = !DILocation(line: 263, column: 21, scope: !6076)
!6112 = !DILocation(line: 263, column: 4, scope: !6076)
!6113 = !DILocation(line: 263, column: 9, scope: !6076)
!6114 = !DILocation(line: 263, column: 19, scope: !6076)
!6115 = !DILocation(line: 264, column: 3, scope: !6076)
!6116 = !DILocation(line: 265, column: 7, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6068, file: !2, line: 265, column: 7)
!6118 = !DILocation(line: 265, column: 11, scope: !6117)
!6119 = !DILocation(line: 265, column: 7, scope: !6068)
!6120 = !DILocation(line: 266, column: 4, scope: !6117)
!6121 = !DILocation(line: 267, column: 2, scope: !6068)
!6122 = !DILocation(line: 268, column: 22, scope: !6018)
!6123 = !DILocation(line: 268, column: 30, scope: !6018)
!6124 = !DILocation(line: 268, column: 8, scope: !6018)
!6125 = !DILocation(line: 268, column: 6, scope: !6018)
!6126 = !DILocation(line: 268, column: 2, scope: !6018)
!6127 = !DILocation(line: 269, column: 1, scope: !6018)
!6128 = !DILocation(line: 270, column: 13, scope: !6018)
!6129 = !DILocation(line: 270, column: 2, scope: !6018)
!6130 = !DILocation(line: 271, column: 9, scope: !6018)
!6131 = !DILocation(line: 272, column: 1, scope: !6018)
!6132 = !DILocation(line: 271, column: 2, scope: !6018)
!6133 = distinct !DISubprogram(name: "v9fs_umount_begin", scope: !2, file: !2, line: 230, type: !651, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6134)
!6134 = !{!6135, !6136}
!6135 = !DILocalVariable(name: "sb", arg: 1, scope: !6133, file: !2, line: 230, type: !618)
!6136 = !DILocalVariable(name: "v9ses", scope: !6133, file: !2, line: 232, type: !5112)
!6137 = !DILocation(line: 230, column: 39, scope: !6133)
!6138 = !DILocation(line: 232, column: 2, scope: !6133)
!6139 = !DILocation(line: 232, column: 28, scope: !6133)
!6140 = !DILocation(line: 234, column: 10, scope: !6133)
!6141 = !DILocation(line: 234, column: 14, scope: !6133)
!6142 = !DILocation(line: 234, column: 8, scope: !6133)
!6143 = !DILocation(line: 235, column: 28, scope: !6133)
!6144 = !DILocation(line: 235, column: 2, scope: !6133)
!6145 = !DILocation(line: 236, column: 1, scope: !6133)
!6146 = distinct !DISubprogram(name: "V9FS_I", scope: !266, file: !266, line: 143, type: !6147, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6149)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!4941, !4129}
!6149 = !{!6150, !6151}
!6150 = !DILocalVariable(name: "inode", arg: 1, scope: !6146, file: !266, line: 143, type: !4129)
!6151 = !DILocalVariable(name: "__mptr", scope: !6152, file: !266, line: 145, type: !128)
!6152 = distinct !DILexicalBlock(scope: !6146, file: !266, line: 145, column: 9)
!6153 = !DILocation(line: 143, column: 61, scope: !6146)
!6154 = !DILocation(line: 145, column: 9, scope: !6152)
!6155 = !DILocation(line: 145, column: 9, scope: !6146)
!6156 = !DILocation(line: 145, column: 2, scope: !6146)
!6157 = distinct !DISubprogram(name: "fscache_unpin_writeback", scope: !320, file: !320, line: 648, type: !6158, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6215)
!6158 = !DISubroutineType(types: !6159)
!6159 = !{null, !699, !6160}
!6160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6161, size: 64)
!6161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fscache_cookie", file: !320, line: 102, size: 1408, elements: !6162)
!6162 = !{!6163, !6164, !6165, !6166, !6167, !6168, !6169, !6191, !6192, !6193, !6194, !6195, !6196, !6197, !6198, !6199, !6200, !6201, !6202, !6203, !6204, !6209}
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !6161, file: !320, line: 103, baseType: !1619, size: 32)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "n_active", scope: !6161, file: !320, line: 104, baseType: !156, size: 32, offset: 32)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "n_accesses", scope: !6161, file: !320, line: 105, baseType: !156, size: 32, offset: 64)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !6161, file: !320, line: 106, baseType: !13, size: 32, offset: 96)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "inval_counter", scope: !6161, file: !320, line: 107, baseType: !13, size: 32, offset: 128)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6161, file: !320, line: 108, baseType: !166, size: 32, offset: 160)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "volume", scope: !6161, file: !320, line: 109, baseType: !6170, size: 64, offset: 192)
!6170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6171, size: 64)
!6171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fscache_volume", file: !320, line: 72, size: 1088, elements: !6172)
!6172 = !{!6173, !6174, !6175, !6176, !6177, !6178, !6180, !6181, !6182, !6183, !6186, !6187, !6188, !6189, !6190}
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !6171, file: !320, line: 73, baseType: !1619, size: 32)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "n_cookies", scope: !6171, file: !320, line: 74, baseType: !156, size: 32, offset: 32)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "n_accesses", scope: !6171, file: !320, line: 75, baseType: !156, size: 32, offset: 64)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !6171, file: !320, line: 76, baseType: !13, size: 32, offset: 96)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "key_hash", scope: !6171, file: !320, line: 77, baseType: !13, size: 32, offset: 128)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6171, file: !320, line: 78, baseType: !6179, size: 64, offset: 192)
!6179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "proc_link", scope: !6171, file: !320, line: 79, baseType: !204, size: 128, offset: 256)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "hash_link", scope: !6171, file: !320, line: 80, baseType: !518, size: 128, offset: 384)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6171, file: !320, line: 81, baseType: !1409, size: 256, offset: 512)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !6171, file: !320, line: 82, baseType: !6184, size: 64, offset: 768)
!6184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6185, size: 64)
!6185 = !DICompositeType(tag: DW_TAG_structure_type, name: "fscache_cache", file: !320, line: 82, flags: DIFlagFwdDecl)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv", scope: !6171, file: !320, line: 83, baseType: !128, size: 64, offset: 832)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6171, file: !320, line: 84, baseType: !166, size: 32, offset: 896)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6171, file: !320, line: 85, baseType: !146, size: 64, offset: 960)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "coherency_len", scope: !6171, file: !320, line: 91, baseType: !190, size: 8, offset: 1024)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "coherency", scope: !6171, file: !320, line: 92, baseType: !4035, offset: 1032)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv", scope: !6161, file: !320, line: 110, baseType: !128, size: 64, offset: 256)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "hash_link", scope: !6161, file: !320, line: 111, baseType: !518, size: 128, offset: 320)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "proc_link", scope: !6161, file: !320, line: 112, baseType: !204, size: 128, offset: 448)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "commit_link", scope: !6161, file: !320, line: 113, baseType: !204, size: 128, offset: 576)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6161, file: !320, line: 114, baseType: !1409, size: 256, offset: 704)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "object_size", scope: !6161, file: !320, line: 115, baseType: !148, size: 64, offset: 960)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "unused_at", scope: !6161, file: !320, line: 116, baseType: !146, size: 64, offset: 1024)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6161, file: !320, line: 117, baseType: !146, size: 64, offset: 1088)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6161, file: !320, line: 135, baseType: !319, size: 8, offset: 1152)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "advice", scope: !6161, file: !320, line: 136, baseType: !190, size: 8, offset: 1160)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !6161, file: !320, line: 137, baseType: !190, size: 8, offset: 1168)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "aux_len", scope: !6161, file: !320, line: 138, baseType: !190, size: 8, offset: 1176)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "key_hash", scope: !6161, file: !320, line: 139, baseType: !536, size: 32, offset: 1184)
!6204 = !DIDerivedType(tag: DW_TAG_member, scope: !6161, file: !320, line: 140, baseType: !6205, size: 128, offset: 1216)
!6205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6161, file: !320, line: 140, size: 128, elements: !6206)
!6206 = !{!6207, !6208}
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6205, file: !320, line: 141, baseType: !128, size: 64)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "inline_key", scope: !6205, file: !320, line: 142, baseType: !3766, size: 128)
!6209 = !DIDerivedType(tag: DW_TAG_member, scope: !6161, file: !320, line: 144, baseType: !6210, size: 64, offset: 1344)
!6210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6161, file: !320, line: 144, size: 64, elements: !6211)
!6211 = !{!6212, !6213}
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !6210, file: !320, line: 145, baseType: !128, size: 64)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "inline_aux", scope: !6210, file: !320, line: 146, baseType: !6214, size: 64)
!6214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !1375)
!6215 = !{!6216, !6217}
!6216 = !DILocalVariable(name: "wbc", arg: 1, scope: !6157, file: !320, line: 648, type: !699)
!6217 = !DILocalVariable(name: "cookie", arg: 2, scope: !6157, file: !320, line: 649, type: !6160)
!6218 = !DILocation(line: 648, column: 70, scope: !6157)
!6219 = !DILocation(line: 649, column: 32, scope: !6157)
!6220 = !DILocation(line: 651, column: 6, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6157, file: !320, line: 651, column: 6)
!6222 = !DILocation(line: 651, column: 11, scope: !6221)
!6223 = !DILocation(line: 651, column: 6, scope: !6157)
!6224 = !DILocation(line: 652, column: 24, scope: !6221)
!6225 = !DILocation(line: 652, column: 3, scope: !6221)
!6226 = !DILocation(line: 653, column: 1, scope: !6157)
!6227 = distinct !DISubprogram(name: "v9fs_inode_cookie", scope: !266, file: !266, line: 148, type: !6228, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6230)
!6228 = !DISubroutineType(types: !6229)
!6229 = !{!6160, !4941}
!6230 = !{!6231}
!6231 = !DILocalVariable(name: "v9inode", arg: 1, scope: !6227, file: !266, line: 148, type: !4941)
!6232 = !DILocation(line: 148, column: 75, scope: !6227)
!6233 = !DILocation(line: 153, column: 2, scope: !6227)
!6234 = distinct !DISubprogram(name: "fscache_unuse_cookie", scope: !320, file: !320, line: 284, type: !6235, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6239)
!6235 = !DISubroutineType(types: !6236)
!6236 = !{null, !6160, !1057, !6237}
!6237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6238, size: 64)
!6238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!6239 = !{!6240, !6241, !6242}
!6240 = !DILocalVariable(name: "cookie", arg: 1, scope: !6234, file: !320, line: 284, type: !6160)
!6241 = !DILocalVariable(name: "aux_data", arg: 2, scope: !6234, file: !320, line: 285, type: !1057)
!6242 = !DILocalVariable(name: "object_size", arg: 3, scope: !6234, file: !320, line: 286, type: !6237)
!6243 = !DILocation(line: 284, column: 64, scope: !6234)
!6244 = !DILocation(line: 285, column: 18, scope: !6234)
!6245 = !DILocation(line: 286, column: 20, scope: !6234)
!6246 = !DILocation(line: 290, column: 1, scope: !6234)
!6247 = distinct !DISubprogram(name: "v9fs_inode2v9ses", scope: !266, file: !266, line: 200, type: !6248, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6250)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!5112, !467}
!6250 = !{!6251}
!6251 = !DILocalVariable(name: "inode", arg: 1, scope: !6247, file: !266, line: 200, type: !467)
!6252 = !DILocation(line: 200, column: 72, scope: !6247)
!6253 = !DILocation(line: 202, column: 9, scope: !6247)
!6254 = !DILocation(line: 202, column: 16, scope: !6247)
!6255 = !DILocation(line: 202, column: 22, scope: !6247)
!6256 = !DILocation(line: 202, column: 2, scope: !6247)
!6257 = distinct !DISubprogram(name: "generic_drop_inode", scope: !25, file: !25, line: 2872, type: !721, scopeLine: 2873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6258)
!6258 = !{!6259}
!6259 = !DILocalVariable(name: "inode", arg: 1, scope: !6257, file: !25, line: 2872, type: !467)
!6260 = !DILocation(line: 2872, column: 52, scope: !6257)
!6261 = !DILocation(line: 2874, column: 10, scope: !6257)
!6262 = !DILocation(line: 2874, column: 17, scope: !6257)
!6263 = !DILocation(line: 2874, column: 25, scope: !6257)
!6264 = !DILocation(line: 2874, column: 43, scope: !6257)
!6265 = !DILocation(line: 2874, column: 28, scope: !6257)
!6266 = !DILocation(line: 2874, column: 2, scope: !6257)
!6267 = distinct !DISubprogram(name: "inode_unhashed", scope: !25, file: !25, line: 760, type: !721, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6268)
!6268 = !{!6269}
!6269 = !DILocalVariable(name: "inode", arg: 1, scope: !6267, file: !25, line: 760, type: !467)
!6270 = !DILocation(line: 760, column: 48, scope: !6267)
!6271 = !DILocation(line: 762, column: 25, scope: !6267)
!6272 = !DILocation(line: 762, column: 32, scope: !6267)
!6273 = !DILocation(line: 762, column: 9, scope: !6267)
!6274 = !DILocation(line: 762, column: 2, scope: !6267)
!6275 = distinct !DISubprogram(name: "hlist_unhashed", scope: !6276, file: !6276, line: 948, type: !6277, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6281)
!6276 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6277 = !DISubroutineType(types: !6278)
!6278 = !{!62, !6279}
!6279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6280, size: 64)
!6280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!6281 = !{!6282}
!6282 = !DILocalVariable(name: "h", arg: 1, scope: !6275, file: !6276, line: 948, type: !6279)
!6283 = !DILocation(line: 948, column: 59, scope: !6275)
!6284 = !DILocation(line: 950, column: 10, scope: !6275)
!6285 = !DILocation(line: 950, column: 13, scope: !6275)
!6286 = !DILocation(line: 950, column: 9, scope: !6275)
!6287 = !DILocation(line: 950, column: 2, scope: !6275)
!6288 = !DISubprogram(name: "v9fs_fid_lookup", scope: !5692, file: !5692, line: 14, type: !6289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6289 = !DISubroutineType(types: !6290)
!6290 = !{!5169, !502}
!6291 = distinct !DISubprogram(name: "v9fs_dentry2v9ses", scope: !266, file: !266, line: 205, type: !6292, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6294)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!5112, !502}
!6294 = !{!6295}
!6295 = !DILocalVariable(name: "dentry", arg: 1, scope: !6291, file: !266, line: 205, type: !502)
!6296 = !DILocation(line: 205, column: 74, scope: !6291)
!6297 = !DILocation(line: 207, column: 9, scope: !6291)
!6298 = !DILocation(line: 207, column: 17, scope: !6291)
!6299 = !DILocation(line: 207, column: 23, scope: !6291)
!6300 = !DILocation(line: 207, column: 2, scope: !6291)
!6301 = !DISubprogram(name: "p9_client_statfs", scope: !259, file: !259, line: 181, type: !6302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6302 = !DISubroutineType(types: !6303)
!6303 = !{!62, !5169, !6304}
!6304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6025, size: 64)
!6305 = distinct !DISubprogram(name: "u64_to_fsid", scope: !745, file: !745, line: 49, type: !6306, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6308)
!6306 = !DISubroutineType(types: !6307)
!6307 = !{!755, !540}
!6308 = !{!6309}
!6309 = !DILocalVariable(name: "v", arg: 1, scope: !6305, file: !745, line: 49, type: !540)
!6310 = !DILocation(line: 49, column: 47, scope: !6305)
!6311 = !DILocation(line: 51, column: 26, scope: !6305)
!6312 = !DILocation(line: 51, column: 34, scope: !6305)
!6313 = !DILocation(line: 51, column: 40, scope: !6305)
!6314 = !DILocation(line: 51, column: 35, scope: !6305)
!6315 = !DILocation(line: 51, column: 49, scope: !6305)
!6316 = !DILocation(line: 51, column: 50, scope: !6305)
!6317 = !DILocation(line: 51, column: 43, scope: !6305)
!6318 = !DILocation(line: 51, column: 2, scope: !6305)
!6319 = !DISubprogram(name: "simple_statfs", scope: !25, file: !25, line: 3148, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6320 = !DISubprogram(name: "v9fs_session_begin_cancel", scope: !266, file: !266, line: 173, type: !5739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6321 = distinct !DISubprogram(name: "v9fs_write_inode", scope: !2, file: !2, line: 289, type: !697, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6322)
!6322 = !{!6323, !6324, !6325}
!6323 = !DILocalVariable(name: "inode", arg: 1, scope: !6321, file: !2, line: 289, type: !467)
!6324 = !DILocalVariable(name: "wbc", arg: 2, scope: !6321, file: !2, line: 290, type: !699)
!6325 = !DILocalVariable(name: "v9inode", scope: !6321, file: !2, line: 292, type: !4941)
!6326 = !DILocation(line: 289, column: 43, scope: !6321)
!6327 = !DILocation(line: 290, column: 34, scope: !6321)
!6328 = !DILocation(line: 292, column: 2, scope: !6321)
!6329 = !DILocation(line: 292, column: 21, scope: !6321)
!6330 = !DILocation(line: 298, column: 2, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6332, file: !2, line: 298, column: 2)
!6332 = distinct !DILexicalBlock(scope: !6321, file: !2, line: 298, column: 2)
!6333 = !DILocation(line: 298, column: 2, scope: !6332)
!6334 = !DILocation(line: 300, column: 19, scope: !6321)
!6335 = !DILocation(line: 300, column: 12, scope: !6321)
!6336 = !DILocation(line: 300, column: 10, scope: !6321)
!6337 = !DILocation(line: 301, column: 26, scope: !6321)
!6338 = !DILocation(line: 301, column: 49, scope: !6321)
!6339 = !DILocation(line: 301, column: 31, scope: !6321)
!6340 = !DILocation(line: 301, column: 2, scope: !6321)
!6341 = !DILocation(line: 304, column: 1, scope: !6321)
!6342 = !DILocation(line: 303, column: 2, scope: !6321)
!6343 = !DISubprogram(name: "lockref_get", scope: !553, file: !553, line: 37, type: !6344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6344 = !DISubroutineType(types: !6345)
!6345 = !{null, !6346}
!6346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!6347 = distinct !DISubprogram(name: "static_key_false", scope: !4904, file: !4904, line: 205, type: !6348, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6362)
!6348 = !DISubroutineType(types: !6349)
!6349 = !{!1044, !6350}
!6350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6351, size: 64)
!6351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4904, line: 85, size: 128, elements: !6352)
!6352 = !{!6353, !6354}
!6353 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6351, file: !4904, line: 86, baseType: !156, size: 32)
!6354 = !DIDerivedType(tag: DW_TAG_member, scope: !6351, file: !4904, line: 101, baseType: !6355, size: 64, offset: 64)
!6355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6351, file: !4904, line: 101, size: 64, elements: !6356)
!6356 = !{!6357, !6358, !6359}
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6355, file: !4904, line: 102, baseType: !146, size: 64)
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6355, file: !4904, line: 103, baseType: !4902, size: 64)
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6355, file: !4904, line: 104, baseType: !6360, size: 64)
!6360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6361, size: 64)
!6361 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4904, line: 104, flags: DIFlagFwdDecl)
!6362 = !{!6363}
!6363 = !DILocalVariable(name: "key", arg: 1, scope: !6347, file: !4904, line: 205, type: !6350)
!6364 = !DILocation(line: 205, column: 65, scope: !6347)
!6365 = !DILocation(line: 207, column: 28, scope: !6347)
!6366 = !DILocation(line: 207, column: 9, scope: !6347)
!6367 = !DILocation(line: 207, column: 2, scope: !6347)
!6368 = !DISubprogram(name: "do_trace_9p_fid_put", scope: !259, file: !259, line: 245, type: !6369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6369 = !DISubroutineType(types: !6370)
!6370 = !{null, !5169}
!6371 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !333, file: !333, line: 331, type: !6372, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6375)
!6372 = !DISubroutineType(types: !6373)
!6373 = !{!1044, !6374}
!6374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!6375 = !{!6376}
!6376 = !DILocalVariable(name: "r", arg: 1, scope: !6371, file: !333, line: 331, type: !6374)
!6377 = !DILocation(line: 331, column: 67, scope: !6371)
!6378 = !DILocation(line: 333, column: 33, scope: !6371)
!6379 = !DILocation(line: 333, column: 9, scope: !6371)
!6380 = !DILocation(line: 333, column: 2, scope: !6371)
!6381 = !DISubprogram(name: "p9_client_clunk", scope: !259, file: !259, line: 202, type: !5711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6382 = distinct !DISubprogram(name: "arch_static_branch", scope: !6383, file: !6383, line: 25, type: !6384, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6386)
!6383 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6384 = !DISubroutineType(types: !6385)
!6385 = !{!1044, !6350, !1044}
!6386 = !{!6387, !6388, !6389}
!6387 = !DILocalVariable(name: "key", arg: 1, scope: !6382, file: !6383, line: 25, type: !6350)
!6388 = !DILocalVariable(name: "branch", arg: 2, scope: !6382, file: !6383, line: 25, type: !1044)
!6389 = !DILabel(scope: !6382, name: "l_yes", file: !6383, line: 33)
!6390 = !DILocation(line: 25, column: 67, scope: !6382)
!6391 = !DILocation(line: 25, column: 77, scope: !6382)
!6392 = !DILocation(line: 30, column: 13, scope: !6382)
!6393 = !DILocation(line: 30, column: 28, scope: !6382)
!6394 = !DILocation(line: 30, column: 26, scope: !6382)
!6395 = !DILocation(line: 27, column: 2, scope: !6382)
!6396 = !{i64 936910, i64 936954, i64 2148421637, i64 2148421658, i64 2148421684, i64 2148421717, i64 2148421751, i64 2148421775}
!6397 = !DILocation(line: 32, column: 2, scope: !6382)
!6398 = !DILocation(line: 33, column: 1, scope: !6382)
!6399 = !DILocation(line: 34, column: 2, scope: !6382)
!6400 = !DILocation(line: 35, column: 1, scope: !6382)
!6401 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !333, file: !333, line: 313, type: !6402, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6404)
!6402 = !DISubroutineType(types: !6403)
!6403 = !{!1044, !6374, !773}
!6404 = !{!6405, !6406}
!6405 = !DILocalVariable(name: "r", arg: 1, scope: !6401, file: !333, line: 313, type: !6374)
!6406 = !DILocalVariable(name: "oldp", arg: 2, scope: !6401, file: !333, line: 313, type: !773)
!6407 = !DILocation(line: 313, column: 69, scope: !6401)
!6408 = !DILocation(line: 313, column: 77, scope: !6401)
!6409 = !DILocation(line: 315, column: 36, scope: !6401)
!6410 = !DILocation(line: 315, column: 39, scope: !6401)
!6411 = !DILocation(line: 315, column: 9, scope: !6401)
!6412 = !DILocation(line: 315, column: 2, scope: !6401)
!6413 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !333, file: !333, line: 270, type: !6414, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6416)
!6414 = !DISubroutineType(types: !6415)
!6415 = !{!1044, !62, !6374, !773}
!6416 = !{!6417, !6418, !6419, !6420}
!6417 = !DILocalVariable(name: "i", arg: 1, scope: !6413, file: !333, line: 270, type: !62)
!6418 = !DILocalVariable(name: "r", arg: 2, scope: !6413, file: !333, line: 270, type: !6374)
!6419 = !DILocalVariable(name: "oldp", arg: 3, scope: !6413, file: !333, line: 270, type: !773)
!6420 = !DILocalVariable(name: "old", scope: !6413, file: !333, line: 272, type: !62)
!6421 = !DILocation(line: 270, column: 61, scope: !6413)
!6422 = !DILocation(line: 270, column: 76, scope: !6413)
!6423 = !DILocation(line: 270, column: 84, scope: !6413)
!6424 = !DILocation(line: 272, column: 2, scope: !6413)
!6425 = !DILocation(line: 272, column: 6, scope: !6413)
!6426 = !DILocation(line: 272, column: 37, scope: !6413)
!6427 = !DILocation(line: 272, column: 41, scope: !6413)
!6428 = !DILocation(line: 272, column: 44, scope: !6413)
!6429 = !DILocation(line: 272, column: 12, scope: !6413)
!6430 = !DILocation(line: 274, column: 6, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6413, file: !333, line: 274, column: 6)
!6432 = !DILocation(line: 274, column: 6, scope: !6413)
!6433 = !DILocation(line: 275, column: 11, scope: !6431)
!6434 = !DILocation(line: 275, column: 4, scope: !6431)
!6435 = !DILocation(line: 275, column: 9, scope: !6431)
!6436 = !DILocation(line: 275, column: 3, scope: !6431)
!6437 = !DILocation(line: 277, column: 6, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6413, file: !333, line: 277, column: 6)
!6439 = !DILocation(line: 277, column: 13, scope: !6438)
!6440 = !DILocation(line: 277, column: 10, scope: !6438)
!6441 = !DILocation(line: 277, column: 6, scope: !6413)
!6442 = !DILocation(line: 278, column: 3, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6438, file: !333, line: 277, column: 16)
!6444 = !DILocation(line: 278, column: 3, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6443, file: !333, line: 278, column: 3)
!6446 = !DILocation(line: 278, column: 3, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6445, file: !333, line: 278, column: 3)
!6448 = !DILocation(line: 278, column: 3, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6445, file: !333, line: 278, column: 3)
!6450 = !DILocation(line: 278, column: 3, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6449, file: !333, line: 278, column: 3)
!6452 = !{i64 2149923354}
!6453 = !DILocation(line: 279, column: 3, scope: !6443)
!6454 = !DILocation(line: 282, column: 6, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6413, file: !333, line: 282, column: 6)
!6456 = !DILocation(line: 282, column: 6, scope: !6413)
!6457 = !DILocation(line: 283, column: 26, scope: !6455)
!6458 = !DILocation(line: 283, column: 3, scope: !6455)
!6459 = !DILocation(line: 285, column: 2, scope: !6413)
!6460 = !DILocation(line: 286, column: 1, scope: !6413)
!6461 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6462, file: !6462, line: 397, type: !6463, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6466)
!6462 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6463 = !DISubroutineType(types: !6464)
!6464 = !{!62, !62, !6465}
!6465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!6466 = !{!6467, !6468}
!6467 = !DILocalVariable(name: "i", arg: 1, scope: !6461, file: !6462, line: 397, type: !62)
!6468 = !DILocalVariable(name: "v", arg: 2, scope: !6461, file: !6462, line: 397, type: !6465)
!6469 = !DILocation(line: 397, column: 30, scope: !6461)
!6470 = !DILocation(line: 397, column: 43, scope: !6461)
!6471 = !DILocation(line: 399, column: 2, scope: !6461)
!6472 = !DILocation(line: 399, column: 2, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6461, file: !6462, line: 399, column: 2)
!6474 = !DILocation(line: 400, column: 31, scope: !6461)
!6475 = !DILocation(line: 400, column: 2, scope: !6461)
!6476 = !DILocation(line: 401, column: 38, scope: !6461)
!6477 = !DILocation(line: 401, column: 41, scope: !6461)
!6478 = !DILocation(line: 401, column: 9, scope: !6461)
!6479 = !DILocation(line: 401, column: 2, scope: !6461)
!6480 = !DISubprogram(name: "refcount_warn_saturate", scope: !333, file: !333, line: 127, type: !6481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{null, !6374, !332}
!6483 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6484, file: !6484, line: 94, type: !6485, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6490)
!6484 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6485 = !DISubroutineType(types: !6486)
!6486 = !{null, !6487, !142}
!6487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6488, size: 64)
!6488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6489)
!6489 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6490 = !{!6491, !6492}
!6491 = !DILocalVariable(name: "v", arg: 1, scope: !6483, file: !6484, line: 94, type: !6487)
!6492 = !DILocalVariable(name: "size", arg: 2, scope: !6483, file: !6484, line: 94, type: !142)
!6493 = !DILocation(line: 94, column: 79, scope: !6483)
!6494 = !DILocation(line: 94, column: 89, scope: !6483)
!6495 = !DILocation(line: 96, column: 20, scope: !6483)
!6496 = !DILocation(line: 96, column: 23, scope: !6483)
!6497 = !DILocation(line: 96, column: 2, scope: !6483)
!6498 = !DILocation(line: 97, column: 2, scope: !6483)
!6499 = !DILocation(line: 98, column: 1, scope: !6483)
!6500 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6501, file: !6501, line: 928, type: !6463, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6502)
!6501 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6502 = !{!6503, !6504}
!6503 = !DILocalVariable(name: "i", arg: 1, scope: !6500, file: !6501, line: 928, type: !62)
!6504 = !DILocalVariable(name: "v", arg: 2, scope: !6500, file: !6501, line: 928, type: !6465)
!6505 = !DILocation(line: 928, column: 34, scope: !6500)
!6506 = !DILocation(line: 928, column: 47, scope: !6500)
!6507 = !DILocation(line: 936, column: 31, scope: !6500)
!6508 = !DILocation(line: 936, column: 34, scope: !6500)
!6509 = !DILocation(line: 936, column: 9, scope: !6500)
!6510 = !DILocation(line: 936, column: 2, scope: !6500)
!6511 = distinct !DISubprogram(name: "kasan_check_write", scope: !6512, file: !6512, line: 44, type: !6513, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6515)
!6512 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6513 = !DISubroutineType(types: !6514)
!6514 = !{!1044, !6487, !13}
!6515 = !{!6516, !6517}
!6516 = !DILocalVariable(name: "p", arg: 1, scope: !6511, file: !6512, line: 44, type: !6487)
!6517 = !DILocalVariable(name: "size", arg: 2, scope: !6511, file: !6512, line: 44, type: !13)
!6518 = !DILocation(line: 44, column: 59, scope: !6511)
!6519 = !DILocation(line: 44, column: 75, scope: !6511)
!6520 = !DILocation(line: 46, column: 2, scope: !6511)
!6521 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6522, file: !6522, line: 229, type: !6523, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6525)
!6522 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6523 = !DISubroutineType(types: !6524)
!6524 = !{null, !6487, !142, !62}
!6525 = !{!6526, !6527, !6528}
!6526 = !DILocalVariable(name: "ptr", arg: 1, scope: !6521, file: !6522, line: 229, type: !6487)
!6527 = !DILocalVariable(name: "size", arg: 2, scope: !6521, file: !6522, line: 229, type: !142)
!6528 = !DILocalVariable(name: "type", arg: 3, scope: !6521, file: !6522, line: 230, type: !62)
!6529 = !DILocation(line: 229, column: 60, scope: !6521)
!6530 = !DILocation(line: 229, column: 72, scope: !6521)
!6531 = !DILocation(line: 230, column: 15, scope: !6521)
!6532 = !DILocation(line: 230, column: 23, scope: !6521)
!6533 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6534, file: !6534, line: 101, type: !6463, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6535)
!6534 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6535 = !{!6536, !6537, !6538}
!6536 = !DILocalVariable(name: "i", arg: 1, scope: !6533, file: !6534, line: 101, type: !62)
!6537 = !DILocalVariable(name: "v", arg: 2, scope: !6533, file: !6534, line: 101, type: !6465)
!6538 = !DILocalVariable(name: "__ret", scope: !6539, file: !6534, line: 103, type: !62)
!6539 = distinct !DILexicalBlock(scope: !6533, file: !6534, line: 103, column: 9)
!6540 = !DILocation(line: 101, column: 54, scope: !6533)
!6541 = !DILocation(line: 101, column: 67, scope: !6533)
!6542 = !DILocation(line: 103, column: 9, scope: !6539)
!6543 = !{i64 2148800276, i64 2148800315, i64 2148800336, i64 2148800373, i64 2148800396, i64 2148800405}
!6544 = !DILocation(line: 103, column: 9, scope: !6533)
!6545 = !DILocation(line: 103, column: 2, scope: !6533)
!6546 = !DISubprogram(name: "kill_anon_super", scope: !25, file: !25, line: 2411, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6547 = !DISubprogram(name: "v9fs_session_cancel", scope: !266, file: !266, line: 172, type: !5739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
