; ModuleID = 'fs/efivarfs/super.c'
source_filename = "fs/efivarfs/super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.14, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.15, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.16, ptr, %struct.address_space, %struct.list_head, %union.anon.17, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
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
%struct.guid_t = type { [16 x i8] }
%struct.efivar_entry = type { %struct.efi_variable, %struct.list_head, %struct.kobject }
%struct.efi_variable = type <{ [512 x i16], %struct.guid_t, i64, [1024 x i8], i64, i32 }>
%struct.kstatfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i64, i64, i64, [4 x i64] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.22, %struct.list_head, %struct.list_head, %union.anon.23 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.18, ptr }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%union.anon.22 = type { %struct.list_head }
%union.anon.23 = type { %struct.hlist_node }
%struct.anon.19 = type { i32, i32 }

@efivarfs_list = hidden global %struct.list_head { ptr @efivarfs_list, ptr @efivarfs_list }, align 8, !dbg !0
@__UNIQUE_ID_author285 = internal constant [36 x i8] c"author=Matthew Garrett, Jeremy Kerr\00", section ".modinfo", align 1, !dbg !4241
@__UNIQUE_ID_description286 = internal constant [36 x i8] c"description=EFI Variable Filesystem\00", section ".modinfo", align 1, !dbg !4246
@__UNIQUE_ID_license287 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1, !dbg !4248
@__UNIQUE_ID_alias288 = internal constant [18 x i8] c"alias=fs-efivarfs\00", section ".modinfo", align 1, !dbg !4251
@__UNIQUE_ID___addressable_init_module289 = internal global ptr @init_module, section ".init.data", align 8, !dbg !4256
@__UNIQUE_ID___addressable_cleanup_module290 = internal global ptr @cleanup_module, section ".exit.data", align 8, !dbg !4258
@efivarfs_type = internal global %struct.file_system_type { ptr @.str, i32 0, ptr @efivarfs_init_fs_context, ptr null, ptr null, ptr @efivarfs_kill_sb, ptr @__this_module, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !4265
@.str = private unnamed_addr constant [9 x i8] c"efivarfs\00", align 1, !dbg !4260
@__this_module = external dso_local global %struct.module, align 64
@efivarfs_context_ops = internal constant %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @efivarfs_get_tree, ptr @efivarfs_reconfigure }, align 8, !dbg !4267
@efivarfs_ops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr @efivarfs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efivarfs_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4269
@efivarfs_d_ops = internal constant %struct.dentry_operations { ptr null, ptr null, ptr @efivarfs_d_hash, ptr @efivarfs_d_compare, ptr @always_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef }, align 64, !dbg !4293
@efivarfs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@efivarfs_statfs._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4271
@__func__.efivarfs_statfs = private unnamed_addr constant [16 x i8] c"efivarfs_statfs\00", align 1, !dbg !4285
@.str.1 = private unnamed_addr constant [39 x i8] c"\014query_variable_info() failed: 0x%lx\0A\00", align 1, !dbg !4288
@efi = external dso_local global %struct.efi, align 8
@_ctype = external dso_local constant [0 x i8], align 1
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4295
@.str.3 = private unnamed_addr constant [5 x i8] c"%pUl\00", align 1, !dbg !4300
@.str.4 = private unnamed_addr constant [68 x i8] c"\013Firmware does not support SetVariableRT. Can not remount with rw\0A\00", align 1, !dbg !4305
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_license287, ptr @__UNIQUE_ID_alias288, ptr @__UNIQUE_ID___addressable_init_module289, ptr @__UNIQUE_ID___addressable_cleanup_module290], section "llvm.metadata"

@init_module = hidden alias i32 (), ptr @efivarfs_init
@cleanup_module = hidden alias void (), ptr @efivarfs_exit

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @efivarfs_init() #0 section ".init.text" align 16 !dbg !4319 {
entry:
  %call = call i32 @register_filesystem(ptr noundef @efivarfs_type) #17, !dbg !4320
  ret i32 %call, !dbg !4321
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @efivarfs_exit() #0 section ".exit.text" align 16 !dbg !4322 {
entry:
  %call = call i32 @unregister_filesystem(ptr noundef @efivarfs_type) #17, !dbg !4323
  ret void, !dbg !4324
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4325 dso_local i32 @register_filesystem(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_init_fs_context(ptr noundef %fc) #2 align 16 !dbg !4328 {
entry:
  %fc.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4330, metadata !DIExpression()), !dbg !4331
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !4332
  %ops = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 0, !dbg !4333
  store ptr @efivarfs_context_ops, ptr %ops, align 8, !dbg !4334
  ret i32 0, !dbg !4335
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @efivarfs_kill_sb(ptr noundef %sb) #2 align 16 !dbg !4336 {
entry:
  %sb.addr = alloca ptr, align 8
  %sfi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4338, metadata !DIExpression()), !dbg !4342
  call void @llvm.lifetime.start.p0(i64 8, ptr %sfi) #18, !dbg !4343
  call void @llvm.dbg.declare(metadata ptr %sfi, metadata !4339, metadata !DIExpression()), !dbg !4344
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4345
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !4346
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !4346
  store ptr %1, ptr %sfi, align 8, !dbg !4344
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4347
  call void @kill_litter_super(ptr noundef %2) #17, !dbg !4348
  %call = call zeroext i1 @efivar_is_available() #17, !dbg !4349
  br i1 %call, label %if.end, label %if.then, !dbg !4351

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4352

if.end:                                           ; preds = %entry
  %call1 = call i32 @efivar_entry_iter(ptr noundef @efivarfs_destroy, ptr noundef @efivarfs_list, ptr noundef null) #17, !dbg !4353
  %3 = load ptr, ptr %sfi, align 8, !dbg !4354
  call void @kfree(ptr noundef %3) #17, !dbg !4355
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4356
  br label %cleanup, !dbg !4356

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sfi) #18, !dbg !4356
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4356

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_get_tree(ptr noundef %fc) #2 align 16 !dbg !4357 {
entry:
  %fc.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4359, metadata !DIExpression()), !dbg !4360
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !4361
  %call = call i32 @get_tree_single(ptr noundef %0, ptr noundef @efivarfs_fill_super) #17, !dbg !4362
  ret i32 %call, !dbg !4363
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_reconfigure(ptr noundef %fc) #2 align 16 !dbg !4364 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4366, metadata !DIExpression()), !dbg !4367
  %call = call zeroext i1 @efivar_supports_writes() #17, !dbg !4368
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !4370

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !4371
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13, !dbg !4372
  %1 = load i32, ptr %sb_flags, align 8, !dbg !4372
  %conv = zext i32 %1 to i64, !dbg !4371
  %and = and i64 %conv, 1, !dbg !4373
  %tobool = icmp ne i64 %and, 0, !dbg !4373
  br i1 %tobool, label %if.end, label %if.then, !dbg !4374

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !4375

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4378

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #19, !dbg !4375
  store i32 %call1, ptr %tmp, align 4, !dbg !4378
  %2 = load i32, ptr %tmp, align 4, !dbg !4375
  store i32 -22, ptr %retval, align 4, !dbg !4380
  br label %return, !dbg !4380

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !4381
  br label %return, !dbg !4381

return:                                           ; preds = %if.end, %do.end
  %3 = load i32, ptr %retval, align 4, !dbg !4382
  ret i32 %3, !dbg !4382
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4383 dso_local i32 @get_tree_single(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_fill_super(ptr noundef %sb, ptr noundef %fc) #2 align 16 !dbg !4389 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %fc.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %root = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4391, metadata !DIExpression()), !dbg !4396
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4392, metadata !DIExpression()), !dbg !4397
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #18, !dbg !4398
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4393, metadata !DIExpression()), !dbg !4399
  store ptr null, ptr %inode, align 8, !dbg !4399
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #18, !dbg !4400
  call void @llvm.dbg.declare(metadata ptr %root, metadata !4394, metadata !DIExpression()), !dbg !4401
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !4402
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4395, metadata !DIExpression()), !dbg !4403
  %call = call zeroext i1 @efivar_is_available() #17, !dbg !4404
  br i1 %call, label %if.end, label %if.then, !dbg !4406

if.then:                                          ; preds = %entry
  store i32 -95, ptr %retval, align 4, !dbg !4407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4407

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4408
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4, !dbg !4409
  store i64 9223372036854775807, ptr %s_maxbytes, align 32, !dbg !4410
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !4411
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3, !dbg !4412
  store i64 4096, ptr %s_blocksize, align 8, !dbg !4413
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4414
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 2, !dbg !4415
  store i8 12, ptr %s_blocksize_bits, align 4, !dbg !4416
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !4417
  %s_magic = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 12, !dbg !4418
  store i64 3730735588, ptr %s_magic, align 32, !dbg !4419
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !4420
  %s_op = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 6, !dbg !4421
  store ptr @efivarfs_ops, ptr %s_op, align 16, !dbg !4422
  %5 = load ptr, ptr %sb.addr, align 8, !dbg !4423
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 40, !dbg !4424
  store ptr @efivarfs_d_ops, ptr %s_d_op, align 16, !dbg !4425
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !4426
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 30, !dbg !4427
  store i32 1, ptr %s_time_gran, align 8, !dbg !4428
  %call1 = call zeroext i1 @efivar_supports_writes() #17, !dbg !4429
  br i1 %call1, label %if.end3, label %if.then2, !dbg !4431

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %sb.addr, align 8, !dbg !4432
  %s_flags = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 10, !dbg !4433
  %8 = load i64, ptr %s_flags, align 16, !dbg !4434
  %or = or i64 %8, 1, !dbg !4434
  store i64 %or, ptr %s_flags, align 16, !dbg !4434
  br label %if.end3, !dbg !4432

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %sb.addr, align 8, !dbg !4435
  %call4 = call ptr @efivarfs_get_inode(ptr noundef %9, ptr noundef null, i32 noundef 16877, i32 noundef 0, i1 noundef zeroext true) #17, !dbg !4436
  store ptr %call4, ptr %inode, align 8, !dbg !4437
  %10 = load ptr, ptr %inode, align 8, !dbg !4438
  %tobool = icmp ne ptr %10, null, !dbg !4438
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !4440

if.then5:                                         ; preds = %if.end3
  store i32 -12, ptr %retval, align 4, !dbg !4441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4441

if.end6:                                          ; preds = %if.end3
  %11 = load ptr, ptr %inode, align 8, !dbg !4442
  %i_op = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8, !dbg !4443
  store ptr @efivarfs_dir_inode_operations, ptr %i_op, align 8, !dbg !4444
  %12 = load ptr, ptr %inode, align 8, !dbg !4445
  %call7 = call ptr @d_make_root(ptr noundef %12) #17, !dbg !4446
  store ptr %call7, ptr %root, align 8, !dbg !4447
  %13 = load ptr, ptr %root, align 8, !dbg !4448
  %14 = load ptr, ptr %sb.addr, align 8, !dbg !4449
  %s_root = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 13, !dbg !4450
  store ptr %13, ptr %s_root, align 8, !dbg !4451
  %15 = load ptr, ptr %root, align 8, !dbg !4452
  %tobool8 = icmp ne ptr %15, null, !dbg !4452
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4454

if.then9:                                         ; preds = %if.end6
  store i32 -12, ptr %retval, align 4, !dbg !4455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4455

if.end10:                                         ; preds = %if.end6
  call void @INIT_LIST_HEAD(ptr noundef @efivarfs_list) #17, !dbg !4456
  %16 = load ptr, ptr %sb.addr, align 8, !dbg !4457
  %call11 = call i32 @efivar_init(ptr noundef @efivarfs_callback, ptr noundef %16, i1 noundef zeroext true, ptr noundef @efivarfs_list) #17, !dbg !4458
  store i32 %call11, ptr %err, align 4, !dbg !4459
  %17 = load i32, ptr %err, align 4, !dbg !4460
  %tobool12 = icmp ne i32 %17, 0, !dbg !4460
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !4462

if.then13:                                        ; preds = %if.end10
  %call14 = call i32 @efivar_entry_iter(ptr noundef @efivarfs_destroy, ptr noundef @efivarfs_list, ptr noundef null) #17, !dbg !4463
  br label %if.end15, !dbg !4463

if.end15:                                         ; preds = %if.then13, %if.end10
  %18 = load i32, ptr %err, align 4, !dbg !4464
  store i32 %18, ptr %retval, align 4, !dbg !4465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4465

cleanup:                                          ; preds = %if.end15, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !4466
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #18, !dbg !4466
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #18, !dbg !4466
  %19 = load i32, ptr %retval, align 4, !dbg !4466
  ret i32 %19, !dbg !4466
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4467 dso_local zeroext i1 @efivar_is_available() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4468 dso_local zeroext i1 @efivar_supports_writes() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4469 dso_local ptr @efivarfs_get_inode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4473 dso_local ptr @d_make_root(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !4476 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4481, metadata !DIExpression()), !dbg !4482
  br label %do.body, !dbg !4483

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4484

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4486

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4484

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4488
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4488
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4488
  store volatile ptr %0, ptr %next, align 8, !dbg !4488
  br label %do.end3, !dbg !4488

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4484

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4490

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4491

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4493

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4491

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4495
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4495
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4495
  store volatile ptr %2, ptr %prev, align 8, !dbg !4495
  br label %do.end9, !dbg !4495

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4491

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4497
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4498 dso_local i32 @efivar_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_callback(ptr noundef %name16, i64 %vendor.coerce0, i64 %vendor.coerce1, i64 noundef %name_size, ptr noundef %data) #2 align 16 !dbg !4511 {
entry:
  %retval = alloca i32, align 4
  %vendor = alloca %struct.guid_t, align 4
  %name16.addr = alloca ptr, align 8
  %name_size.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %root = alloca ptr, align 8
  %size = alloca i64, align 8
  %name = alloca ptr, align 8
  %len = alloca i32, align 4
  %err = alloca i32, align 4
  %is_removable = alloca i8, align 1
  %.compoundliteral = alloca %struct.guid_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 0
  store i64 %vendor.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 1
  store i64 %vendor.coerce1, ptr %1, align 4
  store ptr %name16, ptr %name16.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name16.addr, metadata !4513, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !4514, metadata !DIExpression()), !dbg !4551
  store i64 %name_size, ptr %name_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name_size.addr, metadata !4515, metadata !DIExpression()), !dbg !4552
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4516, metadata !DIExpression()), !dbg !4553
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #18, !dbg !4554
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4517, metadata !DIExpression()), !dbg !4555
  %2 = load ptr, ptr %data.addr, align 8, !dbg !4556
  store ptr %2, ptr %sb, align 8, !dbg !4555
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #18, !dbg !4557
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4518, metadata !DIExpression()), !dbg !4558
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #18, !dbg !4559
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4539, metadata !DIExpression()), !dbg !4560
  store ptr null, ptr %inode, align 8, !dbg !4560
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #18, !dbg !4561
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4540, metadata !DIExpression()), !dbg !4562
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #18, !dbg !4561
  call void @llvm.dbg.declare(metadata ptr %root, metadata !4541, metadata !DIExpression()), !dbg !4563
  %3 = load ptr, ptr %sb, align 8, !dbg !4564
  %s_root = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13, !dbg !4565
  %4 = load ptr, ptr %s_root, align 8, !dbg !4565
  store ptr %4, ptr %root, align 8, !dbg !4563
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #18, !dbg !4566
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4542, metadata !DIExpression()), !dbg !4567
  store i64 0, ptr %size, align 8, !dbg !4567
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #18, !dbg !4568
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4543, metadata !DIExpression()), !dbg !4569
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !4570
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4544, metadata !DIExpression()), !dbg !4571
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !4572
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4545, metadata !DIExpression()), !dbg !4573
  store i32 -12, ptr %err, align 4, !dbg !4573
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_removable) #18, !dbg !4574
  call void @llvm.dbg.declare(metadata ptr %is_removable, metadata !4546, metadata !DIExpression()), !dbg !4575
  store i8 0, ptr %is_removable, align 1, !dbg !4575
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4576
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !4576
  store i8 -68, ptr %arrayinit.begin, align 1, !dbg !4576
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !4576
  store i8 -27, ptr %arrayinit.element, align 1, !dbg !4576
  %arrayinit.element2 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !4576
  store i8 -31, ptr %arrayinit.element2, align 1, !dbg !4576
  %arrayinit.element3 = getelementptr inbounds i8, ptr %arrayinit.element2, i64 1, !dbg !4576
  store i8 28, ptr %arrayinit.element3, align 1, !dbg !4576
  %arrayinit.element4 = getelementptr inbounds i8, ptr %arrayinit.element3, i64 1, !dbg !4576
  store i8 -21, ptr %arrayinit.element4, align 1, !dbg !4576
  %arrayinit.element5 = getelementptr inbounds i8, ptr %arrayinit.element4, i64 1, !dbg !4576
  store i8 124, ptr %arrayinit.element5, align 1, !dbg !4576
  %arrayinit.element6 = getelementptr inbounds i8, ptr %arrayinit.element5, i64 1, !dbg !4576
  store i8 -14, ptr %arrayinit.element6, align 1, !dbg !4576
  %arrayinit.element7 = getelementptr inbounds i8, ptr %arrayinit.element6, i64 1, !dbg !4576
  store i8 66, ptr %arrayinit.element7, align 1, !dbg !4576
  %arrayinit.element8 = getelementptr inbounds i8, ptr %arrayinit.element7, i64 1, !dbg !4576
  store i8 -127, ptr %arrayinit.element8, align 1, !dbg !4576
  %arrayinit.element9 = getelementptr inbounds i8, ptr %arrayinit.element8, i64 1, !dbg !4576
  store i8 -27, ptr %arrayinit.element9, align 1, !dbg !4576
  %arrayinit.element10 = getelementptr inbounds i8, ptr %arrayinit.element9, i64 1, !dbg !4576
  store i8 -118, ptr %arrayinit.element10, align 1, !dbg !4576
  %arrayinit.element11 = getelementptr inbounds i8, ptr %arrayinit.element10, i64 1, !dbg !4576
  store i8 -83, ptr %arrayinit.element11, align 1, !dbg !4576
  %arrayinit.element12 = getelementptr inbounds i8, ptr %arrayinit.element11, i64 1, !dbg !4576
  store i8 -15, ptr %arrayinit.element12, align 1, !dbg !4576
  %arrayinit.element13 = getelementptr inbounds i8, ptr %arrayinit.element12, i64 1, !dbg !4576
  store i8 -128, ptr %arrayinit.element13, align 1, !dbg !4576
  %arrayinit.element14 = getelementptr inbounds i8, ptr %arrayinit.element13, i64 1, !dbg !4576
  store i8 -11, ptr %arrayinit.element14, align 1, !dbg !4576
  %arrayinit.element15 = getelementptr inbounds i8, ptr %arrayinit.element14, i64 1, !dbg !4576
  store i8 123, ptr %arrayinit.element15, align 1, !dbg !4576
  %call = call zeroext i1 @guid_equal(ptr noundef %vendor, ptr noundef %.compoundliteral) #17, !dbg !4578
  br i1 %call, label %if.then, label %if.end, !dbg !4579

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4580

if.end:                                           ; preds = %entry
  %call16 = call noalias ptr @kzalloc(i64 noundef 2168, i32 noundef 3264) #20, !dbg !4581
  store ptr %call16, ptr %entry1, align 8, !dbg !4582
  %5 = load ptr, ptr %entry1, align 8, !dbg !4583
  %tobool = icmp ne ptr %5, null, !dbg !4583
  br i1 %tobool, label %if.end18, label %if.then17, !dbg !4585

if.then17:                                        ; preds = %if.end
  %6 = load i32, ptr %err, align 4, !dbg !4586
  store i32 %6, ptr %retval, align 4, !dbg !4587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4587

if.end18:                                         ; preds = %if.end
  %7 = load ptr, ptr %entry1, align 8, !dbg !4588
  %var = getelementptr inbounds %struct.efivar_entry, ptr %7, i32 0, i32 0, !dbg !4589
  %VariableName = getelementptr inbounds %struct.efi_variable, ptr %var, i32 0, i32 0, !dbg !4590
  %arraydecay = getelementptr inbounds [512 x i16], ptr %VariableName, i64 0, i64 0, !dbg !4591
  %8 = load ptr, ptr %name16.addr, align 8, !dbg !4592
  %9 = load i64, ptr %name_size.addr, align 8, !dbg !4593
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 2 %8, i64 %9, i1 false), !dbg !4591
  %10 = load ptr, ptr %entry1, align 8, !dbg !4594
  %var19 = getelementptr inbounds %struct.efivar_entry, ptr %10, i32 0, i32 0, !dbg !4595
  %VendorGuid = getelementptr inbounds %struct.efi_variable, ptr %var19, i32 0, i32 1, !dbg !4596
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %VendorGuid, ptr align 4 %vendor, i64 16, i1 false), !dbg !4597
  %11 = load ptr, ptr %entry1, align 8, !dbg !4598
  %var20 = getelementptr inbounds %struct.efivar_entry, ptr %11, i32 0, i32 0, !dbg !4599
  %VariableName21 = getelementptr inbounds %struct.efi_variable, ptr %var20, i32 0, i32 0, !dbg !4600
  %arraydecay22 = getelementptr inbounds [512 x i16], ptr %VariableName21, i64 0, i64 0, !dbg !4598
  %call23 = call i64 @ucs2_utf8size(ptr noundef %arraydecay22) #17, !dbg !4601
  %conv = trunc i64 %call23 to i32, !dbg !4601
  store i32 %conv, ptr %len, align 4, !dbg !4602
  %12 = load i32, ptr %len, align 4, !dbg !4603
  %add = add i32 %12, 1, !dbg !4604
  %add24 = add i32 %add, 36, !dbg !4605
  %add25 = add i32 %add24, 1, !dbg !4606
  %conv26 = sext i32 %add25 to i64, !dbg !4603
  %call27 = call noalias ptr @kmalloc(i64 noundef %conv26, i32 noundef 3264) #20, !dbg !4607
  store ptr %call27, ptr %name, align 8, !dbg !4608
  %13 = load ptr, ptr %name, align 8, !dbg !4609
  %tobool28 = icmp ne ptr %13, null, !dbg !4609
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !4611

if.then29:                                        ; preds = %if.end18
  br label %fail, !dbg !4612

if.end30:                                         ; preds = %if.end18
  %14 = load ptr, ptr %name, align 8, !dbg !4613
  %15 = load ptr, ptr %entry1, align 8, !dbg !4614
  %var31 = getelementptr inbounds %struct.efivar_entry, ptr %15, i32 0, i32 0, !dbg !4615
  %VariableName32 = getelementptr inbounds %struct.efi_variable, ptr %var31, i32 0, i32 0, !dbg !4616
  %arraydecay33 = getelementptr inbounds [512 x i16], ptr %VariableName32, i64 0, i64 0, !dbg !4614
  %16 = load i32, ptr %len, align 4, !dbg !4617
  %conv34 = sext i32 %16 to i64, !dbg !4617
  %call35 = call i64 @ucs2_as_utf8(ptr noundef %14, ptr noundef %arraydecay33, i64 noundef %conv34) #17, !dbg !4618
  %17 = load ptr, ptr %entry1, align 8, !dbg !4619
  %var36 = getelementptr inbounds %struct.efivar_entry, ptr %17, i32 0, i32 0, !dbg !4621
  %VendorGuid37 = getelementptr inbounds %struct.efi_variable, ptr %var36, i32 0, i32 1, !dbg !4622
  %18 = load ptr, ptr %name, align 8, !dbg !4623
  %19 = load i32, ptr %len, align 4, !dbg !4624
  %conv38 = sext i32 %19 to i64, !dbg !4624
  %20 = getelementptr inbounds { i64, i64 }, ptr %VendorGuid37, i32 0, i32 0, !dbg !4625
  %21 = load i64, ptr %20, align 8, !dbg !4625
  %22 = getelementptr inbounds { i64, i64 }, ptr %VendorGuid37, i32 0, i32 1, !dbg !4625
  %23 = load i64, ptr %22, align 8, !dbg !4625
  %call39 = call zeroext i1 @efivar_variable_is_removable(i64 %21, i64 %23, ptr noundef %18, i64 noundef %conv38) #17, !dbg !4625
  br i1 %call39, label %if.then40, label %if.end41, !dbg !4626

if.then40:                                        ; preds = %if.end30
  store i8 1, ptr %is_removable, align 1, !dbg !4627
  br label %if.end41, !dbg !4628

if.end41:                                         ; preds = %if.then40, %if.end30
  %24 = load ptr, ptr %name, align 8, !dbg !4629
  %25 = load i32, ptr %len, align 4, !dbg !4630
  %idxprom = sext i32 %25 to i64, !dbg !4629
  %arrayidx = getelementptr i8, ptr %24, i64 %idxprom, !dbg !4629
  store i8 45, ptr %arrayidx, align 1, !dbg !4631
  %26 = load ptr, ptr %entry1, align 8, !dbg !4632
  %var42 = getelementptr inbounds %struct.efivar_entry, ptr %26, i32 0, i32 0, !dbg !4633
  %VendorGuid43 = getelementptr inbounds %struct.efi_variable, ptr %var42, i32 0, i32 1, !dbg !4634
  %27 = load ptr, ptr %name, align 8, !dbg !4635
  %28 = load i32, ptr %len, align 4, !dbg !4636
  %idx.ext = sext i32 %28 to i64, !dbg !4637
  %add.ptr = getelementptr i8, ptr %27, i64 %idx.ext, !dbg !4637
  %add.ptr44 = getelementptr i8, ptr %add.ptr, i64 1, !dbg !4638
  %call45 = call ptr @efi_guid_to_str(ptr noundef %VendorGuid43, ptr noundef %add.ptr44) #17, !dbg !4639
  %29 = load ptr, ptr %name, align 8, !dbg !4640
  %30 = load i32, ptr %len, align 4, !dbg !4641
  %add46 = add i32 %30, 36, !dbg !4642
  %add47 = add i32 %add46, 1, !dbg !4643
  %idxprom48 = sext i32 %add47 to i64, !dbg !4640
  %arrayidx49 = getelementptr i8, ptr %29, i64 %idxprom48, !dbg !4640
  store i8 0, ptr %arrayidx49, align 1, !dbg !4644
  %31 = load ptr, ptr %name, align 8, !dbg !4645
  %call50 = call ptr @strreplace(ptr noundef %31, i8 noundef zeroext 47, i8 noundef zeroext 33) #17, !dbg !4646
  %32 = load ptr, ptr %sb, align 8, !dbg !4647
  %33 = load ptr, ptr %root, align 8, !dbg !4648
  %call51 = call ptr @d_inode(ptr noundef %33) #17, !dbg !4649
  %34 = load i8, ptr %is_removable, align 1, !dbg !4650, !range !4651, !noundef !1055
  %tobool52 = trunc i8 %34 to i1, !dbg !4650
  %call53 = call ptr @efivarfs_get_inode(ptr noundef %32, ptr noundef %call51, i32 noundef 33188, i32 noundef 0, i1 noundef zeroext %tobool52) #17, !dbg !4652
  store ptr %call53, ptr %inode, align 8, !dbg !4653
  %35 = load ptr, ptr %inode, align 8, !dbg !4654
  %tobool54 = icmp ne ptr %35, null, !dbg !4654
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !4656

if.then55:                                        ; preds = %if.end41
  br label %fail_name, !dbg !4657

if.end56:                                         ; preds = %if.end41
  %36 = load ptr, ptr %root, align 8, !dbg !4658
  %37 = load ptr, ptr %name, align 8, !dbg !4659
  %call57 = call ptr @efivarfs_alloc_dentry(ptr noundef %36, ptr noundef %37) #17, !dbg !4660
  store ptr %call57, ptr %dentry, align 8, !dbg !4661
  %38 = load ptr, ptr %dentry, align 8, !dbg !4662
  %call58 = call zeroext i1 @IS_ERR(ptr noundef %38) #17, !dbg !4664
  br i1 %call58, label %if.then59, label %if.end62, !dbg !4665

if.then59:                                        ; preds = %if.end56
  %39 = load ptr, ptr %dentry, align 8, !dbg !4666
  %call60 = call i64 @PTR_ERR(ptr noundef %39) #17, !dbg !4668
  %conv61 = trunc i64 %call60 to i32, !dbg !4668
  store i32 %conv61, ptr %err, align 4, !dbg !4669
  br label %fail_inode, !dbg !4670

if.end62:                                         ; preds = %if.end56
  %40 = load ptr, ptr %entry1, align 8, !dbg !4671
  %call63 = call i32 @__efivar_entry_get(ptr noundef %40, ptr noundef null, ptr noundef %size, ptr noundef null) #17, !dbg !4672
  %41 = load ptr, ptr %entry1, align 8, !dbg !4673
  call void @__efivar_entry_add(ptr noundef %41, ptr noundef @efivarfs_list) #17, !dbg !4674
  %42 = load ptr, ptr %name, align 8, !dbg !4675
  call void @kfree(ptr noundef %42) #17, !dbg !4676
  %43 = load ptr, ptr %inode, align 8, !dbg !4677
  call void @inode_lock(ptr noundef %43) #17, !dbg !4678
  %44 = load ptr, ptr %entry1, align 8, !dbg !4679
  %45 = load ptr, ptr %inode, align 8, !dbg !4680
  %i_private = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 47, !dbg !4681
  store ptr %44, ptr %i_private, align 8, !dbg !4682
  %46 = load ptr, ptr %inode, align 8, !dbg !4683
  %47 = load i64, ptr %size, align 8, !dbg !4684
  %add64 = add i64 %47, 4, !dbg !4685
  call void @i_size_write(ptr noundef %46, i64 noundef %add64) #17, !dbg !4686
  %48 = load ptr, ptr %inode, align 8, !dbg !4687
  call void @inode_unlock(ptr noundef %48) #17, !dbg !4688
  %49 = load ptr, ptr %dentry, align 8, !dbg !4689
  %50 = load ptr, ptr %inode, align 8, !dbg !4690
  call void @d_add(ptr noundef %49, ptr noundef %50) #17, !dbg !4691
  store i32 0, ptr %retval, align 4, !dbg !4692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4692

fail_inode:                                       ; preds = %if.then59
  call void @llvm.dbg.label(metadata !4547), !dbg !4693
  %51 = load ptr, ptr %inode, align 8, !dbg !4694
  call void @iput(ptr noundef %51) #17, !dbg !4695
  br label %fail_name, !dbg !4695

fail_name:                                        ; preds = %fail_inode, %if.then55
  call void @llvm.dbg.label(metadata !4548), !dbg !4696
  %52 = load ptr, ptr %name, align 8, !dbg !4697
  call void @kfree(ptr noundef %52) #17, !dbg !4698
  br label %fail, !dbg !4698

fail:                                             ; preds = %fail_name, %if.then29
  call void @llvm.dbg.label(metadata !4549), !dbg !4699
  %53 = load ptr, ptr %entry1, align 8, !dbg !4700
  call void @kfree(ptr noundef %53) #17, !dbg !4701
  %54 = load i32, ptr %err, align 4, !dbg !4702
  store i32 %54, ptr %retval, align 4, !dbg !4703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4703

cleanup:                                          ; preds = %fail, %if.end62, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_removable) #18, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #18, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #18, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #18, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #18, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #18, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #18, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #18, !dbg !4704
  %55 = load i32, ptr %retval, align 4, !dbg !4704
  ret i32 %55, !dbg !4704
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4705 dso_local i32 @efivar_entry_iter(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_destroy(ptr noundef %entry1, ptr noundef %data) #2 align 16 !dbg !4711 {
entry:
  %entry.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4713, metadata !DIExpression()), !dbg !4715
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4714, metadata !DIExpression()), !dbg !4716
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4717
  call void @efivar_entry_remove(ptr noundef %0) #17, !dbg !4718
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4719
  call void @kfree(ptr noundef %1) #17, !dbg !4720
  ret i32 0, !dbg !4721
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @efivarfs_evict_inode(ptr noundef %inode) #2 align 16 !dbg !4722 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4724, metadata !DIExpression()), !dbg !4725
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4726
  call void @clear_inode(ptr noundef %0) #17, !dbg !4727
  ret void, !dbg !4728
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_statfs(ptr noundef %dentry, ptr noundef %buf) #2 align 16 !dbg !4273 {
entry:
  %dentry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %attr = alloca i32, align 4
  %storage_space = alloca i64, align 8
  %remaining_space = alloca i64, align 8
  %max_variable_size = alloca i64, align 8
  %status = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4275, metadata !DIExpression()), !dbg !4729
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4276, metadata !DIExpression()), !dbg !4730
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #18, !dbg !4731
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !4277, metadata !DIExpression()), !dbg !4732
  store i32 7, ptr %attr, align 4, !dbg !4732
  call void @llvm.lifetime.start.p0(i64 8, ptr %storage_space) #18, !dbg !4733
  call void @llvm.dbg.declare(metadata ptr %storage_space, metadata !4279, metadata !DIExpression()), !dbg !4734
  call void @llvm.lifetime.start.p0(i64 8, ptr %remaining_space) #18, !dbg !4733
  call void @llvm.dbg.declare(metadata ptr %remaining_space, metadata !4280, metadata !DIExpression()), !dbg !4735
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_variable_size) #18, !dbg !4733
  call void @llvm.dbg.declare(metadata ptr %max_variable_size, metadata !4281, metadata !DIExpression()), !dbg !4736
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #18, !dbg !4737
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4282, metadata !DIExpression()), !dbg !4738
  store i64 0, ptr %remaining_space, align 8, !dbg !4739
  store i64 0, ptr %storage_space, align 8, !dbg !4740
  %call = call zeroext i1 @efi_rt_services_supported(i32 noundef 8192) #17, !dbg !4741
  br i1 %call, label %if.then, label %if.end8, !dbg !4743

if.then:                                          ; preds = %entry
  %call1 = call i64 @efivar_query_variable_info(i32 noundef 7, ptr noundef %storage_space, ptr noundef %remaining_space, ptr noundef %max_variable_size) #17, !dbg !4744
  store i64 %call1, ptr %status, align 8, !dbg !4746
  %0 = load i64, ptr %status, align 8, !dbg !4747
  %cmp = icmp ne i64 %0, 0, !dbg !4749
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !4750

land.lhs.true:                                    ; preds = %if.then
  %1 = load i64, ptr %status, align 8, !dbg !4751
  %cmp2 = icmp ne i64 %1, -9223372036854775805, !dbg !4752
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !4753

if.then3:                                         ; preds = %land.lhs.true
  %call4 = call i32 @___ratelimit(ptr noundef @efivarfs_statfs._rs, ptr noundef @__func__.efivarfs_statfs) #17, !dbg !4754
  %tobool = icmp ne i32 %call4, 0, !dbg !4754
  br i1 %tobool, label %if.then5, label %if.end, !dbg !4757

if.then5:                                         ; preds = %if.then3
  br label %do.body, !dbg !4758

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !4760

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4760

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %status, align 8, !dbg !4758
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %2) #19, !dbg !4758
  store i32 %call6, ptr %tmp, align 4, !dbg !4760
  %3 = load i32, ptr %tmp, align 4, !dbg !4758
  br label %if.end, !dbg !4754

if.end:                                           ; preds = %do.end, %if.then3
  br label %if.end7, !dbg !4762

if.end7:                                          ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end8, !dbg !4763

if.end8:                                          ; preds = %if.end7, %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !4764
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %4, i32 0, i32 1, !dbg !4765
  store i64 1, ptr %f_bsize, align 8, !dbg !4766
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !4767
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 8, !dbg !4768
  store i64 255, ptr %f_namelen, align 8, !dbg !4769
  %6 = load i64, ptr %storage_space, align 8, !dbg !4770
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !4771
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %7, i32 0, i32 2, !dbg !4772
  store i64 %6, ptr %f_blocks, align 8, !dbg !4773
  %8 = load i64, ptr %remaining_space, align 8, !dbg !4774
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !4775
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %9, i32 0, i32 3, !dbg !4776
  store i64 %8, ptr %f_bfree, align 8, !dbg !4777
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !4778
  %d_sb = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 9, !dbg !4779
  %11 = load ptr, ptr %d_sb, align 8, !dbg !4779
  %s_magic = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 12, !dbg !4780
  %12 = load i64, ptr %s_magic, align 32, !dbg !4780
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !4781
  %f_type = getelementptr inbounds %struct.kstatfs, ptr %13, i32 0, i32 0, !dbg !4782
  store i64 %12, ptr %f_type, align 8, !dbg !4783
  %14 = load i64, ptr %remaining_space, align 8, !dbg !4784
  %call9 = call i64 @efivar_reserved_space() #21, !dbg !4786
  %cmp10 = icmp ugt i64 %14, %call9, !dbg !4787
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !4788

if.then11:                                        ; preds = %if.end8
  %15 = load i64, ptr %remaining_space, align 8, !dbg !4789
  %call12 = call i64 @efivar_reserved_space() #21, !dbg !4790
  %sub = sub i64 %15, %call12, !dbg !4791
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !4792
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %16, i32 0, i32 4, !dbg !4793
  store i64 %sub, ptr %f_bavail, align 8, !dbg !4794
  br label %if.end14, !dbg !4792

if.else:                                          ; preds = %if.end8
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !4795
  %f_bavail13 = getelementptr inbounds %struct.kstatfs, ptr %17, i32 0, i32 4, !dbg !4796
  store i64 0, ptr %f_bavail13, align 8, !dbg !4797
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #18, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_variable_size) #18, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %remaining_space) #18, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %storage_space) #18, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #18, !dbg !4798
  ret i32 0, !dbg !4799
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4800 dso_local void @clear_inode(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_rt_services_supported(i32 noundef %mask) #5 align 16 !dbg !4801 {
entry:
  %mask.addr = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4805, metadata !DIExpression()), !dbg !4806
  %0 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4, !dbg !4807
  %1 = load i32, ptr %mask.addr, align 4, !dbg !4808
  %and = and i32 %0, %1, !dbg !4809
  %2 = load i32, ptr %mask.addr, align 4, !dbg !4810
  %cmp = icmp eq i32 %and, %2, !dbg !4811
  ret i1 %cmp, !dbg !4812
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4813 dso_local i64 @efivar_query_variable_info(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4817 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4821 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(none)
declare !dbg !4825 dso_local i64 @efivar_reserved_space() #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_d_hash(ptr noundef %dentry, ptr noundef %qstr) #2 align 16 !dbg !4828 {
entry:
  %dentry.addr = alloca ptr, align 8
  %qstr.addr = alloca ptr, align 8
  %hash = alloca i64, align 8
  %s = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4830, metadata !DIExpression()), !dbg !4835
  store ptr %qstr, ptr %qstr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qstr.addr, metadata !4831, metadata !DIExpression()), !dbg !4836
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #18, !dbg !4837
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !4832, metadata !DIExpression()), !dbg !4838
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4839
  %1 = ptrtoint ptr %0 to i64, !dbg !4839
  store i64 %1, ptr %hash, align 8, !dbg !4838
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #18, !dbg !4840
  call void @llvm.dbg.declare(metadata ptr %s, metadata !4833, metadata !DIExpression()), !dbg !4841
  %2 = load ptr, ptr %qstr.addr, align 8, !dbg !4842
  %name = getelementptr inbounds %struct.qstr, ptr %2, i32 0, i32 1, !dbg !4843
  %3 = load ptr, ptr %name, align 8, !dbg !4843
  store ptr %3, ptr %s, align 8, !dbg !4841
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4834, metadata !DIExpression()), !dbg !4845
  %4 = load ptr, ptr %qstr.addr, align 8, !dbg !4846
  %5 = getelementptr inbounds %struct.qstr, ptr %4, i32 0, i32 0, !dbg !4847
  %len1 = getelementptr inbounds %struct.anon.19, ptr %5, i32 0, i32 1, !dbg !4847
  %6 = load i32, ptr %len1, align 4, !dbg !4847
  store i32 %6, ptr %len, align 4, !dbg !4845
  br label %while.cond, !dbg !4848

while.cond:                                       ; preds = %while.body, %entry
  %7 = load i32, ptr %len, align 4, !dbg !4849
  %dec = add i32 %7, -1, !dbg !4849
  store i32 %dec, ptr %len, align 4, !dbg !4849
  %cmp = icmp ugt i32 %7, 36, !dbg !4850
  br i1 %cmp, label %while.body, label %while.end, !dbg !4848

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %s, align 8, !dbg !4851
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !4851
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !4851
  %9 = load i8, ptr %8, align 1, !dbg !4852
  %conv = zext i8 %9 to i64, !dbg !4852
  %10 = load i64, ptr %hash, align 8, !dbg !4853
  %call = call i64 @partial_name_hash(i64 noundef %conv, i64 noundef %10) #17, !dbg !4854
  store i64 %call, ptr %hash, align 8, !dbg !4855
  br label %while.cond, !dbg !4848, !llvm.loop !4856

while.end:                                        ; preds = %while.cond
  br label %while.cond2, !dbg !4860

while.cond2:                                      ; preds = %while.body4, %while.end
  %11 = load i32, ptr %len, align 4, !dbg !4861
  %dec3 = add i32 %11, -1, !dbg !4861
  store i32 %dec3, ptr %len, align 4, !dbg !4861
  %tobool = icmp ne i32 %11, 0, !dbg !4860
  br i1 %tobool, label %while.body4, label %while.end9, !dbg !4860

while.body4:                                      ; preds = %while.cond2
  %12 = load ptr, ptr %s, align 8, !dbg !4862
  %incdec.ptr5 = getelementptr i8, ptr %12, i32 1, !dbg !4862
  store ptr %incdec.ptr5, ptr %s, align 8, !dbg !4862
  %13 = load i8, ptr %12, align 1, !dbg !4862
  %call6 = call zeroext i8 @__tolower(i8 noundef zeroext %13) #17, !dbg !4862
  %conv7 = zext i8 %call6 to i64, !dbg !4862
  %14 = load i64, ptr %hash, align 8, !dbg !4863
  %call8 = call i64 @partial_name_hash(i64 noundef %conv7, i64 noundef %14) #17, !dbg !4864
  store i64 %call8, ptr %hash, align 8, !dbg !4865
  br label %while.cond2, !dbg !4860, !llvm.loop !4866

while.end9:                                       ; preds = %while.cond2
  %15 = load i64, ptr %hash, align 8, !dbg !4868
  %call10 = call i32 @end_name_hash(i64 noundef %15) #17, !dbg !4869
  %16 = load ptr, ptr %qstr.addr, align 8, !dbg !4870
  %17 = getelementptr inbounds %struct.qstr, ptr %16, i32 0, i32 0, !dbg !4871
  %hash11 = getelementptr inbounds %struct.anon.19, ptr %17, i32 0, i32 0, !dbg !4871
  store i32 %call10, ptr %hash11, align 8, !dbg !4872
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !4873
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #18, !dbg !4873
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #18, !dbg !4873
  ret i32 0, !dbg !4874
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_d_compare(ptr noundef %dentry, i32 noundef %len, ptr noundef %str, ptr noundef %name) #2 align 16 !dbg !4875 {
entry:
  %retval = alloca i32, align 4
  %dentry.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %guid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4877, metadata !DIExpression()), !dbg !4882
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4878, metadata !DIExpression()), !dbg !4883
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4879, metadata !DIExpression()), !dbg !4884
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4880, metadata !DIExpression()), !dbg !4885
  call void @llvm.lifetime.start.p0(i64 4, ptr %guid) #18, !dbg !4886
  call void @llvm.dbg.declare(metadata ptr %guid, metadata !4881, metadata !DIExpression()), !dbg !4887
  %0 = load i32, ptr %len.addr, align 4, !dbg !4888
  %sub = sub i32 %0, 36, !dbg !4889
  store i32 %sub, ptr %guid, align 4, !dbg !4887
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4890
  %2 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 0, !dbg !4892
  %len1 = getelementptr inbounds %struct.anon.19, ptr %2, i32 0, i32 1, !dbg !4892
  %3 = load i32, ptr %len1, align 4, !dbg !4892
  %4 = load i32, ptr %len.addr, align 4, !dbg !4893
  %cmp = icmp ne i32 %3, %4, !dbg !4894
  br i1 %cmp, label %if.then, label %if.end, !dbg !4895

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4896

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %str.addr, align 8, !dbg !4897
  %6 = load ptr, ptr %name.addr, align 8, !dbg !4899
  %name2 = getelementptr inbounds %struct.qstr, ptr %6, i32 0, i32 1, !dbg !4900
  %7 = load ptr, ptr %name2, align 8, !dbg !4900
  %8 = load i32, ptr %guid, align 4, !dbg !4901
  %conv = sext i32 %8 to i64, !dbg !4901
  %call = call i32 @memcmp(ptr noundef %5, ptr noundef %7, i64 noundef %conv) #17, !dbg !4902
  %tobool = icmp ne i32 %call, 0, !dbg !4902
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !4903

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4904

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %name.addr, align 8, !dbg !4905
  %name5 = getelementptr inbounds %struct.qstr, ptr %9, i32 0, i32 1, !dbg !4906
  %10 = load ptr, ptr %name5, align 8, !dbg !4906
  %11 = load i32, ptr %guid, align 4, !dbg !4907
  %idx.ext = sext i32 %11 to i64, !dbg !4908
  %add.ptr = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !4908
  %12 = load ptr, ptr %str.addr, align 8, !dbg !4909
  %13 = load i32, ptr %guid, align 4, !dbg !4910
  %idx.ext6 = sext i32 %13 to i64, !dbg !4911
  %add.ptr7 = getelementptr i8, ptr %12, i64 %idx.ext6, !dbg !4911
  %call8 = call i32 @strncasecmp(ptr noundef %add.ptr, ptr noundef %add.ptr7, i64 noundef 36) #17, !dbg !4912
  store i32 %call8, ptr %retval, align 4, !dbg !4913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4913

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %guid) #18, !dbg !4914
  %14 = load i32, ptr %retval, align 4, !dbg !4914
  ret i32 %14, !dbg !4914
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @partial_name_hash(i64 noundef %c, i64 noundef %prevhash) #5 align 16 !dbg !4915 {
entry:
  %c.addr = alloca i64, align 8
  %prevhash.addr = alloca i64, align 8
  store i64 %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !4920, metadata !DIExpression()), !dbg !4922
  store i64 %prevhash, ptr %prevhash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prevhash.addr, metadata !4921, metadata !DIExpression()), !dbg !4923
  %0 = load i64, ptr %prevhash.addr, align 8, !dbg !4924
  %1 = load i64, ptr %c.addr, align 8, !dbg !4925
  %shl = shl i64 %1, 4, !dbg !4926
  %add = add i64 %0, %shl, !dbg !4927
  %2 = load i64, ptr %c.addr, align 8, !dbg !4928
  %shr = lshr i64 %2, 4, !dbg !4929
  %add1 = add i64 %add, %shr, !dbg !4930
  %mul = mul i64 %add1, 11, !dbg !4931
  ret i64 %mul, !dbg !4932
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__tolower(i8 noundef zeroext %c) #5 align 16 !dbg !4933 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  %0 = load i8, ptr %c.addr, align 1, !dbg !4940
  %conv = zext i8 %0 to i32, !dbg !4940
  %idxprom = sext i32 %conv to i64, !dbg !4940
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !4940
  %1 = load i8, ptr %arrayidx, align 1, !dbg !4940
  %conv1 = zext i8 %1 to i32, !dbg !4940
  %and = and i32 %conv1, 1, !dbg !4940
  %cmp = icmp ne i32 %and, 0, !dbg !4940
  br i1 %cmp, label %if.then, label %if.end, !dbg !4942

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !4943
  %conv3 = zext i8 %2 to i32, !dbg !4943
  %sub = sub i32 %conv3, -32, !dbg !4943
  %conv4 = trunc i32 %sub to i8, !dbg !4943
  store i8 %conv4, ptr %c.addr, align 1, !dbg !4943
  br label %if.end, !dbg !4944

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !4945
  ret i8 %3, !dbg !4946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @end_name_hash(i64 noundef %hash) #5 align 16 !dbg !4947 {
entry:
  %hash.addr = alloca i64, align 8
  store i64 %hash, ptr %hash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  %0 = load i64, ptr %hash.addr, align 8, !dbg !4953
  %call = call i32 @hash_64_generic(i64 noundef %0, i32 noundef 32) #17, !dbg !4953
  ret i32 %call, !dbg !4954
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_64_generic(i64 noundef %val, i32 noundef %bits) #8 align 16 !dbg !4955 {
entry:
  %val.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4960, metadata !DIExpression()), !dbg !4962
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !4961, metadata !DIExpression()), !dbg !4963
  %0 = load i64, ptr %val.addr, align 8, !dbg !4964
  %mul = mul i64 %0, 7046029254386353131, !dbg !4965
  %1 = load i32, ptr %bits.addr, align 4, !dbg !4966
  %sub = sub i32 64, %1, !dbg !4967
  %sh_prom = zext i32 %sub to i64, !dbg !4968
  %shr = lshr i64 %mul, %sh_prom, !dbg !4968
  %conv = trunc i64 %shr to i32, !dbg !4964
  ret i32 %conv, !dbg !4969
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4970 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4974 dso_local i32 @strncasecmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @guid_equal(ptr noundef %u1, ptr noundef %u2) #5 align 16 !dbg !4977 {
entry:
  %u1.addr = alloca ptr, align 8
  %u2.addr = alloca ptr, align 8
  store ptr %u1, ptr %u1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u1.addr, metadata !4983, metadata !DIExpression()), !dbg !4985
  store ptr %u2, ptr %u2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u2.addr, metadata !4984, metadata !DIExpression()), !dbg !4986
  %0 = load ptr, ptr %u1.addr, align 8, !dbg !4987
  %1 = load ptr, ptr %u2.addr, align 8, !dbg !4988
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef 16) #17, !dbg !4989
  %cmp = icmp eq i32 %call, 0, !dbg !4990
  ret i1 %cmp, !dbg !4991
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !4992 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4996, metadata !DIExpression()), !dbg !4998
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4997, metadata !DIExpression()), !dbg !4999
  %0 = load i64, ptr %size.addr, align 8, !dbg !5000
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5001
  %or = or i32 %1, 256, !dbg !5002
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !5003
  ret ptr %call, !dbg !5004
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5005 dso_local i64 @ucs2_utf8size(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5012 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5014, metadata !DIExpression()), !dbg !5019
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5015, metadata !DIExpression()), !dbg !5020
  %0 = load i64, ptr %size.addr, align 8, !dbg !5021
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5022
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5023

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5024
  %tobool = icmp ne i64 %2, 0, !dbg !5024
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5025

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5016, metadata !DIExpression()), !dbg !5027
  %3 = load i64, ptr %size.addr, align 8, !dbg !5028
  %cmp = icmp ugt i64 %3, 8192, !dbg !5030
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5031

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5032
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5033
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !5034
  store ptr %call, ptr %retval, align 8, !dbg !5035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5035

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5036
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5036
  store i32 %call2, ptr %index, align 4, !dbg !5037
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5038
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5039
  %9 = ptrtoint ptr %8 to i64, !dbg !5039
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5040
  %idxprom = zext i32 %call3 to i64, !dbg !5041
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5041
  %10 = load i32, ptr %index, align 4, !dbg !5042
  %idxprom4 = zext i32 %10 to i64, !dbg !5041
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5041
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5041
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5043
  %13 = load i64, ptr %size.addr, align 8, !dbg !5044
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !5045
  store ptr %call6, ptr %retval, align 8, !dbg !5046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5046

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !5047
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5048
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5049
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !5050
  store ptr %call8, ptr %retval, align 8, !dbg !5051
  br label %return, !dbg !5051

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5052
  ret ptr %16, !dbg !5052
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5053 dso_local i64 @ucs2_as_utf8(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5057 dso_local zeroext i1 @efivar_variable_is_removable(i64, i64, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @efi_guid_to_str(ptr noundef %guid, ptr noundef %out) #5 align 16 !dbg !5060 {
entry:
  %guid.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !5065, metadata !DIExpression()), !dbg !5067
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5066, metadata !DIExpression()), !dbg !5068
  %0 = load ptr, ptr %out.addr, align 8, !dbg !5069
  %1 = load ptr, ptr %guid.addr, align 8, !dbg !5070
  %b = getelementptr inbounds %struct.guid_t, ptr %1, i32 0, i32 0, !dbg !5071
  %arraydecay = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !5070
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.3, ptr noundef %arraydecay) #17, !dbg !5072
  %2 = load ptr, ptr %out.addr, align 8, !dbg !5073
  ret ptr %2, !dbg !5074
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5075 dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #5 align 16 !dbg !5078 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5082, metadata !DIExpression()), !dbg !5083
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5084
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5085
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5085
  ret ptr %1, !dbg !5086
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @efivarfs_alloc_dentry(ptr noundef %parent, ptr noundef %name) #2 align 16 !dbg !5087 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %q = alloca %struct.qstr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5091, metadata !DIExpression()), !dbg !5096
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5092, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #18, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5093, metadata !DIExpression()), !dbg !5099
  call void @llvm.lifetime.start.p0(i64 16, ptr %q) #18, !dbg !5100
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5094, metadata !DIExpression()), !dbg !5101
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !5102
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5095, metadata !DIExpression()), !dbg !5103
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5104
  %name1 = getelementptr inbounds %struct.qstr, ptr %q, i32 0, i32 1, !dbg !5105
  store ptr %0, ptr %name1, align 8, !dbg !5106
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5107
  %call = call i64 @strlen(ptr noundef %1) #17, !dbg !5108
  %conv = trunc i64 %call to i32, !dbg !5108
  %2 = getelementptr inbounds %struct.qstr, ptr %q, i32 0, i32 0, !dbg !5109
  %len = getelementptr inbounds %struct.anon.19, ptr %2, i32 0, i32 1, !dbg !5109
  store i32 %conv, ptr %len, align 4, !dbg !5110
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !5111
  %call2 = call i32 @efivarfs_d_hash(ptr noundef %3, ptr noundef %q) #17, !dbg !5112
  store i32 %call2, ptr %err, align 4, !dbg !5113
  %4 = load i32, ptr %err, align 4, !dbg !5114
  %tobool = icmp ne i32 %4, 0, !dbg !5114
  br i1 %tobool, label %if.then, label %if.end, !dbg !5116

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %err, align 4, !dbg !5117
  %conv3 = sext i32 %5 to i64, !dbg !5117
  %call4 = call ptr @ERR_PTR(i64 noundef %conv3) #17, !dbg !5118
  store ptr %call4, ptr %retval, align 8, !dbg !5119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5119

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !5120
  %call5 = call ptr @d_alloc(ptr noundef %6, ptr noundef %q) #17, !dbg !5121
  store ptr %call5, ptr %d, align 8, !dbg !5122
  %7 = load ptr, ptr %d, align 8, !dbg !5123
  %tobool6 = icmp ne ptr %7, null, !dbg !5123
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5125

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %d, align 8, !dbg !5126
  store ptr %8, ptr %retval, align 8, !dbg !5127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5127

if.end8:                                          ; preds = %if.end
  %call9 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5128
  store ptr %call9, ptr %retval, align 8, !dbg !5129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5129

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !5130
  call void @llvm.lifetime.end.p0(i64 16, ptr %q) #18, !dbg !5130
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #18, !dbg !5130
  %9 = load ptr, ptr %retval, align 8, !dbg !5130
  ret ptr %9, !dbg !5130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !5131 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5136, metadata !DIExpression()), !dbg !5137
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5138
  %1 = ptrtoint ptr %0 to i64, !dbg !5138
  %2 = inttoptr i64 %1 to ptr, !dbg !5138
  %3 = ptrtoint ptr %2 to i64, !dbg !5138
  %cmp = icmp uge i64 %3, -4095, !dbg !5138
  %lnot = xor i1 %cmp, true, !dbg !5138
  %lnot1 = xor i1 %lnot, true, !dbg !5138
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5138
  %conv = sext i32 %lnot.ext to i64, !dbg !5138
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5138
  %tobool = icmp ne i64 %expval, 0, !dbg !5138
  ret i1 %tobool, !dbg !5139
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !5140 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5146
  %1 = ptrtoint ptr %0 to i64, !dbg !5147
  ret i64 %1, !dbg !5148
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5149 dso_local i32 @__efivar_entry_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5152 dso_local void @__efivar_entry_add(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5155 dso_local void @kfree(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock(ptr noundef %inode) #5 align 16 !dbg !5158 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5162
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !5163
  call void @down_write(ptr noundef %i_rwsem) #17, !dbg !5164
  ret void, !dbg !5165
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_size_write(ptr noundef %inode, i64 noundef %i_size) #5 align 16 !dbg !5166 {
entry:
  %inode.addr = alloca ptr, align 8
  %i_size.addr = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5170, metadata !DIExpression()), !dbg !5172
  store i64 %i_size, ptr %i_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i_size.addr, metadata !5171, metadata !DIExpression()), !dbg !5173
  %0 = load i64, ptr %i_size.addr, align 8, !dbg !5174
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5175
  %i_size1 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15, !dbg !5176
  store i64 %0, ptr %i_size1, align 8, !dbg !5177
  ret void, !dbg !5178
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_unlock(ptr noundef %inode) #5 align 16 !dbg !5179 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5183
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !5184
  call void @up_write(ptr noundef %i_rwsem) #17, !dbg !5185
  ret void, !dbg !5186
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5187 dso_local void @d_add(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5188 dso_local void @iput(ptr noundef) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5189 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !5190 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5194, metadata !DIExpression()), !dbg !5196
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5195, metadata !DIExpression()), !dbg !5197
  %0 = load i64, ptr %size.addr, align 8, !dbg !5198
  %tobool = icmp ne i64 %0, 0, !dbg !5198
  br i1 %tobool, label %if.end, label %if.then, !dbg !5200

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5201
  br label %return, !dbg !5201

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5202
  %cmp = icmp ule i64 %1, 8, !dbg !5204
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5205

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5206
  br label %return, !dbg !5206

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5207
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5209
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5210

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5211
  %cmp4 = icmp ule i64 %3, 96, !dbg !5212
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5213

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5214
  br label %return, !dbg !5214

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5215
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5217
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5218

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5219
  %cmp9 = icmp ule i64 %5, 192, !dbg !5220
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5221

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5222
  br label %return, !dbg !5222

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5223
  %cmp12 = icmp ule i64 %6, 8, !dbg !5225
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5226

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5227
  br label %return, !dbg !5227

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5228
  %cmp15 = icmp ule i64 %7, 16, !dbg !5230
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5231

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5232
  br label %return, !dbg !5232

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5233
  %cmp18 = icmp ule i64 %8, 32, !dbg !5235
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5236

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5237
  br label %return, !dbg !5237

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5238
  %cmp21 = icmp ule i64 %9, 64, !dbg !5240
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5241

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5242
  br label %return, !dbg !5242

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5243
  %cmp24 = icmp ule i64 %10, 128, !dbg !5245
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5246

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5247
  br label %return, !dbg !5247

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5248
  %cmp27 = icmp ule i64 %11, 256, !dbg !5250
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5251

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5252
  br label %return, !dbg !5252

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5253
  %cmp30 = icmp ule i64 %12, 512, !dbg !5255
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5256

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5257
  br label %return, !dbg !5257

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5258
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5260
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5261

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5262
  br label %return, !dbg !5262

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5263
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5265
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5266

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5267
  br label %return, !dbg !5267

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5268
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5270
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5271

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5272
  br label %return, !dbg !5272

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5273
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5275
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5276

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5277
  br label %return, !dbg !5277

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5278
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5280
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5281

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5282
  br label %return, !dbg !5282

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5283
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5285
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5286

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5287
  br label %return, !dbg !5287

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5288
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5290
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5291

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5292
  br label %return, !dbg !5292

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5293
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5295
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5296

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5297
  br label %return, !dbg !5297

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5298
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5300
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5301

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5302
  br label %return, !dbg !5302

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5303
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5305
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5306

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5307
  br label %return, !dbg !5307

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5308
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5310
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5311

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5312
  br label %return, !dbg !5312

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5313
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5315
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5316

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5317
  br label %return, !dbg !5317

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5318, !range !4651, !noundef !1055
  %tobool69 = trunc i8 %25 to i1, !dbg !5318
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5320

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5321

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_212() #23, !dbg !5322, !srcloc !5325
  unreachable, !dbg !5322

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5326

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5327

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5328

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5330

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5328

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #18, !dbg !5332, !srcloc !5334
  br label %do.end75, !dbg !5332

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5328

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5335
  br label %return, !dbg !5335

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5336
  ret i32 %26, !dbg !5336
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5337 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !5343 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5347, metadata !DIExpression()), !dbg !5349
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5348, metadata !DIExpression()), !dbg !5350
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5351
  %and = and i32 %0, 17, !dbg !5351
  %cmp = icmp eq i32 %and, 0, !dbg !5351
  %lnot = xor i1 %cmp, true, !dbg !5351
  %lnot1 = xor i1 %lnot, true, !dbg !5351
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5351
  %conv = sext i32 %lnot.ext to i64, !dbg !5351
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5351
  %tobool = icmp ne i64 %expval, 0, !dbg !5351
  br i1 %tobool, label %if.then, label %if.end, !dbg !5353

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5354
  br label %return, !dbg !5354

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5355
  %and2 = and i32 %1, 1, !dbg !5357
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5357
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5358

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5359
  br label %return, !dbg !5359

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5360
  br label %return, !dbg !5360

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5362
  ret i32 %2, !dbg !5362
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5363 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5364 dso_local void @__compiletime_assert_212() #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5365 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5369 dso_local i64 @strlen(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5372 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  %0 = load i64, ptr %error.addr, align 8, !dbg !5378
  %1 = inttoptr i64 %0 to ptr, !dbg !5379
  ret ptr %1, !dbg !5380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5381 dso_local ptr @d_alloc(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5384 dso_local void @down_write(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5388 dso_local void @up_write(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5389 dso_local void @efivar_entry_remove(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5392 dso_local void @kill_litter_super(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5393 dso_local i32 @unregister_filesystem(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone nounwind willreturn memory(none) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317}
!llvm.ident = !{!4318}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "efivarfs_list", scope: !2, file: !3, line: 21, type: !138, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/efivarfs/.super.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D MODULE -D KBUILD_BASENAME=\22super\22 -D KBUILD_MODNAME=\22efivarfs\22 -D __KBUILD_MODNAME=kmod_efivarfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/efivarfs/super.ll fs/efivarfs/super.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !4240, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/efivarfs/super.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7710805d5fdc2bfb38b5aa362cf6deaf")
!4 = !{!5, !15, !23, !28, !34, !41, !49, !65, !72, !78, !83, !89, !96, !101, !110, !115}
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !24, line: 2052, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!27 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !29, line: 54, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "USRQUOTA", value: 0)
!32 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!33 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !35, line: 312, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!38 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!39 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!40 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !42, line: 68, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!43 = !{!44, !45, !46, !47, !48}
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !50, line: 1325, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!52 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!53 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!54 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!55 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!56 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!57 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!58 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!59 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!60 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!61 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!62 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!63 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!64 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !66, line: 15, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!69 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!70 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!71 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !73, line: 26, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !79, line: 65, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!80 = !{!81, !82}
!81 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!82 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !84, line: 16, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "TT_NONE", value: 0)
!87 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!88 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !90, line: 51, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!91 = !{!92, !93, !94, !95}
!92 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!93 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!94 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!95 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !6, line: 29, baseType: !7, size: 32, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!99 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!100 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !6, line: 38, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109}
!103 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!104 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!105 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!106 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!107 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!108 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!109 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 10, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "false", value: 0)
!114 = !DIEnumerator(name: "true", value: 1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !116, line: 364, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!119 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!120 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!121 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!122 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!123 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!124 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!125 = !{!126, !127, !131, !132, !133, !134, !135, !142, !869, !775}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !128, line: 52, baseType: !129)
!128 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !130, line: 88, baseType: !131)
!130 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!131 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !128, line: 190, size: 128, elements: !139)
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !128, line: 191, baseType: !137, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !138, file: !128, line: 191, baseType: !137, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !24, line: 1190, size: 10752, elements: !144)
!144 = !{!145, !146, !153, !154, !155, !156, !2627, !2775, !2815, !2897, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2914, !2918, !2919, !2922, !2925, !2928, !2931, !2932, !2933, !2974, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4183, !4190, !4191, !4192, !4193, !4194, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !143, file: !24, line: 1191, baseType: !138, size: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !143, file: !24, line: 1192, baseType: !147, size: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !128, line: 21, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !128, line: 18, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !150, line: 21, baseType: !151)
!150 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !152, line: 27, baseType: !7)
!152 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!153 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !143, file: !24, line: 1193, baseType: !134, size: 8, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !143, file: !24, line: 1194, baseType: !132, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !143, file: !24, line: 1195, baseType: !127, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !143, file: !24, line: 1196, baseType: !157, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !24, line: 2366, size: 576, elements: !159)
!159 = !{!160, !164, !165, !2602, !2606, !2610, !2614, !2615, !2616, !2617, !2619, !2620, !2621, !2623, !2624, !2625, !2626}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !24, line: 2367, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !158, file: !24, line: 2368, baseType: !133, size: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !158, file: !24, line: 2376, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!133, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !6, line: 90, size: 1216, elements: !171)
!171 = !{!172, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2572, !2573, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !170, file: !6, line: 91, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !6, line: 115, size: 384, elements: !176)
!176 = !{!177, !181, !185, !2557, !2561, !2562}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !175, file: !6, line: 116, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !169}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !175, file: !6, line: 117, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!133, !169, !169}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !175, file: !6, line: 118, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!133, !169, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !6, line: 63, size: 320, elements: !191)
!191 = !{!192, !193, !194, !2555, !2556}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !190, file: !6, line: 64, baseType: !161, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !190, file: !6, line: 65, baseType: !5, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !6, line: 66, baseType: !195, size: 64, offset: 128)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !6, line: 66, size: 64, elements: !196)
!196 = !{!197, !199, !200, !218}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !195, file: !6, line: 67, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !195, file: !6, line: 68, baseType: !126, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !6, line: 69, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !24, line: 2470, size: 256, elements: !203)
!203 = !{!204, !205, !206, !211, !214}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !24, line: 2471, baseType: !161, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !202, file: !24, line: 2472, baseType: !161, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !202, file: !24, line: 2473, baseType: !207, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !128, line: 174, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 172, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !208, file: !128, line: 173, baseType: !133, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !202, file: !24, line: 2474, baseType: !212, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !24, line: 2469, flags: DIFlagFwdDecl)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !202, file: !24, line: 2475, baseType: !215, offset: 256)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: -1)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !195, file: !6, line: 70, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !24, line: 994, size: 1856, align: 64, elements: !221)
!221 = !{!222, !241, !277, !279, !288, !301, !302, !303, !382, !603, !612, !2545, !2546, !2547, !2548, !2549, !2550, !2552, !2553, !2554}
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !24, line: 995, baseType: !223, size: 128)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !220, file: !24, line: 995, size: 128, elements: !224)
!224 = !{!225, !231, !240}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !223, file: !24, line: 996, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !227, line: 60, size: 64, elements: !228)
!227 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !227, line: 61, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !223, file: !24, line: 997, baseType: !232, size: 128, align: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !128, line: 232, size: 128, align: 64, elements: !233)
!233 = !{!234, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !128, line: 233, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !232, file: !128, line: 234, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !235}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !223, file: !24, line: 998, baseType: !7, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !220, file: !24, line: 1005, baseType: !242, size: 32, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !243, line: 29, baseType: !244)
!243 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !243, line: 17, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !243, line: 18, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !243, line: 18, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !247, file: !243, line: 19, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !251, line: 14, size: 32, elements: !252)
!251 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !250, file: !251, line: 15, baseType: !254, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !255, line: 44, baseType: !256)
!255 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !255, line: 14, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !255, line: 15, baseType: !259, size: 32)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 15, size: 32, elements: !260)
!260 = !{!261, !262, !269}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !259, file: !255, line: 16, baseType: !207, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !255, line: 24, baseType: !263, size: 16)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !255, line: 24, size: 16, elements: !264)
!264 = !{!265, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !263, file: !255, line: 25, baseType: !266, size: 8)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !150, line: 17, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !152, line: 21, baseType: !134)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !263, file: !255, line: 26, baseType: !266, size: 8, offset: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !255, line: 28, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !255, line: 28, size: 32, elements: !271)
!271 = !{!272, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !270, file: !255, line: 29, baseType: !273, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !150, line: 19, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !152, line: 24, baseType: !275)
!275 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !270, file: !255, line: 30, baseType: !273, size: 16, offset: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !220, file: !24, line: 1006, baseType: !278, size: 32, offset: 160)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !128, line: 156, baseType: !7)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !220, file: !24, line: 1007, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !281, line: 13, baseType: !282)
!281 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !128, line: 181, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 179, size: 64, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !283, file: !128, line: 180, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !150, line: 22, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !152, line: 30, baseType: !131)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !220, file: !24, line: 1008, baseType: !289, size: 256, offset: 256)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !290, line: 66, size: 256, elements: !291)
!290 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!291 = !{!292, !293, !295, !300}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !289, file: !290, line: 67, baseType: !280, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !289, file: !290, line: 68, baseType: !294, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !251, line: 23, baseType: !250)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !289, file: !290, line: 70, baseType: !296, size: 32, offset: 96)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !297, line: 15, size: 32, elements: !298)
!297 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !296, file: !297, line: 20, baseType: !207, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !289, file: !290, line: 72, baseType: !138, size: 128, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !220, file: !24, line: 1009, baseType: !127, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !220, file: !24, line: 1010, baseType: !7, size: 32, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !220, file: !24, line: 1011, baseType: !304, size: 256, offset: 640)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !24, line: 948, size: 256, elements: !305)
!305 = !{!306, !329, !371, !372, !380, !381}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !304, file: !24, line: 949, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !308, line: 34, baseType: !309)
!308 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 25, size: 64, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !309, file: !308, line: 26, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !313, line: 27, baseType: !314)
!313 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !313, line: 13, size: 64, elements: !315)
!315 = !{!316, !328}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !313, line: 14, baseType: !317, size: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !313, line: 14, size: 32, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !317, file: !313, line: 15, baseType: !207, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !313, line: 16, baseType: !321, size: 32)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !313, line: 16, size: 32, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !321, file: !313, line: 18, baseType: !266, size: 8)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !321, file: !313, line: 19, baseType: !325, size: 24, offset: 8)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 24, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 3)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !314, file: !313, line: 26, baseType: !254, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !304, file: !24, line: 950, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !16, line: 59, size: 768, elements: !332)
!332 = !{!333, !339, !340, !341, !354, !355, !362, !363}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !331, file: !16, line: 61, baseType: !334, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !335, line: 113, baseType: !336)
!335 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !335, line: 111, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !336, file: !335, line: 112, baseType: !207, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !331, file: !16, line: 62, baseType: !7, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !331, file: !16, line: 63, baseType: !242, size: 32, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !331, file: !16, line: 65, baseType: !342, size: 256, offset: 128)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 256, elements: !352)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !128, line: 194, size: 64, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !343, file: !128, line: 195, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !128, line: 198, size: 128, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !128, line: 199, baseType: !346, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !347, file: !128, line: 199, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !331, file: !16, line: 66, baseType: !343, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !331, file: !16, line: 68, baseType: !356, size: 192, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !357, line: 41, baseType: !358)
!357 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !357, line: 37, size: 192, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !358, file: !357, line: 38, baseType: !242, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !358, file: !357, line: 39, baseType: !138, size: 128, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !331, file: !16, line: 69, baseType: !232, size: 128, align: 64, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !331, file: !16, line: 70, baseType: !364, offset: 768)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, elements: !216)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !16, line: 54, size: 128, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !365, file: !16, line: 55, baseType: !133, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !365, file: !16, line: 56, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !16, line: 56, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !304, file: !24, line: 951, baseType: !15, size: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !304, file: !24, line: 952, baseType: !373, size: 32, offset: 160)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !374, line: 23, baseType: !375)
!374 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 21, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !375, file: !374, line: 22, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !128, line: 37, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !130, line: 49, baseType: !7)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !304, file: !24, line: 952, baseType: !373, size: 32, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !304, file: !24, line: 953, baseType: !133, size: 32, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !220, file: !24, line: 1012, baseType: !383, size: 64, offset: 896)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !386, line: 110, size: 1472, elements: !387)
!386 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!387 = !{!388, !389, !390, !397, !398, !399, !400, !401, !402, !403, !404, !413, !414, !415, !416, !417, !418, !548, !549, !550, !551, !552, !583, !586, !590, !598}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !385, file: !386, line: 111, baseType: !280, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !385, file: !386, line: 112, baseType: !373, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !385, file: !386, line: 113, baseType: !391, size: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !374, line: 28, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 26, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !392, file: !374, line: 27, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !128, line: 38, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !130, line: 50, baseType: !7)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !385, file: !386, line: 114, baseType: !373, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !385, file: !386, line: 115, baseType: !391, size: 32, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !385, file: !386, line: 116, baseType: !373, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !385, file: !386, line: 117, baseType: !391, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !385, file: !386, line: 118, baseType: !373, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !385, file: !386, line: 119, baseType: !391, size: 32, offset: 288)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !385, file: !386, line: 120, baseType: !7, size: 32, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !385, file: !386, line: 121, baseType: !405, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !406, line: 24, baseType: !407)
!406 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 24, size: 64, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !407, file: !406, line: 24, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !150, line: 23, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !152, line: 31, baseType: !412)
!412 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !385, file: !386, line: 122, baseType: !405, size: 64, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !385, file: !386, line: 123, baseType: !405, size: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !385, file: !386, line: 124, baseType: !405, size: 64, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !385, file: !386, line: 125, baseType: !405, size: 64, offset: 640)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !385, file: !386, line: 127, baseType: !134, size: 8, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !385, file: !386, line: 129, baseType: !419, size: 64, offset: 768)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !421, line: 195, size: 1728, elements: !422)
!421 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!422 = !{!423, !424, !429, !441, !450, !453, !454, !461, !462, !463, !464, !467, !468, !469, !471, !472, !512, !533}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !420, file: !421, line: 196, baseType: !334, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !420, file: !421, line: 197, baseType: !425, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !421, line: 28, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !128, line: 104, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !150, line: 20, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !152, line: 26, baseType: !133)
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 198, baseType: !430, size: 192, offset: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 198, size: 192, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !430, file: !421, line: 199, baseType: !138, size: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !430, file: !421, line: 200, baseType: !434, size: 192, align: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !435, line: 5, size: 192, align: 64, elements: !436)
!435 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!436 = !{!437, !438, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !434, file: !435, line: 6, baseType: !132, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !434, file: !435, line: 7, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !434, file: !435, line: 8, baseType: !439, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !420, file: !421, line: 205, baseType: !442, size: 320, offset: 256)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !443, line: 48, size: 320, elements: !444)
!443 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!444 = !{!445, !446, !447, !448, !449}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !442, file: !443, line: 49, baseType: !280, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !442, file: !443, line: 55, baseType: !280, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !442, file: !443, line: 57, baseType: !296, size: 32, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !442, file: !443, line: 59, baseType: !294, size: 32, offset: 160)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !442, file: !443, line: 60, baseType: !138, size: 128, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !420, file: !421, line: 206, baseType: !451, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !421, line: 206, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !420, file: !421, line: 207, baseType: !126, size: 64, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 208, baseType: !455, size: 64, offset: 704)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 208, size: 64, elements: !456)
!456 = !{!457, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !455, file: !421, line: 209, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !459, line: 8, baseType: !287)
!459 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!460 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !455, file: !421, line: 210, baseType: !458, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !420, file: !421, line: 212, baseType: !458, size: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !420, file: !421, line: 213, baseType: !373, size: 32, offset: 832)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !420, file: !421, line: 214, baseType: !391, size: 32, offset: 864)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !420, file: !421, line: 215, baseType: !465, size: 32, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !421, line: 31, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !128, line: 110, baseType: !149)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !420, file: !421, line: 216, baseType: !275, size: 16, offset: 928)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !420, file: !421, line: 217, baseType: !275, size: 16, offset: 944)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !420, file: !421, line: 221, baseType: !470, size: 16, offset: 960)
!470 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !421, line: 228, baseType: !132, size: 64, offset: 1024)
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 245, baseType: !473, size: 320, offset: 1088)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 245, size: 320, elements: !474)
!474 = !{!475, !504}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !473, file: !421, line: 246, baseType: !476, size: 320)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !421, line: 114, size: 320, elements: !477)
!477 = !{!478, !479, !491, !494, !503}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !476, file: !421, line: 116, baseType: !132, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !421, line: 117, baseType: !480, size: 64, offset: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !421, line: 117, size: 64, elements: !481)
!481 = !{!482, !490}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !421, line: 118, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !480, file: !421, line: 118, size: 64, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !483, file: !421, line: 120, baseType: !273, size: 16)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !483, file: !421, line: 121, baseType: !487, size: 48, offset: 16)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 48, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 6)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !480, file: !421, line: 127, baseType: !132, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !421, line: 129, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !421, line: 102, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !476, file: !421, line: 130, baseType: !495, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !421, line: 108, size: 192, elements: !497)
!497 = !{!498, !499, !500}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !496, file: !421, line: 109, baseType: !232, size: 128, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !496, file: !421, line: 110, baseType: !334, size: 32, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !496, file: !421, line: 111, baseType: !501, size: 8, offset: 160)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !128, line: 35, baseType: !502)
!502 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !476, file: !421, line: 131, baseType: !161, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !421, line: 247, baseType: !505, size: 320)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !473, file: !421, line: 247, size: 320, elements: !506)
!506 = !{!507, !508, !509, !510, !511}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !505, file: !421, line: 248, baseType: !132, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !505, file: !421, line: 249, baseType: !132, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !505, file: !421, line: 250, baseType: !492, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !505, file: !421, line: 251, baseType: !495, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !505, file: !421, line: 252, baseType: !198, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 260, baseType: !513, size: 256, offset: 1408)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 260, size: 256, elements: !514)
!514 = !{!515, !521}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !513, file: !421, line: 261, baseType: !516, size: 256)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !421, line: 134, size: 256, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !516, file: !421, line: 135, baseType: !126, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !516, file: !421, line: 136, baseType: !520, size: 256)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !352)
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !421, line: 262, baseType: !522, size: 256)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !513, file: !421, line: 262, size: 256, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !522, file: !421, line: 264, baseType: !138, size: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !522, file: !421, line: 265, baseType: !526, size: 128, offset: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !527, line: 22, size: 128, elements: !528)
!527 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!528 = !{!529, !532}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !526, file: !527, line: 23, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !527, line: 23, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !526, file: !527, line: 24, baseType: !132, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !420, file: !421, line: 280, baseType: !534, size: 64, offset: 1664)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !421, line: 176, size: 192, elements: !536)
!536 = !{!537, !546, !547}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !535, file: !421, line: 177, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !421, line: 171, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!133, !419, !542, !544, !419}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !535, file: !421, line: 178, baseType: !419, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !535, file: !421, line: 179, baseType: !492, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !385, file: !386, line: 130, baseType: !419, size: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !385, file: !386, line: 131, baseType: !419, size: 64, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !385, file: !386, line: 132, baseType: !419, size: 64, offset: 960)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !385, file: !386, line: 135, baseType: !126, size: 64, offset: 1024)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !385, file: !386, line: 137, baseType: !553, size: 64, offset: 1088)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !555, line: 14, size: 1088, elements: !556)
!555 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!556 = !{!557, !558, !567, !568, !569, !570, !571, !572}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !554, file: !555, line: 15, baseType: !334, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !554, file: !555, line: 17, baseType: !559, size: 320, offset: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !560, line: 22, size: 320, elements: !561)
!560 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!561 = !{!562, !563, !564, !565}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !559, file: !560, line: 23, baseType: !294, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !559, file: !560, line: 24, baseType: !286, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !559, file: !560, line: 26, baseType: !138, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !559, file: !560, line: 28, baseType: !566, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !554, file: !555, line: 19, baseType: !132, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !554, file: !555, line: 20, baseType: !280, size: 64, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !554, file: !555, line: 23, baseType: !347, size: 128, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !554, file: !555, line: 24, baseType: !373, size: 32, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !554, file: !555, line: 29, baseType: !280, size: 64, offset: 704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !554, file: !555, line: 36, baseType: !573, size: 320, offset: 768)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !574, line: 15, size: 320, elements: !575)
!574 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!575 = !{!576, !577, !578, !579, !580, !581, !582}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !573, file: !574, line: 16, baseType: !294, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !573, file: !574, line: 18, baseType: !133, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !573, file: !574, line: 19, baseType: !133, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !573, file: !574, line: 20, baseType: !133, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !573, file: !574, line: 21, baseType: !133, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !573, file: !574, line: 22, baseType: !132, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !574, line: 23, baseType: !132, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !385, file: !386, line: 138, baseType: !584, size: 64, offset: 1152)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !374, line: 18, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !385, file: !386, line: 139, baseType: !587, size: 64, offset: 1216)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !589, line: 16, flags: DIFlagFwdDecl)
!589 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!590 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !385, file: !386, line: 140, baseType: !591, size: 64, offset: 1280)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !386, line: 25, size: 64, elements: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !592, file: !386, line: 26, baseType: !207, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !592, file: !386, line: 27, baseType: !133, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !592, file: !386, line: 28, baseType: !597, offset: 64)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, elements: !216)
!598 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !386, line: 142, baseType: !599, size: 128, offset: 1344)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !386, line: 142, size: 128, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !599, file: !386, line: 143, baseType: !133, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !599, file: !386, line: 144, baseType: !232, size: 128, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !220, file: !24, line: 1013, baseType: !604, size: 256, offset: 960)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !24, line: 970, size: 256, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !604, file: !24, line: 971, baseType: !132, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !604, file: !24, line: 972, baseType: !7, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !604, file: !24, line: 973, baseType: !7, size: 32, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !604, file: !24, line: 974, baseType: !7, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !604, file: !24, line: 975, baseType: !7, size: 32, offset: 160)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !604, file: !24, line: 976, baseType: !127, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !220, file: !24, line: 1014, baseType: !613, size: 128, offset: 1216)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !614, line: 8, size: 128, elements: !615)
!614 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!615 = !{!616, !2544}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !613, file: !614, line: 9, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !619, line: 70, size: 256, elements: !620)
!619 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!620 = !{!621, !2541, !2542, !2543}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !618, file: !619, line: 71, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !624, line: 82, size: 1536, elements: !625)
!624 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!625 = !{!626, !627, !637, !645, !646, !661, !2449, !2453, !2466, !2525, !2526, !2527, !2528, !2533, !2534, !2535}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !623, file: !624, line: 84, baseType: !7, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !623, file: !624, line: 85, baseType: !628, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !629, line: 275, baseType: !630)
!629 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !629, line: 275, size: 32, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !630, file: !629, line: 275, baseType: !633, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !629, line: 69, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !629, line: 64, size: 32, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !634, file: !629, line: 65, baseType: !7, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !623, file: !624, line: 86, baseType: !638, size: 128, offset: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !639, line: 38, size: 128, elements: !640)
!639 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!640 = !{!641, !643}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !639, line: 39, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !638, file: !639, line: 39, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !623, file: !624, line: 87, baseType: !622, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !623, file: !624, line: 88, baseType: !647, size: 128, offset: 256)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !624, line: 49, size: 128, elements: !648)
!648 = !{!649, !658}
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !647, file: !624, line: 50, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !624, line: 50, size: 64, elements: !651)
!651 = !{!652, !657}
!652 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !624, line: 51, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !650, file: !624, line: 51, size: 64, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !653, file: !624, line: 52, baseType: !149, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !653, file: !624, line: 52, baseType: !149, size: 32, offset: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !650, file: !624, line: 54, baseType: !410, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !624, line: 56, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !623, file: !624, line: 89, baseType: !662, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !24, line: 641, size: 4800, elements: !664)
!664 = !{!665, !667, !668, !669, !670, !671, !672, !675, !676, !872, !873, !1576, !1577, !1578, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !2421, !2424, !2425, !2426, !2443, !2444, !2445, !2448}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !663, file: !24, line: 642, baseType: !666, size: 16)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !128, line: 24, baseType: !275)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !663, file: !24, line: 643, baseType: !275, size: 16, offset: 16)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !663, file: !24, line: 644, baseType: !373, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !663, file: !24, line: 645, baseType: !138, size: 128, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !663, file: !24, line: 646, baseType: !391, size: 32, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !663, file: !24, line: 647, baseType: !7, size: 32, offset: 224)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !663, file: !24, line: 650, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !24, line: 607, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !663, file: !24, line: 651, baseType: !673, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !663, file: !24, line: 654, baseType: !677, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !24, line: 1966, size: 2048, align: 512, elements: !680)
!680 = !{!681, !685, !698, !704, !708, !712, !716, !720, !724, !728, !732, !733, !737, !741, !779, !810, !820, !826, !830, !834, !838, !842, !846, !852, !856}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !679, file: !24, line: 1967, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!622, !662, !622, !7}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !679, file: !24, line: 1968, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!161, !622, !662, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !691, line: 10, size: 128, elements: !692)
!691 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!692 = !{!693, !697}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !690, file: !691, line: 11, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !126}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !690, file: !691, line: 12, baseType: !126, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !679, file: !24, line: 1969, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!133, !702, !662, !133}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !406, line: 42, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !679, file: !24, line: 1970, baseType: !705, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!673, !662, !133, !501}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !679, file: !24, line: 1972, baseType: !709, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!133, !622, !198, !133}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !679, file: !24, line: 1974, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!133, !702, !662, !622, !666, !501}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !679, file: !24, line: 1976, baseType: !717, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!133, !622, !662, !622}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !679, file: !24, line: 1977, baseType: !721, size: 64, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!133, !662, !622}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !679, file: !24, line: 1978, baseType: !725, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!133, !702, !662, !622, !161}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !679, file: !24, line: 1980, baseType: !729, size: 64, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!133, !702, !662, !622, !666}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !679, file: !24, line: 1982, baseType: !721, size: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !679, file: !24, line: 1983, baseType: !734, size: 64, offset: 704)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!133, !702, !662, !622, !666, !147}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !679, file: !24, line: 1985, baseType: !738, size: 64, offset: 768)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!133, !702, !662, !622, !662, !622, !7}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !679, file: !24, line: 1987, baseType: !742, size: 64, offset: 832)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!133, !702, !622, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !24, line: 226, size: 640, elements: !747)
!747 = !{!748, !749, !750, !760, !769, !770, !776, !777, !778}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !746, file: !24, line: 227, baseType: !7, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !746, file: !24, line: 228, baseType: !666, size: 16, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !24, line: 241, baseType: !751, size: 32, offset: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !24, line: 241, size: 32, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !751, file: !24, line: 242, baseType: !373, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !751, file: !24, line: 243, baseType: !755, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !756, line: 16, baseType: !757)
!756 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !756, line: 14, size: 32, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !757, file: !756, line: 15, baseType: !378, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !24, line: 245, baseType: !761, size: 32, offset: 96)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !24, line: 245, size: 32, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !761, file: !24, line: 246, baseType: !391, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !761, file: !24, line: 247, baseType: !765, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !756, line: 20, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !756, line: 18, size: 32, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !766, file: !756, line: 19, baseType: !395, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !746, file: !24, line: 249, baseType: !127, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !746, file: !24, line: 250, baseType: !771, size: 128, offset: 192)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !459, line: 13, size: 128, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !771, file: !459, line: 14, baseType: !458, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !771, file: !459, line: 15, baseType: !775, size: 64, offset: 64)
!775 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !746, file: !24, line: 251, baseType: !771, size: 128, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !746, file: !24, line: 252, baseType: !771, size: 128, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !746, file: !24, line: 259, baseType: !219, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !679, file: !24, line: 1988, baseType: !780, size: 64, offset: 896)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!133, !702, !783, !785, !149, !7}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !787, line: 22, size: 1280, elements: !788)
!787 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!788 = !{!789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !786, file: !787, line: 23, baseType: !149, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !786, file: !787, line: 24, baseType: !666, size: 16, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !786, file: !787, line: 25, baseType: !7, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !786, file: !787, line: 26, baseType: !466, size: 32, offset: 96)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !786, file: !787, line: 27, baseType: !410, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !786, file: !787, line: 28, baseType: !410, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !786, file: !787, line: 41, baseType: !410, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !786, file: !787, line: 42, baseType: !147, size: 32, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !786, file: !787, line: 43, baseType: !147, size: 32, offset: 352)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !786, file: !787, line: 44, baseType: !373, size: 32, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !786, file: !787, line: 45, baseType: !391, size: 32, offset: 416)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !786, file: !787, line: 46, baseType: !127, size: 64, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !786, file: !787, line: 47, baseType: !771, size: 128, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !786, file: !787, line: 48, baseType: !771, size: 128, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !786, file: !787, line: 49, baseType: !771, size: 128, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !786, file: !787, line: 50, baseType: !771, size: 128, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !786, file: !787, line: 51, baseType: !410, size: 64, offset: 1024)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !786, file: !787, line: 52, baseType: !410, size: 64, offset: 1088)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !786, file: !787, line: 53, baseType: !149, size: 32, offset: 1152)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !786, file: !787, line: 54, baseType: !149, size: 32, offset: 1184)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !786, file: !787, line: 55, baseType: !410, size: 64, offset: 1216)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !679, file: !24, line: 1990, baseType: !811, size: 64, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!814, !622, !198, !817}
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !128, line: 66, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !130, line: 73, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !130, line: 15, baseType: !775)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 61, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !130, line: 72, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !130, line: 16, baseType: !132)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !679, file: !24, line: 1991, baseType: !821, size: 64, offset: 1024)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!133, !662, !824, !410, !410}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !24, line: 55, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !679, file: !24, line: 1993, baseType: !827, size: 64, offset: 1088)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!133, !662, !133}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !679, file: !24, line: 1994, baseType: !831, size: 64, offset: 1152)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!133, !662, !622, !219, !7, !666}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !679, file: !24, line: 1997, baseType: !835, size: 64, offset: 1216)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!133, !702, !662, !219, !666}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !679, file: !24, line: 1999, baseType: !839, size: 64, offset: 1280)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!673, !702, !622, !133}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !679, file: !24, line: 2001, baseType: !843, size: 64, offset: 1344)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!133, !702, !622, !673, !133}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !679, file: !24, line: 2003, baseType: !847, size: 64, offset: 1408)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!133, !702, !622, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !24, line: 76, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !679, file: !24, line: 2005, baseType: !853, size: 64, offset: 1472)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!133, !622, !850}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !679, file: !24, line: 2006, baseType: !857, size: 64, offset: 1536)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!860, !662}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !24, line: 3192, size: 192, elements: !862)
!862 = !{!863, !871}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !861, file: !24, line: 3193, baseType: !864, size: 128)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !865, line: 296, size: 128, elements: !866)
!865 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!866 = !{!867, !868, !870}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !864, file: !865, line: 297, baseType: !242, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !864, file: !865, line: 299, baseType: !869, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !128, line: 154, baseType: !7)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !864, file: !865, line: 300, baseType: !126, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !861, file: !24, line: 3194, baseType: !149, size: 32, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !663, file: !24, line: 655, baseType: !142, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !663, file: !24, line: 656, baseType: !874, size: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !24, line: 472, size: 1536, align: 64, elements: !876)
!876 = !{!877, !878, !879, !880, !881, !882, !890, !891, !892, !1568, !1569, !1570, !1573, !1574, !1575}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !875, file: !24, line: 473, baseType: !662, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !875, file: !24, line: 474, baseType: !864, size: 128, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !875, file: !24, line: 475, baseType: !442, size: 320, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !875, file: !24, line: 476, baseType: !869, size: 32, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !875, file: !24, line: 477, baseType: !207, size: 32, offset: 544)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !875, file: !24, line: 482, baseType: !883, size: 128, offset: 576)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !435, line: 26, size: 128, elements: !884)
!884 = !{!885, !889}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !883, file: !435, line: 27, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !435, line: 12, size: 64, elements: !887)
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !886, file: !435, line: 13, baseType: !439, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !883, file: !435, line: 28, baseType: !439, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !875, file: !24, line: 483, baseType: !132, size: 64, offset: 704)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !875, file: !24, line: 484, baseType: !132, size: 64, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !875, file: !24, line: 485, baseType: !893, size: 64, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !24, line: 404, size: 1280, elements: !896)
!896 = !{!897, !1366, !1436, !1440, !1444, !1461, !1467, !1471, !1476, !1480, !1484, !1488, !1532, !1536, !1540, !1544, !1549, !1553, !1560, !1564}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !895, file: !24, line: 405, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!133, !901, !1364}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !50, line: 74, size: 512, align: 128, elements: !903)
!903 = !{!904, !905, !1358, !1363}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !902, file: !50, line: 75, baseType: !132, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !50, line: 83, baseType: !906, size: 320, offset: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !902, file: !50, line: 83, size: 320, elements: !907)
!907 = !{!908, !929, !943, !947, !1357}
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !50, line: 84, baseType: !909, size: 320)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !50, line: 84, size: 320, elements: !910)
!910 = !{!911, !922, !923, !928}
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !50, line: 90, baseType: !912, size: 128)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !50, line: 90, size: 128, elements: !913)
!913 = !{!914, !915, !920, !921}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !912, file: !50, line: 91, baseType: !138, size: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !50, line: 94, baseType: !916, size: 128)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !50, line: 94, size: 128, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !916, file: !50, line: 96, baseType: !126, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !916, file: !50, line: 98, baseType: !7, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !912, file: !50, line: 102, baseType: !138, size: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !912, file: !50, line: 103, baseType: !138, size: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !909, file: !50, line: 106, baseType: !874, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !50, line: 107, baseType: !924, size: 64, offset: 192)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !50, line: 107, size: 64, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !924, file: !50, line: 108, baseType: !132, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !924, file: !50, line: 109, baseType: !132, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !909, file: !50, line: 117, baseType: !132, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !50, line: 119, baseType: !930, size: 320)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !50, line: 119, size: 320, elements: !931)
!931 = !{!932, !933, !936, !937, !938}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !930, file: !50, line: 124, baseType: !132, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !930, file: !50, line: 125, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !50, line: 125, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !930, file: !50, line: 126, baseType: !132, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !930, file: !50, line: 127, baseType: !132, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !50, line: 128, baseType: !939, size: 64, offset: 256)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !50, line: 128, size: 64, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !939, file: !50, line: 133, baseType: !132, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !939, file: !50, line: 138, baseType: !280, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !50, line: 141, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !50, line: 141, size: 64, elements: !945)
!945 = !{!946}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !944, file: !50, line: 142, baseType: !132, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !50, line: 144, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !50, line: 144, size: 128, elements: !949)
!949 = !{!950, !1356}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !948, file: !50, line: 146, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !42, line: 126, size: 1216, elements: !953)
!953 = !{!954, !964, !985, !996, !997, !998, !999, !1338, !1339, !1340}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !952, file: !42, line: 127, baseType: !955, size: 384)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !42, line: 21, size: 384, elements: !956)
!956 = !{!957, !958, !960, !961, !962, !963}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !955, file: !42, line: 22, baseType: !132, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !955, file: !42, line: 23, baseType: !959, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !955, file: !42, line: 24, baseType: !959, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !955, file: !42, line: 25, baseType: !132, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !955, file: !42, line: 26, baseType: !132, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !955, file: !42, line: 27, baseType: !132, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !952, file: !42, line: 128, baseType: !965, size: 128, offset: 384)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !966, line: 105, size: 128, elements: !967)
!966 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !965, file: !966, line: 110, baseType: !132, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !965, file: !966, line: 118, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !966, line: 95, size: 448, elements: !972)
!972 = !{!973, !974, !980, !981, !982, !983, !984}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !971, file: !966, line: 96, baseType: !280, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !971, file: !966, line: 97, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !966, line: 60, baseType: !977)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !971, file: !966, line: 98, baseType: !975, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !971, file: !966, line: 99, baseType: !501, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !971, file: !966, line: 100, baseType: !501, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !971, file: !966, line: 101, baseType: !232, size: 128, align: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !971, file: !966, line: 102, baseType: !979, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !952, file: !42, line: 129, baseType: !986, size: 256, offset: 512)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !987, line: 26, size: 256, elements: !988)
!987 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !986, file: !987, line: 27, baseType: !7, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !986, file: !987, line: 28, baseType: !991, size: 192, offset: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !992, line: 43, size: 192, elements: !993)
!992 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !991, file: !992, line: 44, baseType: !294, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !991, file: !992, line: 45, baseType: !138, size: 128, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !952, file: !42, line: 130, baseType: !41, size: 32, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !42, line: 131, baseType: !7, size: 32, offset: 800)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !952, file: !42, line: 132, baseType: !132, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !952, file: !42, line: 133, baseType: !1000, size: 64, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !42, line: 77, size: 192, elements: !1003)
!1003 = !{!1004, !1008, !1334}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1002, file: !42, line: 83, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !901}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1002, file: !42, line: 89, baseType: !1009, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !50, line: 1184, baseType: !7)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1015, line: 512, size: 896, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1016 = !{!1017, !1301, !1302, !1309, !1316, !1326, !1327, !1328, !1330, !1332}
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !1015, line: 513, baseType: !1018, size: 320)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !1015, line: 513, size: 320, elements: !1019)
!1019 = !{!1020, !1297, !1298, !1299, !1300}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1018, file: !1015, line: 514, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !50, line: 625, size: 1344, elements: !1023)
!1023 = !{!1024, !1033, !1202, !1208, !1215, !1216, !1221, !1222, !1227, !1228, !1231, !1290, !1291, !1292, !1293, !1294, !1295}
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !50, line: 628, baseType: !1025, size: 128)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !50, line: 628, size: 128, elements: !1026)
!1026 = !{!1027, !1032}
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !50, line: 629, baseType: !1028, size: 128)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !50, line: 629, size: 128, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1028, file: !50, line: 631, baseType: !132, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1028, file: !50, line: 632, baseType: !132, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1025, file: !50, line: 635, baseType: !232, size: 128, align: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1022, file: !50, line: 639, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !50, line: 733, size: 10240, elements: !1036)
!1036 = !{!1037, !1200}
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !50, line: 734, baseType: !1038, size: 10240)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !50, line: 734, size: 10240, elements: !1039)
!1039 = !{!1040, !1044, !1058, !1062, !1063, !1064, !1065, !1066, !1067, !1076, !1077, !1078, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1117, !1119, !1122, !1169, !1170, !1171, !1174, !1175, !1176, !1179, !1180, !1181, !1187, !1188}
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !50, line: 739, baseType: !1041, size: 512, align: 512)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1038, file: !50, line: 739, size: 512, align: 512, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1041, file: !50, line: 747, baseType: !207, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1038, file: !50, line: 750, baseType: !1045, size: 128, offset: 512)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1046, line: 218, size: 128, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1047 = !{!1048, !1056, !1057}
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !1046, line: 219, baseType: !1049, size: 32)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !1046, line: 219, size: 32, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1049, file: !1046, line: 220, baseType: !242, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1049, file: !1046, line: 221, baseType: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1046, line: 197, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1046, line: 197, elements: !1055)
!1055 = !{}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1045, file: !1046, line: 223, baseType: !7, size: 32, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1045, file: !1046, line: 224, baseType: !126, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1038, file: !50, line: 752, baseType: !1059, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!132, !219, !132, !132, !132, !132}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1038, file: !50, line: 756, baseType: !132, size: 64, offset: 704)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1038, file: !50, line: 757, baseType: !132, size: 64, offset: 768)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1038, file: !50, line: 760, baseType: !132, size: 64, offset: 832)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1038, file: !50, line: 761, baseType: !132, size: 64, offset: 896)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1038, file: !50, line: 763, baseType: !132, size: 64, offset: 960)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1038, file: !50, line: 764, baseType: !1068, size: 64, offset: 1024)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1070, line: 299, baseType: !1071)
!1070 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1070, line: 299, size: 64, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1071, file: !1070, line: 299, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1075, line: 18, baseType: !132)
!1075 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1038, file: !50, line: 773, baseType: !207, size: 32, offset: 1088)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1038, file: !50, line: 785, baseType: !207, size: 32, offset: 1120)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1038, file: !50, line: 795, baseType: !1079, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !50, line: 726, size: 128, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1080, file: !50, line: 727, baseType: !410, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1080, file: !50, line: 728, baseType: !133, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1038, file: !50, line: 801, baseType: !132, size: 64, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1038, file: !50, line: 804, baseType: !280, size: 64, offset: 1280)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1038, file: !50, line: 806, baseType: !133, size: 32, offset: 1344)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1038, file: !50, line: 808, baseType: !242, size: 32, offset: 1376)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1038, file: !50, line: 823, baseType: !442, size: 320, offset: 1408)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1038, file: !50, line: 825, baseType: !138, size: 128, offset: 1728)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1038, file: !50, line: 845, baseType: !133, size: 32, offset: 1856)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1038, file: !50, line: 849, baseType: !132, size: 64, offset: 1920)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1038, file: !50, line: 850, baseType: !132, size: 64, offset: 1984)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1038, file: !50, line: 852, baseType: !132, size: 64, offset: 2048)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1038, file: !50, line: 853, baseType: !132, size: 64, offset: 2112)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1038, file: !50, line: 854, baseType: !282, size: 64, offset: 2176)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1038, file: !50, line: 855, baseType: !132, size: 64, offset: 2240)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1038, file: !50, line: 856, baseType: !132, size: 64, offset: 2304)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1038, file: !50, line: 857, baseType: !132, size: 64, offset: 2368)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1038, file: !50, line: 858, baseType: !132, size: 64, offset: 2432)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1038, file: !50, line: 865, baseType: !633, size: 32, offset: 2496)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1038, file: !50, line: 867, baseType: !242, size: 32, offset: 2528)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1038, file: !50, line: 869, baseType: !132, size: 64, offset: 2560)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1038, file: !50, line: 869, baseType: !132, size: 64, offset: 2624)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1038, file: !50, line: 869, baseType: !132, size: 64, offset: 2688)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1038, file: !50, line: 869, baseType: !132, size: 64, offset: 2752)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1038, file: !50, line: 870, baseType: !132, size: 64, offset: 2816)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1038, file: !50, line: 870, baseType: !132, size: 64, offset: 2880)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1038, file: !50, line: 870, baseType: !132, size: 64, offset: 2944)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1038, file: !50, line: 871, baseType: !132, size: 64, offset: 3008)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1038, file: !50, line: 871, baseType: !132, size: 64, offset: 3072)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1038, file: !50, line: 871, baseType: !132, size: 64, offset: 3136)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1038, file: !50, line: 871, baseType: !132, size: 64, offset: 3200)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1038, file: !50, line: 873, baseType: !1114, size: 3328, offset: 3264)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 3328, elements: !1115)
!1115 = !{!1116}
!1116 = !DISubrange(count: 52)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1038, file: !50, line: 875, baseType: !1118, size: 1280, offset: 6592)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 1280, elements: !352)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1038, file: !50, line: 877, baseType: !1120, size: 64, offset: 7872)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !50, line: 877, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1038, file: !50, line: 880, baseType: !1123, size: 1088, offset: 7936)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1124, line: 72, baseType: !1125)
!1124 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1124, line: 23, size: 1088, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1134, !1135, !1136, !1137, !1164, !1165, !1166}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1125, file: !1124, line: 28, baseType: !410, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1125, file: !1124, line: 38, baseType: !282, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1125, file: !1124, line: 40, baseType: !132, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1125, file: !1124, line: 43, baseType: !442, size: 320, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1125, file: !1124, line: 44, baseType: !1132, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1124, line: 44, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1125, file: !1124, line: 48, baseType: !132, size: 64, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1125, file: !1124, line: 59, baseType: !289, size: 256, offset: 640)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1125, file: !1124, line: 60, baseType: !126, size: 64, offset: 896)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1125, file: !1124, line: 61, baseType: !1138, size: 64, offset: 960)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1141, line: 13, size: 1216, elements: !1142)
!1141 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1140, file: !1141, line: 14, baseType: !126, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1140, file: !1141, line: 15, baseType: !132, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1140, file: !1141, line: 17, baseType: !132, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1140, file: !1141, line: 17, baseType: !132, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1140, file: !1141, line: 18, baseType: !132, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1140, file: !1141, line: 18, baseType: !132, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1140, file: !1141, line: 19, baseType: !1150, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1140, file: !1141, line: 21, baseType: !775, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1140, file: !1141, line: 23, baseType: !775, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1140, file: !1141, line: 24, baseType: !775, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1140, file: !1141, line: 25, baseType: !775, size: 64, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1140, file: !1141, line: 26, baseType: !775, size: 64, offset: 704)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1140, file: !1141, line: 27, baseType: !775, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1140, file: !1141, line: 28, baseType: !775, size: 64, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1140, file: !1141, line: 29, baseType: !775, size: 64, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1140, file: !1141, line: 30, baseType: !775, size: 64, offset: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1140, file: !1141, line: 31, baseType: !775, size: 64, offset: 1024)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1140, file: !1141, line: 32, baseType: !775, size: 64, offset: 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1140, file: !1141, line: 33, baseType: !775, size: 64, offset: 1152)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1125, file: !1124, line: 63, baseType: !207, size: 32, offset: 1024)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1125, file: !1124, line: 69, baseType: !273, size: 16, offset: 1056)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1125, file: !1124, line: 70, baseType: !1167, size: 16, offset: 1072)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !150, line: 18, baseType: !1168)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !152, line: 23, baseType: !470)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !50, line: 882, baseType: !132, size: 64, offset: 9024)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1038, file: !50, line: 885, baseType: !242, size: 32, offset: 9088)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1038, file: !50, line: 886, baseType: !1172, size: 64, offset: 9152)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !50, line: 732, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1038, file: !50, line: 901, baseType: !584, size: 64, offset: 9216)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1038, file: !50, line: 904, baseType: !219, size: 64, offset: 9280)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1038, file: !50, line: 906, baseType: !1177, size: 64, offset: 9344)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !50, line: 906, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1038, file: !50, line: 930, baseType: !207, size: 32, offset: 9408)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1038, file: !50, line: 933, baseType: !207, size: 32, offset: 9440)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1038, file: !50, line: 935, baseType: !1182, size: 64, offset: 9472)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !90, line: 103, size: 64, elements: !1183)
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1182, file: !90, line: 104, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !90, line: 101, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1038, file: !50, line: 940, baseType: !280, size: 64, offset: 9536)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1038, file: !50, line: 942, baseType: !1189, size: 256, offset: 9600)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1190, line: 98, size: 256, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1191 = !{!1192, !1193, !1194}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1189, file: !1190, line: 99, baseType: !280, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1189, file: !1190, line: 100, baseType: !138, size: 128, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1189, file: !1190, line: 101, baseType: !1195, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1190, line: 21, baseType: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1035, file: !50, line: 986, baseType: !1201, offset: 10240)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, elements: !216)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1022, file: !50, line: 640, baseType: !1203, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1070, line: 297, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1070, line: 297, size: 64, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1204, file: !1070, line: 297, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1075, line: 19, baseType: !132)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !50, line: 646, baseType: !1209, size: 64, offset: 256)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !50, line: 646, size: 64, elements: !1210)
!1210 = !{!1211, !1214}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1209, file: !50, line: 647, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !50, line: 542, baseType: !132)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1209, file: !50, line: 648, baseType: !1213, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1022, file: !50, line: 666, baseType: !133, size: 32, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1022, file: !50, line: 667, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !50, line: 579, size: 320, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1218, file: !50, line: 580, baseType: !442, size: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1022, file: !50, line: 670, baseType: !501, size: 8, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1022, file: !50, line: 681, baseType: !1223, size: 256, offset: 512)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !50, line: 678, size: 256, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1223, file: !50, line: 679, baseType: !434, size: 192, align: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1223, file: !50, line: 680, baseType: !132, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1022, file: !50, line: 689, baseType: !138, size: 128, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1022, file: !50, line: 691, baseType: !1229, size: 64, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !50, line: 691, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1022, file: !50, line: 694, baseType: !1232, size: 64, offset: 960)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1015, line: 563, size: 1024, elements: !1235)
!1235 = !{!1236, !1240, !1241, !1245, !1249, !1253, !1254, !1258, !1262, !1266, !1267, !1268, !1272, !1276, !1282, !1286}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1234, file: !1015, line: 564, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1021}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1234, file: !1015, line: 569, baseType: !1237, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1234, file: !1015, line: 571, baseType: !1242, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!133, !1021, !132}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1234, file: !1015, line: 572, baseType: !1246, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!133, !1021}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1234, file: !1015, line: 578, baseType: !1250, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!133, !1021, !132, !132, !132}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1234, file: !1015, line: 580, baseType: !1009, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1234, file: !1015, line: 581, baseType: !1255, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!1012, !1013, !7}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1234, file: !1015, line: 582, baseType: !1259, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!1012, !1013, !132, !132}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1234, file: !1015, line: 584, baseType: !1263, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!132, !1021}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1234, file: !1015, line: 588, baseType: !1009, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1234, file: !1015, line: 591, baseType: !1009, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1234, file: !1015, line: 597, baseType: !1269, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!133, !1021, !132, !126, !133, !133}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1234, file: !1015, line: 603, baseType: !1273, size: 64, offset: 768)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!161, !1021}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1234, file: !1015, line: 613, baseType: !1277, size: 64, offset: 832)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!133, !1021, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !50, line: 717, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1234, file: !1015, line: 625, baseType: !1283, size: 64, offset: 896)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1280, !1021, !132}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1234, file: !1015, line: 633, baseType: !1287, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!901, !1021, !132}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1022, file: !50, line: 697, baseType: !132, size: 64, offset: 1024)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1022, file: !50, line: 699, baseType: !219, size: 64, offset: 1088)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1022, file: !50, line: 700, baseType: !126, size: 64, offset: 1152)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1022, file: !50, line: 711, baseType: !280, size: 64, offset: 1216)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1022, file: !50, line: 717, baseType: !1280, size: 64, offset: 1280)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1022, file: !50, line: 722, baseType: !1296, offset: 1344)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !50, line: 570, elements: !1055)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1018, file: !1015, line: 515, baseType: !869, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1018, file: !1015, line: 516, baseType: !132, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1018, file: !1015, line: 517, baseType: !132, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1018, file: !1015, line: 518, baseType: !132, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !1015, line: 520, baseType: !49, size: 32, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1014, file: !1015, line: 522, baseType: !1303, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1075, line: 22, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1075, line: 22, size: 64, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1305, file: !1075, line: 22, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1075, line: 15, baseType: !132)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1014, file: !1015, line: 524, baseType: !1310, size: 64, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1070, line: 372, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1070, line: 372, size: 64, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1312, file: !1070, line: 372, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1075, line: 16, baseType: !132)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !1015, line: 527, baseType: !1317, size: 64, offset: 512)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !1015, line: 527, size: 64, elements: !1318)
!1318 = !{!1319, !1325}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1317, file: !1015, line: 528, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1075, line: 21, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1075, line: 21, size: 64, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1321, file: !1075, line: 21, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1075, line: 14, baseType: !132)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1317, file: !1015, line: 529, baseType: !1304, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1014, file: !1015, line: 534, baseType: !901, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1014, file: !1015, line: 535, baseType: !901, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1014, file: !1015, line: 541, baseType: !1329, size: 64, offset: 704)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1014, file: !1015, line: 545, baseType: !1331, size: 64, offset: 768)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1014, file: !1015, line: 549, baseType: !1333, size: 64, offset: 832)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1070, line: 520, baseType: !901)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1002, file: !42, line: 100, baseType: !1335, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!133, !951, !132, !132, !133}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !952, file: !42, line: 134, baseType: !126, size: 64, offset: 960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !952, file: !42, line: 135, baseType: !133, size: 32, offset: 1024)
!1340 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !42, line: 136, baseType: !1341, size: 128, offset: 1088)
!1341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !42, line: 136, size: 128, elements: !1342)
!1342 = !{!1343, !1349}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1341, file: !42, line: 137, baseType: !1344, size: 128)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1345, line: 6, size: 128, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1344, file: !1345, line: 7, baseType: !410, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1344, file: !1345, line: 8, baseType: !410, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !42, line: 138, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1341, file: !42, line: 138, elements: !1351)
!1351 = !{!1352, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1350, file: !42, line: 138, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !42, line: 138, elements: !1055)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1350, file: !42, line: 138, baseType: !1355)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, elements: !216)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !948, file: !50, line: 147, baseType: !126, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !906, file: !50, line: 161, baseType: !232, size: 128, align: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !50, line: 164, baseType: !1359, size: 32, offset: 384)
!1359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !902, file: !50, line: 164, size: 32, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1359, file: !50, line: 169, baseType: !207, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1359, file: !50, line: 177, baseType: !7, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !902, file: !50, line: 181, baseType: !207, size: 32, offset: 416)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !24, line: 309, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !895, file: !24, line: 406, baseType: !1367, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!133, !219, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !50, line: 293, size: 1536, elements: !1372)
!1372 = !{!1373, !1403, !1417}
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !50, line: 295, baseType: !1374, size: 512)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !50, line: 295, size: 512, elements: !1375)
!1375 = !{!1376, !1402}
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !50, line: 296, baseType: !1377, size: 448)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1374, file: !50, line: 296, size: 448, elements: !1378)
!1378 = !{!1379, !1380, !1389, !1390, !1391, !1400, !1401}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1377, file: !50, line: 298, baseType: !132, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !50, line: 299, baseType: !1381, size: 128, offset: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !50, line: 299, size: 128, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1381, file: !50, line: 300, baseType: !138, size: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !50, line: 302, baseType: !1385, size: 128)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !50, line: 302, size: 128, elements: !1386)
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1385, file: !50, line: 303, baseType: !126, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1385, file: !50, line: 305, baseType: !7, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1377, file: !50, line: 310, baseType: !874, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1377, file: !50, line: 311, baseType: !132, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !50, line: 312, baseType: !1392, size: 64, offset: 320)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !50, line: 312, size: 64, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1392, file: !50, line: 313, baseType: !126, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1392, file: !50, line: 314, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !50, line: 257, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 255, size: 64, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1397, file: !50, line: 256, baseType: !132, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1377, file: !50, line: 316, baseType: !207, size: 32, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1377, file: !50, line: 317, baseType: !207, size: 32, offset: 416)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1374, file: !50, line: 323, baseType: !902, size: 512, align: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !50, line: 325, baseType: !1404, size: 512, offset: 512)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !50, line: 325, size: 512, elements: !1405)
!1405 = !{!1406, !1416}
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !50, line: 326, baseType: !1407, size: 320)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !50, line: 326, size: 320, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1407, file: !50, line: 327, baseType: !132, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1407, file: !50, line: 328, baseType: !132, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1407, file: !50, line: 329, baseType: !132, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1407, file: !50, line: 331, baseType: !207, size: 32, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1407, file: !50, line: 332, baseType: !207, size: 32, offset: 224)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1407, file: !50, line: 333, baseType: !207, size: 32, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1407, file: !50, line: 335, baseType: !7, size: 32, offset: 288)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1404, file: !50, line: 339, baseType: !902, size: 512, align: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !50, line: 341, baseType: !1418, size: 512, offset: 1024)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !50, line: 341, size: 512, elements: !1419)
!1419 = !{!1420, !1429, !1435}
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !50, line: 342, baseType: !1421, size: 384)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1418, file: !50, line: 342, size: 384, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1421, file: !50, line: 343, baseType: !132, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1421, file: !50, line: 344, baseType: !132, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1421, file: !50, line: 346, baseType: !126, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1421, file: !50, line: 347, baseType: !126, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1421, file: !50, line: 348, baseType: !126, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1421, file: !50, line: 349, baseType: !126, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !50, line: 352, baseType: !1430, size: 256)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1418, file: !50, line: 352, size: 256, elements: !1431)
!1431 = !{!1432, !1433, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1430, file: !50, line: 353, baseType: !132, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1430, file: !50, line: 354, baseType: !132, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1430, file: !50, line: 356, baseType: !138, size: 128, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1418, file: !50, line: 359, baseType: !902, size: 512, align: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !895, file: !24, line: 409, baseType: !1437, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!133, !874, !1364}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !895, file: !24, line: 412, baseType: !1441, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!501, !874, !1370}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !895, file: !24, line: 414, baseType: !1445, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1450, line: 1276, size: 448, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1451 = !{!1452, !1453, !1454, !1456, !1457, !1458, !1459, !1460}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1449, file: !1450, line: 1277, baseType: !219, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1449, file: !1450, line: 1278, baseType: !874, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1449, file: !1450, line: 1279, baseType: !1455, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1449, file: !1450, line: 1281, baseType: !132, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1449, file: !1450, line: 1282, baseType: !7, size: 32, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1449, file: !1450, line: 1283, baseType: !7, size: 32, offset: 288)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1449, file: !1450, line: 1284, baseType: !501, size: 8, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1449, file: !1450, line: 1285, baseType: !132, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !895, file: !24, line: 416, baseType: !1462, size: 64, offset: 320)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!133, !219, !874, !127, !7, !1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !895, file: !24, line: 419, baseType: !1468, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!133, !219, !874, !127, !7, !7, !901, !126}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !895, file: !24, line: 424, baseType: !1472, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!1475, !874, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !128, line: 131, baseType: !410)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !895, file: !24, line: 425, baseType: !1477, size: 64, offset: 512)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !1370, !817, !817}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !895, file: !24, line: 426, baseType: !1481, size: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!501, !1370, !869}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !895, file: !24, line: 427, baseType: !1485, size: 64, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !1370}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !895, file: !24, line: 428, baseType: !1489, size: 64, offset: 704)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!814, !1492, !1530}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !24, line: 373, size: 384, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1501, !1502, !1503, !1504}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1493, file: !24, line: 374, baseType: !219, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1493, file: !24, line: 375, baseType: !127, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1493, file: !24, line: 376, baseType: !1498, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1492, !775}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1493, file: !24, line: 377, baseType: !126, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1493, file: !24, line: 378, baseType: !133, size: 32, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1493, file: !24, line: 379, baseType: !273, size: 16, offset: 288)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !24, line: 380, baseType: !1505, size: 64, offset: 320)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !24, line: 380, size: 64, elements: !1506)
!1506 = !{!1507, !1526}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1505, file: !24, line: 386, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1450, line: 998, size: 448, elements: !1510)
!1510 = !{!1511, !1512, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1509, file: !1450, line: 999, baseType: !1370, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1509, file: !1450, line: 1000, baseType: !133, size: 32, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1509, file: !1450, line: 1001, baseType: !1514, size: 320, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !357, line: 14, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !357, line: 30, size: 320, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1525}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1515, file: !357, line: 31, baseType: !7, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1515, file: !357, line: 32, baseType: !126, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1515, file: !357, line: 33, baseType: !1520, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !357, line: 16, baseType: !1521)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!133, !1524, !7, !133, !126}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1515, file: !357, line: 34, baseType: !138, size: 128, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1505, file: !24, line: 395, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!814, !126}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !24, line: 69, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !895, file: !24, line: 433, baseType: !1533, size: 64, offset: 768)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!133, !874, !1370, !1370, !65}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !895, file: !24, line: 435, baseType: !1537, size: 64, offset: 832)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!133, !1370}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !895, file: !24, line: 436, baseType: !1541, size: 64, offset: 896)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!501, !1370, !817, !817}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !895, file: !24, line: 438, baseType: !1545, size: 64, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !1370, !1548, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !895, file: !24, line: 439, baseType: !1550, size: 64, offset: 1024)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!133, !874, !901}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !895, file: !24, line: 442, baseType: !1554, size: 64, offset: 1088)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!133, !1557, !219, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !24, line: 66, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !895, file: !24, line: 444, baseType: !1561, size: 64, offset: 1152)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !219}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !895, file: !24, line: 445, baseType: !1565, size: 64, offset: 1216)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!133, !1492, !1530}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !875, file: !24, line: 486, baseType: !132, size: 64, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !875, file: !24, line: 487, baseType: !442, size: 320, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !875, file: !24, line: 488, baseType: !1571, size: 32, offset: 1280)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1572, line: 8, baseType: !149)
!1572 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !875, file: !24, line: 489, baseType: !242, size: 32, offset: 1312)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !875, file: !24, line: 490, baseType: !138, size: 128, offset: 1344)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !875, file: !24, line: 491, baseType: !126, size: 64, offset: 1472)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !663, file: !24, line: 659, baseType: !126, size: 64, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !663, file: !24, line: 663, baseType: !132, size: 64, offset: 640)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !24, line: 671, baseType: !1579, size: 32, offset: 704)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !24, line: 671, size: 32, elements: !1580)
!1580 = !{!1581, !1583}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1579, file: !24, line: 672, baseType: !1582, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1579, file: !24, line: 673, baseType: !7, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !663, file: !24, line: 675, baseType: !147, size: 32, offset: 736)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !663, file: !24, line: 676, baseType: !127, size: 64, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !663, file: !24, line: 677, baseType: !771, size: 128, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !663, file: !24, line: 678, baseType: !771, size: 128, offset: 960)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !663, file: !24, line: 679, baseType: !771, size: 128, offset: 1088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !663, file: !24, line: 680, baseType: !242, size: 32, offset: 1216)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !663, file: !24, line: 681, baseType: !275, size: 16, offset: 1248)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !663, file: !24, line: 682, baseType: !266, size: 8, offset: 1264)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !663, file: !24, line: 683, baseType: !266, size: 8, offset: 1272)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !663, file: !24, line: 684, baseType: !1594, size: 64, offset: 1280)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !128, line: 132, baseType: !410)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !663, file: !24, line: 691, baseType: !132, size: 64, offset: 1344)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !663, file: !24, line: 692, baseType: !442, size: 320, offset: 1408)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !663, file: !24, line: 694, baseType: !132, size: 64, offset: 1728)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !663, file: !24, line: 695, baseType: !132, size: 64, offset: 1792)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !663, file: !24, line: 697, baseType: !347, size: 128, offset: 1856)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !663, file: !24, line: 698, baseType: !138, size: 128, offset: 1984)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !663, file: !24, line: 707, baseType: !138, size: 128, offset: 2112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !663, file: !24, line: 708, baseType: !138, size: 128, offset: 2240)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !24, line: 709, baseType: !1604, size: 128, offset: 2368)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !24, line: 709, size: 128, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1604, file: !24, line: 710, baseType: !343, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1604, file: !24, line: 711, baseType: !232, size: 128, align: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !663, file: !24, line: 713, baseType: !282, size: 64, offset: 2496)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !663, file: !24, line: 714, baseType: !282, size: 64, offset: 2560)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !663, file: !24, line: 715, baseType: !207, size: 32, offset: 2624)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !663, file: !24, line: 716, baseType: !207, size: 32, offset: 2656)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !663, file: !24, line: 717, baseType: !207, size: 32, offset: 2688)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !663, file: !24, line: 719, baseType: !207, size: 32, offset: 2720)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !24, line: 721, baseType: !1615, size: 64, offset: 2752)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !24, line: 721, size: 64, elements: !1616)
!1616 = !{!1617, !2417}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1615, file: !24, line: 722, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !24, line: 1914, size: 2112, elements: !1621)
!1621 = !{!1622, !2296, !2300, !2304, !2308, !2309, !2310, !2316, !2329, !2333, !2337, !2338, !2342, !2343, !2347, !2352, !2353, !2357, !2361, !2367, !2368, !2372, !2373, !2380, !2384, !2385, !2390, !2394, !2398, !2402, !2406, !2407, !2413}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1620, file: !24, line: 1915, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !35, line: 402, size: 9216, align: 512, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1632, !1952, !1978, !1979, !1980, !1981, !1985, !1988, !1989, !1990, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2058, !2062, !2082, !2100, !2101, !2102, !2103, !2112, !2135, !2136, !2139, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2153, !2154, !2254, !2262, !2263, !2264, !2266, !2270, !2271, !2275, !2276, !2277, !2278, !2280, !2281, !2282, !2289, !2290, !2291, !2295}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1624, file: !35, line: 403, baseType: !34, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1624, file: !35, line: 406, baseType: !138, size: 128, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1624, file: !35, line: 409, baseType: !1629, size: 448, offset: 192)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 448, elements: !1630)
!1630 = !{!1631}
!1631 = !DISubrange(count: 56)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1624, file: !35, line: 417, baseType: !1633, size: 768, offset: 640)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !35, line: 45, size: 768, elements: !1634)
!1634 = !{!1635, !1945, !1946, !1947, !1950}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1633, file: !35, line: 46, baseType: !1636, size: 512)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1637, line: 64, size: 512, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1638 = !{!1639, !1640, !1641, !1643, !1687, !1791, !1935, !1940, !1941, !1942, !1943, !1944}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1636, file: !1637, line: 65, baseType: !161, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1636, file: !1637, line: 66, baseType: !138, size: 128, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1636, file: !1637, line: 67, baseType: !1642, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1636, file: !1637, line: 68, baseType: !1644, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1637, line: 168, size: 768, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1645, file: !1637, line: 169, baseType: !138, size: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1645, file: !1637, line: 170, baseType: !242, size: 32, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1645, file: !1637, line: 171, baseType: !1636, size: 512, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1645, file: !1637, line: 172, baseType: !1651, size: 64, offset: 704)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1637, line: 133, size: 192, elements: !1654)
!1654 = !{!1655, !1662, !1667}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1653, file: !1637, line: 134, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!133, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1653, file: !1637, line: 135, baseType: !1663, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!161, !1660}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1653, file: !1637, line: 136, baseType: !1668, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!133, !1660, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1637, line: 125, size: 20736, elements: !1674)
!1674 = !{!1675, !1677, !1681, !1682, !1686}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1673, file: !1637, line: 126, baseType: !1676, size: 192)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 192, elements: !326)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1673, file: !1637, line: 127, baseType: !1678, size: 4096, offset: 192)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 4096, elements: !1679)
!1679 = !{!1680}
!1680 = !DISubrange(count: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1673, file: !1637, line: 128, baseType: !133, size: 32, offset: 4288)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1673, file: !1637, line: 129, baseType: !1683, size: 16384, offset: 4320)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 16384, elements: !1684)
!1684 = !{!1685}
!1685 = !DISubrange(count: 2048)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1673, file: !1637, line: 130, baseType: !133, size: 32, offset: 20704)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1636, file: !1637, line: 69, baseType: !1688, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1637, line: 116, size: 384, elements: !1691)
!1691 = !{!1692, !1696, !1715, !1753, !1781, !1785}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1690, file: !1637, line: 117, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1642}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1690, file: !1637, line: 118, baseType: !1697, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1700, line: 254, size: 128, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1701 = !{!1702, !1711}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1699, file: !1700, line: 255, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!814, !1642, !1706, !198}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1700, line: 30, size: 128, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1707, file: !1700, line: 31, baseType: !161, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1707, file: !1700, line: 32, baseType: !666, size: 16, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1699, file: !1700, line: 256, baseType: !1712, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!814, !1642, !1706, !161, !817}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1690, file: !1637, line: 119, baseType: !1716, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1700, line: 84, size: 320, elements: !1720)
!1720 = !{!1721, !1722, !1726, !1749, !1751}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1719, file: !1700, line: 85, baseType: !161, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1719, file: !1700, line: 86, baseType: !1723, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!666, !1642, !1706, !133}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1719, file: !1700, line: 88, baseType: !1727, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!666, !1642, !1730, !133}
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1700, line: 175, size: 512, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1740, !1744, !1745}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1731, file: !1700, line: 176, baseType: !1707, size: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1731, file: !1700, line: 177, baseType: !817, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1731, file: !1700, line: 178, baseType: !126, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1731, file: !1700, line: 179, baseType: !1737, size: 64, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!874}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1731, file: !1700, line: 180, baseType: !1741, size: 64, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!814, !219, !1642, !1730, !198, !127, !817}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1731, file: !1700, line: 182, baseType: !1741, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1731, file: !1700, line: 184, baseType: !1746, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!133, !219, !1642, !1730, !1021}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1719, file: !1700, line: 90, baseType: !1750, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1719, file: !1700, line: 91, baseType: !1752, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1690, file: !1637, line: 120, baseType: !1754, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!1757, !1660}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !73, line: 39, size: 384, elements: !1760)
!1760 = !{!1761, !1762, !1766, !1770, !1776, !1780}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1759, file: !73, line: 40, baseType: !72, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1759, file: !73, line: 41, baseType: !1763, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!501}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1759, file: !73, line: 42, baseType: !1767, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!126}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1759, file: !73, line: 43, baseType: !1771, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1150, !1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !73, line: 19, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1759, file: !73, line: 44, baseType: !1777, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1150}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1759, file: !73, line: 45, baseType: !694, size: 64, offset: 320)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1690, file: !1637, line: 121, baseType: !1782, size: 64, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1150, !1660}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1690, file: !1637, line: 122, baseType: !1786, size: 64, offset: 320)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !1660, !1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1636, file: !1637, line: 70, baseType: !1792, size: 64, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1794, line: 190, size: 1152, elements: !1795)
!1794 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1927, !1928, !1929, !1930, !1931, !1934}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1793, file: !1794, line: 191, baseType: !207, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1793, file: !1794, line: 192, baseType: !207, size: 32, offset: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1793, file: !1794, line: 202, baseType: !1792, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1793, file: !1794, line: 203, baseType: !161, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1793, file: !1794, line: 205, baseType: !434, size: 192, align: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1793, file: !1794, line: 207, baseType: !1150, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1793, file: !1794, line: 208, baseType: !7, size: 32, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1793, file: !1794, line: 209, baseType: !1804, size: 256, offset: 512)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1793, file: !1794, line: 209, size: 256, elements: !1805)
!1805 = !{!1806, !1815, !1819}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1804, file: !1794, line: 210, baseType: !1807, size: 256)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1794, line: 153, size: 256, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1814}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1807, file: !1794, line: 154, baseType: !132, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1807, file: !1794, line: 156, baseType: !886, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1807, file: !1794, line: 162, baseType: !1812, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1794, line: 162, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1807, file: !1794, line: 167, baseType: !132, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1804, file: !1794, line: 211, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1794, line: 170, size: 64, elements: !1817)
!1817 = !{!1818}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1816, file: !1794, line: 171, baseType: !1792, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1804, file: !1794, line: 212, baseType: !1820, size: 256)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1794, line: 174, size: 256, elements: !1821)
!1821 = !{!1822, !1922, !1925, !1926}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1820, file: !1794, line: 175, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1825)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1794, line: 271, size: 768, elements: !1826)
!1826 = !{!1827, !1886, !1890, !1891, !1892, !1893, !1894, !1898, !1899, !1900, !1901, !1918}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1825, file: !1794, line: 276, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!133, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1794, line: 251, size: 1216, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1832, file: !1794, line: 253, baseType: !1792, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1832, file: !1794, line: 254, baseType: !219, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1832, file: !1794, line: 255, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1839, line: 17, size: 960, elements: !1840)
!1839 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1871, !1872, !1875}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1838, file: !1839, line: 18, baseType: !198, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1838, file: !1839, line: 19, baseType: !817, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1838, file: !1839, line: 20, baseType: !817, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1838, file: !1839, line: 21, baseType: !817, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1838, file: !1839, line: 22, baseType: !817, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1838, file: !1839, line: 23, baseType: !127, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1838, file: !1839, line: 24, baseType: !127, size: 64, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1838, file: !1839, line: 25, baseType: !289, size: 256, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1838, file: !1839, line: 26, baseType: !1850, size: 64, offset: 704)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1839, line: 32, size: 256, elements: !1853)
!1853 = !{!1854, !1859, !1863, !1867}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1852, file: !1839, line: 33, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!126, !1837, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1852, file: !1839, line: 34, baseType: !1860, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1837, !126}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1852, file: !1839, line: 35, baseType: !1864, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!126, !1837, !126, !1858}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1852, file: !1839, line: 36, baseType: !1868, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!133, !1837, !126}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1838, file: !1839, line: 27, baseType: !133, size: 32, offset: 768)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1838, file: !1839, line: 28, baseType: !1873, size: 64, offset: 832)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1838, file: !1839, line: 29, baseType: !126, size: 64, offset: 896)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1832, file: !1794, line: 256, baseType: !126, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1832, file: !1794, line: 259, baseType: !289, size: 256, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1832, file: !1794, line: 260, baseType: !289, size: 256, offset: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1832, file: !1794, line: 261, baseType: !133, size: 32, offset: 768)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1832, file: !1794, line: 262, baseType: !138, size: 128, offset: 832)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1832, file: !1794, line: 263, baseType: !198, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1832, file: !1794, line: 265, baseType: !817, size: 64, offset: 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1832, file: !1794, line: 266, baseType: !501, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1832, file: !1794, line: 267, baseType: !501, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1832, file: !1794, line: 268, baseType: !1232, size: 64, offset: 1152)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1825, file: !1794, line: 277, baseType: !1887, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !1831}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1825, file: !1794, line: 290, baseType: !1868, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1825, file: !1794, line: 292, baseType: !1855, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1825, file: !1794, line: 293, baseType: !1864, size: 64, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1825, file: !1794, line: 294, baseType: !1860, size: 64, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1825, file: !1794, line: 296, baseType: !1895, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!814, !1831, !198, !817, !127}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1825, file: !1794, line: 306, baseType: !817, size: 64, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1825, file: !1794, line: 313, baseType: !501, size: 8, offset: 512)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1825, file: !1794, line: 314, baseType: !1895, size: 64, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1825, file: !1794, line: 317, baseType: !1902, size: 64, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!1905, !1831, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1906, line: 59, baseType: !7)
!1906 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1909, line: 37, size: 128, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1910 = !{!1911, !1917}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1908, file: !1909, line: 38, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1909, line: 31, baseType: !1913)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !219, !1916, !1907}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1908, file: !1909, line: 39, baseType: !1905, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1825, file: !1794, line: 320, baseType: !1919, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!133, !1831, !1021}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1820, file: !1794, line: 176, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1794, line: 35, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1820, file: !1794, line: 177, baseType: !127, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1820, file: !1794, line: 178, baseType: !1792, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1793, file: !1794, line: 215, baseType: !126, size: 64, offset: 768)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1793, file: !1794, line: 221, baseType: !410, size: 64, offset: 832)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1793, file: !1794, line: 223, baseType: !275, size: 16, offset: 896)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1793, file: !1794, line: 224, baseType: !666, size: 16, offset: 912)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1793, file: !1794, line: 225, baseType: !1932, size: 64, offset: 960)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1794, line: 36, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1793, file: !1794, line: 227, baseType: !232, size: 128, align: 64, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1636, file: !1637, line: 71, baseType: !1936, size: 32, offset: 448)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1937, line: 19, size: 32, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1938 = !{!1939}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1936, file: !1937, line: 20, baseType: !334, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1636, file: !1637, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1636, file: !1637, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1636, file: !1637, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1636, file: !1637, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1636, file: !1637, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1633, file: !35, line: 47, baseType: !1623, size: 64, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1633, file: !35, line: 48, baseType: !1642, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1633, file: !35, line: 49, baseType: !1948, size: 64, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !35, line: 49, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1633, file: !35, line: 50, baseType: !1951, size: 64, offset: 704)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1624, file: !35, line: 418, baseType: !1953, size: 64, offset: 1408)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !35, line: 53, size: 448, elements: !1955)
!1955 = !{!1956, !1957, !1962, !1966, !1970, !1974}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1954, file: !35, line: 54, baseType: !1707, size: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1954, file: !35, line: 55, baseType: !1958, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!814, !1953, !1961, !198}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1954, file: !35, line: 57, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!814, !1953, !1961, !161, !817}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1954, file: !35, line: 59, baseType: !1967, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1623, !161}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1954, file: !35, line: 60, baseType: !1971, size: 64, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!133, !1623}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1954, file: !35, line: 61, baseType: !1975, size: 64, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1623}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1624, file: !35, line: 419, baseType: !161, size: 64, offset: 1472)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1624, file: !35, line: 420, baseType: !161, size: 64, offset: 1536)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1624, file: !35, line: 421, baseType: !1642, size: 64, offset: 1600)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1624, file: !35, line: 424, baseType: !1982, size: 64, offset: 1664)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !35, line: 424, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1624, file: !35, line: 425, baseType: !1986, size: 64, offset: 1728)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1624, file: !35, line: 426, baseType: !7, size: 32, offset: 1792)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1624, file: !35, line: 435, baseType: !289, size: 256, offset: 1856)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1624, file: !35, line: 437, baseType: !1991, size: 64, offset: 2112)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1993, line: 69, size: 320, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1994 = !{!1995, !1996, !1997, !2014, !2016, !2020, !2021}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1992, file: !1993, line: 70, baseType: !161, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1992, file: !1993, line: 71, baseType: !1623, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1992, file: !1993, line: 72, baseType: !1998, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2000)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1993, line: 47, size: 256, elements: !2001)
!2001 = !{!2002, !2003, !2009, !2013}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2000, file: !1993, line: 49, baseType: !7, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2000, file: !1993, line: 51, baseType: !2004, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!133, !161, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1992)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2000, file: !1993, line: 53, baseType: !2010, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!133, !198, !2007}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2000, file: !1993, line: 55, baseType: !694, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1992, file: !1993, line: 73, baseType: !2015, size: 16, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1992, file: !1993, line: 74, baseType: !2017, size: 8, offset: 208)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !150, line: 16, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !152, line: 20, baseType: !2019)
!2019 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1992, file: !1993, line: 75, baseType: !266, size: 8, offset: 216)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !1993, line: 76, baseType: !2022, size: 64, offset: 256)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1992, file: !1993, line: 76, size: 64, elements: !2023)
!2023 = !{!2024, !2025, !2032}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2022, file: !1993, line: 77, baseType: !126, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2022, file: !1993, line: 78, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1993, line: 86, size: 128, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2028, file: !1993, line: 87, baseType: !7, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2028, file: !1993, line: 88, baseType: !198, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2022, file: !1993, line: 79, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2035)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1993, line: 92, size: 256, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2041, !2042}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2035, file: !1993, line: 94, baseType: !7, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2035, file: !1993, line: 95, baseType: !7, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2035, file: !1993, line: 96, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2035, file: !1993, line: 97, baseType: !1998, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2035, file: !1993, line: 98, baseType: !126, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1624, file: !35, line: 438, baseType: !7, size: 32, offset: 2176)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1624, file: !35, line: 441, baseType: !7, size: 32, offset: 2208)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1624, file: !35, line: 442, baseType: !1982, size: 64, offset: 2240)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1624, file: !35, line: 443, baseType: !1986, size: 64, offset: 2304)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1624, file: !35, line: 444, baseType: !501, size: 8, offset: 2368)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1624, file: !35, line: 451, baseType: !501, size: 8, offset: 2376)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1624, file: !35, line: 454, baseType: !7, size: 32, offset: 2400)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1624, file: !35, line: 455, baseType: !2051, size: 64, offset: 2432)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2053, line: 23, size: 96, elements: !2054)
!2053 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2054 = !{!2055, !2056, !2057}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2052, file: !2053, line: 24, baseType: !133, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2052, file: !2053, line: 24, baseType: !133, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2052, file: !2053, line: 24, baseType: !133, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1624, file: !35, line: 458, baseType: !2059, size: 64, offset: 2496)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!133}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1624, file: !35, line: 460, baseType: !2063, size: 4032, align: 512, offset: 2560)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 4032, elements: !2080)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !35, line: 362, size: 576, elements: !2065)
!2065 = !{!2066, !2067, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2064, file: !35, line: 363, baseType: !126, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2064, file: !35, line: 364, baseType: !7, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2064, file: !35, line: 367, baseType: !2069, size: 448, offset: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !35, line: 319, size: 448, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2069, file: !35, line: 320, baseType: !1623, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2069, file: !35, line: 321, baseType: !2073, size: 384, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2074, line: 40, size: 384, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2075 = !{!2076}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2073, file: !2074, line: 41, baseType: !2077, size: 384, align: 64)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 384, align: 64, elements: !2078)
!2078 = !{!2079}
!2079 = !DISubrange(count: 2)
!2080 = !{!2081}
!2081 = !DISubrange(count: 7)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1624, file: !35, line: 463, baseType: !2083, size: 192, offset: 6592)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2084, line: 8, size: 192, elements: !2085)
!2084 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2085 = !{!2086, !2087, !2089}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2083, file: !2084, line: 10, baseType: !7, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2083, file: !2084, line: 11, baseType: !2088, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2083, file: !2084, line: 12, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2092, line: 59, size: 48, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2099}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2091, file: !2092, line: 60, baseType: !1167, size: 16)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2091, file: !2092, line: 61, baseType: !1167, size: 16, offset: 16)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2091, file: !2092, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2091, file: !2092, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2091, file: !2092, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2091, file: !2092, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1624, file: !35, line: 465, baseType: !132, size: 64, offset: 6784)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1624, file: !35, line: 469, baseType: !7, size: 32, offset: 6848)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1624, file: !35, line: 470, baseType: !138, size: 128, offset: 6912)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1624, file: !35, line: 471, baseType: !2104, size: 64, offset: 7040)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2106, line: 33, size: 96, elements: !2107)
!2106 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2107 = !{!2108, !2109, !2110, !2111}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2105, file: !2106, line: 37, baseType: !133, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2105, file: !2106, line: 43, baseType: !133, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2105, file: !2106, line: 45, baseType: !275, size: 16, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2105, file: !2106, line: 47, baseType: !275, size: 16, offset: 80)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1624, file: !35, line: 476, baseType: !2113, size: 64, offset: 7104)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !35, line: 378, size: 256, elements: !2115)
!2115 = !{!2116, !2132, !2133, !2134}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2114, file: !35, line: 379, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2119, line: 204, baseType: !2120)
!2119 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2119, line: 197, size: 192, elements: !2121)
!2121 = !{!2122, !2124, !2125, !2126, !2128, !2130}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2120, file: !2119, line: 198, baseType: !2123, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2119, line: 21, baseType: !151)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2120, file: !2119, line: 199, baseType: !134, size: 8, offset: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2120, file: !2119, line: 200, baseType: !134, size: 8, offset: 40)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2120, file: !2119, line: 201, baseType: !2127, size: 16, offset: 48)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2119, line: 17, baseType: !274)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2120, file: !2119, line: 202, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2119, line: 16, baseType: !411)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2120, file: !2119, line: 203, baseType: !2131, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2119, line: 22, baseType: !411)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2114, file: !35, line: 380, baseType: !7, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2114, file: !35, line: 381, baseType: !198, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2114, file: !35, line: 382, baseType: !198, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1624, file: !35, line: 477, baseType: !2114, size: 256, offset: 7168)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1624, file: !35, line: 480, baseType: !2137, size: 64, offset: 7424)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !35, line: 480, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1624, file: !35, line: 483, baseType: !2140, size: 64, offset: 7488)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !35, line: 483, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1624, file: !35, line: 488, baseType: !198, size: 64, offset: 7552)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1624, file: !35, line: 492, baseType: !126, size: 64, offset: 7616)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1624, file: !35, line: 493, baseType: !7, size: 32, offset: 7680)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1624, file: !35, line: 495, baseType: !126, size: 64, offset: 7744)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1624, file: !35, line: 496, baseType: !7, size: 32, offset: 7808)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1624, file: !35, line: 499, baseType: !7, size: 32, offset: 7840)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1624, file: !35, line: 500, baseType: !2149, size: 64, offset: 7872)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2151, line: 45, baseType: !2152)
!2151 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1624, file: !35, line: 503, baseType: !7, size: 32, offset: 7936)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1624, file: !35, line: 504, baseType: !2155, size: 64, offset: 8000)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2158, line: 96, size: 192, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2159 = !{!2160, !2161, !2215, !2218}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2157, file: !2158, line: 97, baseType: !7, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2157, file: !2158, line: 98, baseType: !2162, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2158, line: 24, size: 3072, elements: !2164)
!2164 = !{!2165, !2167, !2168, !2169, !2170, !2184, !2185, !2186, !2187, !2199, !2200, !2201, !2212, !2213, !2214}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2163, file: !2158, line: 26, baseType: !2166, size: 128)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 128, elements: !2078)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2163, file: !2158, line: 27, baseType: !2166, size: 128, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2163, file: !2158, line: 28, baseType: !133, size: 32, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2163, file: !2158, line: 31, baseType: !242, size: 32, align: 512, offset: 512)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2163, file: !2158, line: 32, baseType: !2171, size: 960, offset: 576)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2172, line: 206, size: 960, elements: !2173)
!2172 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2173 = !{!2174, !2175, !2178, !2180, !2181, !2183}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2171, file: !2172, line: 207, baseType: !235, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2171, file: !2172, line: 208, baseType: !2176, size: 256, offset: 64)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2177, size: 256, elements: !352)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2171, file: !2172, line: 209, baseType: !2179, size: 256, offset: 320)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !352)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2171, file: !2172, line: 213, baseType: !775, size: 64, offset: 576)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2171, file: !2172, line: 215, baseType: !2182, size: 256, offset: 640)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 256, elements: !352)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2171, file: !2172, line: 216, baseType: !266, size: 8, offset: 896)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2163, file: !2158, line: 33, baseType: !132, size: 64, offset: 1536)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2163, file: !2158, line: 34, baseType: !132, size: 64, offset: 1600)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2163, file: !2158, line: 35, baseType: !501, size: 8, offset: 1664)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2163, file: !2158, line: 36, baseType: !2188, size: 320, offset: 1728)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2189, line: 11, size: 320, elements: !2190)
!2189 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2190 = !{!2191, !2192, !2193, !2198}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2188, file: !2189, line: 16, baseType: !347, size: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2188, file: !2189, line: 17, baseType: !132, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2188, file: !2189, line: 18, baseType: !2194, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !2197}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2188, file: !2189, line: 19, baseType: !149, size: 32, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2163, file: !2158, line: 37, baseType: !1189, size: 256, offset: 2048)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2163, file: !2158, line: 38, baseType: !232, size: 128, align: 64, offset: 2304)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2163, file: !2158, line: 39, baseType: !2202, size: 64, offset: 2432)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2158, line: 49, size: 768, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2210, !2211}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2203, file: !2158, line: 50, baseType: !242, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2203, file: !2158, line: 51, baseType: !2179, size: 256, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2203, file: !2158, line: 53, baseType: !2179, size: 256, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2203, file: !2158, line: 54, baseType: !132, size: 64, offset: 576)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2203, file: !2158, line: 55, baseType: !2202, size: 64, offset: 640)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2203, file: !2158, line: 56, baseType: !133, size: 32, offset: 704)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2203, file: !2158, line: 57, baseType: !133, size: 32, offset: 736)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2163, file: !2158, line: 40, baseType: !132, size: 64, offset: 2496)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2163, file: !2158, line: 42, baseType: !133, size: 32, offset: 2560)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2163, file: !2158, line: 43, baseType: !2156, size: 64, offset: 2624)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2157, file: !2158, line: 99, baseType: !2216, offset: 128)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2217, line: 211, elements: !1055)
!2217 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2157, file: !2158, line: 100, baseType: !2219, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2158, line: 63, size: 3008, elements: !2221)
!2221 = !{!2222, !2223, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2253}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2220, file: !2158, line: 64, baseType: !2202, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2220, file: !2158, line: 65, baseType: !2224, size: 192, offset: 64)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2202, size: 192, elements: !326)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2220, file: !2158, line: 67, baseType: !133, size: 32, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2220, file: !2158, line: 68, baseType: !289, size: 256, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2220, file: !2158, line: 69, baseType: !242, size: 32, offset: 576)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2220, file: !2158, line: 70, baseType: !289, size: 256, offset: 640)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2220, file: !2158, line: 71, baseType: !132, size: 64, offset: 896)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2220, file: !2158, line: 72, baseType: !132, size: 64, offset: 960)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2220, file: !2158, line: 73, baseType: !132, size: 64, offset: 1024)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2220, file: !2158, line: 74, baseType: !132, size: 64, offset: 1088)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2220, file: !2158, line: 75, baseType: !132, size: 64, offset: 1152)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2220, file: !2158, line: 76, baseType: !132, size: 64, offset: 1216)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2220, file: !2158, line: 77, baseType: !132, size: 64, offset: 1280)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2220, file: !2158, line: 78, baseType: !132, size: 64, offset: 1344)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2220, file: !2158, line: 79, baseType: !501, size: 8, offset: 1408)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2220, file: !2158, line: 80, baseType: !132, size: 64, offset: 1472)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2220, file: !2158, line: 81, baseType: !289, size: 256, offset: 1536)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2220, file: !2158, line: 82, baseType: !986, size: 256, offset: 1792)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2220, file: !2158, line: 84, baseType: !207, size: 32, offset: 2048)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2220, file: !2158, line: 87, baseType: !132, size: 64, offset: 2112)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2220, file: !2158, line: 88, baseType: !132, size: 64, offset: 2176)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2220, file: !2158, line: 89, baseType: !2245, size: 704, offset: 2240)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1190, line: 111, size: 704, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2252}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2245, file: !1190, line: 112, baseType: !1189, size: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2245, file: !1190, line: 113, baseType: !2188, size: 320, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2245, file: !1190, line: 116, baseType: !2250, size: 64, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1190, line: 18, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2245, file: !1190, line: 117, baseType: !133, size: 32, offset: 640)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2220, file: !2158, line: 90, baseType: !2156, size: 64, offset: 2944)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1624, file: !35, line: 515, baseType: !2255, size: 64, offset: 8064)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2257, line: 117, size: 128, elements: !2258)
!2257 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2258 = !{!2259, !2260, !2261}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2256, file: !2257, line: 118, baseType: !427, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2256, file: !2257, line: 119, baseType: !427, size: 32, offset: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2256, file: !2257, line: 120, baseType: !775, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1624, file: !35, line: 516, baseType: !7, size: 32, offset: 8128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1624, file: !35, line: 519, baseType: !7, size: 32, offset: 8160)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1624, file: !35, line: 520, baseType: !2265, size: 64, offset: 8192)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1624, file: !35, line: 523, baseType: !2267, size: 64, offset: 8256)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !35, line: 523, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1624, file: !35, line: 524, baseType: !7, size: 32, offset: 8320)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1624, file: !35, line: 525, baseType: !2272, size: 64, offset: 8384)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !35, line: 525, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1624, file: !35, line: 526, baseType: !7, size: 32, offset: 8448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1624, file: !35, line: 533, baseType: !126, size: 64, offset: 8512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1624, file: !35, line: 534, baseType: !7, size: 32, offset: 8576)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1624, file: !35, line: 535, baseType: !2279, size: 64, offset: 8640)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1624, file: !35, line: 536, baseType: !7, size: 32, offset: 8704)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1624, file: !35, line: 539, baseType: !133, size: 32, offset: 8736)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1624, file: !35, line: 540, baseType: !2283, size: 64, offset: 8768)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2285, line: 32, size: 64, elements: !2286)
!2285 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2286 = !{!2287, !2288}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2284, file: !2285, line: 33, baseType: !427, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2284, file: !2285, line: 34, baseType: !427, size: 32, offset: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1624, file: !35, line: 563, baseType: !138, size: 128, offset: 8832)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1624, file: !35, line: 565, baseType: !138, size: 128, offset: 8960)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1624, file: !35, line: 568, baseType: !2292, size: 64, offset: 9088)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1624, file: !35, line: 570, baseType: !207, size: 32, offset: 9152)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1620, file: !24, line: 1916, baseType: !2297, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!127, !219, !127, !133}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1620, file: !24, line: 1917, baseType: !2301, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!814, !219, !198, !817, !1858}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1620, file: !24, line: 1918, baseType: !2305, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!814, !219, !161, !817, !1858}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1620, file: !24, line: 1919, baseType: !1489, size: 64, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1620, file: !24, line: 1920, baseType: !1489, size: 64, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1620, file: !24, line: 1921, baseType: !2311, size: 64, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!133, !1492, !2314, !7}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !24, line: 53, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1620, file: !24, line: 1923, baseType: !2317, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!133, !219, !2320}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !24, line: 1858, size: 128, elements: !2322)
!2322 = !{!2323, !2328}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2321, file: !24, line: 1859, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !24, line: 1855, baseType: !2325)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!501, !2320, !161, !133, !127, !410, !7}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2321, file: !24, line: 1860, baseType: !127, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1620, file: !24, line: 1924, baseType: !2330, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!1905, !219, !1907}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1620, file: !24, line: 1925, baseType: !2334, size: 64, offset: 576)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!775, !219, !7, !132}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1620, file: !24, line: 1926, baseType: !2334, size: 64, offset: 640)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1620, file: !24, line: 1927, baseType: !2339, size: 64, offset: 704)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!133, !219, !1021}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1620, file: !24, line: 1928, baseType: !132, size: 64, offset: 768)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1620, file: !24, line: 1929, baseType: !2344, size: 64, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!133, !662, !219}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1620, file: !24, line: 1930, baseType: !2348, size: 64, offset: 896)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!133, !219, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !24, line: 1061, baseType: !126)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1620, file: !24, line: 1931, baseType: !2344, size: 64, offset: 960)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1620, file: !24, line: 1932, baseType: !2354, size: 64, offset: 1024)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!133, !219, !127, !127, !133}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1620, file: !24, line: 1933, baseType: !2358, size: 64, offset: 1088)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!133, !133, !219, !133}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1620, file: !24, line: 1934, baseType: !2362, size: 64, offset: 1152)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!133, !219, !133, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !24, line: 1063, flags: DIFlagFwdDecl)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1620, file: !24, line: 1935, baseType: !1059, size: 64, offset: 1216)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1620, file: !24, line: 1936, baseType: !2369, size: 64, offset: 1280)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!133, !133}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1620, file: !24, line: 1937, baseType: !2362, size: 64, offset: 1344)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1620, file: !24, line: 1938, baseType: !2374, size: 64, offset: 1408)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!814, !2377, !219, !1858, !817, !7}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2379, line: 59, flags: DIFlagFwdDecl)
!2379 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1620, file: !24, line: 1939, baseType: !2381, size: 64, offset: 1472)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!814, !219, !1858, !2377, !817, !7}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1620, file: !24, line: 1940, baseType: !1561, size: 64, offset: 1536)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1620, file: !24, line: 1941, baseType: !2386, size: 64, offset: 1600)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!133, !219, !133, !2389, !1466}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1620, file: !24, line: 1942, baseType: !2391, size: 64, offset: 1664)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!775, !219, !133, !127, !127}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1620, file: !24, line: 1944, baseType: !2395, size: 64, offset: 1728)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !1837, !219}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1620, file: !24, line: 1948, baseType: !2399, size: 64, offset: 1792)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!814, !219, !127, !219, !127, !817, !7}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1620, file: !24, line: 1950, baseType: !2403, size: 64, offset: 1856)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!127, !219, !127, !219, !127, !127, !7}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1620, file: !24, line: 1953, baseType: !2354, size: 64, offset: 1920)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1620, file: !24, line: 1954, baseType: !2408, size: 64, offset: 1984)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!133, !2411, !7}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !24, line: 1911, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1620, file: !24, line: 1955, baseType: !2414, size: 64, offset: 2048)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!133, !2411, !2314, !7}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1615, file: !24, line: 723, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !662}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !663, file: !24, line: 725, baseType: !2422, size: 64, offset: 2816)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !24, line: 725, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !663, file: !24, line: 726, baseType: !875, size: 1536, align: 64, offset: 2880)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !663, file: !24, line: 727, baseType: !138, size: 128, offset: 4416)
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !24, line: 728, baseType: !2427, size: 64, offset: 4544)
!2427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !24, line: 728, size: 64, elements: !2428)
!2428 = !{!2429, !2430, !2441, !2442}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2427, file: !24, line: 729, baseType: !2377, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2427, file: !24, line: 730, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2433, line: 14, size: 832, elements: !2434)
!2433 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2432, file: !2433, line: 15, baseType: !1636, size: 512)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2432, file: !2433, line: 16, baseType: !1623, size: 64, offset: 512)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2432, file: !2433, line: 17, baseType: !1618, size: 64, offset: 576)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2432, file: !2433, line: 18, baseType: !138, size: 128, offset: 640)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2432, file: !2433, line: 19, baseType: !147, size: 32, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2432, file: !2433, line: 20, baseType: !7, size: 32, offset: 800)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2427, file: !24, line: 731, baseType: !198, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2427, file: !24, line: 732, baseType: !7, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !663, file: !24, line: 735, baseType: !151, size: 32, offset: 4608)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !663, file: !24, line: 738, baseType: !151, size: 32, offset: 4640)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !663, file: !24, line: 739, baseType: !2446, size: 64, offset: 4672)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !24, line: 634, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !663, file: !24, line: 750, baseType: !126, size: 64, offset: 4736)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !623, file: !624, line: 91, baseType: !2450, size: 256, offset: 448)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !2451)
!2451 = !{!2452}
!2452 = !DISubrange(count: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !623, file: !624, line: 94, baseType: !2454, size: 64, offset: 704)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2455, line: 25, size: 64, elements: !2456)
!2455 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2456 = !{!2457}
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2454, file: !2455, line: 26, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2454, file: !2455, line: 26, size: 64, elements: !2459)
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2458, file: !2455, line: 28, baseType: !411, size: 64, align: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2458, file: !2455, line: 30, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2458, file: !2455, line: 30, size: 64, elements: !2463)
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2462, file: !2455, line: 31, baseType: !242, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2462, file: !2455, line: 32, baseType: !133, size: 32, offset: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !623, file: !624, line: 95, baseType: !2467, size: 64, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !624, line: 128, size: 1024, align: 512, elements: !2470)
!2470 = !{!2471, !2475, !2476, !2483, !2489, !2493, !2497, !2501, !2502, !2506, !2510, !2515, !2519}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2469, file: !624, line: 129, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!133, !622, !7}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2469, file: !624, line: 130, baseType: !2472, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2469, file: !624, line: 131, baseType: !2477, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!133, !2480, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2469, file: !624, line: 132, baseType: !2484, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!133, !2480, !7, !161, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2469, file: !624, line: 134, baseType: !2490, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!133, !2480}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2469, file: !624, line: 135, baseType: !2494, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!133, !622}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2469, file: !624, line: 136, baseType: !2498, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !622}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2469, file: !624, line: 137, baseType: !2498, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2469, file: !624, line: 138, baseType: !2503, size: 64, offset: 512)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null, !622, !662}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2469, file: !624, line: 139, baseType: !2507, size: 64, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!198, !622, !198, !133}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2469, file: !624, line: 140, baseType: !2511, size: 64, offset: 640)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!617, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2469, file: !624, line: 141, baseType: !2516, size: 64, offset: 704)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!133, !783, !501}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2469, file: !624, line: 142, baseType: !2520, size: 64, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!622, !622, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !623, file: !624, line: 96, baseType: !142, size: 64, offset: 832)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !623, file: !624, line: 97, baseType: !132, size: 64, offset: 896)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !623, file: !624, line: 98, baseType: !126, size: 64, offset: 960)
!2528 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 100, baseType: !2529, size: 128, offset: 1024)
!2529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 100, size: 128, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2529, file: !624, line: 101, baseType: !138, size: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2529, file: !624, line: 102, baseType: !1916, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !623, file: !624, line: 104, baseType: !138, size: 128, offset: 1152)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !623, file: !624, line: 105, baseType: !138, size: 128, offset: 1280)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !623, file: !624, line: 113, baseType: !2536, size: 128, offset: 1408)
!2536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 109, size: 128, elements: !2537)
!2537 = !{!2538, !2539, !2540}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2536, file: !624, line: 110, baseType: !347, size: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2536, file: !624, line: 111, baseType: !638, size: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2536, file: !624, line: 112, baseType: !232, size: 128, align: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !618, file: !619, line: 72, baseType: !142, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !618, file: !619, line: 73, baseType: !133, size: 32, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !618, file: !619, line: 74, baseType: !702, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !613, file: !614, line: 10, baseType: !622, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !220, file: !24, line: 1015, baseType: !662, size: 64, offset: 1344)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !220, file: !24, line: 1016, baseType: !1618, size: 64, offset: 1408)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !220, file: !24, line: 1018, baseType: !410, size: 64, offset: 1472)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !220, file: !24, line: 1020, baseType: !126, size: 64, offset: 1536)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !220, file: !24, line: 1023, baseType: !126, size: 64, offset: 1600)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !220, file: !24, line: 1027, baseType: !2551, size: 64, offset: 1664)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !220, file: !24, line: 1029, baseType: !874, size: 64, offset: 1728)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !220, file: !24, line: 1030, baseType: !1571, size: 32, offset: 1792)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !220, file: !24, line: 1031, baseType: !1571, size: 32, offset: 1824)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !190, file: !6, line: 72, baseType: !817, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !190, file: !6, line: 73, baseType: !133, size: 32, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !175, file: !6, line: 119, baseType: !2558, size: 64, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!133, !169, !126}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !175, file: !6, line: 120, baseType: !166, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !175, file: !6, line: 121, baseType: !166, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !170, file: !6, line: 92, baseType: !289, size: 256, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !170, file: !6, line: 93, baseType: !157, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !170, file: !6, line: 94, baseType: !126, size: 64, offset: 384)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !170, file: !6, line: 95, baseType: !126, size: 64, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !170, file: !6, line: 96, baseType: !622, size: 64, offset: 512)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !170, file: !6, line: 97, baseType: !584, size: 64, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !170, file: !6, line: 98, baseType: !2570, size: 64, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !421, line: 34, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !170, file: !6, line: 99, baseType: !383, size: 64, offset: 704)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !170, file: !6, line: 100, baseType: !2574, size: 128, offset: 768)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !6, line: 76, size: 128, elements: !2575)
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2574, file: !6, line: 77, baseType: !161, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !2574, file: !6, line: 78, baseType: !2578, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !6, line: 173, size: 640, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2579, file: !6, line: 174, baseType: !334, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2579, file: !6, line: 175, baseType: !266, size: 8, offset: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2579, file: !6, line: 176, baseType: !266, size: 8, offset: 40)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !2579, file: !6, line: 177, baseType: !266, size: 8, offset: 48)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2579, file: !6, line: 178, baseType: !1623, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2579, file: !6, line: 179, baseType: !2587, size: 512, offset: 128)
!2587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 512, elements: !2588)
!2588 = !{!2589}
!2589 = !DISubrange(count: 8)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !170, file: !6, line: 101, baseType: !161, size: 64, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !170, file: !6, line: 102, baseType: !126, size: 64, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !170, file: !6, line: 103, baseType: !126, size: 64, offset: 1024)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !170, file: !6, line: 104, baseType: !7, size: 32, offset: 1088)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !170, file: !6, line: 105, baseType: !7, size: 32, offset: 1120)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !170, file: !6, line: 106, baseType: !7, size: 32, offset: 1152)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !170, file: !6, line: 107, baseType: !96, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !170, file: !6, line: 108, baseType: !101, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !170, file: !6, line: 109, baseType: !501, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !170, file: !6, line: 110, baseType: !501, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !170, file: !6, line: 111, baseType: !501, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !170, file: !6, line: 112, baseType: !501, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !158, file: !24, line: 2377, baseType: !2603, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !24, line: 75, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !158, file: !24, line: 2378, baseType: !2607, size: 64, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!622, !157, !133, !161, !126}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !158, file: !24, line: 2380, baseType: !2611, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !142}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !158, file: !24, line: 2381, baseType: !1623, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !24, line: 2382, baseType: !157, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !158, file: !24, line: 2383, baseType: !343, size: 64, offset: 512)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !158, file: !24, line: 2385, baseType: !2618, offset: 576)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2217, line: 206, elements: !1055)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !158, file: !24, line: 2386, baseType: !2618, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !158, file: !24, line: 2387, baseType: !2618, offset: 576)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !158, file: !24, line: 2388, baseType: !2622, offset: 576)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2618, elements: !326)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !158, file: !24, line: 2390, baseType: !2618, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !158, file: !24, line: 2391, baseType: !2618, offset: 576)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !158, file: !24, line: 2392, baseType: !2618, offset: 576)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !158, file: !24, line: 2393, baseType: !2618, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !143, file: !24, line: 1197, baseType: !2628, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2630)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !24, line: 2057, size: 1664, elements: !2631)
!2631 = !{!2632, !2636, !2637, !2638, !2642, !2646, !2650, !2651, !2652, !2656, !2660, !2664, !2665, !2666, !2691, !2695, !2696, !2700, !2701, !2702, !2703, !2707, !2711, !2758, !2773, !2774}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2630, file: !24, line: 2058, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!662, !142}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2630, file: !24, line: 2059, baseType: !2418, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2630, file: !24, line: 2060, baseType: !2418, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2630, file: !24, line: 2062, baseType: !2639, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !662, !133}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2630, file: !24, line: 2063, baseType: !2643, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!133, !662, !1364}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2630, file: !24, line: 2064, baseType: !2647, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!133, !662}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2630, file: !24, line: 2065, baseType: !2418, size: 64, offset: 384)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2630, file: !24, line: 2066, baseType: !2611, size: 64, offset: 448)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2630, file: !24, line: 2067, baseType: !2653, size: 64, offset: 512)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!133, !142, !133}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2630, file: !24, line: 2068, baseType: !2657, size: 64, offset: 576)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!133, !142, !23}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2630, file: !24, line: 2069, baseType: !2661, size: 64, offset: 640)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!133, !142}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2630, file: !24, line: 2070, baseType: !2657, size: 64, offset: 704)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2630, file: !24, line: 2071, baseType: !2661, size: 64, offset: 768)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2630, file: !24, line: 2072, baseType: !2667, size: 64, offset: 832)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!133, !622, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !2672, line: 9, size: 960, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/statfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "109fd6e5d352fa5dbe7866d2f488a201")
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2687, !2688, !2689, !2690}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !2671, file: !2672, line: 10, baseType: !775, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !2671, file: !2672, line: 11, baseType: !775, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !2671, file: !2672, line: 12, baseType: !410, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !2671, file: !2672, line: 13, baseType: !410, size: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !2671, file: !2672, line: 14, baseType: !410, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !2671, file: !2672, line: 15, baseType: !410, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !2671, file: !2672, line: 16, baseType: !410, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !2671, file: !2672, line: 17, baseType: !2682, size: 64, offset: 448)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !130, line: 81, baseType: !2683)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 79, size: 64, elements: !2684)
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2683, file: !130, line: 80, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !2078)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !2671, file: !2672, line: 18, baseType: !775, size: 64, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !2671, file: !2672, line: 19, baseType: !775, size: 64, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !2671, file: !2672, line: 20, baseType: !775, size: 64, offset: 640)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !2671, file: !2672, line: 21, baseType: !2182, size: 256, offset: 704)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2630, file: !24, line: 2073, baseType: !2692, size: 64, offset: 896)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!133, !142, !2088, !198}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2630, file: !24, line: 2074, baseType: !2611, size: 64, offset: 960)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2630, file: !24, line: 2076, baseType: !2697, size: 64, offset: 1024)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!133, !1837, !622}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2630, file: !24, line: 2077, baseType: !2697, size: 64, offset: 1088)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2630, file: !24, line: 2078, baseType: !2697, size: 64, offset: 1152)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2630, file: !24, line: 2079, baseType: !2697, size: 64, offset: 1216)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2630, file: !24, line: 2081, baseType: !2704, size: 64, offset: 1280)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!814, !142, !133, !198, !817, !127}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2630, file: !24, line: 2082, baseType: !2708, size: 64, offset: 1344)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!814, !142, !133, !161, !817, !127}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2630, file: !24, line: 2083, baseType: !2712, size: 64, offset: 1408)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!2715, !662}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !29, line: 296, size: 1664, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2743, !2744, !2745}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2717, file: !29, line: 297, baseType: !347, size: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2717, file: !29, line: 298, baseType: !138, size: 128, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2717, file: !29, line: 299, baseType: !138, size: 128, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2717, file: !29, line: 300, baseType: !138, size: 128, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2717, file: !29, line: 301, baseType: !289, size: 256, offset: 512)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2717, file: !29, line: 302, baseType: !242, size: 32, offset: 768)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2717, file: !29, line: 303, baseType: !207, size: 32, offset: 800)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2717, file: !29, line: 304, baseType: !142, size: 64, offset: 832)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2717, file: !29, line: 305, baseType: !2728, size: 64, offset: 896)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !29, line: 68, size: 64, elements: !2729)
!2729 = !{!2730, !2742}
!2730 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !29, line: 69, baseType: !2731, size: 32)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2728, file: !29, line: 69, size: 32, elements: !2732)
!2732 = !{!2733, !2734, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2731, file: !29, line: 70, baseType: !373, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2731, file: !29, line: 71, baseType: !391, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2731, file: !29, line: 72, baseType: !2736, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2737, line: 24, baseType: !2738)
!2737 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2737, line: 22, size: 32, elements: !2739)
!2739 = !{!2740}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2738, file: !2737, line: 23, baseType: !2741, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2737, line: 20, baseType: !379)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2728, file: !29, line: 74, baseType: !28, size: 32, offset: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2717, file: !29, line: 306, baseType: !127, size: 64, offset: 960)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2717, file: !29, line: 307, baseType: !132, size: 64, offset: 1024)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2717, file: !29, line: 308, baseType: !2746, size: 576, offset: 1088)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !29, line: 205, size: 576, elements: !2747)
!2747 = !{!2748, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2746, file: !29, line: 206, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !29, line: 66, baseType: !131)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2746, file: !29, line: 207, baseType: !2749, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2746, file: !29, line: 208, baseType: !2749, size: 64, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2746, file: !29, line: 209, baseType: !2749, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2746, file: !29, line: 210, baseType: !2749, size: 64, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2746, file: !29, line: 211, baseType: !2749, size: 64, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2746, file: !29, line: 212, baseType: !2749, size: 64, offset: 384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2746, file: !29, line: 213, baseType: !458, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2746, file: !29, line: 214, baseType: !458, size: 64, offset: 512)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2630, file: !24, line: 2085, baseType: !2759, size: 64, offset: 1472)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!775, !142, !2762}
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2764, line: 15, size: 256, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2765 = !{!2766, !2767, !2768, !2769, !2770}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2763, file: !2764, line: 16, baseType: !869, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2763, file: !2764, line: 19, baseType: !133, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2763, file: !2764, line: 26, baseType: !132, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2763, file: !2764, line: 33, baseType: !132, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2763, file: !2764, line: 36, baseType: !2771, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2764, line: 36, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2630, file: !24, line: 2087, baseType: !2759, size: 64, offset: 1536)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2630, file: !24, line: 2089, baseType: !2611, size: 64, offset: 1600)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !143, file: !24, line: 1198, baseType: !2776, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !29, line: 324, size: 704, elements: !2779)
!2779 = !{!2780, !2784, !2788, !2792, !2793, !2794, !2795, !2796, !2801, !2806, !2810}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2778, file: !29, line: 325, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!133, !2716}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2778, file: !29, line: 326, baseType: !2785, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!2716, !142, !133}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2778, file: !29, line: 327, baseType: !2789, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !2716}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2778, file: !29, line: 328, baseType: !2781, size: 64, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2778, file: !29, line: 329, baseType: !2781, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2778, file: !29, line: 330, baseType: !2781, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2778, file: !29, line: 331, baseType: !2653, size: 64, offset: 384)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2778, file: !29, line: 334, baseType: !2797, size: 64, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!2800, !662}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2778, file: !29, line: 335, baseType: !2802, size: 64, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!133, !662, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2778, file: !29, line: 337, baseType: !2807, size: 64, offset: 576)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!133, !662, !2800}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2778, file: !29, line: 339, baseType: !2811, size: 64, offset: 640)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!133, !142, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !143, file: !24, line: 1199, baseType: !2816, size: 64, offset: 512)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2818)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !29, line: 430, size: 704, elements: !2819)
!2819 = !{!2820, !2824, !2825, !2829, !2830, !2831, !2846, !2869, !2873, !2874, !2896}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2818, file: !29, line: 431, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!133, !142, !133, !133, !783}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2818, file: !29, line: 432, baseType: !2653, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2818, file: !29, line: 433, baseType: !2826, size: 64, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!133, !142, !7}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2818, file: !29, line: 434, baseType: !2826, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2818, file: !29, line: 435, baseType: !2653, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2818, file: !29, line: 436, baseType: !2832, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!133, !142, !133, !2835}
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !29, line: 417, size: 256, elements: !2837)
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2836, file: !29, line: 418, baseType: !133, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2836, file: !29, line: 419, baseType: !7, size: 32, offset: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2836, file: !29, line: 420, baseType: !7, size: 32, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2836, file: !29, line: 422, baseType: !7, size: 32, offset: 96)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2836, file: !29, line: 423, baseType: !7, size: 32, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2836, file: !29, line: 424, baseType: !7, size: 32, offset: 160)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2836, file: !29, line: 425, baseType: !7, size: 32, offset: 192)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2836, file: !29, line: 426, baseType: !7, size: 32, offset: 224)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2818, file: !29, line: 437, baseType: !2847, size: 64, offset: 384)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!133, !142, !2728, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !29, line: 345, size: 960, elements: !2852)
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2851, file: !29, line: 346, baseType: !133, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2851, file: !29, line: 347, baseType: !410, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2851, file: !29, line: 348, baseType: !410, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2851, file: !29, line: 349, baseType: !410, size: 64, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2851, file: !29, line: 350, baseType: !410, size: 64, offset: 256)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2851, file: !29, line: 351, baseType: !410, size: 64, offset: 320)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2851, file: !29, line: 352, baseType: !410, size: 64, offset: 384)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2851, file: !29, line: 353, baseType: !286, size: 64, offset: 448)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2851, file: !29, line: 355, baseType: !286, size: 64, offset: 512)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2851, file: !29, line: 356, baseType: !133, size: 32, offset: 576)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2851, file: !29, line: 357, baseType: !133, size: 32, offset: 608)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2851, file: !29, line: 358, baseType: !410, size: 64, offset: 640)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2851, file: !29, line: 359, baseType: !410, size: 64, offset: 704)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2851, file: !29, line: 360, baseType: !410, size: 64, offset: 768)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2851, file: !29, line: 361, baseType: !286, size: 64, offset: 832)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2851, file: !29, line: 362, baseType: !133, size: 32, offset: 896)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2818, file: !29, line: 438, baseType: !2870, size: 64, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!133, !142, !2814, !2850}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2818, file: !29, line: 440, baseType: !2847, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2818, file: !29, line: 441, baseType: !2875, size: 64, offset: 576)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!133, !142, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !29, line: 411, size: 1408, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2879, file: !29, line: 412, baseType: !7, size: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2879, file: !29, line: 413, baseType: !2883, size: 1344, offset: 64)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2884, size: 1344, elements: !326)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !29, line: 397, size: 448, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2884, file: !29, line: 398, baseType: !7, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2884, file: !29, line: 399, baseType: !7, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2884, file: !29, line: 401, baseType: !7, size: 32, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2884, file: !29, line: 402, baseType: !7, size: 32, offset: 96)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2884, file: !29, line: 403, baseType: !7, size: 32, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2884, file: !29, line: 404, baseType: !7, size: 32, offset: 160)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2884, file: !29, line: 405, baseType: !7, size: 32, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2884, file: !29, line: 406, baseType: !412, size: 64, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2884, file: !29, line: 407, baseType: !1594, size: 64, offset: 320)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2884, file: !29, line: 408, baseType: !1594, size: 64, offset: 384)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2818, file: !29, line: 442, baseType: !2826, size: 64, offset: 640)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !143, file: !24, line: 1200, baseType: !2898, size: 64, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2900)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !24, line: 54, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !143, file: !24, line: 1201, baseType: !132, size: 64, offset: 640)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !143, file: !24, line: 1202, baseType: !132, size: 64, offset: 704)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !143, file: !24, line: 1203, baseType: !132, size: 64, offset: 768)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !143, file: !24, line: 1204, baseType: !622, size: 64, offset: 832)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !143, file: !24, line: 1205, baseType: !442, size: 320, offset: 896)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !143, file: !24, line: 1206, baseType: !133, size: 32, offset: 1216)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !143, file: !24, line: 1207, baseType: !207, size: 32, offset: 1248)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !143, file: !24, line: 1209, baseType: !126, size: 64, offset: 1280)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !143, file: !24, line: 1211, baseType: !2910, size: 64, offset: 1344)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2913)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !24, line: 1211, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !143, file: !24, line: 1223, baseType: !2915, size: 64, offset: 1408)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !639, line: 34, size: 64, elements: !2916)
!2916 = !{!2917}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2915, file: !639, line: 35, baseType: !642, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !143, file: !24, line: 1224, baseType: !138, size: 128, offset: 1472)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !143, file: !24, line: 1225, baseType: !2920, size: 64, offset: 1600)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !24, line: 1225, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !143, file: !24, line: 1226, baseType: !2923, size: 64, offset: 1664)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !24, line: 1226, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !143, file: !24, line: 1227, baseType: !2926, size: 64, offset: 1728)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !24, line: 50, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !143, file: !24, line: 1228, baseType: !2929, size: 64, offset: 1792)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !24, line: 1228, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !143, file: !24, line: 1229, baseType: !347, size: 128, offset: 1856)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !143, file: !24, line: 1230, baseType: !7, size: 32, offset: 1984)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !143, file: !24, line: 1231, baseType: !2934, size: 2496, offset: 2048)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !29, line: 521, size: 2496, elements: !2935)
!2935 = !{!2936, !2937, !2938, !2940, !2972}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2934, file: !29, line: 522, baseType: !7, size: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2934, file: !29, line: 523, baseType: !442, size: 320, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2934, file: !29, line: 524, baseType: !2939, size: 192, offset: 384)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 192, elements: !326)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2934, file: !29, line: 525, baseType: !2941, size: 1728, offset: 576)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2942, size: 1728, elements: !326)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !29, line: 222, size: 576, elements: !2943)
!2943 = !{!2944, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2942, file: !29, line: 223, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !29, line: 445, size: 256, elements: !2947)
!2947 = !{!2948, !2949, !2962, !2963}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2946, file: !29, line: 446, baseType: !133, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2946, file: !29, line: 447, baseType: !2950, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !29, line: 312, size: 512, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2952, file: !29, line: 313, baseType: !2653, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2952, file: !29, line: 314, baseType: !2653, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2952, file: !29, line: 315, baseType: !2653, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2952, file: !29, line: 316, baseType: !2653, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2952, file: !29, line: 317, baseType: !2781, size: 64, offset: 256)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2952, file: !29, line: 318, baseType: !2781, size: 64, offset: 320)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2952, file: !29, line: 319, baseType: !2781, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2952, file: !29, line: 320, baseType: !2811, size: 64, offset: 448)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2946, file: !29, line: 448, baseType: !1623, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2946, file: !29, line: 449, baseType: !2945, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2942, file: !29, line: 224, baseType: !133, size: 32, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2942, file: !29, line: 226, baseType: !138, size: 128, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2942, file: !29, line: 227, baseType: !132, size: 64, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2942, file: !29, line: 228, baseType: !7, size: 32, offset: 320)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2942, file: !29, line: 229, baseType: !7, size: 32, offset: 352)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2942, file: !29, line: 230, baseType: !2749, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2942, file: !29, line: 231, baseType: !2749, size: 64, offset: 448)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2942, file: !29, line: 232, baseType: !126, size: 64, offset: 512)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2934, file: !29, line: 526, baseType: !2973, size: 192, offset: 2304)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2950, size: 192, elements: !326)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !143, file: !24, line: 1233, baseType: !2975, size: 2368, offset: 4544)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !24, line: 1184, size: 2368, elements: !2976)
!2976 = !{!2977, !2978, !2979}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2975, file: !24, line: 1185, baseType: !275, size: 16)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2975, file: !24, line: 1186, baseType: !275, size: 16, offset: 16)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2975, file: !24, line: 1187, baseType: !2980, size: 2304, offset: 64)
!2980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2981, size: 2304, elements: !326)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2982, line: 12, size: 768, elements: !2983)
!2982 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2983 = !{!2984, !2992, !2993, !4173, !4174}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2981, file: !2982, line: 13, baseType: !2985, size: 384)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2986, line: 17, size: 384, elements: !2987)
!2986 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2987 = !{!2988, !2989, !2990, !2991}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2985, file: !2986, line: 18, baseType: !133, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2985, file: !2986, line: 19, baseType: !133, size: 32, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2985, file: !2986, line: 20, baseType: !356, size: 192, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2985, file: !2986, line: 22, baseType: !232, size: 128, align: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2981, file: !2982, line: 14, baseType: !2040, size: 64, offset: 384)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2981, file: !2982, line: 15, baseType: !2994, size: 64, offset: 448)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2995, line: 16, size: 64, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2996 = !{!2997}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2994, file: !2995, line: 17, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2379, line: 746, size: 58368, elements: !3000)
!3000 = !{!3001, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3081, !3092, !3178, !3182, !3185, !3216, !3217, !3218, !3219, !3230, !3232, !3233, !3234, !3235, !3236, !3237, !3248, !3249, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3266, !3267, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3360, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3408, !3414, !3415, !3416, !3417, !3418, !3422, !3425, !3432, !3437, !3440, !3443, !3446, !3449, !3587, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3625, !3626, !3627, !3636, !3644, !3645, !3646, !3647, !3648, !3653, !3654, !3655, !3658, !3659, !3662, !3665, !3668, !3676, !3679, !3680, !3766, !3767, !3768, !3769, !3770, !3776, !3777, !3778, !3779, !3782, !3783, !3786, !3789, !3790, !3793, !3794, !3795, !3798, !3799, !3800, !3801, !3802, !3803, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3835, !3836, !3842, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3854, !3926, !3928, !3929, !3930, !3931, !3932, !3933, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3950, !3951, !3952}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2999, file: !2379, line: 752, baseType: !3002, size: 192)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3003, line: 56, size: 192, elements: !3004)
!3003 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3004 = !{!3005, !3006, !3007, !3008}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3002, file: !3003, line: 57, baseType: !132, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3002, file: !3003, line: 58, baseType: !132, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3002, file: !3003, line: 59, baseType: !149, size: 32, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3002, file: !3003, line: 61, baseType: !149, size: 32, offset: 160)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2999, file: !2379, line: 754, baseType: !7, size: 32, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2999, file: !2379, line: 767, baseType: !126, size: 64, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2999, file: !2379, line: 768, baseType: !334, size: 32, offset: 320)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2999, file: !2379, line: 770, baseType: !7, size: 32, offset: 352)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2999, file: !2379, line: 771, baseType: !7, size: 32, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2999, file: !2379, line: 774, baseType: !133, size: 32, offset: 416)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2999, file: !2379, line: 775, baseType: !3016, size: 128, offset: 448)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3017, line: 58, size: 128, elements: !3018)
!3017 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3018 = !{!3019, !3020, !3025, !3026}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3016, file: !3017, line: 59, baseType: !226, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !3016, file: !3017, line: 60, baseType: !3021, size: 32, offset: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3016, file: !3017, line: 60, size: 32, elements: !3022)
!3022 = !{!3023, !3024}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3021, file: !3017, line: 61, baseType: !7, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3021, file: !3017, line: 62, baseType: !207, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3016, file: !3017, line: 65, baseType: !273, size: 16, offset: 96)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3016, file: !3017, line: 65, baseType: !273, size: 16, offset: 112)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2999, file: !2379, line: 776, baseType: !7, size: 32, offset: 576)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2999, file: !2379, line: 777, baseType: !132, size: 64, offset: 640)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2999, file: !2379, line: 778, baseType: !2998, size: 64, offset: 704)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2999, file: !2379, line: 787, baseType: !133, size: 32, offset: 768)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2999, file: !2379, line: 788, baseType: !133, size: 32, offset: 800)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2999, file: !2379, line: 790, baseType: !133, size: 32, offset: 832)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2999, file: !2379, line: 792, baseType: !133, size: 32, offset: 864)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2999, file: !2379, line: 793, baseType: !133, size: 32, offset: 896)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2999, file: !2379, line: 794, baseType: !133, size: 32, offset: 928)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2999, file: !2379, line: 795, baseType: !7, size: 32, offset: 960)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2999, file: !2379, line: 797, baseType: !3038, size: 2048, offset: 1024)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2379, line: 551, size: 2048, elements: !3039)
!3039 = !{!3040, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3060, !3063, !3064, !3065}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3038, file: !2379, line: 553, baseType: !3041, size: 128)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2379, line: 411, size: 128, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3041, file: !2379, line: 412, baseType: !132, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3041, file: !2379, line: 413, baseType: !149, size: 32, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3038, file: !2379, line: 554, baseType: !434, size: 192, align: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3038, file: !2379, line: 555, baseType: !410, size: 64, offset: 320)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3038, file: !2379, line: 556, baseType: !410, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3038, file: !2379, line: 558, baseType: !138, size: 128, offset: 448)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3038, file: !2379, line: 559, baseType: !7, size: 32, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3038, file: !2379, line: 561, baseType: !410, size: 64, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3038, file: !2379, line: 562, baseType: !410, size: 64, offset: 704)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3038, file: !2379, line: 563, baseType: !410, size: 64, offset: 768)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3038, file: !2379, line: 564, baseType: !410, size: 64, offset: 832)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3038, file: !2379, line: 565, baseType: !286, size: 64, offset: 896)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3038, file: !2379, line: 566, baseType: !410, size: 64, offset: 960)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3038, file: !2379, line: 568, baseType: !410, size: 64, offset: 1024)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3038, file: !2379, line: 571, baseType: !133, size: 32, offset: 1088)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3038, file: !2379, line: 572, baseType: !3059, size: 64, offset: 1152)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3038, file: !2379, line: 574, baseType: !3061, size: 64, offset: 1216)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2379, line: 49, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3038, file: !2379, line: 576, baseType: !3061, size: 64, offset: 1280)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3038, file: !2379, line: 578, baseType: !132, size: 64, offset: 1344)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3038, file: !2379, line: 588, baseType: !3066, size: 512, align: 512, offset: 1536)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2379, line: 497, size: 512, align: 512, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3066, file: !2379, line: 498, baseType: !410, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3066, file: !2379, line: 499, baseType: !410, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3066, file: !2379, line: 500, baseType: !410, size: 64, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3066, file: !2379, line: 501, baseType: !149, size: 32, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3066, file: !2379, line: 502, baseType: !149, size: 32, offset: 224)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3066, file: !2379, line: 503, baseType: !132, size: 64, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3066, file: !2379, line: 504, baseType: !132, size: 64, offset: 320)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3066, file: !2379, line: 505, baseType: !132, size: 64, offset: 384)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3066, file: !2379, line: 506, baseType: !3077, size: 64, align: 64, offset: 448)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2379, line: 445, size: 64, align: 64, elements: !3078)
!3078 = !{!3079, !3080}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3077, file: !2379, line: 446, baseType: !7, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3077, file: !2379, line: 447, baseType: !7, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2999, file: !2379, line: 798, baseType: !3082, size: 384, offset: 3072)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2379, line: 592, size: 384, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087, !3088, !3089, !3090}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3082, file: !2379, line: 593, baseType: !138, size: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3082, file: !2379, line: 594, baseType: !132, size: 64, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3082, file: !2379, line: 595, baseType: !132, size: 64, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3082, file: !2379, line: 596, baseType: !7, size: 32, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3082, file: !2379, line: 597, baseType: !275, size: 16, offset: 288)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3082, file: !2379, line: 598, baseType: !275, size: 16, offset: 304)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3082, file: !2379, line: 600, baseType: !3091, size: 64, offset: 320)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2999, file: !2379, line: 799, baseType: !3093, size: 1792, offset: 3456)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2379, line: 610, size: 1792, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3175, !3176}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3093, file: !2379, line: 611, baseType: !434, size: 192, align: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3093, file: !2379, line: 618, baseType: !410, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3093, file: !2379, line: 619, baseType: !410, size: 64, offset: 256)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3093, file: !2379, line: 620, baseType: !410, size: 64, offset: 320)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3093, file: !2379, line: 621, baseType: !410, size: 64, offset: 384)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3093, file: !2379, line: 622, baseType: !410, size: 64, offset: 448)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3093, file: !2379, line: 629, baseType: !286, size: 64, offset: 512)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3093, file: !2379, line: 630, baseType: !410, size: 64, offset: 576)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3093, file: !2379, line: 631, baseType: !7, size: 32, offset: 640)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3093, file: !2379, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3093, file: !2379, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3093, file: !2379, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3093, file: !2379, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3093, file: !2379, line: 662, baseType: !3109, size: 512, offset: 704)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !79, line: 118, size: 512, elements: !3110)
!3110 = !{!3111, !3119, !3120, !3125, !3171, !3172, !3173, !3174}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3109, file: !79, line: 119, baseType: !3112, size: 256)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3113, line: 9, size: 256, elements: !3114)
!3113 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3114 = !{!3115, !3116}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3112, file: !3113, line: 10, baseType: !434, size: 192, align: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3112, file: !3113, line: 11, baseType: !3117, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3118, line: 29, baseType: !286)
!3118 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3109, file: !79, line: 120, baseType: !3117, size: 64, offset: 256)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3109, file: !79, line: 121, baseType: !3121, size: 64, offset: 320)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!78, !3124}
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3109, file: !79, line: 122, baseType: !3126, size: 64, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !79, line: 159, size: 512, align: 512, elements: !3128)
!3128 = !{!3129, !3152, !3153, !3156, !3161, !3162, !3166, !3170}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3127, file: !79, line: 160, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !79, line: 215, size: 4608, align: 512, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3131, file: !79, line: 216, baseType: !294, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3131, file: !79, line: 217, baseType: !7, size: 32, offset: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3131, file: !79, line: 218, baseType: !7, size: 32, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3131, file: !79, line: 219, baseType: !7, size: 32, offset: 96)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3131, file: !79, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3131, file: !79, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3131, file: !79, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3131, file: !79, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3131, file: !79, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3131, file: !79, line: 226, baseType: !7, size: 32, offset: 160)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3131, file: !79, line: 227, baseType: !275, size: 16, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3131, file: !79, line: 228, baseType: !275, size: 16, offset: 208)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3131, file: !79, line: 229, baseType: !7, size: 32, offset: 224)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3131, file: !79, line: 235, baseType: !3117, size: 64, offset: 256)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3131, file: !79, line: 236, baseType: !3124, size: 64, offset: 320)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3131, file: !79, line: 237, baseType: !3117, size: 64, offset: 384)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3131, file: !79, line: 238, baseType: !3124, size: 64, offset: 448)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3131, file: !79, line: 239, baseType: !3151, size: 4096, align: 512, offset: 512)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3127, size: 4096, align: 512, elements: !2588)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3127, file: !79, line: 161, baseType: !7, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3127, file: !79, line: 162, baseType: !3154, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !128, line: 32, baseType: !3155)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !130, line: 96, baseType: !133)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3127, file: !79, line: 163, baseType: !3157, size: 32, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !629, line: 274, baseType: !3158)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !629, line: 274, size: 32, elements: !3159)
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3158, file: !629, line: 274, baseType: !633, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3127, file: !79, line: 164, baseType: !3124, size: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3127, file: !79, line: 165, baseType: !3163, size: 128, offset: 256)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3113, line: 14, size: 128, elements: !3164)
!3164 = !{!3165}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3163, file: !3113, line: 15, baseType: !883, size: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3127, file: !79, line: 166, baseType: !3167, size: 64, offset: 384)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!3117}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3127, file: !79, line: 167, baseType: !3117, size: 64, offset: 448)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3109, file: !79, line: 123, baseType: !266, size: 8, offset: 448)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3109, file: !79, line: 124, baseType: !266, size: 8, offset: 456)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3109, file: !79, line: 125, baseType: !266, size: 8, offset: 464)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3109, file: !79, line: 126, baseType: !266, size: 8, offset: 472)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3093, file: !2379, line: 671, baseType: !3109, size: 512, offset: 1216)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3093, file: !2379, line: 679, baseType: !3177, size: 64, offset: 1728)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2999, file: !2379, line: 800, baseType: !3179, size: 64, offset: 5248)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3181)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2379, line: 800, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2999, file: !2379, line: 809, baseType: !3183, size: 64, offset: 5312)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2379, line: 70, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2999, file: !2379, line: 825, baseType: !3186, size: 2048, align: 512, offset: 5632)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2379, line: 509, size: 2048, align: 512, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3186, file: !2379, line: 511, baseType: !410, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3186, file: !2379, line: 512, baseType: !410, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3186, file: !2379, line: 513, baseType: !410, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3186, file: !2379, line: 514, baseType: !410, size: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3186, file: !2379, line: 515, baseType: !410, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3186, file: !2379, line: 516, baseType: !410, size: 64, offset: 320)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3186, file: !2379, line: 518, baseType: !410, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3186, file: !2379, line: 519, baseType: !410, size: 64, offset: 448)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3186, file: !2379, line: 520, baseType: !286, size: 64, offset: 512)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3186, file: !2379, line: 522, baseType: !410, size: 64, offset: 576)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3186, file: !2379, line: 523, baseType: !410, size: 64, offset: 640)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3186, file: !2379, line: 524, baseType: !286, size: 64, offset: 704)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3186, file: !2379, line: 526, baseType: !286, size: 64, offset: 768)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3186, file: !2379, line: 527, baseType: !410, size: 64, offset: 832)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3186, file: !2379, line: 529, baseType: !410, size: 64, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3186, file: !2379, line: 530, baseType: !410, size: 64, offset: 960)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3186, file: !2379, line: 531, baseType: !410, size: 64, offset: 1024)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3186, file: !2379, line: 532, baseType: !410, size: 64, offset: 1088)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3186, file: !2379, line: 533, baseType: !410, size: 64, offset: 1152)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3186, file: !2379, line: 535, baseType: !410, size: 64, offset: 1216)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3186, file: !2379, line: 536, baseType: !410, size: 64, offset: 1280)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3186, file: !2379, line: 537, baseType: !410, size: 64, offset: 1344)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3186, file: !2379, line: 538, baseType: !410, size: 64, offset: 1408)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3186, file: !2379, line: 539, baseType: !410, size: 64, offset: 1472)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3186, file: !2379, line: 540, baseType: !410, size: 64, offset: 1536)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3186, file: !2379, line: 541, baseType: !410, size: 64, offset: 1600)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3186, file: !2379, line: 542, baseType: !410, size: 64, offset: 1664)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3186, file: !2379, line: 543, baseType: !410, size: 64, offset: 1728)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2999, file: !2379, line: 833, baseType: !7, size: 32, offset: 7680)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2999, file: !2379, line: 836, baseType: !7, size: 32, offset: 7712)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2999, file: !2379, line: 837, baseType: !133, size: 32, offset: 7744)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2999, file: !2379, line: 838, baseType: !3220, size: 64, offset: 7808)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3222)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3223, line: 19, baseType: !3224)
!3223 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3223, line: 19, size: 64, elements: !3225)
!3225 = !{!3226}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3224, file: !3223, line: 19, baseType: !3227, size: 64)
!3227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 64, elements: !3228)
!3228 = !{!3229}
!3229 = !DISubrange(count: 1)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2999, file: !2379, line: 839, baseType: !3231, size: 64, offset: 7872)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2999, file: !2379, line: 840, baseType: !3222, size: 64, offset: 7936)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2999, file: !2379, line: 841, baseType: !126, size: 64, offset: 8000)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2999, file: !2379, line: 843, baseType: !275, size: 16, offset: 8064)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2999, file: !2379, line: 845, baseType: !275, size: 16, offset: 8080)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2999, file: !2379, line: 848, baseType: !133, size: 32, offset: 8096)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2999, file: !2379, line: 849, baseType: !3238, size: 32, offset: 8128)
!3238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2379, line: 718, size: 32, elements: !3239)
!3239 = !{!3240, !3247}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3238, file: !2379, line: 724, baseType: !3241, size: 32)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3238, file: !2379, line: 719, size: 32, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3241, file: !2379, line: 720, baseType: !266, size: 8)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3241, file: !2379, line: 721, baseType: !266, size: 8, offset: 8)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3241, file: !2379, line: 722, baseType: !266, size: 8, offset: 16)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3241, file: !2379, line: 723, baseType: !266, size: 8, offset: 24)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3238, file: !2379, line: 725, baseType: !149, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2999, file: !2379, line: 850, baseType: !138, size: 128, offset: 8192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2999, file: !2379, line: 851, baseType: !3250, size: 64, offset: 8320)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2379, line: 60, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2999, file: !2379, line: 855, baseType: !132, size: 64, offset: 8384)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2999, file: !2379, line: 856, baseType: !266, size: 8, offset: 8448)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2999, file: !2379, line: 857, baseType: !266, size: 8, offset: 8456)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2999, file: !2379, line: 858, baseType: !133, size: 32, offset: 8480)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2999, file: !2379, line: 859, baseType: !138, size: 128, offset: 8512)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2999, file: !2379, line: 860, baseType: !133, size: 32, offset: 8640)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2999, file: !2379, line: 861, baseType: !138, size: 128, offset: 8704)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2999, file: !2379, line: 873, baseType: !3260, size: 256, offset: 8832)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2379, line: 376, size: 256, elements: !3261)
!3261 = !{!3262, !3263, !3264, !3265}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3260, file: !2379, line: 381, baseType: !132, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3260, file: !2379, line: 384, baseType: !412, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3260, file: !2379, line: 389, baseType: !412, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3260, file: !2379, line: 392, baseType: !412, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2999, file: !2379, line: 875, baseType: !138, size: 128, offset: 9088)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2999, file: !2379, line: 877, baseType: !3268, size: 320, offset: 9216)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3269, line: 86, size: 320, elements: !3270)
!3269 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3270 = !{!3271, !3272, !3273}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3268, file: !3269, line: 87, baseType: !133, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3268, file: !3269, line: 88, baseType: !138, size: 128, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3268, file: !3269, line: 89, baseType: !138, size: 128, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2999, file: !2379, line: 878, baseType: !434, size: 192, align: 64, offset: 9536)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2999, file: !2379, line: 881, baseType: !1034, size: 64, offset: 9728)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2999, file: !2379, line: 882, baseType: !1034, size: 64, offset: 9792)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2999, file: !2379, line: 884, baseType: !133, size: 32, offset: 9856)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2999, file: !2379, line: 885, baseType: !133, size: 32, offset: 9888)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2999, file: !2379, line: 886, baseType: !133, size: 32, offset: 9920)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2999, file: !2379, line: 888, baseType: !133, size: 32, offset: 9952)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2999, file: !2379, line: 890, baseType: !132, size: 64, offset: 9984)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2999, file: !2379, line: 893, baseType: !7, size: 32, offset: 10048)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2999, file: !2379, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2999, file: !2379, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2999, file: !2379, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2999, file: !2379, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2999, file: !2379, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2999, file: !2379, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2999, file: !2379, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2999, file: !2379, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2999, file: !2379, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2999, file: !2379, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2999, file: !2379, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2999, file: !2379, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2999, file: !2379, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2999, file: !2379, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2999, file: !2379, line: 969, baseType: !132, size: 64, offset: 10176)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2999, file: !2379, line: 971, baseType: !3299, size: 448, offset: 10240)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !84, line: 25, size: 448, elements: !3300)
!3300 = !{!3301, !3302, !3307}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3299, file: !84, line: 26, baseType: !132, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3299, file: !84, line: 27, baseType: !3303, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!775, !3306}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, scope: !3299, file: !84, line: 28, baseType: !3308, size: 320, offset: 128)
!3308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3299, file: !84, line: 28, size: 320, elements: !3309)
!3309 = !{!3310, !3320, !3345}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3308, file: !84, line: 37, baseType: !3311, size: 320)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3308, file: !84, line: 30, size: 320, elements: !3312)
!3312 = !{!3313, !3315, !3316, !3317, !3318, !3319}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3311, file: !84, line: 31, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3311, file: !84, line: 32, baseType: !149, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3311, file: !84, line: 33, baseType: !149, size: 32, offset: 96)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3311, file: !84, line: 34, baseType: !149, size: 32, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3311, file: !84, line: 35, baseType: !410, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3311, file: !84, line: 36, baseType: !3314, size: 64, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3308, file: !84, line: 47, baseType: !3321, size: 192)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3308, file: !84, line: 39, size: 192, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3344}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3321, file: !84, line: 40, baseType: !3154, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3321, file: !84, line: 41, baseType: !83, size: 32, offset: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !3321, file: !84, line: 42, baseType: !3326, size: 64, offset: 64)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3321, file: !84, line: 42, size: 64, elements: !3327)
!3327 = !{!3328, !3336}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3326, file: !84, line: 43, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3331, line: 7, size: 128, elements: !3332)
!3331 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3332 = !{!3333, !3335}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3330, file: !3331, line: 8, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !130, line: 93, baseType: !131)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3330, file: !3331, line: 9, baseType: !131, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3326, file: !84, line: 44, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3339, line: 7, size: 64, elements: !3340)
!3339 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3340 = !{!3341, !3343}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3338, file: !3339, line: 8, baseType: !3342, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3339, line: 5, baseType: !427)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3338, file: !3339, line: 9, baseType: !427, size: 32, offset: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3321, file: !84, line: 46, baseType: !410, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3308, file: !84, line: 55, baseType: !3346, size: 256)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3308, file: !84, line: 49, size: 256, elements: !3347)
!3347 = !{!3348, !3356, !3357, !3358, !3359}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3346, file: !84, line: 50, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3351, line: 36, size: 64, elements: !3352)
!3351 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3352 = !{!3353, !3354, !3355}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3350, file: !3351, line: 37, baseType: !133, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3350, file: !3351, line: 38, baseType: !470, size: 16, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3350, file: !3351, line: 39, baseType: !470, size: 16, offset: 48)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3346, file: !84, line: 51, baseType: !133, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3346, file: !84, line: 52, baseType: !133, size: 32, offset: 96)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3346, file: !84, line: 53, baseType: !132, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3346, file: !84, line: 54, baseType: !132, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2999, file: !2379, line: 973, baseType: !3361, size: 32, offset: 10688)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !128, line: 27, baseType: !3362)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !130, line: 28, baseType: !133)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2999, file: !2379, line: 974, baseType: !3361, size: 32, offset: 10720)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2999, file: !2379, line: 978, baseType: !132, size: 64, offset: 10752)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2999, file: !2379, line: 987, baseType: !2998, size: 64, offset: 10816)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2999, file: !2379, line: 990, baseType: !2998, size: 64, offset: 10880)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2999, file: !2379, line: 995, baseType: !138, size: 128, offset: 10944)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2999, file: !2379, line: 996, baseType: !138, size: 128, offset: 11072)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2999, file: !2379, line: 997, baseType: !2998, size: 64, offset: 11200)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2999, file: !2379, line: 1005, baseType: !138, size: 128, offset: 11264)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2999, file: !2379, line: 1006, baseType: !138, size: 128, offset: 11392)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2999, file: !2379, line: 1009, baseType: !330, size: 64, offset: 11520)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2999, file: !2379, line: 1010, baseType: !3374, size: 512, offset: 11584)
!3374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 512, elements: !352)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2999, file: !2379, line: 1011, baseType: !138, size: 128, offset: 12096)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2999, file: !2379, line: 1012, baseType: !138, size: 128, offset: 12224)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2999, file: !2379, line: 1014, baseType: !1951, size: 64, offset: 12352)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2999, file: !2379, line: 1017, baseType: !2088, size: 64, offset: 12416)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2999, file: !2379, line: 1020, baseType: !2088, size: 64, offset: 12480)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2999, file: !2379, line: 1023, baseType: !126, size: 64, offset: 12544)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2999, file: !2379, line: 1025, baseType: !410, size: 64, offset: 12608)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2999, file: !2379, line: 1026, baseType: !410, size: 64, offset: 12672)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2999, file: !2379, line: 1031, baseType: !410, size: 64, offset: 12736)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2999, file: !2379, line: 1032, baseType: !3385, size: 192, offset: 12800)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2379, line: 324, size: 192, elements: !3386)
!3386 = !{!3387, !3388, !3389}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3385, file: !2379, line: 326, baseType: !410, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3385, file: !2379, line: 327, baseType: !410, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3385, file: !2379, line: 328, baseType: !294, size: 32, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2999, file: !2379, line: 1041, baseType: !132, size: 64, offset: 12992)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2999, file: !2379, line: 1042, baseType: !132, size: 64, offset: 13056)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2999, file: !2379, line: 1045, baseType: !410, size: 64, offset: 13120)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2999, file: !2379, line: 1048, baseType: !410, size: 64, offset: 13184)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2999, file: !2379, line: 1051, baseType: !132, size: 64, offset: 13248)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2999, file: !2379, line: 1052, baseType: !132, size: 64, offset: 13312)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2999, file: !2379, line: 1055, baseType: !3397, size: 640, offset: 13376)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3398, line: 132, size: 640, elements: !3399)
!3398 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3399 = !{!3400, !3406, !3407}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3397, file: !3398, line: 133, baseType: !3401, size: 576)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3402, size: 576, elements: !326)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3398, line: 117, size: 192, elements: !3403)
!3403 = !{!3404, !3405}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3402, file: !3398, line: 118, baseType: !410, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3402, file: !3398, line: 119, baseType: !3163, size: 128, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3397, file: !3398, line: 134, baseType: !7, size: 32, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3397, file: !3398, line: 135, baseType: !7, size: 32, offset: 608)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2999, file: !2379, line: 1058, baseType: !3409, size: 448, offset: 14016)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3398, line: 144, size: 448, elements: !3410)
!3410 = !{!3411, !3412, !3413}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3409, file: !3398, line: 145, baseType: !232, size: 128, align: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3409, file: !3398, line: 146, baseType: !289, size: 256, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3409, file: !3398, line: 147, baseType: !7, size: 32, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2999, file: !2379, line: 1064, baseType: !383, size: 64, offset: 14464)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2999, file: !2379, line: 1067, baseType: !383, size: 64, offset: 14528)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2999, file: !2379, line: 1070, baseType: !383, size: 64, offset: 14592)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2999, file: !2379, line: 1074, baseType: !419, size: 64, offset: 14656)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2999, file: !2379, line: 1084, baseType: !3419, size: 128, offset: 14720)
!3419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 128, elements: !3420)
!3420 = !{!3421}
!3421 = !DISubrange(count: 16)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2999, file: !2379, line: 1086, baseType: !3423, size: 64, offset: 14848)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2379, line: 55, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2999, file: !2379, line: 1089, baseType: !3426, size: 64, offset: 14912)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3427, line: 12, size: 64, elements: !3428)
!3427 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3428 = !{!3429}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3426, file: !3427, line: 13, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3427, line: 8, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2999, file: !2379, line: 1090, baseType: !3433, size: 128, offset: 14976)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3434, line: 13, size: 128, elements: !3435)
!3434 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3435 = !{!3436}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3433, file: !3434, line: 14, baseType: !138, size: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2999, file: !2379, line: 1097, baseType: !3438, size: 64, offset: 15104)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2379, line: 50, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2999, file: !2379, line: 1100, baseType: !3441, size: 64, offset: 15168)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2379, line: 1100, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2999, file: !2379, line: 1103, baseType: !3444, size: 64, offset: 15232)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2379, line: 53, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2999, file: !2379, line: 1107, baseType: !3447, size: 64, offset: 15296)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2379, line: 56, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2999, file: !2379, line: 1110, baseType: !3450, size: 64, offset: 15360)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3452, line: 93, size: 8768, elements: !3453)
!3452 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3501, !3510, !3511, !3513, !3514, !3515, !3518, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3556, !3557, !3564, !3574, !3577, !3578, !3581, !3582, !3583, !3584, !3585, !3586}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3451, file: !3452, line: 94, baseType: !334, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3451, file: !3452, line: 95, baseType: !207, size: 32, offset: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3451, file: !3452, line: 96, baseType: !133, size: 32, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3451, file: !3452, line: 97, baseType: !133, size: 32, offset: 96)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3451, file: !3452, line: 98, baseType: !138, size: 128, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3451, file: !3452, line: 100, baseType: !356, size: 192, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3451, file: !3452, line: 103, baseType: !2998, size: 64, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3451, file: !3452, line: 106, baseType: !3462, size: 192, offset: 512)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !589, line: 32, size: 192, elements: !3463)
!3463 = !{!3464, !3465}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3462, file: !589, line: 33, baseType: !138, size: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3462, file: !589, line: 34, baseType: !3466, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3467, line: 25, baseType: !3468)
!3467 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3467, line: 23, size: 64, elements: !3469)
!3469 = !{!3470}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3468, file: !3467, line: 24, baseType: !3227, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3451, file: !3452, line: 109, baseType: !343, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3451, file: !3452, line: 112, baseType: !133, size: 32, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3451, file: !3452, line: 114, baseType: !133, size: 32, offset: 800)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3451, file: !3452, line: 115, baseType: !2998, size: 64, offset: 832)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3451, file: !3452, line: 118, baseType: !133, size: 32, offset: 896)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3451, file: !3452, line: 119, baseType: !7, size: 32, offset: 928)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3451, file: !3452, line: 121, baseType: !3478, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3452, line: 80, size: 448, elements: !3480)
!3480 = !{!3481, !3482, !3488}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3479, file: !3452, line: 81, baseType: !207, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3479, file: !3452, line: 82, baseType: !3483, size: 128, offset: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3452, line: 75, size: 128, elements: !3484)
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3483, file: !3452, line: 76, baseType: !2998, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3483, file: !3452, line: 77, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3479, file: !3452, line: 83, baseType: !986, size: 256, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3451, file: !3452, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3451, file: !3452, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3451, file: !3452, line: 138, baseType: !7, size: 32, offset: 1056)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3451, file: !3452, line: 139, baseType: !138, size: 128, offset: 1088)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3451, file: !3452, line: 142, baseType: !3109, size: 512, offset: 1216)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3451, file: !3452, line: 143, baseType: !3117, size: 64, offset: 1728)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3451, file: !3452, line: 150, baseType: !3496, size: 256, offset: 1792)
!3496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3497, size: 256, elements: !2078)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3452, line: 38, size: 128, elements: !3498)
!3498 = !{!3499, !3500}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3497, file: !3452, line: 39, baseType: !410, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3497, file: !3452, line: 40, baseType: !410, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3451, file: !3452, line: 156, baseType: !3502, size: 192, offset: 2048)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3452, line: 66, size: 192, elements: !3503)
!3503 = !{!3504}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3502, file: !3452, line: 67, baseType: !3505, size: 192)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3452, line: 47, size: 192, elements: !3506)
!3506 = !{!3507, !3508, !3509}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3505, file: !3452, line: 48, baseType: !282, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3505, file: !3452, line: 49, baseType: !282, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3505, file: !3452, line: 50, baseType: !282, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3451, file: !3452, line: 160, baseType: !3397, size: 640, offset: 2240)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3451, file: !3452, line: 163, baseType: !3512, size: 256, offset: 2880)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !352)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3451, file: !3452, line: 169, baseType: !330, size: 64, offset: 3136)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3451, file: !3452, line: 172, baseType: !133, size: 32, offset: 3200)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3451, file: !3452, line: 174, baseType: !3516, size: 64, offset: 3264)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3452, line: 174, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3451, file: !3452, line: 185, baseType: !3519, size: 64, offset: 3328)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !629, line: 860, baseType: !3520)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !629, line: 853, size: 64, elements: !3521)
!3521 = !{!3522, !3523}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3520, file: !629, line: 858, baseType: !628, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3520, file: !629, line: 859, baseType: !242, size: 32, offset: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3451, file: !3452, line: 186, baseType: !410, size: 64, offset: 3392)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3451, file: !3452, line: 186, baseType: !410, size: 64, offset: 3456)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3451, file: !3452, line: 186, baseType: !410, size: 64, offset: 3520)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3451, file: !3452, line: 186, baseType: !410, size: 64, offset: 3584)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3451, file: !3452, line: 187, baseType: !410, size: 64, offset: 3648)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3451, file: !3452, line: 188, baseType: !410, size: 64, offset: 3712)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3451, file: !3452, line: 189, baseType: !3385, size: 192, offset: 3776)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3451, file: !3452, line: 190, baseType: !132, size: 64, offset: 3968)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3451, file: !3452, line: 190, baseType: !132, size: 64, offset: 4032)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3451, file: !3452, line: 190, baseType: !132, size: 64, offset: 4096)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3451, file: !3452, line: 190, baseType: !132, size: 64, offset: 4160)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3451, file: !3452, line: 191, baseType: !132, size: 64, offset: 4224)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3451, file: !3452, line: 191, baseType: !132, size: 64, offset: 4288)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3451, file: !3452, line: 191, baseType: !132, size: 64, offset: 4352)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3451, file: !3452, line: 191, baseType: !132, size: 64, offset: 4416)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3451, file: !3452, line: 192, baseType: !132, size: 64, offset: 4480)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3451, file: !3452, line: 192, baseType: !132, size: 64, offset: 4544)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3451, file: !3452, line: 192, baseType: !132, size: 64, offset: 4608)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3451, file: !3452, line: 192, baseType: !132, size: 64, offset: 4672)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3451, file: !3452, line: 193, baseType: !132, size: 64, offset: 4736)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3451, file: !3452, line: 193, baseType: !132, size: 64, offset: 4800)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3451, file: !3452, line: 194, baseType: !3546, size: 448, offset: 4864)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3547, line: 12, size: 448, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554, !3555}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3546, file: !3547, line: 15, baseType: !410, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3546, file: !3547, line: 17, baseType: !410, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3546, file: !3547, line: 19, baseType: !410, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3546, file: !3547, line: 21, baseType: !410, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3546, file: !3547, line: 29, baseType: !410, size: 64, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3546, file: !3547, line: 35, baseType: !410, size: 64, offset: 320)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3546, file: !3547, line: 44, baseType: !410, size: 64, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3451, file: !3452, line: 202, baseType: !412, size: 64, offset: 5312)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3451, file: !3452, line: 213, baseType: !3558, size: 2048, offset: 5376)
!3558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3559, size: 2048, elements: !3420)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3560, line: 43, size: 128, elements: !3561)
!3560 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3561 = !{!3562, !3563}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3559, file: !3560, line: 44, baseType: !819, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3559, file: !3560, line: 45, baseType: !819, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3451, file: !3452, line: 216, baseType: !3565, size: 448, offset: 7424)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3452, line: 30, size: 448, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3565, file: !3452, line: 31, baseType: !133, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3565, file: !3452, line: 32, baseType: !775, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3565, file: !3452, line: 33, baseType: !132, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3565, file: !3452, line: 34, baseType: !410, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3565, file: !3452, line: 34, baseType: !410, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3565, file: !3452, line: 35, baseType: !132, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3565, file: !3452, line: 35, baseType: !132, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3451, file: !3452, line: 219, baseType: !3575, size: 64, offset: 7872)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3452, line: 219, flags: DIFlagFwdDecl)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3451, file: !3452, line: 222, baseType: !7, size: 32, offset: 7936)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3451, file: !3452, line: 223, baseType: !3579, size: 64, offset: 8000)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3452, line: 223, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3451, file: !3452, line: 230, baseType: !501, size: 8, offset: 8064)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3451, file: !3452, line: 231, baseType: !470, size: 16, offset: 8080)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3451, file: !3452, line: 232, baseType: !470, size: 16, offset: 8096)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3451, file: !3452, line: 234, baseType: !1034, size: 64, offset: 8128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3451, file: !3452, line: 237, baseType: !289, size: 256, offset: 8192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3451, file: !3452, line: 243, baseType: !442, size: 320, offset: 8448)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2999, file: !2379, line: 1111, baseType: !3588, size: 64, offset: 15424)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3452, line: 20, size: 16640, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3589, file: !3452, line: 21, baseType: !242, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3589, file: !3452, line: 22, baseType: !334, size: 32, offset: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3589, file: !3452, line: 23, baseType: !356, size: 192, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3589, file: !3452, line: 24, baseType: !3595, size: 16384, offset: 256)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3596, size: 16384, elements: !1679)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !589, line: 51, size: 256, elements: !3597)
!3597 = !{!3598}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3596, file: !589, line: 52, baseType: !3599, size: 256)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !589, line: 37, size: 256, elements: !3600)
!3600 = !{!3601, !3608, !3609, !3613}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3599, file: !589, line: 39, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3603, line: 83, baseType: !3604)
!3603 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3603, line: 82, baseType: !3606)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{null, !133}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3599, file: !589, line: 40, baseType: !132, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3599, file: !589, line: 46, baseType: !3610, size: 64, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3603, line: 86, baseType: !3611)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3603, line: 85, baseType: !2293)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3599, file: !589, line: 48, baseType: !3466, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2999, file: !2379, line: 1112, baseType: !3466, size: 64, offset: 15488)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2999, file: !2379, line: 1113, baseType: !3466, size: 64, offset: 15552)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2999, file: !2379, line: 1115, baseType: !3466, size: 64, offset: 15616)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2999, file: !2379, line: 1116, baseType: !3462, size: 192, offset: 15680)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2999, file: !2379, line: 1117, baseType: !132, size: 64, offset: 15872)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2999, file: !2379, line: 1118, baseType: !817, size: 64, offset: 15936)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2999, file: !2379, line: 1119, baseType: !7, size: 32, offset: 16000)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2999, file: !2379, line: 1121, baseType: !235, size: 64, offset: 16064)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2999, file: !2379, line: 1125, baseType: !3623, size: 64, offset: 16128)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2379, line: 43, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2999, file: !2379, line: 1127, baseType: !373, size: 32, offset: 16192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2999, file: !2379, line: 1128, baseType: !7, size: 32, offset: 16224)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2999, file: !2379, line: 1130, baseType: !3628, size: 128, offset: 16256)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3629, line: 37, size: 128, elements: !3630)
!3629 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3630 = !{!3631, !3632, !3633}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3628, file: !3629, line: 38, baseType: !133, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3628, file: !3629, line: 39, baseType: !207, size: 32, offset: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3628, file: !3629, line: 40, baseType: !3634, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3629, line: 24, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2999, file: !2379, line: 1131, baseType: !3637, size: 256, offset: 16384)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3638, line: 12, size: 256, elements: !3639)
!3638 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3639 = !{!3640, !3641, !3642, !3643}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3637, file: !3638, line: 13, baseType: !198, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3637, file: !3638, line: 14, baseType: !132, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3637, file: !3638, line: 15, baseType: !132, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3637, file: !3638, line: 16, baseType: !501, size: 8, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2999, file: !2379, line: 1134, baseType: !410, size: 64, offset: 16640)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2999, file: !2379, line: 1135, baseType: !410, size: 64, offset: 16704)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2999, file: !2379, line: 1138, baseType: !242, size: 32, offset: 16768)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2999, file: !2379, line: 1141, baseType: !294, size: 32, offset: 16800)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2999, file: !2379, line: 1143, baseType: !3649, size: 64, offset: 16832)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2379, line: 735, size: 64, elements: !3650)
!3650 = !{!3651}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3649, file: !2379, line: 736, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2999, file: !2379, line: 1147, baseType: !883, size: 128, offset: 16896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2999, file: !2379, line: 1149, baseType: !2998, size: 64, offset: 17024)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2999, file: !2379, line: 1151, baseType: !3656, size: 64, offset: 17088)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2379, line: 1151, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2999, file: !2379, line: 1188, baseType: !126, size: 64, offset: 17152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2999, file: !2379, line: 1191, baseType: !3660, size: 64, offset: 17216)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2379, line: 44, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2999, file: !2379, line: 1194, baseType: !3663, size: 64, offset: 17280)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2379, line: 45, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2999, file: !2379, line: 1197, baseType: !3666, size: 64, offset: 17344)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2379, line: 61, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2999, file: !2379, line: 1199, baseType: !3669, size: 64, offset: 17408)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3671, line: 99, size: 128, elements: !3672)
!3671 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3672 = !{!3673, !3674, !3675}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3670, file: !3671, line: 100, baseType: !280, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3670, file: !3671, line: 101, baseType: !207, size: 32, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3670, file: !3671, line: 103, baseType: !275, size: 16, offset: 96)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2999, file: !2379, line: 1202, baseType: !3677, size: 64, offset: 17472)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2379, line: 48, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2999, file: !2379, line: 1205, baseType: !132, size: 64, offset: 17536)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2999, file: !2379, line: 1206, baseType: !3681, size: 64, offset: 17600)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !589, line: 14, baseType: !3683)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !589, line: 12, size: 384, elements: !3684)
!3684 = !{!3685}
!3685 = !DIDerivedType(tag: DW_TAG_member, scope: !3683, file: !589, line: 13, baseType: !3686, size: 384)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3683, file: !589, line: 13, size: 384, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3686, file: !589, line: 13, baseType: !133, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3686, file: !589, line: 13, baseType: !133, size: 32, offset: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3686, file: !589, line: 13, baseType: !133, size: 32, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3686, file: !589, line: 13, baseType: !3692, size: 256, offset: 128)
!3692 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3693, line: 37, size: 256, elements: !3694)
!3693 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3694 = !{!3695, !3700, !3713, !3719, !3728, !3755, !3760}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3692, file: !3693, line: 42, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 39, size: 64, elements: !3697)
!3697 = !{!3698, !3699}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3696, file: !3693, line: 40, baseType: !3362, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3696, file: !3693, line: 41, baseType: !379, size: 32, offset: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3692, file: !3693, line: 50, baseType: !3701, size: 192)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 45, size: 192, elements: !3702)
!3702 = !{!3703, !3705, !3706, !3712}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3701, file: !3693, line: 46, baseType: !3704, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !130, line: 95, baseType: !133)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3701, file: !3693, line: 47, baseType: !133, size: 32, offset: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3701, file: !3693, line: 48, baseType: !3707, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3693, line: 11, baseType: !3708)
!3708 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3693, line: 8, size: 64, elements: !3709)
!3709 = !{!3710, !3711}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3708, file: !3693, line: 9, baseType: !133, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3708, file: !3693, line: 10, baseType: !126, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3701, file: !3693, line: 49, baseType: !133, size: 32, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3692, file: !3693, line: 57, baseType: !3714, size: 128)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 53, size: 128, elements: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3714, file: !3693, line: 54, baseType: !3362, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3714, file: !3693, line: 55, baseType: !379, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3714, file: !3693, line: 56, baseType: !3707, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3692, file: !3693, line: 66, baseType: !3720, size: 256)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 60, size: 256, elements: !3721)
!3721 = !{!3722, !3723, !3724, !3725, !3727}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3720, file: !3693, line: 61, baseType: !3362, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3720, file: !3693, line: 62, baseType: !379, size: 32, offset: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3720, file: !3693, line: 63, baseType: !133, size: 32, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3720, file: !3693, line: 64, baseType: !3726, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !130, line: 94, baseType: !816)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3720, file: !3693, line: 65, baseType: !3726, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3692, file: !3693, line: 105, baseType: !3729, size: 256)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 69, size: 256, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3729, file: !3693, line: 70, baseType: !126, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, scope: !3729, file: !3693, line: 79, baseType: !3733, size: 192, offset: 64)
!3733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3729, file: !3693, line: 79, size: 192, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3744, !3749}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3733, file: !3693, line: 81, baseType: !133, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3733, file: !3693, line: 86, baseType: !470, size: 16)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3733, file: !3693, line: 92, baseType: !3738, size: 192)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3733, file: !3693, line: 88, size: 192, elements: !3739)
!3739 = !{!3740, !3742, !3743}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3738, file: !3693, line: 89, baseType: !3741, size: 64)
!3741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !2588)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3738, file: !3693, line: 90, baseType: !126, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3738, file: !3693, line: 91, baseType: !126, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3733, file: !3693, line: 97, baseType: !3745, size: 96)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3733, file: !3693, line: 94, size: 96, elements: !3746)
!3746 = !{!3747, !3748}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3745, file: !3693, line: 95, baseType: !3741, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3745, file: !3693, line: 96, baseType: !151, size: 32, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3733, file: !3693, line: 103, baseType: !3750, size: 128)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3733, file: !3693, line: 99, size: 128, elements: !3751)
!3751 = !{!3752, !3753, !3754}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3750, file: !3693, line: 100, baseType: !132, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3750, file: !3693, line: 101, baseType: !151, size: 32, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3750, file: !3693, line: 102, baseType: !151, size: 32, offset: 96)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3692, file: !3693, line: 111, baseType: !3756, size: 128)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 108, size: 128, elements: !3757)
!3757 = !{!3758, !3759}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3756, file: !3693, line: 109, baseType: !775, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3756, file: !3693, line: 110, baseType: !133, size: 32, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3692, file: !3693, line: 118, baseType: !3761, size: 128)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 114, size: 128, elements: !3762)
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3761, file: !3693, line: 115, baseType: !126, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3761, file: !3693, line: 116, baseType: !133, size: 32, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3761, file: !3693, line: 117, baseType: !7, size: 32, offset: 96)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2999, file: !2379, line: 1208, baseType: !3546, size: 448, offset: 17664)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2999, file: !2379, line: 1215, baseType: !410, size: 64, offset: 18112)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2999, file: !2379, line: 1217, baseType: !410, size: 64, offset: 18176)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2999, file: !2379, line: 1219, baseType: !410, size: 64, offset: 18240)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2999, file: !2379, line: 1223, baseType: !3771, size: 64, offset: 18304)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3772, line: 99, baseType: !3773)
!3772 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3772, line: 99, size: 64, elements: !3774)
!3774 = !{!3775}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3773, file: !3772, line: 99, baseType: !3227, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2999, file: !2379, line: 1225, baseType: !628, size: 32, offset: 18368)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2999, file: !2379, line: 1226, baseType: !133, size: 32, offset: 18400)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2999, file: !2379, line: 1227, baseType: !133, size: 32, offset: 18432)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2999, file: !2379, line: 1231, baseType: !3780, size: 64, offset: 18496)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2379, line: 1231, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2999, file: !2379, line: 1233, baseType: !138, size: 128, offset: 18560)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2999, file: !2379, line: 1240, baseType: !3784, size: 64, offset: 18688)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2379, line: 62, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2999, file: !2379, line: 1242, baseType: !3787, size: 64, offset: 18752)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2379, line: 1242, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2999, file: !2379, line: 1244, baseType: !138, size: 128, offset: 18816)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2999, file: !2379, line: 1245, baseType: !3791, size: 64, offset: 18944)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2379, line: 51, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2999, file: !2379, line: 1246, baseType: !289, size: 256, offset: 19008)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2999, file: !2379, line: 1247, baseType: !7, size: 32, offset: 19264)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2999, file: !2379, line: 1250, baseType: !3796, size: 64, offset: 19328)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2379, line: 57, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2999, file: !2379, line: 1251, baseType: !289, size: 256, offset: 19392)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2999, file: !2379, line: 1252, baseType: !138, size: 128, offset: 19648)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2999, file: !2379, line: 1259, baseType: !1280, size: 64, offset: 19776)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2999, file: !2379, line: 1260, baseType: !470, size: 16, offset: 19840)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2999, file: !2379, line: 1261, baseType: !470, size: 16, offset: 19856)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2999, file: !2379, line: 1314, baseType: !3804, size: 64, offset: 19904)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3806, line: 62, size: 256, align: 256, elements: !3807)
!3806 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813, !3814}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3805, file: !3806, line: 75, baseType: !151, size: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3805, file: !3806, line: 90, baseType: !151, size: 32, offset: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3805, file: !3806, line: 112, baseType: !411, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3805, file: !3806, line: 132, baseType: !151, size: 32, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3805, file: !3806, line: 140, baseType: !151, size: 32, offset: 160)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3805, file: !3806, line: 149, baseType: !151, size: 32, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3805, file: !3806, line: 154, baseType: !3815, offset: 224)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, elements: !216)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2999, file: !2379, line: 1315, baseType: !149, size: 32, offset: 19968)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2999, file: !2379, line: 1316, baseType: !149, size: 32, offset: 20000)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2999, file: !2379, line: 1321, baseType: !132, size: 64, offset: 20032)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2999, file: !2379, line: 1325, baseType: !133, size: 32, offset: 20096)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2999, file: !2379, line: 1326, baseType: !133, size: 32, offset: 20128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2999, file: !2379, line: 1327, baseType: !133, size: 32, offset: 20160)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2999, file: !2379, line: 1328, baseType: !133, size: 32, offset: 20192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2999, file: !2379, line: 1329, baseType: !232, size: 128, align: 64, offset: 20224)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2999, file: !2379, line: 1332, baseType: !3825, size: 128, offset: 20352)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3826, line: 51, size: 128, elements: !3827)
!3826 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3827 = !{!3828, !3833, !3834}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3825, file: !3826, line: 60, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3830, line: 7, size: 64, elements: !3831)
!3830 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3831 = !{!3832}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3829, file: !3830, line: 12, baseType: !3224, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3825, file: !3826, line: 63, baseType: !501, size: 8, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3825, file: !3826, line: 70, baseType: !501, size: 8, offset: 72)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2999, file: !2379, line: 1335, baseType: !2377, size: 64, offset: 20480)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2999, file: !2379, line: 1337, baseType: !3837, size: 128, offset: 20544)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3826, line: 39, size: 128, elements: !3838)
!3838 = !{!3839, !3840, !3841}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3837, file: !3826, line: 40, baseType: !901, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3837, file: !3826, line: 42, baseType: !151, size: 32, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3837, file: !3826, line: 43, baseType: !151, size: 32, offset: 96)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2999, file: !2379, line: 1340, baseType: !3843, size: 64, offset: 20672)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2379, line: 69, flags: DIFlagFwdDecl)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2999, file: !2379, line: 1351, baseType: !133, size: 32, offset: 20736)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2999, file: !2379, line: 1352, baseType: !133, size: 32, offset: 20768)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2999, file: !2379, line: 1354, baseType: !132, size: 64, offset: 20800)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2999, file: !2379, line: 1364, baseType: !410, size: 64, offset: 20864)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2999, file: !2379, line: 1365, baseType: !410, size: 64, offset: 20928)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2999, file: !2379, line: 1412, baseType: !132, size: 64, offset: 20992)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2999, file: !2379, line: 1453, baseType: !3852, size: 64, offset: 21056)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2379, line: 1453, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2999, file: !2379, line: 1457, baseType: !3855, size: 64, offset: 21120)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !90, line: 61, size: 576, elements: !3857)
!3857 = !{!3858, !3859, !3878, !3881, !3882, !3915, !3925}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3856, file: !90, line: 62, baseType: !89, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !3856, file: !90, line: 64, baseType: !3860, size: 192, offset: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3856, file: !90, line: 64, size: 192, elements: !3861)
!3861 = !{!3862, !3873}
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !3860, file: !90, line: 65, baseType: !3863, size: 192)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3860, file: !90, line: 65, size: 192, elements: !3864)
!3864 = !{!3865, !3872}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3863, file: !90, line: 66, baseType: !3866, size: 128)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3867, line: 50, size: 128, elements: !3868)
!3867 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3868 = !{!3869, !3870, !3871}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3866, file: !3867, line: 52, baseType: !132, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3866, file: !3867, line: 54, baseType: !7, size: 32, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3866, file: !3867, line: 55, baseType: !7, size: 32, offset: 96)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3863, file: !90, line: 67, baseType: !132, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, scope: !3860, file: !90, line: 70, baseType: !3874, size: 192)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3860, file: !90, line: 70, size: 192, elements: !3875)
!3875 = !{!3876, !3877}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3874, file: !90, line: 71, baseType: !232, size: 128, align: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3874, file: !90, line: 72, baseType: !132, size: 64, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3856, file: !90, line: 76, baseType: !3879, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !90, line: 76, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3856, file: !90, line: 77, baseType: !132, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3856, file: !90, line: 79, baseType: !3883, size: 64, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3867, line: 25, size: 256, elements: !3885)
!3885 = !{!3886, !3892, !3896}
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !3867, line: 26, baseType: !3887, size: 128)
!3887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3884, file: !3867, line: 26, size: 128, elements: !3888)
!3888 = !{!3889, !3891}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3887, file: !3867, line: 27, baseType: !3890, size: 128)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 128, elements: !3420)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3887, file: !3867, line: 28, baseType: !3890, size: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3884, file: !3867, line: 31, baseType: !3893, size: 64, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3867, line: 23, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !3867, line: 33, baseType: !3897, size: 64, offset: 192)
!3897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3884, file: !3867, line: 33, size: 64, elements: !3898)
!3898 = !{!3899, !3905, !3910}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3897, file: !3867, line: 38, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3897, file: !3867, line: 34, size: 64, elements: !3901)
!3901 = !{!3902, !3903, !3904}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3900, file: !3867, line: 35, baseType: !427, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3900, file: !3867, line: 36, baseType: !266, size: 8, offset: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3900, file: !3867, line: 37, baseType: !266, size: 8, offset: 40)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3897, file: !3867, line: 42, baseType: !3906, size: 16)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3897, file: !3867, line: 39, size: 16, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3906, file: !3867, line: 40, baseType: !266, size: 8)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3906, file: !3867, line: 41, baseType: !266, size: 8, offset: 8)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3897, file: !3867, line: 46, baseType: !3911, size: 16)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3897, file: !3867, line: 43, size: 16, elements: !3912)
!3912 = !{!3913, !3914}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3911, file: !3867, line: 44, baseType: !266, size: 8)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3911, file: !3867, line: 45, baseType: !266, size: 8, offset: 8)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3856, file: !90, line: 81, baseType: !3916, size: 64, offset: 448)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !90, line: 85, size: 384, elements: !3918)
!3918 = !{!3919, !3920, !3921, !3922, !3923, !3924}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3917, file: !90, line: 86, baseType: !3879, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3917, file: !90, line: 87, baseType: !132, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3917, file: !90, line: 88, baseType: !132, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3917, file: !90, line: 89, baseType: !132, size: 64, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3917, file: !90, line: 90, baseType: !501, size: 8, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3917, file: !90, line: 92, baseType: !3916, size: 64, offset: 320)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3856, file: !90, line: 82, baseType: !7, size: 32, offset: 512)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2999, file: !2379, line: 1463, baseType: !3927, offset: 21184)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2379, line: 739, elements: !1055)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2999, file: !2379, line: 1470, baseType: !232, size: 128, align: 64, offset: 21184)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2999, file: !2379, line: 1471, baseType: !334, size: 32, offset: 21312)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2999, file: !2379, line: 1472, baseType: !133, size: 32, offset: 21344)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2999, file: !2379, line: 1474, baseType: !2998, size: 64, offset: 21376)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2999, file: !2379, line: 1475, baseType: !2188, size: 320, offset: 21440)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2999, file: !2379, line: 1478, baseType: !3934, size: 64, offset: 21760)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2379, line: 1478, flags: DIFlagFwdDecl)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2999, file: !2379, line: 1482, baseType: !334, size: 32, offset: 21824)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2999, file: !2379, line: 1489, baseType: !126, size: 64, offset: 21888)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2999, file: !2379, line: 1504, baseType: !126, size: 64, offset: 21952)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2999, file: !2379, line: 1505, baseType: !411, size: 64, offset: 22016)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2999, file: !2379, line: 1506, baseType: !410, size: 64, offset: 22080)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2999, file: !2379, line: 1507, baseType: !411, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2999, file: !2379, line: 1508, baseType: !411, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2999, file: !2379, line: 1509, baseType: !411, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2999, file: !2379, line: 1510, baseType: !232, size: 128, align: 64, offset: 22208)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2999, file: !2379, line: 1511, baseType: !133, size: 32, offset: 22336)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2999, file: !2379, line: 1515, baseType: !3947, size: 64, offset: 22400)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !227, line: 56, size: 64, elements: !3948)
!3948 = !{!3949}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3947, file: !227, line: 57, baseType: !230, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2999, file: !2379, line: 1518, baseType: !3947, size: 64, offset: 22464)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2999, file: !2379, line: 1528, baseType: !232, size: 128, align: 64, offset: 22528)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2999, file: !2379, line: 1552, baseType: !3953, size: 35328, offset: 23040)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3954, line: 430, size: 35328, elements: !3955)
!3954 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3955 = !{!3956, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3985, !3986, !3987, !3988, !3989, !3990, !3993, !3994, !3995, !3996}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3953, file: !3954, line: 432, baseType: !3957, size: 192)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3958, size: 192, elements: !326)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3959, line: 16, size: 64, elements: !3960)
!3959 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3960 = !{!3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3958, file: !3959, line: 17, baseType: !273, size: 16)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3958, file: !3959, line: 18, baseType: !273, size: 16, offset: 16)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3958, file: !3959, line: 19, baseType: !273, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3958, file: !3959, line: 19, baseType: !273, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3958, file: !3959, line: 19, baseType: !273, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3958, file: !3959, line: 19, baseType: !273, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3958, file: !3959, line: 19, baseType: !273, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3958, file: !3959, line: 20, baseType: !273, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3958, file: !3959, line: 20, baseType: !273, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3958, file: !3959, line: 20, baseType: !273, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3958, file: !3959, line: 20, baseType: !273, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3958, file: !3959, line: 20, baseType: !273, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3958, file: !3959, line: 20, baseType: !273, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3953, file: !3954, line: 436, baseType: !132, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3953, file: !3954, line: 440, baseType: !275, size: 16, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3953, file: !3954, line: 441, baseType: !275, size: 16, offset: 272)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3953, file: !3954, line: 442, baseType: !275, size: 16, offset: 288)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3953, file: !3954, line: 443, baseType: !275, size: 16, offset: 304)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3953, file: !3954, line: 447, baseType: !132, size: 64, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3953, file: !3954, line: 448, baseType: !132, size: 64, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3953, file: !3954, line: 459, baseType: !3982, size: 256, offset: 448)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3983, size: 256, elements: !352)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3954, line: 428, flags: DIFlagFwdDecl)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3953, file: !3954, line: 461, baseType: !132, size: 64, offset: 704)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3953, file: !3954, line: 463, baseType: !132, size: 64, offset: 768)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3953, file: !3954, line: 465, baseType: !132, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3953, file: !3954, line: 466, baseType: !132, size: 64, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3953, file: !3954, line: 467, baseType: !132, size: 64, offset: 960)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3953, file: !3954, line: 473, baseType: !3991, size: 64, offset: 1024)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3954, line: 10, flags: DIFlagFwdDecl)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3953, file: !3954, line: 480, baseType: !132, size: 64, offset: 1088)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3953, file: !3954, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3953, file: !3954, line: 491, baseType: !149, size: 32, offset: 1184)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3953, file: !3954, line: 501, baseType: !3997, size: 33792, offset: 1536)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3998, line: 448, size: 33792, elements: !3999)
!3998 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3999 = !{!4000, !4001, !4002, !4164, !4165, !4171, !4172}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3997, file: !3998, line: 461, baseType: !7, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3997, file: !3998, line: 468, baseType: !132, size: 64, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3997, file: !3998, line: 476, baseType: !4003, size: 64, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3998, line: 356, size: 33280, align: 512, elements: !4005)
!4005 = !{!4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4004, file: !3998, line: 358, baseType: !7, size: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4004, file: !3998, line: 361, baseType: !7, size: 32, offset: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4004, file: !3998, line: 364, baseType: !410, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4004, file: !3998, line: 367, baseType: !410, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4004, file: !3998, line: 370, baseType: !410, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4004, file: !3998, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4004, file: !3998, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4004, file: !3998, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4004, file: !3998, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4004, file: !3998, line: 397, baseType: !4016, size: 32768, offset: 512)
!4016 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3998, line: 348, size: 32768, elements: !4017)
!4017 = !{!4018, !4033, !4070, !4147, !4160}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4016, file: !3998, line: 349, baseType: !4019, size: 896)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3998, line: 12, size: 896, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4032}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4019, file: !3998, line: 13, baseType: !149, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4019, file: !3998, line: 14, baseType: !149, size: 32, offset: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4019, file: !3998, line: 15, baseType: !149, size: 32, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4019, file: !3998, line: 16, baseType: !149, size: 32, offset: 96)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4019, file: !3998, line: 17, baseType: !149, size: 32, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4019, file: !3998, line: 18, baseType: !149, size: 32, offset: 160)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4019, file: !3998, line: 19, baseType: !149, size: 32, offset: 192)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4019, file: !3998, line: 22, baseType: !4029, size: 640, offset: 224)
!4029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 640, elements: !4030)
!4030 = !{!4031}
!4031 = !DISubrange(count: 20)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4019, file: !3998, line: 25, baseType: !149, size: 32, offset: 864)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4016, file: !3998, line: 350, baseType: !4034, size: 4096, align: 128)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3998, line: 34, size: 4096, align: 128, elements: !4035)
!4035 = !{!4036, !4037, !4038, !4039, !4040, !4055, !4056, !4057, !4059, !4061, !4065}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4034, file: !3998, line: 35, baseType: !273, size: 16)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4034, file: !3998, line: 36, baseType: !273, size: 16, offset: 16)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4034, file: !3998, line: 37, baseType: !273, size: 16, offset: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4034, file: !3998, line: 38, baseType: !273, size: 16, offset: 48)
!4040 = !DIDerivedType(tag: DW_TAG_member, scope: !4034, file: !3998, line: 39, baseType: !4041, size: 128, offset: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4034, file: !3998, line: 39, size: 128, elements: !4042)
!4042 = !{!4043, !4048}
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !3998, line: 40, baseType: !4044, size: 128)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4041, file: !3998, line: 40, size: 128, elements: !4045)
!4045 = !{!4046, !4047}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4044, file: !3998, line: 41, baseType: !410, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4044, file: !3998, line: 42, baseType: !410, size: 64, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !3998, line: 44, baseType: !4049, size: 128)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4041, file: !3998, line: 44, size: 128, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4049, file: !3998, line: 45, baseType: !149, size: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4049, file: !3998, line: 46, baseType: !149, size: 32, offset: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4049, file: !3998, line: 47, baseType: !149, size: 32, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4049, file: !3998, line: 48, baseType: !149, size: 32, offset: 96)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4034, file: !3998, line: 51, baseType: !149, size: 32, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4034, file: !3998, line: 52, baseType: !149, size: 32, offset: 224)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4034, file: !3998, line: 55, baseType: !4058, size: 1024, offset: 256)
!4058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !2451)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4034, file: !3998, line: 58, baseType: !4060, size: 2048, offset: 1280)
!4060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 2048, elements: !1679)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4034, file: !3998, line: 60, baseType: !4062, size: 384, offset: 3328)
!4062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 384, elements: !4063)
!4063 = !{!4064}
!4064 = !DISubrange(count: 12)
!4065 = !DIDerivedType(tag: DW_TAG_member, scope: !4034, file: !3998, line: 62, baseType: !4066, size: 384, offset: 3712)
!4066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4034, file: !3998, line: 62, size: 384, elements: !4067)
!4067 = !{!4068, !4069}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4066, file: !3998, line: 63, baseType: !4062, size: 384)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4066, file: !3998, line: 64, baseType: !4062, size: 384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4016, file: !3998, line: 351, baseType: !4071, size: 1088)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3998, line: 79, size: 1088, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4146}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4071, file: !3998, line: 80, baseType: !149, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4071, file: !3998, line: 81, baseType: !149, size: 32, offset: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4071, file: !3998, line: 82, baseType: !149, size: 32, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4071, file: !3998, line: 83, baseType: !149, size: 32, offset: 96)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4071, file: !3998, line: 84, baseType: !149, size: 32, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4071, file: !3998, line: 85, baseType: !149, size: 32, offset: 160)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4071, file: !3998, line: 86, baseType: !149, size: 32, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4071, file: !3998, line: 88, baseType: !4029, size: 640, offset: 224)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4071, file: !3998, line: 89, baseType: !266, size: 8, offset: 864)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4071, file: !3998, line: 90, baseType: !266, size: 8, offset: 872)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4071, file: !3998, line: 91, baseType: !266, size: 8, offset: 880)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4071, file: !3998, line: 92, baseType: !266, size: 8, offset: 888)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4071, file: !3998, line: 93, baseType: !266, size: 8, offset: 896)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4071, file: !3998, line: 94, baseType: !266, size: 8, offset: 904)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4071, file: !3998, line: 95, baseType: !4088, size: 64, offset: 960)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4090, line: 11, size: 128, elements: !4091)
!4090 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4091 = !{!4092, !4093}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4089, file: !4090, line: 12, baseType: !775, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4089, file: !4090, line: 13, baseType: !4094, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4096, line: 103, size: 1344, elements: !4097)
!4096 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4097 = !{!4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4126, !4127, !4128}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4095, file: !4096, line: 109, baseType: !132, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4095, file: !4096, line: 110, baseType: !132, size: 64, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4095, file: !4096, line: 111, baseType: !132, size: 64, offset: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4095, file: !4096, line: 112, baseType: !132, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4095, file: !4096, line: 113, baseType: !132, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4095, file: !4096, line: 114, baseType: !132, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4095, file: !4096, line: 117, baseType: !132, size: 64, offset: 384)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4095, file: !4096, line: 118, baseType: !132, size: 64, offset: 448)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4095, file: !4096, line: 119, baseType: !132, size: 64, offset: 512)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4095, file: !4096, line: 120, baseType: !132, size: 64, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4095, file: !4096, line: 121, baseType: !132, size: 64, offset: 640)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4095, file: !4096, line: 122, baseType: !132, size: 64, offset: 704)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4095, file: !4096, line: 123, baseType: !132, size: 64, offset: 768)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4095, file: !4096, line: 124, baseType: !132, size: 64, offset: 832)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4095, file: !4096, line: 125, baseType: !132, size: 64, offset: 896)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4095, file: !4096, line: 139, baseType: !132, size: 64, offset: 960)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4095, file: !4096, line: 142, baseType: !132, size: 64, offset: 1024)
!4115 = !DIDerivedType(tag: DW_TAG_member, scope: !4095, file: !4096, line: 144, baseType: !4116, size: 64, offset: 1088)
!4116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4095, file: !4096, line: 144, size: 64, elements: !4117)
!4117 = !{!4118, !4119, !4120}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4116, file: !4096, line: 146, baseType: !273, size: 16)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4116, file: !4096, line: 148, baseType: !410, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4116, file: !4096, line: 150, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4096, line: 59, size: 64, elements: !4122)
!4122 = !{!4123, !4124, !4125}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4121, file: !4096, line: 61, baseType: !410, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4121, file: !4096, line: 63, baseType: !410, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4121, file: !4096, line: 65, baseType: !410, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4095, file: !4096, line: 153, baseType: !132, size: 64, offset: 1152)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4095, file: !4096, line: 154, baseType: !132, size: 64, offset: 1216)
!4128 = !DIDerivedType(tag: DW_TAG_member, scope: !4095, file: !4096, line: 156, baseType: !4129, size: 64, offset: 1280)
!4129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4095, file: !4096, line: 156, size: 64, elements: !4130)
!4130 = !{!4131, !4132, !4133}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4129, file: !4096, line: 158, baseType: !273, size: 16)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4129, file: !4096, line: 160, baseType: !410, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4129, file: !4096, line: 162, baseType: !4134, size: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4096, line: 69, size: 64, elements: !4135)
!4135 = !{!4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4134, file: !4096, line: 71, baseType: !410, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4134, file: !4096, line: 73, baseType: !410, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4134, file: !4096, line: 75, baseType: !410, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4134, file: !4096, line: 77, baseType: !410, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4134, file: !4096, line: 80, baseType: !410, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4134, file: !4096, line: 83, baseType: !410, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4134, file: !4096, line: 86, baseType: !410, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4134, file: !4096, line: 88, baseType: !410, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4134, file: !4096, line: 93, baseType: !410, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4134, file: !4096, line: 100, baseType: !410, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4071, file: !3998, line: 96, baseType: !149, size: 32, offset: 1024)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4016, file: !3998, line: 352, baseType: !4148, size: 4608, align: 512)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3998, line: 333, size: 4608, align: 512, elements: !4149)
!4149 = !{!4150, !4151, !4158}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4148, file: !3998, line: 334, baseType: !4034, size: 4096, align: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4148, file: !3998, line: 335, baseType: !4152, size: 512, offset: 4096)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3998, line: 312, size: 512, elements: !4153)
!4153 = !{!4154, !4155, !4156}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4152, file: !3998, line: 313, baseType: !410, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4152, file: !3998, line: 314, baseType: !410, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4152, file: !3998, line: 315, baseType: !4157, size: 384, offset: 128)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 384, elements: !488)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4148, file: !3998, line: 336, baseType: !4159, offset: 4608)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, elements: !216)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4016, file: !3998, line: 353, baseType: !4161, size: 32768)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 32768, elements: !4162)
!4162 = !{!4163}
!4163 = !DISubrange(count: 4096)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3997, file: !3998, line: 484, baseType: !4003, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3997, file: !3998, line: 491, baseType: !4166, size: 128, offset: 256)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3998, line: 404, size: 128, elements: !4167)
!4167 = !{!4168, !4169, !4170}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4166, file: !3998, line: 424, baseType: !410, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4166, file: !3998, line: 432, baseType: !7, size: 32, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4166, file: !3998, line: 440, baseType: !7, size: 32, offset: 96)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3997, file: !3998, line: 498, baseType: !4166, size: 128, offset: 384)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3997, file: !3998, line: 508, baseType: !4004, size: 33280, align: 512, offset: 512)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2981, file: !2982, line: 16, baseType: !356, size: 192, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2981, file: !2982, line: 17, baseType: !207, size: 32, offset: 704)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !143, file: !24, line: 1240, baseType: !126, size: 64, offset: 6912)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !143, file: !24, line: 1243, baseType: !149, size: 32, offset: 6976)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !143, file: !24, line: 1245, baseType: !458, size: 64, offset: 7040)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !143, file: !24, line: 1246, baseType: !458, size: 64, offset: 7104)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !143, file: !24, line: 1248, baseType: !151, size: 32, offset: 7168)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !143, file: !24, line: 1249, baseType: !2446, size: 64, offset: 7232)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !143, file: !24, line: 1252, baseType: !4182, size: 256, offset: 7296)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !2451)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !143, file: !24, line: 1253, baseType: !4184, size: 128, offset: 7552)
!4184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4185, line: 21, baseType: !4186)
!4185 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4185, line: 19, size: 128, elements: !4187)
!4187 = !{!4188}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4186, file: !4185, line: 20, baseType: !4189, size: 128)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 128, elements: !3420)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !143, file: !24, line: 1255, baseType: !7, size: 32, offset: 7680)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !143, file: !24, line: 1261, baseType: !289, size: 256, offset: 7744)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !143, file: !24, line: 1267, baseType: !161, size: 64, offset: 8000)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !143, file: !24, line: 1269, baseType: !2467, size: 64, offset: 8064)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !143, file: !24, line: 1271, baseType: !4195, size: 448, offset: 8128)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2764, line: 63, size: 448, elements: !4196)
!4196 = !{!4197, !4202, !4203, !4204, !4205, !4206, !4207}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4195, file: !2764, line: 64, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!132, !4201, !2762}
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4195, file: !2764, line: 66, baseType: !4198, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4195, file: !2764, line: 69, baseType: !775, size: 64, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4195, file: !2764, line: 70, baseType: !133, size: 32, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4195, file: !2764, line: 71, baseType: !7, size: 32, offset: 224)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4195, file: !2764, line: 74, baseType: !138, size: 128, offset: 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4195, file: !2764, line: 85, baseType: !4208, size: 64, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !143, file: !24, line: 1274, baseType: !280, size: 64, offset: 8576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !143, file: !24, line: 1280, baseType: !280, size: 64, offset: 8640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !143, file: !24, line: 1283, baseType: !133, size: 32, offset: 8704)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !143, file: !24, line: 1286, baseType: !1571, size: 32, offset: 8736)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !143, file: !24, line: 1289, baseType: !2250, size: 64, offset: 8768)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !143, file: !24, line: 1290, baseType: !343, size: 64, offset: 8832)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !143, file: !24, line: 1297, baseType: !584, size: 64, offset: 8896)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !143, file: !24, line: 1304, baseType: !4217, size: 64, offset: 8960)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4218, line: 49, size: 64, elements: !4219)
!4218 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4219 = !{!4220}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4217, file: !4218, line: 50, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4218, line: 41, size: 512, align: 512, elements: !4223)
!4223 = !{!4224, !4225, !4230}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4222, file: !4218, line: 43, baseType: !242, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4222, file: !4218, line: 45, baseType: !4226, size: 192, offset: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4218, line: 29, size: 192, elements: !4227)
!4227 = !{!4228, !4229}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4226, file: !4218, line: 30, baseType: !138, size: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4226, file: !4218, line: 32, baseType: !775, size: 64, offset: 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4222, file: !4218, line: 46, baseType: !775, size: 64, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !143, file: !24, line: 1305, baseType: !4217, size: 64, offset: 9024)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !143, file: !24, line: 1306, baseType: !232, size: 128, align: 64, offset: 9088)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !143, file: !24, line: 1307, baseType: !1189, size: 256, offset: 9216)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !143, file: !24, line: 1309, baseType: !289, size: 256, offset: 9472)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !143, file: !24, line: 1314, baseType: !133, size: 32, offset: 9728)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !143, file: !24, line: 1317, baseType: !242, size: 32, align: 512, offset: 10240)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !143, file: !24, line: 1318, baseType: !138, size: 128, offset: 10304)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !143, file: !24, line: 1320, baseType: !242, size: 32, offset: 10432)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !143, file: !24, line: 1321, baseType: !138, size: 128, offset: 10496)
!4240 = !{!0, !4241, !4246, !4248, !4251, !4256, !4258, !4260, !4265, !4267, !4269, !4271, !4285, !4288, !4293, !4295, !4300, !4305}
!4241 = !DIGlobalVariableExpression(var: !4242, expr: !DIExpression())
!4242 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author285", scope: !2, file: !3, line: 328, type: !4243, isLocal: true, isDefinition: true, align: 8)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 288, elements: !4244)
!4244 = !{!4245}
!4245 = !DISubrange(count: 36)
!4246 = !DIGlobalVariableExpression(var: !4247, expr: !DIExpression())
!4247 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description286", scope: !2, file: !3, line: 329, type: !4243, isLocal: true, isDefinition: true, align: 8)
!4248 = !DIGlobalVariableExpression(var: !4249, expr: !DIExpression())
!4249 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license287", scope: !2, file: !3, line: 330, type: !4250, isLocal: true, isDefinition: true, align: 8)
!4250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 96, elements: !4063)
!4251 = !DIGlobalVariableExpression(var: !4252, expr: !DIExpression())
!4252 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias288", scope: !2, file: !3, line: 331, type: !4253, isLocal: true, isDefinition: true, align: 8)
!4253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 144, elements: !4254)
!4254 = !{!4255}
!4255 = !DISubrange(count: 18)
!4256 = !DIGlobalVariableExpression(var: !4257, expr: !DIExpression())
!4257 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_module289", scope: !2, file: !3, line: 333, type: !126, isLocal: true, isDefinition: true)
!4258 = !DIGlobalVariableExpression(var: !4259, expr: !DIExpression())
!4259 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cleanup_module290", scope: !2, file: !3, line: 334, type: !126, isLocal: true, isDefinition: true)
!4260 = !DIGlobalVariableExpression(var: !4261, expr: !DIExpression())
!4261 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !4262, isLocal: true, isDefinition: true)
!4262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 72, elements: !4263)
!4263 = !{!4264}
!4264 = !DISubrange(count: 9)
!4265 = !DIGlobalVariableExpression(var: !4266, expr: !DIExpression())
!4266 = distinct !DIGlobalVariable(name: "efivarfs_type", scope: !2, file: !3, line: 311, type: !158, isLocal: true, isDefinition: true)
!4267 = !DIGlobalVariableExpression(var: !4268, expr: !DIExpression())
!4268 = distinct !DIGlobalVariable(name: "efivarfs_context_ops", scope: !2, file: !3, line: 286, type: !174, isLocal: true, isDefinition: true)
!4269 = !DIGlobalVariableExpression(var: !4270, expr: !DIExpression())
!4270 = distinct !DIGlobalVariable(name: "efivarfs_ops", scope: !2, file: !3, line: 70, type: !2629, isLocal: true, isDefinition: true)
!4271 = !DIGlobalVariableExpression(var: !4272, expr: !DIExpression())
!4272 = distinct !DIGlobalVariable(name: "_rs", scope: !4273, file: !3, line: 43, type: !573, isLocal: true, isDefinition: true)
!4273 = distinct !DISubprogram(name: "efivarfs_statfs", scope: !3, file: !3, line: 28, type: !2668, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4274)
!4274 = !{!4275, !4276, !4277, !4279, !4280, !4281, !4282}
!4275 = !DILocalVariable(name: "dentry", arg: 1, scope: !4273, file: !3, line: 28, type: !622)
!4276 = !DILocalVariable(name: "buf", arg: 2, scope: !4273, file: !3, line: 28, type: !2670)
!4277 = !DILocalVariable(name: "attr", scope: !4273, file: !3, line: 30, type: !4278)
!4278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!4279 = !DILocalVariable(name: "storage_space", scope: !4273, file: !3, line: 33, type: !410)
!4280 = !DILocalVariable(name: "remaining_space", scope: !4273, file: !3, line: 33, type: !410)
!4281 = !DILocalVariable(name: "max_variable_size", scope: !4273, file: !3, line: 33, type: !410)
!4282 = !DILocalVariable(name: "status", scope: !4273, file: !3, line: 34, type: !4283)
!4283 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !4284, line: 47, baseType: !132)
!4284 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!4285 = !DIGlobalVariableExpression(var: !4286, expr: !DIExpression())
!4286 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !4287, isLocal: true, isDefinition: true)
!4287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !3420)
!4288 = !DIGlobalVariableExpression(var: !4289, expr: !DIExpression())
!4289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !4290, isLocal: true, isDefinition: true)
!4290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 312, elements: !4291)
!4291 = !{!4292}
!4292 = !DISubrange(count: 39)
!4293 = !DIGlobalVariableExpression(var: !4294, expr: !DIExpression())
!4294 = distinct !DIGlobalVariable(name: "efivarfs_d_ops", scope: !2, file: !3, line: 121, type: !2468, isLocal: true, isDefinition: true)
!4295 = !DIGlobalVariableExpression(var: !4296, expr: !DIExpression())
!4296 = distinct !DIGlobalVariable(scope: null, file: !116, line: 480, type: !4297, isLocal: true, isDefinition: true)
!4297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 168, elements: !4298)
!4298 = !{!4299}
!4299 = !DISubrange(count: 21)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(scope: null, file: !4284, line: 707, type: !4302, isLocal: true, isDefinition: true)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 40, elements: !4303)
!4303 = !{!4304}
!4304 = !DISubrange(count: 5)
!4305 = !DIGlobalVariableExpression(var: !4306, expr: !DIExpression())
!4306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !4307, isLocal: true, isDefinition: true)
!4307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 544, elements: !4308)
!4308 = !{!4309}
!4309 = !DISubrange(count: 68)
!4310 = !{i32 7, !"Dwarf Version", i32 5}
!4311 = !{i32 2, !"Debug Info Version", i32 3}
!4312 = !{i32 1, !"wchar_size", i32 2}
!4313 = !{i32 8, !"cf-protection-branch", i32 1}
!4314 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4315 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4316 = !{i32 1, !"Code Model", i32 2}
!4317 = !{i32 1, !"override-stack-alignment", i32 8}
!4318 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4319 = distinct !DISubprogram(name: "efivarfs_init", scope: !3, file: !3, line: 318, type: !2060, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4320 = !DILocation(line: 320, column: 9, scope: !4319)
!4321 = !DILocation(line: 320, column: 2, scope: !4319)
!4322 = distinct !DISubprogram(name: "efivarfs_exit", scope: !3, file: !3, line: 323, type: !2293, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4323 = !DILocation(line: 325, column: 2, scope: !4322)
!4324 = !DILocation(line: 326, column: 1, scope: !4322)
!4325 = !DISubprogram(name: "register_filesystem", scope: !24, file: !24, line: 2445, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!133, !157}
!4328 = distinct !DISubprogram(name: "efivarfs_init_fs_context", scope: !3, file: !3, line: 291, type: !167, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4329)
!4329 = !{!4330}
!4330 = !DILocalVariable(name: "fc", arg: 1, scope: !4328, file: !3, line: 291, type: !169)
!4331 = !DILocation(line: 291, column: 56, scope: !4328)
!4332 = !DILocation(line: 293, column: 2, scope: !4328)
!4333 = !DILocation(line: 293, column: 6, scope: !4328)
!4334 = !DILocation(line: 293, column: 10, scope: !4328)
!4335 = !DILocation(line: 294, column: 2, scope: !4328)
!4336 = distinct !DISubprogram(name: "efivarfs_kill_sb", scope: !3, file: !3, line: 297, type: !2612, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4337)
!4337 = !{!4338, !4339}
!4338 = !DILocalVariable(name: "sb", arg: 1, scope: !4336, file: !3, line: 297, type: !142)
!4339 = !DILocalVariable(name: "sfi", scope: !4336, file: !3, line: 299, type: !4340)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "efivarfs_fs_info", scope: !4336, file: !3, line: 299, flags: DIFlagFwdDecl)
!4342 = !DILocation(line: 297, column: 50, scope: !4336)
!4343 = !DILocation(line: 299, column: 2, scope: !4336)
!4344 = !DILocation(line: 299, column: 27, scope: !4336)
!4345 = !DILocation(line: 299, column: 33, scope: !4336)
!4346 = !DILocation(line: 299, column: 37, scope: !4336)
!4347 = !DILocation(line: 301, column: 20, scope: !4336)
!4348 = !DILocation(line: 301, column: 2, scope: !4336)
!4349 = !DILocation(line: 303, column: 7, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 303, column: 6)
!4351 = !DILocation(line: 303, column: 6, scope: !4336)
!4352 = !DILocation(line: 304, column: 3, scope: !4350)
!4353 = !DILocation(line: 307, column: 2, scope: !4336)
!4354 = !DILocation(line: 308, column: 8, scope: !4336)
!4355 = !DILocation(line: 308, column: 2, scope: !4336)
!4356 = !DILocation(line: 309, column: 1, scope: !4336)
!4357 = distinct !DISubprogram(name: "efivarfs_get_tree", scope: !3, file: !3, line: 271, type: !167, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4358)
!4358 = !{!4359}
!4359 = !DILocalVariable(name: "fc", arg: 1, scope: !4357, file: !3, line: 271, type: !169)
!4360 = !DILocation(line: 271, column: 49, scope: !4357)
!4361 = !DILocation(line: 273, column: 25, scope: !4357)
!4362 = !DILocation(line: 273, column: 9, scope: !4357)
!4363 = !DILocation(line: 273, column: 2, scope: !4357)
!4364 = distinct !DISubprogram(name: "efivarfs_reconfigure", scope: !3, file: !3, line: 276, type: !167, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4365)
!4365 = !{!4366}
!4366 = !DILocalVariable(name: "fc", arg: 1, scope: !4364, file: !3, line: 276, type: !169)
!4367 = !DILocation(line: 276, column: 52, scope: !4364)
!4368 = !DILocation(line: 278, column: 7, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 278, column: 6)
!4370 = !DILocation(line: 278, column: 32, scope: !4369)
!4371 = !DILocation(line: 278, column: 37, scope: !4369)
!4372 = !DILocation(line: 278, column: 41, scope: !4369)
!4373 = !DILocation(line: 278, column: 50, scope: !4369)
!4374 = !DILocation(line: 278, column: 6, scope: !4364)
!4375 = !DILocation(line: 279, column: 3, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 279, column: 3)
!4377 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 278, column: 64)
!4378 = !DILocation(line: 279, column: 3, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 279, column: 3)
!4380 = !DILocation(line: 280, column: 3, scope: !4377)
!4381 = !DILocation(line: 283, column: 2, scope: !4364)
!4382 = !DILocation(line: 284, column: 1, scope: !4364)
!4383 = !DISubprogram(name: "get_tree_single", scope: !6, file: !6, line: 153, type: !4384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!133, !169, !4386}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!133, !142, !169}
!4389 = distinct !DISubprogram(name: "efivarfs_fill_super", scope: !3, file: !3, line: 232, type: !4387, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4390)
!4390 = !{!4391, !4392, !4393, !4394, !4395}
!4391 = !DILocalVariable(name: "sb", arg: 1, scope: !4389, file: !3, line: 232, type: !142)
!4392 = !DILocalVariable(name: "fc", arg: 2, scope: !4389, file: !3, line: 232, type: !169)
!4393 = !DILocalVariable(name: "inode", scope: !4389, file: !3, line: 234, type: !662)
!4394 = !DILocalVariable(name: "root", scope: !4389, file: !3, line: 235, type: !622)
!4395 = !DILocalVariable(name: "err", scope: !4389, file: !3, line: 236, type: !133)
!4396 = !DILocation(line: 232, column: 52, scope: !4389)
!4397 = !DILocation(line: 232, column: 75, scope: !4389)
!4398 = !DILocation(line: 234, column: 2, scope: !4389)
!4399 = !DILocation(line: 234, column: 16, scope: !4389)
!4400 = !DILocation(line: 235, column: 2, scope: !4389)
!4401 = !DILocation(line: 235, column: 17, scope: !4389)
!4402 = !DILocation(line: 236, column: 2, scope: !4389)
!4403 = !DILocation(line: 236, column: 6, scope: !4389)
!4404 = !DILocation(line: 238, column: 7, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 238, column: 6)
!4406 = !DILocation(line: 238, column: 6, scope: !4389)
!4407 = !DILocation(line: 239, column: 3, scope: !4405)
!4408 = !DILocation(line: 241, column: 2, scope: !4389)
!4409 = !DILocation(line: 241, column: 6, scope: !4389)
!4410 = !DILocation(line: 241, column: 26, scope: !4389)
!4411 = !DILocation(line: 242, column: 2, scope: !4389)
!4412 = !DILocation(line: 242, column: 6, scope: !4389)
!4413 = !DILocation(line: 242, column: 26, scope: !4389)
!4414 = !DILocation(line: 243, column: 2, scope: !4389)
!4415 = !DILocation(line: 243, column: 6, scope: !4389)
!4416 = !DILocation(line: 243, column: 26, scope: !4389)
!4417 = !DILocation(line: 244, column: 2, scope: !4389)
!4418 = !DILocation(line: 244, column: 6, scope: !4389)
!4419 = !DILocation(line: 244, column: 26, scope: !4389)
!4420 = !DILocation(line: 245, column: 2, scope: !4389)
!4421 = !DILocation(line: 245, column: 6, scope: !4389)
!4422 = !DILocation(line: 245, column: 26, scope: !4389)
!4423 = !DILocation(line: 246, column: 2, scope: !4389)
!4424 = !DILocation(line: 246, column: 6, scope: !4389)
!4425 = !DILocation(line: 246, column: 14, scope: !4389)
!4426 = !DILocation(line: 247, column: 2, scope: !4389)
!4427 = !DILocation(line: 247, column: 6, scope: !4389)
!4428 = !DILocation(line: 247, column: 26, scope: !4389)
!4429 = !DILocation(line: 249, column: 7, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 249, column: 6)
!4431 = !DILocation(line: 249, column: 6, scope: !4389)
!4432 = !DILocation(line: 250, column: 3, scope: !4430)
!4433 = !DILocation(line: 250, column: 7, scope: !4430)
!4434 = !DILocation(line: 250, column: 15, scope: !4430)
!4435 = !DILocation(line: 252, column: 29, scope: !4389)
!4436 = !DILocation(line: 252, column: 10, scope: !4389)
!4437 = !DILocation(line: 252, column: 8, scope: !4389)
!4438 = !DILocation(line: 253, column: 7, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 253, column: 6)
!4440 = !DILocation(line: 253, column: 6, scope: !4389)
!4441 = !DILocation(line: 254, column: 3, scope: !4439)
!4442 = !DILocation(line: 255, column: 2, scope: !4389)
!4443 = !DILocation(line: 255, column: 9, scope: !4389)
!4444 = !DILocation(line: 255, column: 14, scope: !4389)
!4445 = !DILocation(line: 257, column: 21, scope: !4389)
!4446 = !DILocation(line: 257, column: 9, scope: !4389)
!4447 = !DILocation(line: 257, column: 7, scope: !4389)
!4448 = !DILocation(line: 258, column: 15, scope: !4389)
!4449 = !DILocation(line: 258, column: 2, scope: !4389)
!4450 = !DILocation(line: 258, column: 6, scope: !4389)
!4451 = !DILocation(line: 258, column: 13, scope: !4389)
!4452 = !DILocation(line: 259, column: 7, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 259, column: 6)
!4454 = !DILocation(line: 259, column: 6, scope: !4389)
!4455 = !DILocation(line: 260, column: 3, scope: !4453)
!4456 = !DILocation(line: 262, column: 2, scope: !4389)
!4457 = !DILocation(line: 264, column: 47, scope: !4389)
!4458 = !DILocation(line: 264, column: 8, scope: !4389)
!4459 = !DILocation(line: 264, column: 6, scope: !4389)
!4460 = !DILocation(line: 265, column: 6, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 265, column: 6)
!4462 = !DILocation(line: 265, column: 6, scope: !4389)
!4463 = !DILocation(line: 266, column: 3, scope: !4461)
!4464 = !DILocation(line: 268, column: 9, scope: !4389)
!4465 = !DILocation(line: 268, column: 2, scope: !4389)
!4466 = !DILocation(line: 269, column: 1, scope: !4389)
!4467 = !DISubprogram(name: "efivar_is_available", scope: !4284, file: !4284, line: 1088, type: !1764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4468 = !DISubprogram(name: "efivar_supports_writes", scope: !4284, file: !4284, line: 1093, type: !1764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4469 = !DISubprogram(name: "efivarfs_get_inode", scope: !4470, file: !4470, line: 53, type: !4471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4470 = !DIFile(filename: "fs/efivarfs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd82167b09c718742058efff5d1b8f12")
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!662, !142, !2523, !133, !147, !501}
!4473 = !DISubprogram(name: "d_make_root", scope: !624, file: !624, line: 249, type: !4474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!622, !662}
!4476 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4477, file: !4477, line: 35, type: !4478, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4480)
!4477 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4478 = !DISubroutineType(types: !4479)
!4479 = !{null, !137}
!4480 = !{!4481}
!4481 = !DILocalVariable(name: "list", arg: 1, scope: !4476, file: !4477, line: 35, type: !137)
!4482 = !DILocation(line: 35, column: 53, scope: !4476)
!4483 = !DILocation(line: 37, column: 2, scope: !4476)
!4484 = !DILocation(line: 37, column: 2, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4476, file: !4477, line: 37, column: 2)
!4486 = !DILocation(line: 37, column: 2, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4485, file: !4477, line: 37, column: 2)
!4488 = !DILocation(line: 37, column: 2, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4485, file: !4477, line: 37, column: 2)
!4490 = !DILocation(line: 38, column: 2, scope: !4476)
!4491 = !DILocation(line: 38, column: 2, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4476, file: !4477, line: 38, column: 2)
!4493 = !DILocation(line: 38, column: 2, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4492, file: !4477, line: 38, column: 2)
!4495 = !DILocation(line: 38, column: 2, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4492, file: !4477, line: 38, column: 2)
!4497 = !DILocation(line: 39, column: 1, scope: !4476)
!4498 = !DISubprogram(name: "efivar_init", scope: !4470, file: !4470, line: 27, type: !4499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!133, !4501, !126, !501, !137}
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!133, !4504, !4506, !132, !126}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !4284, line: 49, baseType: !273)
!4506 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !4284, line: 74, baseType: !4507, align: 32)
!4507 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !4185, line: 17, baseType: !4508)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4185, line: 15, size: 128, elements: !4509)
!4509 = !{!4510}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4508, file: !4185, line: 16, baseType: !4189, size: 128)
!4511 = distinct !DISubprogram(name: "efivarfs_callback", scope: !3, file: !3, line: 147, type: !4502, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4512)
!4512 = !{!4513, !4514, !4515, !4516, !4517, !4518, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549}
!4513 = !DILocalVariable(name: "name16", arg: 1, scope: !4511, file: !3, line: 147, type: !4504)
!4514 = !DILocalVariable(name: "vendor", arg: 2, scope: !4511, file: !3, line: 147, type: !4506)
!4515 = !DILocalVariable(name: "name_size", arg: 3, scope: !4511, file: !3, line: 148, type: !132)
!4516 = !DILocalVariable(name: "data", arg: 4, scope: !4511, file: !3, line: 148, type: !126)
!4517 = !DILocalVariable(name: "sb", scope: !4511, file: !3, line: 150, type: !142)
!4518 = !DILocalVariable(name: "entry", scope: !4511, file: !3, line: 151, type: !4519)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efivar_entry", file: !4470, line: 21, size: 17344, elements: !4521)
!4521 = !{!4522, !4537, !4538}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !4520, file: !4470, line: 22, baseType: !4523, size: 16672)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_variable", file: !4470, line: 12, size: 16672, elements: !4524)
!4524 = !{!4525, !4529, !4530, !4531, !4535, !4536}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "VariableName", scope: !4523, file: !4470, line: 13, baseType: !4526, size: 8192)
!4526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4505, size: 8192, elements: !4527)
!4527 = !{!4528}
!4528 = !DISubrange(count: 512)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "VendorGuid", scope: !4523, file: !4470, line: 14, baseType: !4506, size: 128, align: 32, offset: 8192)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "DataSize", scope: !4523, file: !4470, line: 15, baseType: !132, size: 64, offset: 8320)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !4523, file: !4470, line: 16, baseType: !4532, size: 8192, offset: 8384)
!4532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 8192, elements: !4533)
!4533 = !{!4534}
!4534 = !DISubrange(count: 1024)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "Status", scope: !4523, file: !4470, line: 17, baseType: !4283, size: 64, offset: 16576)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !4523, file: !4470, line: 18, baseType: !151, size: 32, offset: 16640)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4520, file: !4470, line: 23, baseType: !138, size: 128, offset: 16704)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4520, file: !4470, line: 24, baseType: !1636, size: 512, offset: 16832)
!4539 = !DILocalVariable(name: "inode", scope: !4511, file: !3, line: 152, type: !662)
!4540 = !DILocalVariable(name: "dentry", scope: !4511, file: !3, line: 153, type: !622)
!4541 = !DILocalVariable(name: "root", scope: !4511, file: !3, line: 153, type: !622)
!4542 = !DILocalVariable(name: "size", scope: !4511, file: !3, line: 154, type: !132)
!4543 = !DILocalVariable(name: "name", scope: !4511, file: !3, line: 155, type: !198)
!4544 = !DILocalVariable(name: "len", scope: !4511, file: !3, line: 156, type: !133)
!4545 = !DILocalVariable(name: "err", scope: !4511, file: !3, line: 157, type: !133)
!4546 = !DILocalVariable(name: "is_removable", scope: !4511, file: !3, line: 158, type: !501)
!4547 = !DILabel(scope: !4511, name: "fail_inode", file: !3, line: 216)
!4548 = !DILabel(scope: !4511, name: "fail_name", file: !3, line: 218)
!4549 = !DILabel(scope: !4511, name: "fail", file: !3, line: 220)
!4550 = !DILocation(line: 147, column: 44, scope: !4511)
!4551 = !DILocation(line: 147, column: 63, scope: !4511)
!4552 = !DILocation(line: 148, column: 23, scope: !4511)
!4553 = !DILocation(line: 148, column: 40, scope: !4511)
!4554 = !DILocation(line: 150, column: 2, scope: !4511)
!4555 = !DILocation(line: 150, column: 22, scope: !4511)
!4556 = !DILocation(line: 150, column: 49, scope: !4511)
!4557 = !DILocation(line: 151, column: 2, scope: !4511)
!4558 = !DILocation(line: 151, column: 23, scope: !4511)
!4559 = !DILocation(line: 152, column: 2, scope: !4511)
!4560 = !DILocation(line: 152, column: 16, scope: !4511)
!4561 = !DILocation(line: 153, column: 2, scope: !4511)
!4562 = !DILocation(line: 153, column: 17, scope: !4511)
!4563 = !DILocation(line: 153, column: 26, scope: !4511)
!4564 = !DILocation(line: 153, column: 33, scope: !4511)
!4565 = !DILocation(line: 153, column: 37, scope: !4511)
!4566 = !DILocation(line: 154, column: 2, scope: !4511)
!4567 = !DILocation(line: 154, column: 16, scope: !4511)
!4568 = !DILocation(line: 155, column: 2, scope: !4511)
!4569 = !DILocation(line: 155, column: 8, scope: !4511)
!4570 = !DILocation(line: 156, column: 2, scope: !4511)
!4571 = !DILocation(line: 156, column: 6, scope: !4511)
!4572 = !DILocation(line: 157, column: 2, scope: !4511)
!4573 = !DILocation(line: 157, column: 6, scope: !4511)
!4574 = !DILocation(line: 158, column: 2, scope: !4511)
!4575 = !DILocation(line: 158, column: 7, scope: !4511)
!4576 = !DILocation(line: 160, column: 27, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 160, column: 6)
!4578 = !DILocation(line: 160, column: 6, scope: !4577)
!4579 = !DILocation(line: 160, column: 6, scope: !4511)
!4580 = !DILocation(line: 161, column: 3, scope: !4577)
!4581 = !DILocation(line: 163, column: 10, scope: !4511)
!4582 = !DILocation(line: 163, column: 8, scope: !4511)
!4583 = !DILocation(line: 164, column: 7, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 164, column: 6)
!4585 = !DILocation(line: 164, column: 6, scope: !4511)
!4586 = !DILocation(line: 165, column: 10, scope: !4584)
!4587 = !DILocation(line: 165, column: 3, scope: !4584)
!4588 = !DILocation(line: 167, column: 9, scope: !4511)
!4589 = !DILocation(line: 167, column: 16, scope: !4511)
!4590 = !DILocation(line: 167, column: 20, scope: !4511)
!4591 = !DILocation(line: 167, column: 2, scope: !4511)
!4592 = !DILocation(line: 167, column: 34, scope: !4511)
!4593 = !DILocation(line: 167, column: 42, scope: !4511)
!4594 = !DILocation(line: 168, column: 11, scope: !4511)
!4595 = !DILocation(line: 168, column: 18, scope: !4511)
!4596 = !DILocation(line: 168, column: 22, scope: !4511)
!4597 = !DILocation(line: 168, column: 2, scope: !4511)
!4598 = !DILocation(line: 170, column: 22, scope: !4511)
!4599 = !DILocation(line: 170, column: 29, scope: !4511)
!4600 = !DILocation(line: 170, column: 33, scope: !4511)
!4601 = !DILocation(line: 170, column: 8, scope: !4511)
!4602 = !DILocation(line: 170, column: 6, scope: !4511)
!4603 = !DILocation(line: 173, column: 17, scope: !4511)
!4604 = !DILocation(line: 173, column: 21, scope: !4511)
!4605 = !DILocation(line: 173, column: 25, scope: !4511)
!4606 = !DILocation(line: 173, column: 49, scope: !4511)
!4607 = !DILocation(line: 173, column: 9, scope: !4511)
!4608 = !DILocation(line: 173, column: 7, scope: !4511)
!4609 = !DILocation(line: 174, column: 7, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 174, column: 6)
!4611 = !DILocation(line: 174, column: 6, scope: !4511)
!4612 = !DILocation(line: 175, column: 3, scope: !4610)
!4613 = !DILocation(line: 177, column: 15, scope: !4511)
!4614 = !DILocation(line: 177, column: 21, scope: !4511)
!4615 = !DILocation(line: 177, column: 28, scope: !4511)
!4616 = !DILocation(line: 177, column: 32, scope: !4511)
!4617 = !DILocation(line: 177, column: 46, scope: !4511)
!4618 = !DILocation(line: 177, column: 2, scope: !4511)
!4619 = !DILocation(line: 179, column: 35, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 179, column: 6)
!4621 = !DILocation(line: 179, column: 42, scope: !4620)
!4622 = !DILocation(line: 179, column: 46, scope: !4620)
!4623 = !DILocation(line: 179, column: 58, scope: !4620)
!4624 = !DILocation(line: 179, column: 64, scope: !4620)
!4625 = !DILocation(line: 179, column: 6, scope: !4620)
!4626 = !DILocation(line: 179, column: 6, scope: !4511)
!4627 = !DILocation(line: 180, column: 16, scope: !4620)
!4628 = !DILocation(line: 180, column: 3, scope: !4620)
!4629 = !DILocation(line: 182, column: 2, scope: !4511)
!4630 = !DILocation(line: 182, column: 7, scope: !4511)
!4631 = !DILocation(line: 182, column: 12, scope: !4511)
!4632 = !DILocation(line: 184, column: 19, scope: !4511)
!4633 = !DILocation(line: 184, column: 26, scope: !4511)
!4634 = !DILocation(line: 184, column: 30, scope: !4511)
!4635 = !DILocation(line: 184, column: 42, scope: !4511)
!4636 = !DILocation(line: 184, column: 49, scope: !4511)
!4637 = !DILocation(line: 184, column: 47, scope: !4511)
!4638 = !DILocation(line: 184, column: 53, scope: !4511)
!4639 = !DILocation(line: 184, column: 2, scope: !4511)
!4640 = !DILocation(line: 186, column: 2, scope: !4511)
!4641 = !DILocation(line: 186, column: 7, scope: !4511)
!4642 = !DILocation(line: 186, column: 11, scope: !4511)
!4643 = !DILocation(line: 186, column: 34, scope: !4511)
!4644 = !DILocation(line: 186, column: 38, scope: !4511)
!4645 = !DILocation(line: 189, column: 13, scope: !4511)
!4646 = !DILocation(line: 189, column: 2, scope: !4511)
!4647 = !DILocation(line: 191, column: 29, scope: !4511)
!4648 = !DILocation(line: 191, column: 41, scope: !4511)
!4649 = !DILocation(line: 191, column: 33, scope: !4511)
!4650 = !DILocation(line: 192, column: 8, scope: !4511)
!4651 = !{i8 0, i8 2}
!4652 = !DILocation(line: 191, column: 10, scope: !4511)
!4653 = !DILocation(line: 191, column: 8, scope: !4511)
!4654 = !DILocation(line: 193, column: 7, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 193, column: 6)
!4656 = !DILocation(line: 193, column: 6, scope: !4511)
!4657 = !DILocation(line: 194, column: 3, scope: !4655)
!4658 = !DILocation(line: 196, column: 33, scope: !4511)
!4659 = !DILocation(line: 196, column: 39, scope: !4511)
!4660 = !DILocation(line: 196, column: 11, scope: !4511)
!4661 = !DILocation(line: 196, column: 9, scope: !4511)
!4662 = !DILocation(line: 197, column: 13, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 197, column: 6)
!4664 = !DILocation(line: 197, column: 6, scope: !4663)
!4665 = !DILocation(line: 197, column: 6, scope: !4511)
!4666 = !DILocation(line: 198, column: 17, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 197, column: 22)
!4668 = !DILocation(line: 198, column: 9, scope: !4667)
!4669 = !DILocation(line: 198, column: 7, scope: !4667)
!4670 = !DILocation(line: 199, column: 3, scope: !4667)
!4671 = !DILocation(line: 202, column: 21, scope: !4511)
!4672 = !DILocation(line: 202, column: 2, scope: !4511)
!4673 = !DILocation(line: 203, column: 21, scope: !4511)
!4674 = !DILocation(line: 203, column: 2, scope: !4511)
!4675 = !DILocation(line: 206, column: 8, scope: !4511)
!4676 = !DILocation(line: 206, column: 2, scope: !4511)
!4677 = !DILocation(line: 208, column: 13, scope: !4511)
!4678 = !DILocation(line: 208, column: 2, scope: !4511)
!4679 = !DILocation(line: 209, column: 21, scope: !4511)
!4680 = !DILocation(line: 209, column: 2, scope: !4511)
!4681 = !DILocation(line: 209, column: 9, scope: !4511)
!4682 = !DILocation(line: 209, column: 19, scope: !4511)
!4683 = !DILocation(line: 210, column: 15, scope: !4511)
!4684 = !DILocation(line: 210, column: 22, scope: !4511)
!4685 = !DILocation(line: 210, column: 27, scope: !4511)
!4686 = !DILocation(line: 210, column: 2, scope: !4511)
!4687 = !DILocation(line: 211, column: 15, scope: !4511)
!4688 = !DILocation(line: 211, column: 2, scope: !4511)
!4689 = !DILocation(line: 212, column: 8, scope: !4511)
!4690 = !DILocation(line: 212, column: 16, scope: !4511)
!4691 = !DILocation(line: 212, column: 2, scope: !4511)
!4692 = !DILocation(line: 214, column: 2, scope: !4511)
!4693 = !DILocation(line: 216, column: 1, scope: !4511)
!4694 = !DILocation(line: 217, column: 7, scope: !4511)
!4695 = !DILocation(line: 217, column: 2, scope: !4511)
!4696 = !DILocation(line: 218, column: 1, scope: !4511)
!4697 = !DILocation(line: 219, column: 8, scope: !4511)
!4698 = !DILocation(line: 219, column: 2, scope: !4511)
!4699 = !DILocation(line: 220, column: 1, scope: !4511)
!4700 = !DILocation(line: 221, column: 8, scope: !4511)
!4701 = !DILocation(line: 221, column: 2, scope: !4511)
!4702 = !DILocation(line: 222, column: 9, scope: !4511)
!4703 = !DILocation(line: 222, column: 2, scope: !4511)
!4704 = !DILocation(line: 223, column: 1, scope: !4511)
!4705 = !DISubprogram(name: "efivar_entry_iter", scope: !4470, file: !4470, line: 43, type: !4706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!133, !4708, !137, !126}
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!133, !4519, !126}
!4711 = distinct !DISubprogram(name: "efivarfs_destroy", scope: !3, file: !3, line: 225, type: !4709, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4712)
!4712 = !{!4713, !4714}
!4713 = !DILocalVariable(name: "entry", arg: 1, scope: !4711, file: !3, line: 225, type: !4519)
!4714 = !DILocalVariable(name: "data", arg: 2, scope: !4711, file: !3, line: 225, type: !126)
!4715 = !DILocation(line: 225, column: 50, scope: !4711)
!4716 = !DILocation(line: 225, column: 63, scope: !4711)
!4717 = !DILocation(line: 227, column: 22, scope: !4711)
!4718 = !DILocation(line: 227, column: 2, scope: !4711)
!4719 = !DILocation(line: 228, column: 8, scope: !4711)
!4720 = !DILocation(line: 228, column: 2, scope: !4711)
!4721 = !DILocation(line: 229, column: 2, scope: !4711)
!4722 = distinct !DISubprogram(name: "efivarfs_evict_inode", scope: !3, file: !3, line: 23, type: !2419, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4723)
!4723 = !{!4724}
!4724 = !DILocalVariable(name: "inode", arg: 1, scope: !4722, file: !3, line: 23, type: !662)
!4725 = !DILocation(line: 23, column: 48, scope: !4722)
!4726 = !DILocation(line: 25, column: 14, scope: !4722)
!4727 = !DILocation(line: 25, column: 2, scope: !4722)
!4728 = !DILocation(line: 26, column: 1, scope: !4722)
!4729 = !DILocation(line: 28, column: 43, scope: !4273)
!4730 = !DILocation(line: 28, column: 67, scope: !4273)
!4731 = !DILocation(line: 30, column: 2, scope: !4273)
!4732 = !DILocation(line: 30, column: 12, scope: !4273)
!4733 = !DILocation(line: 33, column: 2, scope: !4273)
!4734 = !DILocation(line: 33, column: 6, scope: !4273)
!4735 = !DILocation(line: 33, column: 21, scope: !4273)
!4736 = !DILocation(line: 33, column: 38, scope: !4273)
!4737 = !DILocation(line: 34, column: 2, scope: !4273)
!4738 = !DILocation(line: 34, column: 15, scope: !4273)
!4739 = !DILocation(line: 37, column: 34, scope: !4273)
!4740 = !DILocation(line: 37, column: 16, scope: !4273)
!4741 = !DILocation(line: 38, column: 6, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 38, column: 6)
!4743 = !DILocation(line: 38, column: 6, scope: !4273)
!4744 = !DILocation(line: 39, column: 12, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 38, column: 71)
!4746 = !DILocation(line: 39, column: 10, scope: !4745)
!4747 = !DILocation(line: 42, column: 7, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 42, column: 7)
!4749 = !DILocation(line: 42, column: 14, scope: !4748)
!4750 = !DILocation(line: 42, column: 29, scope: !4748)
!4751 = !DILocation(line: 42, column: 32, scope: !4748)
!4752 = !DILocation(line: 42, column: 39, scope: !4748)
!4753 = !DILocation(line: 42, column: 7, scope: !4745)
!4754 = !DILocation(line: 43, column: 4, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 43, column: 4)
!4756 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 43, column: 4)
!4757 = !DILocation(line: 43, column: 4, scope: !4756)
!4758 = !DILocation(line: 43, column: 4, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 43, column: 4)
!4760 = !DILocation(line: 43, column: 4, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 43, column: 4)
!4762 = !DILocation(line: 43, column: 4, scope: !4748)
!4763 = !DILocation(line: 45, column: 2, scope: !4745)
!4764 = !DILocation(line: 52, column: 2, scope: !4273)
!4765 = !DILocation(line: 52, column: 7, scope: !4273)
!4766 = !DILocation(line: 52, column: 15, scope: !4273)
!4767 = !DILocation(line: 53, column: 2, scope: !4273)
!4768 = !DILocation(line: 53, column: 7, scope: !4273)
!4769 = !DILocation(line: 53, column: 17, scope: !4273)
!4770 = !DILocation(line: 54, column: 18, scope: !4273)
!4771 = !DILocation(line: 54, column: 2, scope: !4273)
!4772 = !DILocation(line: 54, column: 7, scope: !4273)
!4773 = !DILocation(line: 54, column: 16, scope: !4273)
!4774 = !DILocation(line: 55, column: 17, scope: !4273)
!4775 = !DILocation(line: 55, column: 2, scope: !4273)
!4776 = !DILocation(line: 55, column: 7, scope: !4273)
!4777 = !DILocation(line: 55, column: 15, scope: !4273)
!4778 = !DILocation(line: 56, column: 16, scope: !4273)
!4779 = !DILocation(line: 56, column: 24, scope: !4273)
!4780 = !DILocation(line: 56, column: 30, scope: !4273)
!4781 = !DILocation(line: 56, column: 2, scope: !4273)
!4782 = !DILocation(line: 56, column: 7, scope: !4273)
!4783 = !DILocation(line: 56, column: 14, scope: !4273)
!4784 = !DILocation(line: 63, column: 6, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 63, column: 6)
!4786 = !DILocation(line: 63, column: 24, scope: !4785)
!4787 = !DILocation(line: 63, column: 22, scope: !4785)
!4788 = !DILocation(line: 63, column: 6, scope: !4273)
!4789 = !DILocation(line: 64, column: 19, scope: !4785)
!4790 = !DILocation(line: 64, column: 37, scope: !4785)
!4791 = !DILocation(line: 64, column: 35, scope: !4785)
!4792 = !DILocation(line: 64, column: 3, scope: !4785)
!4793 = !DILocation(line: 64, column: 8, scope: !4785)
!4794 = !DILocation(line: 64, column: 17, scope: !4785)
!4795 = !DILocation(line: 66, column: 3, scope: !4785)
!4796 = !DILocation(line: 66, column: 8, scope: !4785)
!4797 = !DILocation(line: 66, column: 17, scope: !4785)
!4798 = !DILocation(line: 69, column: 1, scope: !4273)
!4799 = !DILocation(line: 68, column: 2, scope: !4273)
!4800 = !DISubprogram(name: "clear_inode", scope: !24, file: !24, line: 2929, type: !2419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4801 = distinct !DISubprogram(name: "efi_rt_services_supported", scope: !4284, file: !4284, line: 894, type: !4802, scopeLine: 895, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!501, !7}
!4804 = !{!4805}
!4805 = !DILocalVariable(name: "mask", arg: 1, scope: !4801, file: !4284, line: 894, type: !7)
!4806 = !DILocation(line: 894, column: 59, scope: !4801)
!4807 = !DILocation(line: 896, column: 14, scope: !4801)
!4808 = !DILocation(line: 896, column: 39, scope: !4801)
!4809 = !DILocation(line: 896, column: 37, scope: !4801)
!4810 = !DILocation(line: 896, column: 48, scope: !4801)
!4811 = !DILocation(line: 896, column: 45, scope: !4801)
!4812 = !DILocation(line: 896, column: 2, scope: !4801)
!4813 = !DISubprogram(name: "efivar_query_variable_info", scope: !4284, file: !4284, line: 1112, type: !4814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!4283, !149, !4816, !4816, !4816}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4817 = !DISubprogram(name: "___ratelimit", scope: !574, file: !574, line: 44, type: !4818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!133, !4820, !161}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!4821 = !DISubprogram(name: "_printk", scope: !4822, file: !4822, line: 153, type: !4823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4822 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!133, !161, null}
!4825 = !DISubprogram(name: "efivar_reserved_space", scope: !4284, file: !4284, line: 1069, type: !4826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!410}
!4828 = distinct !DISubprogram(name: "efivarfs_d_hash", scope: !3, file: !3, line: 104, type: !2478, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4829)
!4829 = !{!4830, !4831, !4832, !4833, !4834}
!4830 = !DILocalVariable(name: "dentry", arg: 1, scope: !4828, file: !3, line: 104, type: !2480)
!4831 = !DILocalVariable(name: "qstr", arg: 2, scope: !4828, file: !3, line: 104, type: !2482)
!4832 = !DILocalVariable(name: "hash", scope: !4828, file: !3, line: 106, type: !132)
!4833 = !DILocalVariable(name: "s", scope: !4828, file: !3, line: 107, type: !659)
!4834 = !DILocalVariable(name: "len", scope: !4828, file: !3, line: 108, type: !7)
!4835 = !DILocation(line: 104, column: 49, scope: !4828)
!4836 = !DILocation(line: 104, column: 70, scope: !4828)
!4837 = !DILocation(line: 106, column: 2, scope: !4828)
!4838 = !DILocation(line: 106, column: 16, scope: !4828)
!4839 = !DILocation(line: 106, column: 23, scope: !4828)
!4840 = !DILocation(line: 107, column: 2, scope: !4828)
!4841 = !DILocation(line: 107, column: 23, scope: !4828)
!4842 = !DILocation(line: 107, column: 27, scope: !4828)
!4843 = !DILocation(line: 107, column: 33, scope: !4828)
!4844 = !DILocation(line: 108, column: 2, scope: !4828)
!4845 = !DILocation(line: 108, column: 15, scope: !4828)
!4846 = !DILocation(line: 108, column: 21, scope: !4828)
!4847 = !DILocation(line: 108, column: 27, scope: !4828)
!4848 = !DILocation(line: 110, column: 2, scope: !4828)
!4849 = !DILocation(line: 110, column: 12, scope: !4828)
!4850 = !DILocation(line: 110, column: 15, scope: !4828)
!4851 = !DILocation(line: 111, column: 30, scope: !4828)
!4852 = !DILocation(line: 111, column: 28, scope: !4828)
!4853 = !DILocation(line: 111, column: 34, scope: !4828)
!4854 = !DILocation(line: 111, column: 10, scope: !4828)
!4855 = !DILocation(line: 111, column: 8, scope: !4828)
!4856 = distinct !{!4856, !4848, !4857, !4858, !4859}
!4857 = !DILocation(line: 111, column: 38, scope: !4828)
!4858 = !{!"llvm.loop.mustprogress"}
!4859 = !{!"llvm.loop.unroll.disable"}
!4860 = !DILocation(line: 114, column: 2, scope: !4828)
!4861 = !DILocation(line: 114, column: 12, scope: !4828)
!4862 = !DILocation(line: 115, column: 28, scope: !4828)
!4863 = !DILocation(line: 115, column: 43, scope: !4828)
!4864 = !DILocation(line: 115, column: 10, scope: !4828)
!4865 = !DILocation(line: 115, column: 8, scope: !4828)
!4866 = distinct !{!4866, !4860, !4867, !4858, !4859}
!4867 = !DILocation(line: 115, column: 47, scope: !4828)
!4868 = !DILocation(line: 117, column: 29, scope: !4828)
!4869 = !DILocation(line: 117, column: 15, scope: !4828)
!4870 = !DILocation(line: 117, column: 2, scope: !4828)
!4871 = !DILocation(line: 117, column: 8, scope: !4828)
!4872 = !DILocation(line: 117, column: 13, scope: !4828)
!4873 = !DILocation(line: 119, column: 1, scope: !4828)
!4874 = !DILocation(line: 118, column: 2, scope: !4828)
!4875 = distinct !DISubprogram(name: "efivarfs_d_compare", scope: !3, file: !3, line: 87, type: !2485, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4876)
!4876 = !{!4877, !4878, !4879, !4880, !4881}
!4877 = !DILocalVariable(name: "dentry", arg: 1, scope: !4875, file: !3, line: 87, type: !2480)
!4878 = !DILocalVariable(name: "len", arg: 2, scope: !4875, file: !3, line: 88, type: !7)
!4879 = !DILocalVariable(name: "str", arg: 3, scope: !4875, file: !3, line: 88, type: !161)
!4880 = !DILocalVariable(name: "name", arg: 4, scope: !4875, file: !3, line: 89, type: !2487)
!4881 = !DILocalVariable(name: "guid", scope: !4875, file: !3, line: 91, type: !133)
!4882 = !DILocation(line: 87, column: 52, scope: !4875)
!4883 = !DILocation(line: 88, column: 23, scope: !4875)
!4884 = !DILocation(line: 88, column: 40, scope: !4875)
!4885 = !DILocation(line: 89, column: 29, scope: !4875)
!4886 = !DILocation(line: 91, column: 2, scope: !4875)
!4887 = !DILocation(line: 91, column: 6, scope: !4875)
!4888 = !DILocation(line: 91, column: 13, scope: !4875)
!4889 = !DILocation(line: 91, column: 17, scope: !4875)
!4890 = !DILocation(line: 93, column: 6, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 93, column: 6)
!4892 = !DILocation(line: 93, column: 12, scope: !4891)
!4893 = !DILocation(line: 93, column: 19, scope: !4891)
!4894 = !DILocation(line: 93, column: 16, scope: !4891)
!4895 = !DILocation(line: 93, column: 6, scope: !4875)
!4896 = !DILocation(line: 94, column: 3, scope: !4891)
!4897 = !DILocation(line: 97, column: 13, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 97, column: 6)
!4899 = !DILocation(line: 97, column: 18, scope: !4898)
!4900 = !DILocation(line: 97, column: 24, scope: !4898)
!4901 = !DILocation(line: 97, column: 30, scope: !4898)
!4902 = !DILocation(line: 97, column: 6, scope: !4898)
!4903 = !DILocation(line: 97, column: 6, scope: !4875)
!4904 = !DILocation(line: 98, column: 3, scope: !4898)
!4905 = !DILocation(line: 101, column: 21, scope: !4875)
!4906 = !DILocation(line: 101, column: 27, scope: !4875)
!4907 = !DILocation(line: 101, column: 34, scope: !4875)
!4908 = !DILocation(line: 101, column: 32, scope: !4875)
!4909 = !DILocation(line: 101, column: 40, scope: !4875)
!4910 = !DILocation(line: 101, column: 46, scope: !4875)
!4911 = !DILocation(line: 101, column: 44, scope: !4875)
!4912 = !DILocation(line: 101, column: 9, scope: !4875)
!4913 = !DILocation(line: 101, column: 2, scope: !4875)
!4914 = !DILocation(line: 102, column: 1, scope: !4875)
!4915 = distinct !DISubprogram(name: "partial_name_hash", scope: !4916, file: !4916, line: 43, type: !4917, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4919)
!4916 = !DIFile(filename: "./include/linux/stringhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7b260b93de90497fc2d684369b4dec9")
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!132, !132, !132}
!4919 = !{!4920, !4921}
!4920 = !DILocalVariable(name: "c", arg: 1, scope: !4915, file: !4916, line: 43, type: !132)
!4921 = !DILocalVariable(name: "prevhash", arg: 2, scope: !4915, file: !4916, line: 43, type: !132)
!4922 = !DILocation(line: 43, column: 33, scope: !4915)
!4923 = !DILocation(line: 43, column: 50, scope: !4915)
!4924 = !DILocation(line: 45, column: 10, scope: !4915)
!4925 = !DILocation(line: 45, column: 22, scope: !4915)
!4926 = !DILocation(line: 45, column: 24, scope: !4915)
!4927 = !DILocation(line: 45, column: 19, scope: !4915)
!4928 = !DILocation(line: 45, column: 33, scope: !4915)
!4929 = !DILocation(line: 45, column: 35, scope: !4915)
!4930 = !DILocation(line: 45, column: 30, scope: !4915)
!4931 = !DILocation(line: 45, column: 42, scope: !4915)
!4932 = !DILocation(line: 45, column: 2, scope: !4915)
!4933 = distinct !DISubprogram(name: "__tolower", scope: !4934, file: !4934, line: 49, type: !4935, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4937)
!4934 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!134, !134}
!4937 = !{!4938}
!4938 = !DILocalVariable(name: "c", arg: 1, scope: !4933, file: !4934, line: 49, type: !134)
!4939 = !DILocation(line: 49, column: 53, scope: !4933)
!4940 = !DILocation(line: 51, column: 6, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4933, file: !4934, line: 51, column: 6)
!4942 = !DILocation(line: 51, column: 6, scope: !4933)
!4943 = !DILocation(line: 52, column: 5, scope: !4941)
!4944 = !DILocation(line: 52, column: 3, scope: !4941)
!4945 = !DILocation(line: 53, column: 9, scope: !4933)
!4946 = !DILocation(line: 53, column: 2, scope: !4933)
!4947 = distinct !DISubprogram(name: "end_name_hash", scope: !4916, file: !4916, line: 53, type: !4948, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4950)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!7, !132}
!4950 = !{!4951}
!4951 = !DILocalVariable(name: "hash", arg: 1, scope: !4947, file: !4916, line: 53, type: !132)
!4952 = !DILocation(line: 53, column: 56, scope: !4947)
!4953 = !DILocation(line: 55, column: 9, scope: !4947)
!4954 = !DILocation(line: 55, column: 2, scope: !4947)
!4955 = distinct !DISubprogram(name: "hash_64_generic", scope: !4956, file: !4956, line: 74, type: !4957, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4959)
!4956 = !DIFile(filename: "./include/linux/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38c20be4852b6978c0a05b86a66f0046")
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!149, !410, !7}
!4959 = !{!4960, !4961}
!4960 = !DILocalVariable(name: "val", arg: 1, scope: !4955, file: !4956, line: 74, type: !410)
!4961 = !DILocalVariable(name: "bits", arg: 2, scope: !4955, file: !4956, line: 74, type: !7)
!4962 = !DILocation(line: 74, column: 48, scope: !4955)
!4963 = !DILocation(line: 74, column: 66, scope: !4955)
!4964 = !DILocation(line: 78, column: 9, scope: !4955)
!4965 = !DILocation(line: 78, column: 13, scope: !4955)
!4966 = !DILocation(line: 78, column: 40, scope: !4955)
!4967 = !DILocation(line: 78, column: 38, scope: !4955)
!4968 = !DILocation(line: 78, column: 31, scope: !4955)
!4969 = !DILocation(line: 78, column: 2, scope: !4955)
!4970 = !DISubprogram(name: "memcmp", scope: !4971, file: !4971, line: 196, type: !4972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4971 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!133, !1150, !1150, !818}
!4974 = !DISubprogram(name: "strncasecmp", scope: !4971, file: !4971, line: 97, type: !4975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!133, !161, !161, !817}
!4977 = distinct !DISubprogram(name: "guid_equal", scope: !4185, file: !4185, line: 46, type: !4978, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4982)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!501, !4980, !4980}
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4507)
!4982 = !{!4983, !4984}
!4983 = !DILocalVariable(name: "u1", arg: 1, scope: !4977, file: !4185, line: 46, type: !4980)
!4984 = !DILocalVariable(name: "u2", arg: 2, scope: !4977, file: !4185, line: 46, type: !4980)
!4985 = !DILocation(line: 46, column: 45, scope: !4977)
!4986 = !DILocation(line: 46, column: 63, scope: !4977)
!4987 = !DILocation(line: 48, column: 16, scope: !4977)
!4988 = !DILocation(line: 48, column: 20, scope: !4977)
!4989 = !DILocation(line: 48, column: 9, scope: !4977)
!4990 = !DILocation(line: 48, column: 40, scope: !4977)
!4991 = !DILocation(line: 48, column: 2, scope: !4977)
!4992 = distinct !DISubprogram(name: "kzalloc", scope: !116, file: !116, line: 719, type: !4993, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4995)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!126, !817, !869}
!4995 = !{!4996, !4997}
!4996 = !DILocalVariable(name: "size", arg: 1, scope: !4992, file: !116, line: 719, type: !817)
!4997 = !DILocalVariable(name: "flags", arg: 2, scope: !4992, file: !116, line: 719, type: !869)
!4998 = !DILocation(line: 719, column: 52, scope: !4992)
!4999 = !DILocation(line: 719, column: 64, scope: !4992)
!5000 = !DILocation(line: 721, column: 17, scope: !4992)
!5001 = !DILocation(line: 721, column: 23, scope: !4992)
!5002 = !DILocation(line: 721, column: 29, scope: !4992)
!5003 = !DILocation(line: 721, column: 9, scope: !4992)
!5004 = !DILocation(line: 721, column: 2, scope: !4992)
!5005 = !DISubprogram(name: "ucs2_utf8size", scope: !5006, file: !5006, line: 15, type: !5007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5006 = !DIFile(filename: "./include/linux/ucs2_string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddcc7be0d4b5d0c3532f3fc5935abbee")
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!132, !5009}
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5011)
!5011 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs2_char_t", file: !5006, line: 8, baseType: !273)
!5012 = distinct !DISubprogram(name: "kmalloc", scope: !116, file: !116, line: 591, type: !4993, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5013)
!5013 = !{!5014, !5015, !5016}
!5014 = !DILocalVariable(name: "size", arg: 1, scope: !5012, file: !116, line: 591, type: !817)
!5015 = !DILocalVariable(name: "flags", arg: 2, scope: !5012, file: !116, line: 591, type: !869)
!5016 = !DILocalVariable(name: "index", scope: !5017, file: !116, line: 594, type: !7)
!5017 = distinct !DILexicalBlock(scope: !5018, file: !116, line: 593, column: 42)
!5018 = distinct !DILexicalBlock(scope: !5012, file: !116, line: 593, column: 6)
!5019 = !DILocation(line: 591, column: 61, scope: !5012)
!5020 = !DILocation(line: 591, column: 73, scope: !5012)
!5021 = !DILocation(line: 593, column: 27, scope: !5018)
!5022 = !DILocation(line: 593, column: 6, scope: !5018)
!5023 = !DILocation(line: 593, column: 33, scope: !5018)
!5024 = !DILocation(line: 593, column: 36, scope: !5018)
!5025 = !DILocation(line: 593, column: 6, scope: !5012)
!5026 = !DILocation(line: 594, column: 3, scope: !5017)
!5027 = !DILocation(line: 594, column: 16, scope: !5017)
!5028 = !DILocation(line: 596, column: 7, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5017, file: !116, line: 596, column: 7)
!5030 = !DILocation(line: 596, column: 12, scope: !5029)
!5031 = !DILocation(line: 596, column: 7, scope: !5017)
!5032 = !DILocation(line: 597, column: 25, scope: !5029)
!5033 = !DILocation(line: 597, column: 31, scope: !5029)
!5034 = !DILocation(line: 597, column: 11, scope: !5029)
!5035 = !DILocation(line: 597, column: 4, scope: !5029)
!5036 = !DILocation(line: 599, column: 11, scope: !5017)
!5037 = !DILocation(line: 599, column: 9, scope: !5017)
!5038 = !DILocation(line: 601, column: 33, scope: !5017)
!5039 = !DILocation(line: 601, column: 40, scope: !5017)
!5040 = !DILocation(line: 601, column: 20, scope: !5017)
!5041 = !DILocation(line: 601, column: 5, scope: !5017)
!5042 = !DILocation(line: 601, column: 51, scope: !5017)
!5043 = !DILocation(line: 602, column: 5, scope: !5017)
!5044 = !DILocation(line: 602, column: 12, scope: !5017)
!5045 = !DILocation(line: 600, column: 10, scope: !5017)
!5046 = !DILocation(line: 600, column: 3, scope: !5017)
!5047 = !DILocation(line: 603, column: 2, scope: !5018)
!5048 = !DILocation(line: 604, column: 19, scope: !5012)
!5049 = !DILocation(line: 604, column: 25, scope: !5012)
!5050 = !DILocation(line: 604, column: 9, scope: !5012)
!5051 = !DILocation(line: 604, column: 2, scope: !5012)
!5052 = !DILocation(line: 605, column: 1, scope: !5012)
!5053 = !DISubprogram(name: "ucs2_as_utf8", scope: !5006, file: !5006, line: 16, type: !5054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!132, !5056, !5009, !132}
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!5057 = !DISubprogram(name: "efivar_variable_is_removable", scope: !4470, file: !4470, line: 48, type: !5058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!501, !4506, !161, !817}
!5060 = distinct !DISubprogram(name: "efi_guid_to_str", scope: !4284, file: !4284, line: 705, type: !5061, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5064)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!198, !5063, !198}
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!5064 = !{!5065, !5066}
!5065 = !DILocalVariable(name: "guid", arg: 1, scope: !5060, file: !4284, line: 705, type: !5063)
!5066 = !DILocalVariable(name: "out", arg: 2, scope: !5060, file: !4284, line: 705, type: !198)
!5067 = !DILocation(line: 705, column: 29, scope: !5060)
!5068 = !DILocation(line: 705, column: 41, scope: !5060)
!5069 = !DILocation(line: 707, column: 10, scope: !5060)
!5070 = !DILocation(line: 707, column: 23, scope: !5060)
!5071 = !DILocation(line: 707, column: 29, scope: !5060)
!5072 = !DILocation(line: 707, column: 2, scope: !5060)
!5073 = !DILocation(line: 708, column: 16, scope: !5060)
!5074 = !DILocation(line: 708, column: 9, scope: !5060)
!5075 = !DISubprogram(name: "strreplace", scope: !4971, file: !4971, line: 212, type: !5076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!198, !198, !163, !163}
!5078 = distinct !DISubprogram(name: "d_inode", scope: !624, file: !624, line: 514, type: !5079, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5081)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!662, !2480}
!5081 = !{!5082}
!5082 = !DILocalVariable(name: "dentry", arg: 1, scope: !5078, file: !624, line: 514, type: !2480)
!5083 = !DILocation(line: 514, column: 58, scope: !5078)
!5084 = !DILocation(line: 516, column: 9, scope: !5078)
!5085 = !DILocation(line: 516, column: 17, scope: !5078)
!5086 = !DILocation(line: 516, column: 2, scope: !5078)
!5087 = distinct !DISubprogram(name: "efivarfs_alloc_dentry", scope: !3, file: !3, line: 127, type: !5088, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5090)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!622, !622, !198}
!5090 = !{!5091, !5092, !5093, !5094, !5095}
!5091 = !DILocalVariable(name: "parent", arg: 1, scope: !5087, file: !3, line: 127, type: !622)
!5092 = !DILocalVariable(name: "name", arg: 2, scope: !5087, file: !3, line: 127, type: !198)
!5093 = !DILocalVariable(name: "d", scope: !5087, file: !3, line: 129, type: !622)
!5094 = !DILocalVariable(name: "q", scope: !5087, file: !3, line: 130, type: !647)
!5095 = !DILocalVariable(name: "err", scope: !5087, file: !3, line: 131, type: !133)
!5096 = !DILocation(line: 127, column: 60, scope: !5087)
!5097 = !DILocation(line: 127, column: 74, scope: !5087)
!5098 = !DILocation(line: 129, column: 2, scope: !5087)
!5099 = !DILocation(line: 129, column: 17, scope: !5087)
!5100 = !DILocation(line: 130, column: 2, scope: !5087)
!5101 = !DILocation(line: 130, column: 14, scope: !5087)
!5102 = !DILocation(line: 131, column: 2, scope: !5087)
!5103 = !DILocation(line: 131, column: 6, scope: !5087)
!5104 = !DILocation(line: 133, column: 11, scope: !5087)
!5105 = !DILocation(line: 133, column: 4, scope: !5087)
!5106 = !DILocation(line: 133, column: 9, scope: !5087)
!5107 = !DILocation(line: 134, column: 17, scope: !5087)
!5108 = !DILocation(line: 134, column: 10, scope: !5087)
!5109 = !DILocation(line: 134, column: 4, scope: !5087)
!5110 = !DILocation(line: 134, column: 8, scope: !5087)
!5111 = !DILocation(line: 136, column: 24, scope: !5087)
!5112 = !DILocation(line: 136, column: 8, scope: !5087)
!5113 = !DILocation(line: 136, column: 6, scope: !5087)
!5114 = !DILocation(line: 137, column: 6, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 137, column: 6)
!5116 = !DILocation(line: 137, column: 6, scope: !5087)
!5117 = !DILocation(line: 138, column: 18, scope: !5115)
!5118 = !DILocation(line: 138, column: 10, scope: !5115)
!5119 = !DILocation(line: 138, column: 3, scope: !5115)
!5120 = !DILocation(line: 140, column: 14, scope: !5087)
!5121 = !DILocation(line: 140, column: 6, scope: !5087)
!5122 = !DILocation(line: 140, column: 4, scope: !5087)
!5123 = !DILocation(line: 141, column: 6, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 141, column: 6)
!5125 = !DILocation(line: 141, column: 6, scope: !5087)
!5126 = !DILocation(line: 142, column: 10, scope: !5124)
!5127 = !DILocation(line: 142, column: 3, scope: !5124)
!5128 = !DILocation(line: 144, column: 9, scope: !5087)
!5129 = !DILocation(line: 144, column: 2, scope: !5087)
!5130 = !DILocation(line: 145, column: 1, scope: !5087)
!5131 = distinct !DISubprogram(name: "IS_ERR", scope: !5132, file: !5132, line: 59, type: !5133, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5135)
!5132 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!501, !1150}
!5135 = !{!5136}
!5136 = !DILocalVariable(name: "ptr", arg: 1, scope: !5131, file: !5132, line: 59, type: !1150)
!5137 = !DILocation(line: 59, column: 60, scope: !5131)
!5138 = !DILocation(line: 61, column: 9, scope: !5131)
!5139 = !DILocation(line: 61, column: 2, scope: !5131)
!5140 = distinct !DISubprogram(name: "PTR_ERR", scope: !5132, file: !5132, line: 49, type: !5141, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5143)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!775, !1150}
!5143 = !{!5144}
!5144 = !DILocalVariable(name: "ptr", arg: 1, scope: !5140, file: !5132, line: 49, type: !1150)
!5145 = !DILocation(line: 49, column: 61, scope: !5140)
!5146 = !DILocation(line: 51, column: 16, scope: !5140)
!5147 = !DILocation(line: 51, column: 9, scope: !5140)
!5148 = !DILocation(line: 51, column: 2, scope: !5140)
!5149 = !DISubprogram(name: "__efivar_entry_get", scope: !4470, file: !4470, line: 36, type: !5150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!133, !4519, !3314, !2279, !126}
!5152 = !DISubprogram(name: "__efivar_entry_add", scope: !4470, file: !4470, line: 31, type: !5153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{null, !4519, !137}
!5155 = !DISubprogram(name: "kfree", scope: !116, file: !116, line: 227, type: !5156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{null, !1150}
!5158 = distinct !DISubprogram(name: "inode_lock", scope: !24, file: !24, line: 802, type: !2419, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5159)
!5159 = !{!5160}
!5160 = !DILocalVariable(name: "inode", arg: 1, scope: !5158, file: !24, line: 802, type: !662)
!5161 = !DILocation(line: 802, column: 45, scope: !5158)
!5162 = !DILocation(line: 804, column: 14, scope: !5158)
!5163 = !DILocation(line: 804, column: 21, scope: !5158)
!5164 = !DILocation(line: 804, column: 2, scope: !5158)
!5165 = !DILocation(line: 805, column: 1, scope: !5158)
!5166 = distinct !DISubprogram(name: "i_size_write", scope: !24, file: !24, line: 921, type: !5167, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5169)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{null, !662, !127}
!5169 = !{!5170, !5171}
!5170 = !DILocalVariable(name: "inode", arg: 1, scope: !5166, file: !24, line: 921, type: !662)
!5171 = !DILocalVariable(name: "i_size", arg: 2, scope: !5166, file: !24, line: 921, type: !127)
!5172 = !DILocation(line: 921, column: 47, scope: !5166)
!5173 = !DILocation(line: 921, column: 61, scope: !5166)
!5174 = !DILocation(line: 934, column: 18, scope: !5166)
!5175 = !DILocation(line: 934, column: 2, scope: !5166)
!5176 = !DILocation(line: 934, column: 9, scope: !5166)
!5177 = !DILocation(line: 934, column: 16, scope: !5166)
!5178 = !DILocation(line: 936, column: 1, scope: !5166)
!5179 = distinct !DISubprogram(name: "inode_unlock", scope: !24, file: !24, line: 807, type: !2419, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5180)
!5180 = !{!5181}
!5181 = !DILocalVariable(name: "inode", arg: 1, scope: !5179, file: !24, line: 807, type: !662)
!5182 = !DILocation(line: 807, column: 47, scope: !5179)
!5183 = !DILocation(line: 809, column: 12, scope: !5179)
!5184 = !DILocation(line: 809, column: 19, scope: !5179)
!5185 = !DILocation(line: 809, column: 2, scope: !5179)
!5186 = !DILocation(line: 810, column: 1, scope: !5179)
!5187 = !DISubprogram(name: "d_add", scope: !624, file: !624, line: 269, type: !2504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5188 = !DISubprogram(name: "iput", scope: !24, file: !24, line: 2459, type: !2419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5189 = !DISubprogram(name: "kmalloc_large", scope: !116, file: !116, line: 531, type: !4993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5190 = distinct !DISubprogram(name: "__kmalloc_index", scope: !116, file: !116, line: 444, type: !5191, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5193)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!7, !817, !501}
!5193 = !{!5194, !5195}
!5194 = !DILocalVariable(name: "size", arg: 1, scope: !5190, file: !116, line: 444, type: !817)
!5195 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5190, file: !116, line: 445, type: !501)
!5196 = !DILocation(line: 444, column: 60, scope: !5190)
!5197 = !DILocation(line: 445, column: 16, scope: !5190)
!5198 = !DILocation(line: 447, column: 7, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 447, column: 6)
!5200 = !DILocation(line: 447, column: 6, scope: !5190)
!5201 = !DILocation(line: 448, column: 3, scope: !5199)
!5202 = !DILocation(line: 450, column: 6, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 450, column: 6)
!5204 = !DILocation(line: 450, column: 11, scope: !5203)
!5205 = !DILocation(line: 450, column: 6, scope: !5190)
!5206 = !DILocation(line: 451, column: 3, scope: !5203)
!5207 = !DILocation(line: 453, column: 32, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 453, column: 6)
!5209 = !DILocation(line: 453, column: 37, scope: !5208)
!5210 = !DILocation(line: 453, column: 42, scope: !5208)
!5211 = !DILocation(line: 453, column: 45, scope: !5208)
!5212 = !DILocation(line: 453, column: 50, scope: !5208)
!5213 = !DILocation(line: 453, column: 6, scope: !5190)
!5214 = !DILocation(line: 454, column: 3, scope: !5208)
!5215 = !DILocation(line: 455, column: 32, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 455, column: 6)
!5217 = !DILocation(line: 455, column: 37, scope: !5216)
!5218 = !DILocation(line: 455, column: 43, scope: !5216)
!5219 = !DILocation(line: 455, column: 46, scope: !5216)
!5220 = !DILocation(line: 455, column: 51, scope: !5216)
!5221 = !DILocation(line: 455, column: 6, scope: !5190)
!5222 = !DILocation(line: 456, column: 3, scope: !5216)
!5223 = !DILocation(line: 457, column: 6, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 457, column: 6)
!5225 = !DILocation(line: 457, column: 11, scope: !5224)
!5226 = !DILocation(line: 457, column: 6, scope: !5190)
!5227 = !DILocation(line: 457, column: 26, scope: !5224)
!5228 = !DILocation(line: 458, column: 6, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 458, column: 6)
!5230 = !DILocation(line: 458, column: 11, scope: !5229)
!5231 = !DILocation(line: 458, column: 6, scope: !5190)
!5232 = !DILocation(line: 458, column: 26, scope: !5229)
!5233 = !DILocation(line: 459, column: 6, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 459, column: 6)
!5235 = !DILocation(line: 459, column: 11, scope: !5234)
!5236 = !DILocation(line: 459, column: 6, scope: !5190)
!5237 = !DILocation(line: 459, column: 26, scope: !5234)
!5238 = !DILocation(line: 460, column: 6, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 460, column: 6)
!5240 = !DILocation(line: 460, column: 11, scope: !5239)
!5241 = !DILocation(line: 460, column: 6, scope: !5190)
!5242 = !DILocation(line: 460, column: 26, scope: !5239)
!5243 = !DILocation(line: 461, column: 6, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 461, column: 6)
!5245 = !DILocation(line: 461, column: 11, scope: !5244)
!5246 = !DILocation(line: 461, column: 6, scope: !5190)
!5247 = !DILocation(line: 461, column: 26, scope: !5244)
!5248 = !DILocation(line: 462, column: 6, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 462, column: 6)
!5250 = !DILocation(line: 462, column: 11, scope: !5249)
!5251 = !DILocation(line: 462, column: 6, scope: !5190)
!5252 = !DILocation(line: 462, column: 26, scope: !5249)
!5253 = !DILocation(line: 463, column: 6, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 463, column: 6)
!5255 = !DILocation(line: 463, column: 11, scope: !5254)
!5256 = !DILocation(line: 463, column: 6, scope: !5190)
!5257 = !DILocation(line: 463, column: 26, scope: !5254)
!5258 = !DILocation(line: 464, column: 6, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 464, column: 6)
!5260 = !DILocation(line: 464, column: 11, scope: !5259)
!5261 = !DILocation(line: 464, column: 6, scope: !5190)
!5262 = !DILocation(line: 464, column: 26, scope: !5259)
!5263 = !DILocation(line: 465, column: 6, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 465, column: 6)
!5265 = !DILocation(line: 465, column: 11, scope: !5264)
!5266 = !DILocation(line: 465, column: 6, scope: !5190)
!5267 = !DILocation(line: 465, column: 26, scope: !5264)
!5268 = !DILocation(line: 466, column: 6, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 466, column: 6)
!5270 = !DILocation(line: 466, column: 11, scope: !5269)
!5271 = !DILocation(line: 466, column: 6, scope: !5190)
!5272 = !DILocation(line: 466, column: 26, scope: !5269)
!5273 = !DILocation(line: 467, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 467, column: 6)
!5275 = !DILocation(line: 467, column: 11, scope: !5274)
!5276 = !DILocation(line: 467, column: 6, scope: !5190)
!5277 = !DILocation(line: 467, column: 26, scope: !5274)
!5278 = !DILocation(line: 468, column: 6, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 468, column: 6)
!5280 = !DILocation(line: 468, column: 11, scope: !5279)
!5281 = !DILocation(line: 468, column: 6, scope: !5190)
!5282 = !DILocation(line: 468, column: 26, scope: !5279)
!5283 = !DILocation(line: 469, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 469, column: 6)
!5285 = !DILocation(line: 469, column: 11, scope: !5284)
!5286 = !DILocation(line: 469, column: 6, scope: !5190)
!5287 = !DILocation(line: 469, column: 26, scope: !5284)
!5288 = !DILocation(line: 470, column: 6, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 470, column: 6)
!5290 = !DILocation(line: 470, column: 11, scope: !5289)
!5291 = !DILocation(line: 470, column: 6, scope: !5190)
!5292 = !DILocation(line: 470, column: 26, scope: !5289)
!5293 = !DILocation(line: 471, column: 6, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 471, column: 6)
!5295 = !DILocation(line: 471, column: 11, scope: !5294)
!5296 = !DILocation(line: 471, column: 6, scope: !5190)
!5297 = !DILocation(line: 471, column: 26, scope: !5294)
!5298 = !DILocation(line: 472, column: 6, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 472, column: 6)
!5300 = !DILocation(line: 472, column: 11, scope: !5299)
!5301 = !DILocation(line: 472, column: 6, scope: !5190)
!5302 = !DILocation(line: 472, column: 26, scope: !5299)
!5303 = !DILocation(line: 473, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 473, column: 6)
!5305 = !DILocation(line: 473, column: 11, scope: !5304)
!5306 = !DILocation(line: 473, column: 6, scope: !5190)
!5307 = !DILocation(line: 473, column: 26, scope: !5304)
!5308 = !DILocation(line: 474, column: 6, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 474, column: 6)
!5310 = !DILocation(line: 474, column: 11, scope: !5309)
!5311 = !DILocation(line: 474, column: 6, scope: !5190)
!5312 = !DILocation(line: 474, column: 27, scope: !5309)
!5313 = !DILocation(line: 475, column: 6, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 475, column: 6)
!5315 = !DILocation(line: 475, column: 11, scope: !5314)
!5316 = !DILocation(line: 475, column: 6, scope: !5190)
!5317 = !DILocation(line: 475, column: 32, scope: !5314)
!5318 = !DILocation(line: 477, column: 50, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5190, file: !116, line: 477, column: 6)
!5320 = !DILocation(line: 477, column: 6, scope: !5190)
!5321 = !DILocation(line: 478, column: 3, scope: !5319)
!5322 = !DILocation(line: 478, column: 3, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !116, line: 478, column: 3)
!5324 = distinct !DILexicalBlock(scope: !5319, file: !116, line: 478, column: 3)
!5325 = !{i32 -2141718343}
!5326 = !DILocation(line: 478, column: 3, scope: !5324)
!5327 = !DILocation(line: 480, column: 3, scope: !5319)
!5328 = !DILocation(line: 480, column: 3, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5319, file: !116, line: 480, column: 3)
!5330 = !DILocation(line: 480, column: 3, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5329, file: !116, line: 480, column: 3)
!5332 = !DILocation(line: 480, column: 3, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5329, file: !116, line: 480, column: 3)
!5334 = !{i64 2153249156, i64 2153249185, i64 2153249231, i64 2153249289, i64 2153249343, i64 2153249397, i64 2153249452, i64 2153249483}
!5335 = !DILocation(line: 483, column: 2, scope: !5190)
!5336 = !DILocation(line: 484, column: 1, scope: !5190)
!5337 = !DISubprogram(name: "kmalloc_trace", scope: !116, file: !116, line: 525, type: !5338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!126, !5340, !869, !817}
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5342, line: 325, flags: DIFlagFwdDecl)
!5342 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5343 = distinct !DISubprogram(name: "kmalloc_type", scope: !116, file: !116, line: 401, type: !5344, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5346)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!115, !869, !132}
!5346 = !{!5347, !5348}
!5347 = !DILocalVariable(name: "flags", arg: 1, scope: !5343, file: !116, line: 401, type: !869)
!5348 = !DILocalVariable(name: "caller", arg: 2, scope: !5343, file: !116, line: 401, type: !132)
!5349 = !DILocation(line: 401, column: 67, scope: !5343)
!5350 = !DILocation(line: 401, column: 88, scope: !5343)
!5351 = !DILocation(line: 407, column: 6, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5343, file: !116, line: 407, column: 6)
!5353 = !DILocation(line: 407, column: 6, scope: !5343)
!5354 = !DILocation(line: 413, column: 3, scope: !5352)
!5355 = !DILocation(line: 423, column: 38, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5343, file: !116, line: 423, column: 6)
!5357 = !DILocation(line: 423, column: 44, scope: !5356)
!5358 = !DILocation(line: 423, column: 6, scope: !5343)
!5359 = !DILocation(line: 424, column: 3, scope: !5356)
!5360 = !DILocation(line: 426, column: 3, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5343, file: !116, line: 425, column: 6)
!5362 = !DILocation(line: 429, column: 1, scope: !5343)
!5363 = !DISubprogram(name: "__kmalloc", scope: !116, file: !116, line: 488, type: !4993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5364 = !DISubprogram(name: "__compiletime_assert_212", scope: !116, file: !116, line: 478, type: !2293, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5365 = !DISubprogram(name: "sprintf", scope: !5366, file: !5366, line: 10, type: !5367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5366 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!133, !198, !161, null}
!5369 = !DISubprogram(name: "strlen", scope: !4971, file: !4971, line: 128, type: !5370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{!132, !161}
!5372 = distinct !DISubprogram(name: "ERR_PTR", scope: !5132, file: !5132, line: 39, type: !5373, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5375)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!126, !775}
!5375 = !{!5376}
!5376 = !DILocalVariable(name: "error", arg: 1, scope: !5372, file: !5132, line: 39, type: !775)
!5377 = !DILocation(line: 39, column: 48, scope: !5372)
!5378 = !DILocation(line: 41, column: 18, scope: !5372)
!5379 = !DILocation(line: 41, column: 9, scope: !5372)
!5380 = !DILocation(line: 41, column: 2, scope: !5372)
!5381 = !DISubprogram(name: "d_alloc", scope: !624, file: !624, line: 231, type: !5382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!622, !622, !2487}
!5384 = !DISubprogram(name: "down_write", scope: !443, file: !443, line: 187, type: !5385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{null, !5387}
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!5388 = !DISubprogram(name: "up_write", scope: !443, file: !443, line: 203, type: !5385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5389 = !DISubprogram(name: "efivar_entry_remove", scope: !4470, file: !4470, line: 32, type: !5390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{null, !4519}
!5392 = !DISubprogram(name: "kill_litter_super", scope: !24, file: !24, line: 2412, type: !2612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5393 = !DISubprogram(name: "unregister_filesystem", scope: !24, file: !24, line: 2446, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
